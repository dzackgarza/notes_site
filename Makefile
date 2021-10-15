SHELL:=/bin/zsh

all: clean pandoc_process generate 
	type clr_green 2>&1 >/dev/null || { source "$$DOTFILES_ROOT/.bash_colors";}
	clr_greenb "____________________________________________________"
	clr_greenb "___________  All files compiled.  __________________"
	clr_greenb "____________________________________________________"

## Markdown Output
pandoc:
	echo "Running custom pandoc conversion..."
	cp -r ~/Notes/Obsidian/* ./Obsidian;
	find ./Obsidian -type f \( -iname '*.yaml' -o -iname "*.css" -o -iname "*.sty" -o -iname "*.tex" -o -iname "*.txt" -o -iname "*.sh" -o -iname "*.html" -o -iname "*.log" \) -exec rm {} \;
	mkdir ./figures;
	while read THISFILE; do
		echo "$THISFILE";
		awk 'FNR==1{print ""}1' "$THISFILE" | ./pandoc_stripmacros.sh | sed '/file:\/\//d' > temp.md && mv temp.md "$THISFILE"; 
	done < <(find ./Obsidian -type f -iname "*.md" ) 
	
watch:
	HOST=0.0.0.0 PORT=8000 emanote;

generate:
	mkdir /var/www/notes_site;
	emanote -L ./ gen /var/www/notes_site;

.SILENT:

clean: 
	echo "Removing directories.."
	@rm -rf /var/www/notes_site;
	@rm -rf ./Obsidian;
	@rm -rf ./figures;

.PHONY: clean

.ONESHELL:
