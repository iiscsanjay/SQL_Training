SHELL:= /bin/sh
FILENAME:= Assignment3
LINUX:=Linux
MAC:=Darwin
ARCH:=uname
A:=$(shell $(ARCH))
ifeq ($(A),$(LINUX))
	code=evince
else 
	code=open -a Preview
endif
all: latex dvi2pdf dvips temp open 
latex : 
	latex ${FILENAME}.tex
dvi2pdf :
	dvipdf ${FILENAME}.dvi
dvips	:
	dvips ${FILENAME}.dvi
ps@pdf:
	ps2pdf ${FILENAME}.ps
temp : 
	rm -rf *.aux *.ps *.dvi *.log 
open:
	$(code) $(FILENAME).pdf 
clean: 
	rm -rf *.aux *.ps *.dvi *.log *.pdf
