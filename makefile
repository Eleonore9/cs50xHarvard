# Copied from an answer on StackOverflow:
# https://stackoverflow.com/questions/16751611/a-makefile-with-multiple-executables/16751650#16751650
# ------------------------------------------------

# file Makefile
CC = gcc
RM = rm -vf
CFLAGS = -std=c99 -Wall -g
CPPFLAGS = -I.
SRCFILES = ex1.c ex2.c ## or perhaps $(wildcard *.c)
OBJFILES = $(patsubst %.c, %.o, $(SRCFILES))
PROGFILES = $(patsubst %.c, %, $(SRCFILES))

.PHONY: all clean

all: $(PROGFILES)
clean:
	$(RM) $(OBJFILES) $(PROGFILES) *~
## eof Makefile
