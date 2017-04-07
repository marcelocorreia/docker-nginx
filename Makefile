ORG=marcelocorreia
CONTAINER=docker-nginx
VERSION=0.0.1

build:
	 docker build -t  $(ORG)/$(CONTAINER):$(VERSION) .
.PHONY: build