\version "2.18.2"
\pointAndClickOff % gives smaller PDF

% Set very small custom "paper" size:
#(set! paper-alist (cons '("mine" . (cons (* 14 cm) (* 10 cm))) paper-alist))
#(set-default-paper-size "mine")
#(set-global-staff-size 11.22)

\paper { indent = 0 print-page-number = ##f left-margin = 0 }
\header { tagline = ##f }

melodyThree = \fixed g' {
  \clef "treble" \key c \minor \time 4/4
  \set Timing.baseMoment= #(ly:make-moment 1/8)
  \set Timing.beamExceptions = #'()   % disable exceptions, if any
  \set Timing.beatStructure = 3,3,2   % one possible interpretation
  \repeat volta 2 {
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
  }
}

\score {
  \melodyThree
  \layout {
    \context { \Score \remove "Bar_number_engraver" }
  }
  \midi { \tempo 4 = 96 }
}

