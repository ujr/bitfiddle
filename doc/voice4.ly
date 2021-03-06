\version "2.18.2"
\pointAndClickOff % gives smaller PDF

% Set very small custom "paper" size:
#(set! paper-alist (cons '("mine" . (cons (* 14 cm) (* 20 cm))) paper-alist))
#(set-default-paper-size "mine")
#(set-global-staff-size 11.22)

\paper { indent = 0 print-page-number = ##f left-margin = 0 }
\header { tagline = ##f }

melodyFour = \fixed g'' {
  \clef "treble^8" \key c \minor \time 4/4
  \repeat volta 2 {
g16  c    ees  g    c    ees  g    c    ees  g    c    ees  g    c    ees  g
g    c    bes  g    c    bes  g    c    bes  g    c    bes  g    c    bes  g
g    c'   bes  g    c'   bes  g    c'   bes  g    c'   bes  g    c'   bes  g
ees  c'   bes  ees  c'   bes  ees  c'   bes  ees  c'   bes  ees  c'   bes  ees
\bar "."
ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees
ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees
ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees
ees  f    c    ees  f    c    ees  f    c    ees  f    c    ees  f    c    ees
ees  f    c    ees  f    c    ees  f    c    ees  f    c    ees  f    c    ees
aes  f    c    aes  f    c    aes  f    c    aes  f    c    aes  f    c    aes
aes  f    c'   aes  f    c'   aes  f    c'   aes  f    c'   aes  f    c'   aes
aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes
aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes
aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes
aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes
c    ees  f    c    ees  f    c    ees  f    c    ees  f    c    ees  f    c
\bar "."
c    ees  g    c    ees  g    c    ees  g    c    ees  g    c    ees  g    c
c    bes  g    c    bes  g    c    bes  g    c    bes  g    c    bes  g    c
c'   bes  g    c'   bes  g    c'   bes  g    c'   bes  g    c'   bes  g    c'
c'   bes  ees  c'   bes  ees  c'   bes  ees  c'   bes  ees  c'   bes  ees  c'
\bar "."
c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'
f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f
f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f
f    c    ees  f    c    ees  f    c    ees  f    c    ees  f    c    ees  f
f    c    ees  f    c    ees  f    c    ees  f    c    ees  f    c    ees  f
f    c    aes  f    c    aes  f    c    aes  f    c    aes  f    c    aes  f
f    c'   aes  f    c'   aes  f    c'   aes  f    c'   aes  f    c'   aes  f
ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees
ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees
ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees
ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees
ees  f    c    ees  f    c    ees  f    c    ees  f    c    ees  f    c    ees
\bar "."
ees  g    c    ees  g    c    ees  g    c    ees  g    c    ees  g    c    ees
bes  g    c    bes  g    c    bes  g    c    bes  g    c    bes  g    c    bes
bes  g    c'   bes  g    c'   bes  g    c'   bes  g    c'   bes  g    c'   bes
bes  ees  c'   bes  ees  c'   bes  ees  c'   bes  ees  c'   bes  ees  c'   bes
\bar "."
aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes
aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes
aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes
c    ees  f    c    ees  f    c    ees  f    c    ees  f    c    ees  f    c
c    ees  f    c    ees  f    c    ees  f    c    ees  f    c    ees  f    c
c    aes  f    c    aes  f    c    aes  f    c    aes  f    c    aes  f    c
c'   aes  f    c'   aes  f    c'   aes  f    c'   aes  f    c'   aes  f    c'
c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'
c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'   aes  ees  c'
f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f
f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f    aes  ees  f
f    c    ees  f    c    ees  f    c    ees  f    c    ees  f    c    ees  f
  }
}

\score {
  \melodyFour
  \layout {
    \context { \Score \remove "Bar_number_engraver" }
  }
  \midi { \tempo 4 = 96 }
}

