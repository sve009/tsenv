build:
	rm -rf .git
	docker build . -t tsenv

run:
	docker run -v .:/project -p 8080:8080 tsenv

shell:
	docker run -v .:/project -p 8080:8080 -it tsenv bash
