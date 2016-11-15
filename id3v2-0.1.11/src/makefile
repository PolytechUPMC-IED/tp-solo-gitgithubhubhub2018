CC= g++
CFLAGS= -Wall
LDLIBS= -lid3 -lz

OBJS= convert.o list.o id3v2.o genre.o
CLIBS= convert.cpp list.cpp id3v2.cpp genre.cpp

ID3= /home/sasl/shared/main3/env/tools/include
ID3V2= /home/sasl/shared/main3/env/tools/lib
PATH_ID3V21= ~/EnvDev/tp-solo-gitgithubhubhub2018/id3v2-0.1.11/id3v2.1
PATH_MAN1= ~/TP_solo/man/man1
BINDIR= ~/TP_solo/bin

all : ${OBJS} id3v2 install

%.o: %.cpp
	${CC} -I ${ID3} -DVERSION="\"${VERSION}\"" -c -o $@ $<

id3v2: ${OBJS} 
	${CC} -L ${ID3V2} ${CFLAGS} -o $@ $^ ${LDLIBS} 

install:
	mkdir -p ${BINDIR}
	cp id3v2 ${BINDIR}
	mkdir -p ${PATH_MAN1}
	nroff -man ${PATH_ID3V21} > ${PATH_MAN1}/id3v2.1
clean: 
	rm -f ${OBJS} id3v2

distclean:
	rm -f id3v2 id3v2.1

