
VERSION?=1.3.4.0a-ppa2

default: source

source:
	cd chuck; debuild -S

binary:
	cd chuck; debuild -uc -us

upload:
	dput ppa:t-spencer/chuck chuck_$(VERSION)_source.changes

