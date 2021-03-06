
VOICESPDF = voice1.pdf voice2.pdf voice3.pdf voice4.pdf
VOICESPNG = voice1.png voice2.png voice3.png voice4.png

all: bitfiddle pngs
pngs: $(VOICESPNG)

bitfiddle: bitfiddle.pdf
bitfiddle.pdf: bitfiddle.tex bitfiddle.mp $(VOICESPDF)
	mpost bitfiddle
	tex bitfiddle
	dvipdfm bitfiddle

voice1.pdf: voice1.ly
	lilypond -fpdf voice1.ly
voice1.png: voice1.ly
	lilypond -fpng voice1.ly

voice2.pdf: voice2.ly
	lilypond -fpdf voice2.ly
voice2.png: voice2.ly
	lilypond -fpng voice2.ly

voice3.pdf: voice3.ly
	lilypond -fpdf voice3.ly
voice3.png: voice3.ly
	lilypond -fpng voice3.ly

voice4.pdf: voice4.ly
	lilypond -fpdf voice4.ly
voice4.png: voice4.ly
	lilypond -fpng voice4.ly

clean:
	rm -f *.dvi *.log *.mpx *.mps voice?.pdf *.midi

