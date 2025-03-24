# java-3.mk

JA_files := $(wildcard *.java)

Cl_files := $(JA_files:.java=.class)

all: $(Cl_files)

Add.class: %.java
 javac $<

clean

.PHONY: all clean
