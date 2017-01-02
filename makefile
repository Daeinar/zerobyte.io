BIN=hugo
SFLAGS=--buildDrafts --forceSyncStatic --verbose

server:
	@$(BIN) server $(SFLAGS)

