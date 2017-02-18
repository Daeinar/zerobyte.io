DEST=sycorax:/var/www/html/
SRC=public/

server:
	hugo server --buildDrafts --forceSyncStatic --verbose

build:
	hugo

deploy:
	rsync -Paivz --delete $(SRC) $(DEST)
