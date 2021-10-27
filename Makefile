SHELL:=/bin/zsh

all: clean pandoc_process generate 
	type clr_green 2>&1 >/dev/null || { source "$$DOTFILES_ROOT/.bash_colors";}
	clr_greenb "____________________________________________________"
	clr_greenb "___________  All files compiled.  __________________"
	clr_greenb "____________________________________________________"

## Markdown Output
pandoc:
	echo "Copying Notes directory.."
	rsync -a --exclude='.*' --exclude="*.yaml" --exclude="*.css" --exclude="*.sty" --exclude="*.tex" --exclude="*.txt" --exclude="*.sh" --exclude="*.html" --exclude="*.log" --exclude="*.add.spl" --exclude="*.add" --exclude="*.bib" --exclude="Visualizations" --exclude="Latex" --exclude="Teaching" --exclude="Flashcards" --exclude="annotations" --exclude="Class_Notes" ~/Notes/ ./Notes;
	echo "Running custom pandoc conversion..."
	while read THISFILE; do
		echo "$$THISFILE";
		awk 'FNR==1{print ""}1' "$$THISFILE" | ./pandoc_stripmacros.sh | sed '/file:\/\//d' > temp.md && mv temp.md "$$THISFILE"; 
	done < <(find ./Notes -type f -iname "*.md" ) 
	rm -rf ./figures;
	mkdir ./figures;
	
pandoc_test:
	echo "Copying Notes directory.."
	rsync -a --exclude='.*' --exclude="*.yaml" --exclude="*.css" --exclude="*.sty" --exclude="*.tex" --exclude="*.txt" --exclude="*.sh" --exclude="*.html" --exclude="*.log" --exclude="*.add.spl" --exclude="*.add" --exclude="*.bib" --exclude="Visualizations" --exclude="Latex" --exclude="Teaching" --exclude="Flashcards" --exclude="annotations" --exclude="Unsorted" --exclude="Archive" --exclude="Projects" --exclude="To Review" --exclude="Class_Notes" ~/Notes/ ./Notes;
	echo "Running custom pandoc conversion..."
	while read THISFILE; do
		echo "$$THISFILE";
		awk 'FNR==1{print ""}1' "$$THISFILE" | ./pandoc_stripmacros.sh | sed '/file:\/\//d' > temp.md && mv temp.md "$$THISFILE"; 
	done < <(find ./Notes -type f -iname "*.md" ) 
	rm -rf ./figures;
	mkdir ./figures;

watch:
	HOST=0.0.0.0 PORT=8000 emanote;

sync:
	rsync -vaz --rsh="ssh -l zack" /var/www/notes_site/ dzackgarza.com:/var/www/notes_site/;

generate:
	mkdir /var/www/notes_site;
	emanote -L ./ gen /var/www/notes_site;

.SILENT:

clean: 
	echo "Removing directories.."
	@rm -rf /var/www/notes_site;
	@rm -rf ./Notes;
	@rm -rf ./figures;

.PHONY: clean

.ONESHELL:
