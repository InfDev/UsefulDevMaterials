start chrome http://localhost:8000 -incognito
docker run --rm -it -p 8000:8000 -v %cd%:/docs squidfunk/mkdocs-material
