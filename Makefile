.PHONY : all help install build

all:
	echo "Hello, nothing to do by default"
	echo "Try 'make help'"

# target: help - Display callable targets.
help:
	egrep "^# target:" [Mm]akefile

# target: install - Install dependencies for project
install:
	npm install && \
	git submodule update --init && \
	cd relay-starter-kit && \
	npm install && \
	cd .. && \
	make build

# target: build - Build src (outputs to build folder)
build:
	npm run build
