NAME = vdesjardins/neovim
VERSION = latest

.PHONY: all build

all: build

build:
	docker build -t $(NAME):$(VERSION) .

push:
	docker push $(NAME):$(VERSION)
