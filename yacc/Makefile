#	$OpenBSD: Makefile,v 1.5 2010/10/17 22:54:37 schwarze Exp $

include ../config.mk

PROG=	yacc
SRCS=	closure.c error.c lalr.c lr0.c main.c mkpar.c output.c reader.c \
	skeleton.c symtab.c verbose.c warshall.c
MAN=	yacc.1 yyfix.1

include ../prog.mk

install:
	install -D -m 755 yyfix.sh ${DESTDIR}${BINDIR}/yyfix
