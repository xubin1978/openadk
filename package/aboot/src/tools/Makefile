ifndef ($(CC))
CC	= gcc
endif
override CFLAGS		= -g -O2 -Wall -I. -I../include $(CPPFLAGS)
override LDFLAGS	= -g
override PGMS		+= e2writeboot abootconf elfencap objstrip

EXEC_PREFIX = /usr

all:	$(PGMS)

install:	$(PGMS)
	install -c -o root -g root -m 755 $(PGMS) $(EXEC_PREFIX)/bin

clean:
	rm -f *~ *.o *.a core $(PGMS)

isomarkboot:	isomarkboot.o ../lib/isolib.o
e2writeboot:	e2writeboot.o e2lib.o bio.o

e2writeboot.o:	e2lib.h
e2lib.o: e2lib.h
