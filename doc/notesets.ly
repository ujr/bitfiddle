\version "2.18.2"
\pointAndClickOff % gives smaller PDF

% Set custom "paper" size:
#(set! paper-alist (cons '("mine" . (cons (* 14 cm) (* 1.4 cm))) paper-alist))
#(set-default-paper-size "mine")
#(set-global-staff-size 14.14)

\paper {
  indent = 0
  line-width = 120
  print-page-number = ##f
}

\header {
  tagline = ##f
}

setBY = \markup \normalsize {
  "Note set " \typewriter\bold "BY}6YB6%" " or "
  \sans \concat { F \small m \super\smaller 7}}

setQj = \markup \normalsize {
  "Note set " \typewriter\bold "Qj}6jQ6%" " or "
  \sans \concat { C \small m \super\smaller 7}}

\score {
  \fixed c' {
    \clef treble \time 4/4 \key c \minor
    \omit Stem
    \override Staff.TimeSignature.stencil = ##f
    \once \override TextScript.outside-staff-padding = #1
    f4^\setBY aes c' ees aes f ees c \bar "."
    \once \override TextScript.outside-staff-padding = #1
    g4^\setQj bes c' ees bes g ees c \bar "|."
  }
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }
}

