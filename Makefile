.PHONY: build
build:
	docker build . -t tsenv

setup: build
	cp ./Dockerfile $(project)
	cp ./Makefile $(project)
	cd $(project)

run:
	docker run -d -v .:/project -p 8080:8080 --name tsenv tsenv

shell:
	docker run -v .:/project -p 8080:8080 -it tsenv bash
