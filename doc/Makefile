
VOICESPDF = voice1.pdf voice2.pdf voice3.pdf voice4.pdf
VOICESPNG = voice1.png voice2.png voice3.png voice4.png

all: bitfiddle notesets score pngs
pngs: $(VOICESPNG) notesets.png score.png

bitfiddle: bitfiddle.pdf
bitfiddle.pdf: bitfiddle.tex bitfiddle.mp $(VOICESPDF)
	mpost bitfiddle
	tex bitfiddle
	dvipdfm bitfiddle

score: score.pdf score.png
score.pdf: score.ly
	lilypond --pdf score.ly
score.png: score.ly
	lilypond --png score.ly

notesets: notesets.pdf notesets.png
notesets.pdf: notesets.ly
	lilypond -fpdf notesets.ly
notesets.png: notesets.ly
	lilypond -fpng notesets.ly

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

