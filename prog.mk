CFLAGS += -D_GNU_SOURCE -I../libopenbsd/include
LDFLAGS += -L../libopenbsd -lopenbsd

OBJS += ${SRCS:.c=.o}
CLEANFILES += ${OBJS}

all: ${PROG}

${PROG}: ${OBJS}
	${CC} -o ${PROG} ${OBJS} ${LDFLAGS}

.o:
	${CC} -c ${CFLAGS} $<

clean:
	rm -f ${CLEANFILES}