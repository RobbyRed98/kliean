#!/usr/bin/make -f

SHELL=/bin/bash

fetch_dependencies:
	mkdir local_debs -p
	wget https://deb.debian.org/debian/pool/non-free/s/steam/steam_1.0.0.66-1_i386.deb --directory-prefix=local_debs

build:
	build-simple-cdd --conf conf/kliean.conf --local-packages local_debs

clean:
	rm tmp images -rf