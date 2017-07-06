DEST=sycorax:/var/www/zerobyte.io/html/
SRC=public/

server:
	@hugo server --buildDrafts --forceSyncStatic --verbose

build:
	@hugo

deploy:
	@rsync -Paivz $(SRC) $(DEST)
