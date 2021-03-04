
all: bitfiddle

bitfiddle: bitfiddle.pdf
bitfiddle.pdf: bitfiddle.tex bitfiddle.mp voice1.pdf
	mpost bitfiddle
	tex bitfiddle
	dvipdfm bitfiddle

voice1.pdf: voice1.ly
	lilypond voice1.ly

clean:
	rm -f *.dvi *.log *.mpx *.mps
