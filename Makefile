.PHONY : all help install

all:
	echo "Hello, nothing to do by default"
	echo "Try 'make help'"

# target: help - Display callable targets.
help:
	egrep "^# target:" [Mm]akefile

# target: build - Bundle your application
install:
	npm install &&
	git submodule update --init &&
	cd relay-starter-kit &&
	npm install &&
	cd ..
