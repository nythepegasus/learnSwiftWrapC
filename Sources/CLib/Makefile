.DEFAULT_GOAL := $(EXE)

INCLUDES := include/
LIBPATHS :=
LIBFILES :=
LIBS     :=

CC       := gcc
CFLAGS   := -O2 -c -g -Wall $(foreach include,$(INCLUDES),-I$(include))
LDFLAGS  := $(foreach lib,$(LIBPATHS),-L$(lib)) $(LIBS)

SRC      := src/clib.c
# DIR is install dir
DIR      := build/
LIB      := $(DIR)clib.a

$(LIB): $(SRC) $(LIBFILES) $(DIR)
	$(CC) $(CFLAGS) $(SRC) -o $@ $(LDFLAGS)

$(DIR):
	mkdir $@

clean:
	@if [ -d $(DIR) ]; then echo rm -r $(DIR); fi
	@if [ -d $(DIR) ]; then rm -r $(DIR) 2>/dev/null || true; fi


.PHONY := clean
