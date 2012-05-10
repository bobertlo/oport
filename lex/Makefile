#	$OpenBSD: Makefile,v 1.10 2010/10/17 22:54:37 schwarze Exp $
#
# By default, flex will be configured to generate 8-bit scanners only if the
# -8 flag is given.  If you want it to always generate 8-bit scanners, add
# "-DDEFAULT_CSIZE=256" to CFLAGS.  Note that doing so will double the size
# of all uncompressed scanners.
# 
# If on your system you have trouble building flex due to 8-bit character
# problems, remove the -8 from FLEX_FLAGS and the "#define FLEX_8_BIT_CHARS"
# from the beginning of flexdef.h.
#
# To bootstrap lex, cp initscan.c to scan.c and run make.

include ../config.mk

PROG=	lex
CFLAGS+=-I.
SRCS=	ccl.c dfa.c ecs.c gen.c main.c misc.c nfa.c parse.c sym.c tblcmp.c \
	yylex.c
OBJS+=	scan.o skel.o
CLEANFILES+=parse.c parse.h scan.c skel.c y.tab.c y.tab.h

MAN = flex.1

include ../prog.mk

parse.h parse.c: parse.y
	${YACC} -d parse.y
	mv y.tab.c parse.c
	mv y.tab.h parse.h

skel.c:	flex.skl mkskel.sh
	sh ./mkskel.sh ./flex.skl > skel.c

scan.c: scan.l
	flex -t -p ./scan.l > scan.c

scan.o: parse.c

install:
	test -e ${BINDIR}/flex || ln -s lex ${BINDIR}/flex 
	test -e ${BINDIR}/flex++ || ln -s lex ${BINDIR}/flex++ 
	ln -sf flex.1 ${MANDIR}/man1/lex.1
	ln -sf flex.1 ${MANDIR}/man1/flex++.1
	install -D -m 644 FlexLexer.h ${DESTDIR}${INCDIR}/g++/FlexLexer.h
