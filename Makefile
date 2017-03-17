NAME := drupalcomposer/selenium
VERSION := $(or $(VERSION),$(VERSION),'latest')
PLATFORM := $(shell uname -s)

all: base hub node-firefox

build: all

ci: build

base:
	docker build -t $(NAME):base base

hub:
	docker build -t $(NAME):hub hub

node-firefox:
	docker build -t $(NAME):node-firefox node-firefox

.PHONY: \
	all \
	base \
	build \
	ci \
	hub \
	node-firefox \
