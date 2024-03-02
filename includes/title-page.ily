\version "2.24.0"

titlePage = \bookpart {

  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }

  \markup { \fill-line { \center-column {
    \vspace #14
    \line { \abs-fontsize #36 \bold "Three Waltzes" }
    \vspace #3
    \line { \abs-fontsize #20 "Opus 34" }
    \vspace #4
    \fill-line { \abs-fontsize #20 "by Frédéric Chopin" }
    \vspace #4	
    \line { \abs-fontsize #14 "for Piano"}
  } } } 
}