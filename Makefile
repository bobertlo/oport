include config.mk

SUBDIRS=libopenbsd\
	libl\
	liby\
	yacc\
	lex\
	m4

all:
	for i in ${SUBDIRS}; do cd $$i; ${MAKE} || exit 1; cd ..; done

clean:
	for i in ${SUBDIRS}; do cd $$i; ${MAKE} clean || exit 1; cd ..; done

install: all
	for i in ${SUBDIRS}; do cd $$i; ${MAKE} install || exit 1; cd ..; done
