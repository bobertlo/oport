PREFIX=/usr/local/obase
BINDIR=${PREFIX}/bin
LIBDIR=${PREFIX}/lib
MANDIR=${PREFIX}/share/man

CC = cc
CFLAGS  += -D_GNU_SOURCE
LDFLAGS += -static
