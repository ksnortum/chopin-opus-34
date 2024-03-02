%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

#(set-global-staff-size 18)

\header {
  composer = ##f
  opus = "Opus 34"
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/2/25/IMSLP114784-PMLP02370-FChopin_Waltzes,_Op.34_BH9.pdf" % SrcA
  source = "https://vmirror.imslp.org/files/imglnks/usimg/f/fc/IMSLP82141-PMLP02370-FChopin_Waltzes_Op34.pdf" % SrcB
  copyright = \markup { 
    \center-column {
      "Copyright © 2024 Knute Snortum. This work is licensed under the" 
      \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
      "Creative Commons Attribution-ShareAlike 4.0 International License."
    }
  }
}

\paper {
  print-all-headers = ##t
  ragged-right = ##f
  ragged-last-bottom = ##f
  min-systems-per-page = 5
  
  system-system-spacing = #'((basic-distance . 12)
                             (minimum-distance . 8)
                             (padding . 2)
                             (stretchability . 60)) % all default values
  
  score-system-spacing = #'((basic-distance . 12)
                            (minimum-distance . 8)
                            (padding . 1)
                            (stretchability . 60)) % defaults: 14, 8, 1, 120
  
  last-bottom-spacing = 
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  top-system-spacing.minimum-distance = 10
    
  #(set-paper-size "letter")
  
  two-sided = ##t
  inner-margin = 12\mm
  outer-margin = 8\mm
}

\layout {
  \context {
    \Score
    \omit BarNumber
    \override Slur.details.free-head-distance = 1
  }
  \context {
    \Voice
    \override Tie.minimum-length = 3
  }
}

\midi {
  \context {
    \Staff
    \consists "Dynamic_performer"
  }
  \context {
    \Voice
    \remove "Dynamic_performer"
  } 
  \context {
    \Score
    midiMinimumVolume = #0.20
    midiMaximumVolume = #0.99
  }  
}
