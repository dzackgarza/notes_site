SHELL:=/bin/zsh
NOTES_DIR="/home/zack/Notes/Obsidian/"

all: clean pandoc generate sync
	type clr_green 2>&1 >/dev/null || { source "$$DOTFILES_ROOT/.bash_colors";}
	clr_greenb "____________________________________________________"
	clr_greenb "___________  All files compiled.  __________________"
	clr_greenb "____________________________________________________"

## Markdown Output
pandoc:
	rm -rf ./Notes;
	echo "Copying Notes directory.."
	rsync -a --exclude='.*' --exclude="*.yaml" --exclude="*.css" --exclude="*.sty" --exclude="*.tex" --exclude="*.txt" --exclude="*.sh" --exclude="*.html" --exclude="*.log" --exclude="*.add.spl" --exclude="*.add" --exclude="*.bib" --exclude="Archive" --exclude="To Review" $(NOTES_DIR) ./Notes;
	echo "Running custom pandoc conversion..."
	while read THISFILE; do
		echo "$$THISFILE";
		awk 'FNR==1{print ""}1' "$$THISFILE" | ./pandoc_stripmacros.sh | sed '/file:\/\//d' > temp.md && mv temp.md "$$THISFILE"; 
	done < <(find ./Notes -type f -iname "*.md" ) 
	mkdir ./Notes/figures;
	mkdir ./Notes/tikzcd;
		
pandoc_test:
	rm -rf ./Notes;
	echo "Copying Notes directory.."
	rsync -a --exclude='.*' --exclude="*.yaml" --exclude="*.css" --exclude="*.sty" --exclude="*.tex" --exclude="*.txt" --exclude="*.sh" --exclude="*.html" --exclude="*.log" --exclude="*.add.spl" --exclude="*.add" --exclude="*.bib" --exclude="Archive" --exclude="To Review" --exclude="Unsorted" --exclude="advanced_quals" $(NOTES_DIR) ./Notes;
	echo "Running custom pandoc conversion..."
	mkdir ./Notes/figures;
	mkdir ./Notes/tikzcd;
	while read THISFILE; do
		echo "$$THISFILE";
		awk 'FNR==1{print ""}1' "$$THISFILE" | ./pandoc_stripmacros.sh | sed '/file:\/\//d' > temp.md && mv temp.md "$$THISFILE"; 
	done < <(find ./Notes -type f -iname "*.md" ) 
	cp ./Blog.md ./Notes;
	cp ./index.md ./Notes;
	cp ./index.yaml ./Notes;

watch:
	HOST=0.0.0.0 PORT=8000 emanote;

sync:
	rsync -vaz --rsh="ssh -l zack" /var/www/notes_site/ dzackgarza.com:/var/www/notes_site/;

generate:
	mkdir /var/www/notes_site;
	cp ./templates ./Notes/templates -r;
	emanote -L ./Notes gen /var/www/notes_site;

.SILENT:

clean: 
	echo "Removing directories.."
	@rm -rf ./Notes;
	@rm -rf /var/www/notes_site;

.PHONY: clean

.ONESHELL:
