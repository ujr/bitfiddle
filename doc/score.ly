
\version "2.18.2"
\pointAndClickOff % gives smaller PDF

% Set custom "paper" size:
#(set! paper-alist (cons '("mine" . (cons (* 17 cm) (* 22 cm))) paper-alist))
#(set-default-paper-size "mine")
#(set-global-staff-size 12.60)

\paper {
  indent = 0
  print-page-number = ##f
  left-margin = 20
  right-margin = 20
  top-margin = 15
}

\header {
  title = "Bitshift Variations in C Minor"
  composer = "Rob Miles 2016"
  subtitle = "excerpt • heavy bar marks note set change"
  tagline = ##f
  pdfauthor = "Rob Miles 2016"
  pdfsubject  = "Analysis by UJR"
  pdfkeywords = ##f
}

melodyOne = \fixed g, {
  \clef "bass" \key c \minor \time 4/4
  g1   | bes | c'  | ees \bar "."
  aes1 | f   | ees | c   \bar "||"
  f1   | aes | c'  | ees \bar "||"
  aes1 | f   | ees | c
}

melodyTwo = \fixed g' {
  \clef "treble" \key c \minor \time 4/4
  g2 bes | ees c' | ees c  | g bes \bar "."
  aes2 f | c ees  | c' ees | aes f \bar "||" \break
  f2 aes | ees c' | ees c  | f aes \bar "||"
  aes2 f | c ees  | c' ees | aes f
}

melodyThree = \fixed g' {
  \clef "treble" \key c \minor \time 4/4
%  \set Timing.baseMoment= #(ly:make-moment 1/8)
%  \set Timing.beamExceptions = #'()   % disable exceptions, if any
%  \set Timing.beatStructure = 3,3,2   % one possible interpretation
  g8     bes    c'     g      bes    c'     g      bes  
  ees    bes    c'     ees    bes    c'     ees    bes  
  ees    bes    c'     ees    bes    c'     ees    bes  
  ees    bes    g      ees    bes    g      ees    bes   \bar "."
  ees    aes    f      ees    aes    f      ees    aes  
  ees    c      f      ees    c      f      ees    c    
  ees    c      f      ees    c      f      ees    c    
  aes    c      f      aes    c      f      aes    c    
  aes    c'     f      aes    c'     f      aes    c'   
  aes    c'     ees    aes    c'     ees    aes    c'   
  aes    c'     ees    aes    c'     ees    aes    c'   
  aes    f      ees    aes    f      ees    aes    f    
  aes    f      ees    aes    f      ees    aes    f    
  c      f      ees    c      f      ees    c      f    
  c      f      ees    c      f      ees    c      f    
  c      f      aes    c      f      aes    c      f     \bar "."
%{
  c'     g      bes    c'     g      bes    c'     g    
  c'     ees    bes    c'     ees    bes    c'     ees  
  c'     ees    bes    c'     ees    bes    c'     ees  
  g      ees    bes    g      ees    bes    g      ees   \bar "."
  f      ees    aes    f      ees    aes    f      ees  
  f      ees    c      f      ees    c      f      ees  
  f      ees    c      f      ees    c      f      ees  
  f      aes    c      f      aes    c      f      aes  
  f      aes    c'     f      aes    c'     f      aes  
  ees    aes    c'     ees    aes    c'     ees    aes  
  ees    aes    c'     ees    aes    c'     ees    aes  
  ees    aes    f      ees    aes    f      ees    aes  
  ees    aes    f      ees    aes    f      ees    aes  
  ees    c      f      ees    c      f      ees    c    
  ees    c      f      ees    c      f      ees    c    
  aes    c      f      aes    c      f      aes    c     \bar "."
  bes    c'     g      bes    c'     g      bes    c'   
  bes    c'     ees    bes    c'     ees    bes    c'   
  bes    c'     ees    bes    c'     ees    bes    c'   
  bes    g      ees    bes    g      ees    bes    g     \bar "."
  aes    f      ees    aes    f      ees    aes    f    
  c      f      ees    c      f      ees    c      f    
  c      f      ees    c      f      ees    c      f    
  c      f      aes    c      f      aes    c      f    
  c'     f      aes    c'     f      aes    c'     f    
  c'     ees    aes    c'     ees    aes    c'     ees  
  c'     ees    aes    c'     ees    aes    c'     ees  
  f      ees    aes    f      ees    aes    f      ees  
  f      ees    aes    f      ees    aes    f      ees  
  f      ees    c      f      ees    c      f      ees  
  f      ees    c      f      ees    c      f      ees  
  f      aes    c      f      aes    c      f      aes  
%}
}

melodyFour = \fixed g'' {
  \clef "treble^8" \key c \minor \time 4/4
  g16 c   ees g   c   ees g   c     ees g   c   ees g   c   ees g   
  g   c   bes g   c   bes g   c     bes g   c   bes g   c   bes g   
  g   c'  bes g   c'  bes g   c'    bes g   c'  bes g   c'  bes g   
  ees c'  bes ees c'  bes ees c'    bes ees c'  bes ees c'  bes ees \bar "."
  ees c'  aes ees c'  aes ees c'    aes ees c'  aes ees c'  aes ees 
  ees f   aes ees f   aes ees f     aes ees f   aes ees f   aes ees 
  ees f   aes ees f   aes ees f     aes ees f   aes ees f   aes ees 
  ees f   c   ees f   c   ees f     c   ees f   c   ees f   c   ees 
  ees f   c   ees f   c   ees f     c   ees f   c   ees f   c   ees 
  aes f   c   aes f   c   aes f     c   aes f   c   aes f   c   aes 
  aes f   c'  aes f   c'  aes f     c'  aes f   c'  aes f   c'  aes 
  aes ees c'  aes ees c'  aes ees   c'  aes ees c'  aes ees c'  aes 
  aes ees c'  aes ees c'  aes ees   c'  aes ees c'  aes ees c'  aes 
  aes ees f   aes ees f   aes ees   f   aes ees f   aes ees f   aes 
  aes ees f   aes ees f   aes ees   f   aes ees f   aes ees f   aes 
  c   ees f   c   ees f   c   ees   f   c   ees f   c   ees f   c   \bar "."
%{
  c   ees g   c   ees g   c   ees   g   c   ees g   c   ees g   c   
  c   bes g   c   bes g   c   bes   g   c   bes g   c   bes g   c   
  c'  bes g   c'  bes g   c'  bes   g   c'  bes g   c'  bes g   c'  
  c'  bes ees c'  bes ees c'  bes   ees c'  bes ees c'  bes ees c'  \bar "."
  c'  aes ees c'  aes ees c'  aes   ees c'  aes ees c'  aes ees c'  
  f   aes ees f   aes ees f   aes   ees f   aes ees f   aes ees f   
  f   aes ees f   aes ees f   aes   ees f   aes ees f   aes ees f   
  f   c   ees f   c   ees f   c     ees f   c   ees f   c   ees f   
  f   c   ees f   c   ees f   c     ees f   c   ees f   c   ees f   
  f   c   aes f   c   aes f   c     aes f   c   aes f   c   aes f   
  f   c'  aes f   c'  aes f   c'    aes f   c'  aes f   c'  aes f   
  ees c'  aes ees c'  aes ees c'    aes ees c'  aes ees c'  aes ees 
  ees c'  aes ees c'  aes ees c'    aes ees c'  aes ees c'  aes ees 
  ees f   aes ees f   aes ees f     aes ees f   aes ees f   aes ees 
  ees f   aes ees f   aes ees f     aes ees f   aes ees f   aes ees 
  ees f   c   ees f   c   ees f     c   ees f   c   ees f   c   ees \bar "."
  ees g   c   ees g   c   ees g     c   ees g   c   ees g   c   ees 
  bes g   c   bes g   c   bes g     c   bes g   c   bes g   c   bes 
  bes g   c'  bes g   c'  bes g     c'  bes g   c'  bes g   c'  bes 
  bes ees c'  bes ees c'  bes ees   c'  bes ees c'  bes ees c'  bes \bar "."
  aes ees c'  aes ees c'  aes ees   c'  aes ees c'  aes ees c'  aes 
  aes ees f   aes ees f   aes ees   f   aes ees f   aes ees f   aes 
  aes ees f   aes ees f   aes ees   f   aes ees f   aes ees f   aes 
  c   ees f   c   ees f   c   ees   f   c   ees f   c   ees f   c   
  c   ees f   c   ees f   c   ees   f   c   ees f   c   ees f   c   
  c   aes f   c   aes f   c   aes   f   c   aes f   c   aes f   c   
  c'  aes f   c'  aes f   c'  aes   f   c'  aes f   c'  aes f   c'  
  c'  aes ees c'  aes ees c'  aes   ees c'  aes ees c'  aes ees c'  
  c'  aes ees c'  aes ees c'  aes   ees c'  aes ees c'  aes ees c'  
  f   aes ees f   aes ees f   aes   ees f   aes ees f   aes ees f   
  f   aes ees f   aes ees f   aes   ees f   aes ees f   aes ees f   
  f   c   ees f   c   ees f   c     ees f   c   ees f   c   ees f   
%}
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
    } { \tempo 4 = 120 \melodyFour }
    \new Staff \melodyThree
    \new Staff \melodyTwo
    \new Staff \melodyOne
  >>
  \layout {
    \context { \Score \remove "Bar_number_engraver" }
  }
  \midi { \tempo 4 = 120 }
}

\markup { "etc." }

