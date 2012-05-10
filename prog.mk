CFLAGS += -I../libopenbsd/include
LDFLAGS += -L../libopenbsd -lopenbsd

OBJS += ${SRCS:.c=.o} 
CLEANFILES += ${OBJS} ${PROG}

YACC=../yacc/yacc

all: ${PROG}

${PROG}: ${OBJS}
	${CC} -o ${PROG} ${OBJS} ${LDFLAGS}

%.o: %.c
	${CC} -c ${CFLAGS} -o $@ $<

clean:
	rm -f ${CLEANFILES}

install: install-default

install-default:
	install -D ${PROG} ${DESTDIR}${BINDIR}/${PROG}
	for i in ${MAN}; do install -D -m 644 $$i ${DESTDIR}${MANDIR}/man1/$$i; done
