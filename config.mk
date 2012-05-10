PREFIX=/usr/local/oport
BINDIR=${PREFIX}/bin
LIBDIR=${PREFIX}/lib
MANDIR=${PREFIX}/share/man
INCDIR=${PREFIX}/include

CC = cc
CFLAGS  += -D_GNU_SOURCE
LDFLAGS += -static
