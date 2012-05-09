OBJS += ${SRCS:.c=.o}

all: ${LIB}

${LIB}: ${OBJS}
	ar cr ${LIB} ${OBJS}
	ranlib ${LIB}

.o:
	${CC} -c ${CFLAGS} 

clean:
	rm -f ${OBJS} ${LIB}
