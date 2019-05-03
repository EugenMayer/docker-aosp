DOCKER = docker
IMAGE = eugenmayer/aosp

build: Dockerfile
	$(DOCKER) build -t $(IMAGE) .

push:
	$(DOCKER) push $(IMAGE)
all: build push

.PHONY: all
