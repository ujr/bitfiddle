\version "2.18.2"
\pointAndClickOff % gives smaller PDF

% Set very small custom "paper" size:
#(set! paper-alist (cons '("mine" . (cons (* 14 cm) (* 1 cm))) paper-alist))
#(set-default-paper-size "mine")
#(set-global-staff-size 11.22)

\paper { indent = 0 print-page-number = ##f left-margin = 0 }
\header { tagline = ##f }

melodyFour = \fixed g' {
  \clef "treble" \key c \minor \time 4/4
  \repeat volta 2 {
    s1
  }
}

\score {
  \melodyFour
  \layout {
    \context { \Score \remove "Bar_number_engraver" }
  }
  \midi { \tempo 4 = 96 }
}
