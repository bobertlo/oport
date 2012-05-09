OBJS += ${SRCS:.c=.o}
CLEANFILES += ${OBJS} ${LIB}

all: ${LIB}

${LIB}: ${OBJS}
	ar cr ${LIB} ${OBJS}
	ranlib ${LIB}

.o:
	${CC} -c ${CFLAGS} $<

clean:
	rm -f ${CLEANFILES}
