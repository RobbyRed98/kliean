#!/usr/bin/env make -f

SHELL=/bin/bash

build:
	build-simple-cdd --conf kliean.conf --local-packages local_debs

clean:
	rm tmp images -rf