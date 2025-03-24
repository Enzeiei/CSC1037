# java-2.mk

j_files := $(wildcard *.java))

c_files := $(j_files@ .java=.class)

all: %(c_files)

%.class: *.java
javac $c

clean:
rm -f $(c_files)

.PHONY: all clean
