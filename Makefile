REGISTRY ?= docker.io/bluesquanium
IMAGE_NAME ?= goldenduck_web
VERSION ?= latest

build:
	npm run build

image:
	docker build --tag $(REGISTRY)/$(IMAGE_NAME):$(VERSION) . 