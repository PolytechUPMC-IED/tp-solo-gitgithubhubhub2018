ID3= /home/sasl/shared/main3/env/tools/include
ID3V2= /home/sasl/shared/main3/env/tools/lib
CC= g++
CFLAGS= -Wall
OBJS= convert.o list.o id3v2.o genre.o
CLIBS= convert.cpp list.cpp id3v2.cpp genre.cpp
LDLIBS= -lid3 -lz

all : ${OBJS}

%.o: %.cpp
	${CC} -I ${ID3} -DVERSION="\"${VERSION}\"" -c -o $@ $<

id3v2: ${OBJS} 
	${CC} -L ${ID3V2} ${CFLAGS} -o $@ $^ ${LDLIBS} 

clean: 
	rm -f ${OBJS} id3v2
