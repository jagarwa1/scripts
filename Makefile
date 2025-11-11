LINK_DIR := /usr/bin

SCRIPTS := \
    lastfm-rb-scrobbler/lastfm-sync \
    monitor-import-dir/img-watch-and-move \
    organize-and-move \

.SILENT: install uninstall

# create symbolic links
# $(foreach var,list,text)
# ln -s [target path] [soft link path]
# need to do $(shell basename arg)
install:
	@echo "Creating symbolic links for scripts"
	$(foreach script,$(SCRIPTS), echo "$(realpath $(script)) -> $(LINK_DIR)/$(shell basename $(script))"; ln -s $(realpath $(script)) $(LINK_DIR)/$(shell basename $(script));)
	@echo "Files installed."

# remove symbolic links
uninstall:
	@echo "Removing symbolic links for scripts"
	$(foreach script,$(SCRIPTS), rm -f $(LINK_DIR)/$(shell basename $(script));)
	@echo "Links removed. Uninstalled."
