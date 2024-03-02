%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

% Scheme

crescWhiteoutMarkup = \markup \whiteout \pad-markup #0.5 "cresc."
crescWhiteout = 	
  #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 
               'span-text crescWhiteoutMarkup)
perdendosi =
  #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text
               'span-text "perdendosi")
 
% Definitions

staffDown = \change Staff = "lower"
staffUp   = \change Staff = "upper"

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

strictSpacingOn = {
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  \newSpacingSection
}

strictSpacingOff = {
  \override Score.SpacingSpanner.strict-note-spacing = ##f
  \newSpacingSection
}

barLinesOff = {
  \omit Staff.BarLine 
  \omit Score.SpanBar
}

barLinesOn = {
  \undo \omit Staff.BarLine
  \undo \omit Score.SpanBar
}


% Markup

dolce = \markup \large \italic "dolce"
md = \markup \large \italic "m.d."
crescParen = \markup \large \italic \whiteout \pad-markup #0.25 "(cresc.)"
sostenuto = \markup \large \italic "sostenuto"
pocoRiten = \markup \large \italic "poco riten."

trillFlatParen = \markup \tiny \concat { "(" \flat ")" }
