all: build

gyb:
	gyb-source

build: gyb
	swift build

test: gyb
	swift test

docs:
	swift package generate-xcodeproj

clean:
	swift build --clean

.PHONY: gyb build test docs clean
