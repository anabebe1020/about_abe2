MAKEFLAGS=--no-builtin-rules --no-builtin-variables --always-make
ROOT := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

refresh-pod:
	cd ios && rm -rf Podfile.lock
	cd ios && pod install --repo-update
	flutter clean

clean:
	flutter clean

vendor:
	flutter pub get

gen:
	flutter pub run build_runner build --delete-conflicting-outputs

setup-dev:
	cp config/.env.dev .env

setup-prod:
	cp config/.env.prod .env
