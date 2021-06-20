
dev:
	docker run --name ohmymndy.github.io --init -d -p 8080:4000 -v $(PWD):/site bretfisher/jekyll-serve
	docker start ohmymndy.github.io


stop:
	docker stop ohmymndy.github.io

logs:
	docker logs ohmymndy.github.io --tail 100 -f