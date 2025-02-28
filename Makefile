build:
	docker build . -t tsenv

setup: build
	cp ./Makefile $(project)

run:
	docker run -v .:/project -p 8080:8080 tsenv

shell:
	docker run -v .:/project -p 8080:8080 -it tsenv bash
