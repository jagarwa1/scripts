LINK_DIR := /usr/bin

.SILENT: install uninstall

# create symbolic links
install:
	@echo "Creating symbolic link for $(LINK_DIR)/lastfm-sync -> lastfm-rb-scrobbler/lastfm-sync"
	ln -s $(realpath lastfm-rb-scrobbler/lastfm-sync) $(LINK_DIR)/lastfm-sync

	@echo "Creating symbolic link for $(LINK_DIR)/img-watch-and-move -> monitor-import-dir/img-watch-and-move"
	ln -s $(realpath monitor-import-dir/img-watch-and-move) $(LINK_DIR)/img-watch-and-move

	@echo "Creating symbolic link for $(LINK_DIR)/organize-and-move -> organize-and-move"
	ln -s $(realpath organize-and-move) $(LINK_DIR)/organize-and-move

# remove symbolic links
uninstall:
	@echo "Removing symbolic link for $(LINK_DIR)/lastfm-sync"
	rm -f $(LINK_DIR)/lastfm-sync
	@echo "Removing symbolic link for $(LINK_DIR)/img-watch-and-move"
	rm -f $(LINK_DIR)/img-watch-and-move
	@echo "Removing symbolic link for $(LINK_DIR)/organize-and-move"
	rm -f $(LINK_DIR)/organize-and-move
