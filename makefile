
CK_VERSION?=1.3.5.0a
DEB_VERSION?=1.3.5.0a-ppa1

CK_SRC=chuck_$(CK_VERSION).orig.tar.gz
CK_SRC_URL=http://chuck.stanford.edu/release/files/chuck-$(CK_VERSION).tgz

default: source

source: $(CK_SRC)
	cd chuck; debuild -S

$(CK_SRC): 
	curl $(CK_SRC_URL) > $(CK_SRC)

binary:
	cd chuck; debuild -uc -us

upload:
	dput ppa:t-spencer/chuck chuck_$(DEB_VERSION)_source.changes

