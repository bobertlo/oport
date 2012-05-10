#	$OpenBSD: Makefile,v 1.11 2004/05/12 21:17:03 espie Exp $

# -DEXTENDED 
# 	if you want the paste & spaste macros.

include ../config.mk

PROG=	m4
CFLAGS+=-DEXTENDED -I.

LDFLAGS += -ly -ll -L../libl -L../liby

SRCS=	eval.c expr.c look.c main.c misc.c gnum4.c trace.c tokenizer.c parser.c
MAN=	m4.1

include ../prog.mk

parser.c parser.h: parser.y
	${YACC} -d parser.y && mv y.tab.c parser.c && mv y.tab.h parser.h

tokenizer.o: parser.h

CLEANFILES+=parser.c parser.h tokenizer.o tokenizer.c

