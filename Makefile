# Makefile for password generator
# THVV 6/1/94
#

DEBUGARGS = -g
COMPILER = gcc

all : gpw loadtris
	echo gpw created, can delete loadtris

gpw : gpw.o
	$(COMPILER) $(DEBUGARGS) -o gpw gpw.o randnum.o

randnum.o: randnum.c
	$(COMPILER) $(DEBUGARGS) -o randnum.o -c randnum.c

trigram.h : loadtris
	./loadtris /usr/dict/words | sed "s/, }/}/" > trigram.h

gpw.o : gpw.c trigram.h
	$(COMPILER) $(DEBUGARGS) -o gpw.o -c gpw.c

loadtris : loadtris.o
	$(COMPILER) $(DEBUGARGS) -o loadtris loadtris.o

loadtris.o : loadtris.c
	$(COMPILER) $(DEBUGARGS) -o loadtris.o -c loadtris.c

clean : 
	rm gpw loadtris loadtris.o gpw.o randnum.o # trigram.h
