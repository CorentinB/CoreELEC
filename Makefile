all: release

system:
	./scripts/image

release:
	./scripts/image release

image:
	./scripts/image mkimage

noobs:
	./scripts/image noobs

source:
	./scripts/download_sources

clean:
	./scripts/makefile_helper --clean

distclean:
	./scripts/makefile_helper --distclean

src-pkg:
	tar cvJf sources.tar.xz sources
