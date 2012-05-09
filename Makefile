include config.mk

SUBDIRS=libopenbsd

all:
	for i in ${SUBDIRS}; do cd $$i; ${MAKE} || exit 1; cd ..; done

clean:
	for i in ${SUBDIRS}; do cd $$i; ${MAKE} clean || exit 1; cd ..; done

install:
	for i in ${SUBDIRS}; do cd $$i; ${MAKE} install || exit 1; cd ..; done
