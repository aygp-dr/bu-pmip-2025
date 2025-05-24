.PHONY: help export clean validate sync

help:
	@echo "Available commands:"
	@echo "  export     - Export all org files to HTML/PDF"
	@echo "  clean      - Remove generated files"
	@echo "  validate   - Check org file syntax"
	@echo "  sync       - Sync documentation structure"
	@echo "  help       - Show this help message"

export:
	@echo "Exporting org files..."
	@find . -name "*.org" -exec emacs --batch {} -f org-html-export-to-html --kill \;

clean:
	@echo "Cleaning generated files..."
	@find . -name "*.html" -delete
	@find . -name "*.pdf" -delete
	@find . -name "*~" -delete
	@find . -name ".#*" -delete

validate:
	@echo "Validating org files..."
	@find . -name "*.org" -exec emacs --batch {} --eval "(org-mode)" --eval "(org-lint)" --kill \;

sync:
	@echo "Syncing documentation structure..."
	@echo "Checking for missing directories..."
	@mkdir -p action_items notes resources sessions speakers
	@echo "Documentation structure synced."