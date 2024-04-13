%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 1)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 1.5) (0 . 2.5)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . 3)) \etc
slurShapeD = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . 1.5)) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ) \etc

moveClefA = \once {
  \override Score.Clef.X-extent = #'(0 . 0)
  \override Score.Clef.extra-offset = #'(-3 . 0)
}

%%% Music %%%

global = {
  \time 3/4
  \key f \major
}

rightHand = \relative {
  \global
  \clef treble
  <c' g' c>2.-> |
  q2.-> |
  q4.-> c8 c4-> |
  q2.-> |
  \repeat unfold 4 { q4. c8 c4 | }
  
  \barNumberCheck 9
  c'8( df b c df b |
  c8 df b c df c |
  cs8 d bs cs d bs |
  cs8 d bs cs d cs |
  d8 ef cs d ef d |
  ef8 ff d ef ff ef |
  e!8 f! ds e f e |
  f8 gf f fs g gs |
  
  \barNumberCheck 17
  a8 g! f! c e d |
  c8 a a' g f d |
  e8 d c a a' g |
  f8 d e d c a) |
  e'8( d c g e' d |
  c a e' d c g |
  f\prall e f a c e |
  f a c e f c |
  
  \barNumberCheck 25
  a'8 g f c e d |
  c8 a a' g f d |
  e8 d c a a' g |
  f d e d c a) |
  e'8( d c g e' d |
  c8 a e' d c g |
  f8\prall e f a c f |
  % Slur starts on c, SrcB
  \ottava 1 f'4) \ottava 0 r c,,( |
  
  \barNumberCheck 33
  a'8 g f c e d |
  c8 a a' g f d |
  e8 d c a a' g |
  f8 d e d c a) |
  e'8( d c g e' d |
  c a e' d c g |
  f\prall e f a c e |
  f a c e f c |
  
  \barNumberCheck 41
  a'8 g f c e d |
  c8 a a' g f d |
  e8 d c a a' g |
  f d e d c a) |
  e'8( d c g e' d |
  c8 a e' d c g |
  f8\prall e f a c f |
  \ottava 1 f'4) \ottava 0 r f,,4~( |
  
  \barNumberCheck 49
  f2 ef4) |
  r4 ef8(\prall d ef f |
  ef2 d4) |
  r4 c8(\prall b c g |
  bf!4 f) r |
  r4 f8( g a bf |
  b8 c d c g' f |
  cs8 d ef d c'! bf) |
  
  \barNumberCheck 57
  f2( ef4) |
  r4 ef8(\prall d ef f |
  ef2-> d4) |
  r4 d8(\prall^\trillFlatParen cs d af |
  c!4 g) r |
  r4 f8( g a! bf |
  b8 c d c g' f |
  <bf,! bf'!>4-.) d8( ef f g |
  
  \barNumberCheck 65
  f2 ef4) |
  r4 ef8(\prall d ef f |
  ef2 d4) |
  r4 c8-\slurShapeA (\prall b c g |
  bf!4 f) r |
  r4 f8( g a bf |
  b8 c d c g' f |
  cs8 d ef d c'! bf) |
  
  \barNumberCheck 73
  f2( ef4) |
  r4 ef8(\prall d ef f |
  ef2-> d4) |
  r4 d8-\slurShapeB (\prall^\trillFlatParen cs d af |
  c!4 g) r |
  r4 f8( g a! bf |
  b8 c d c g' f |
  <bf,! bf'!>4-.) r r |
  
  \barNumberCheck 81
  ef2.-\slurShapeC ( |
  f,2.) |
  \acciaccatura { d8 } f4-. \acciaccatura { f8 } bf4-. \acciaccatura { bf8 } 
    d4-. |
  \acciaccatura { d8 } f4-. \acciaccatura { f8 } bf4-. \acciaccatura { bf8 }
    g4-. |
  ef2.-\slurShapeC ( |
  f,2.) |
  \acciaccatura { c''8 } bf4 \acciaccatura { bf8 } g4 \acciaccatura { g8 } f4 |
  \acciaccatura { f8 } d4 \acciaccatura { d8 } bf4 \acciaccatura { bf8 } g4 |
  
  \barNumberCheck 89
  ef'2.-\slurShapeC ( |
  f,2.) |
  \acciaccatura { d8 } f4-. \acciaccatura { f8 } bf4-. \acciaccatura { bf8 } 
    d4-. |
  \acciaccatura { d8 } f4-. \acciaccatura { f8 } bf4-. \acciaccatura { bf8 }
    g4-. |
  \grace { d16[ e!] } \afterGrace 15/16 e2.\startTrillSpan 
    { d16[(\stopTrillSpan e]) } |
  f4-. a,8( bf c4) |
  % No starting grace notes, SrcA
  \afterGrace 15/16 e2.\startTrillSpan { d16[(\stopTrillSpan e]) } |
  f4-. e8( g f4) |
  
  \barNumberCheck 97
  <ef ef'>2.( |
  <f, f'>2) r4 |
  \acciaccatura { d'8 } f4-. \acciaccatura { f8 } bf4-. \acciaccatura { bf8 } 
    d4-. |
  % Ottava: SrcB
  \ottava 1 \acciaccatura { d8 } f4-. \acciaccatura { f8 } bf4-.
    \acciaccatura { bf8 } g4-. \ottava 0 |
  <ef, ef'>2.( |
  <f, f'>2) r4 |
  \ottava 1 \acciaccatura { c'''8 } bf4 \acciaccatura { bf8 } g4 
    \acciaccatura { g8 } f4 |
  \acciaccatura { f8 } d4 \acciaccatura { d8 } bf4 \acciaccatura { bf8 } g4 
    \ottava 0 |
    
  \barNumberCheck 105
  <ef ef'>2.( |
  <f, f'>2) r4 |
  \acciaccatura { d8 } f4-. \acciaccatura { f8 } bf4-. \acciaccatura { bf8 } 
    d4-. |
  \acciaccatura { d8 } f4-. \acciaccatura { f8 } bf4-. \acciaccatura { bf8 }
    g4-. |
  \grace { d16[ e!] } \afterGrace 15/16 e2.\startTrillSpan 
    { d16[(\stopTrillSpan e]) } |
  f4-. a,8( bf c4) |
  % ScrA has ds for the after grace, but SrcB has a d natural.
  % The natural also agrees with the parallel section above.
  % No starting grace notes: SrcA
  \afterGrace 15/16 e2.\startTrillSpan { d16[(\stopTrillSpan e]) } |
  f4-. e8( g f4) |
  
  \barNumberCheck 113
  gf2.-\slurShapeC ( |
  af,2.) |
  \acciaccatura { f8 } af4-. \acciaccatura { af8 } df4-. \acciaccatura { df8 }
    f4-. |
  \acciaccatura { f8 } af4-. \acciaccatura { af8 } df4-. \acciaccatura { df8 }
    bf4-. |
  gf2.-\slurShapeC ( |
  af,2.) |
  \acciaccatura { ef''8 } df4 \acciaccatura { df8 } bf4 \acciaccatura { bf8 }
    af4 |
  \acciaccatura { af8 } f4 \acciaccatura { f8 } df4 \acciaccatura { df8 }
    bff4 |
    
  \barNumberCheck 121
  gf'2.-\slurShapeC ( |
  af,2.) |
  \acciaccatura { f8 } af4-. \acciaccatura { af8 } df4-. \acciaccatura { df8 }
    f4-. |
  \acciaccatura { f8 } af4-. \acciaccatura { af8 } df4-. \acciaccatura { df8 }
    c4-. |
  \afterGrace 7/8 b2.\startTrillSpan { as16[(\stopTrillSpan b]) } |
  c4-. e,8( f g4) |
  b2.\startTrillSpan |
  bf!2. |
  
  \barNumberCheck 129
  a8(\stopTrillSpan g f c e d |
  c8 a a' g f d |
  e8 d c a a' g |
  f8 d e d c a) |
  e'8( d c g e' d |
  c a e' d c g |
  f\prall e f a c e |
  f a c e f c |
  
  \barNumberCheck 137
  a'8 g f c e d |
  c8 a a' g f d |
  e8 d c a a' g |
  f d e d c a) |
  e'8( d c g e' d |
  c8 a e' d c g |
  f8 a af fs af g |
  f!8 g gf e f fs) |
  
  \barNumberCheck 145
  g!2.->~( |
  g8 f ef a, d c |
  bf4) r r |
  R2. |
  d2.->~( |
  d8 c bf e, a g) |
  f8( a af fs af g |
  % e in SrcA, f in SrcB
  f!8 g gf e f fs) |
  
  \barNumberCheck 153
  g!2.->~( |
  g8 f ef a, d c |
  b2.)~^\perdendosi |
  b2. |
  \after 2 \! R2. |
  \clef bass r4 df8( c bf! e,!) |
  \omit MultiMeasureRestNumber
  \compressMMRests
  R2. * 2 |
  
  \barNumberCheck 161
  \clef treble f''2.->-\slurShapeD ( |
  c,2.->)~ |
  c4 \acciaccatura { c8 } f4-. \acciaccatura { f8 } a4-. |
  \acciaccatura { a8 } c4-. \acciaccatura { c8 } f4-. \acciaccatura { f8 } 
    gs4-. |
  a2.->( |
  c,,->) |
  \acciaccatura { f8 } a4-. \acciaccatura { a8 } c4-. \acciaccatura { c8 }
    f4-. | 
  \acciaccatura { f8 } a4-. \acciaccatura { a8 } c4-. \acciaccatura { c8 }
    f4-. | 
    
  \barNumberCheck 169
  \ottava 1 f'4 \ottava 0 r r |
  <a,,, c f a>4 r r |
  <a, f'>4 r r |
  <f'' c' f>4 r r |
  <f,, f'>2.\fermata |
  \bar "|."
}

leftHandUpper = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  \voiceThree r4 <a c f> <bf d f> |
  r4 <a c f> <bf d f> |
  r4 <a c f> <bf d f> |
  r4 <a c f> q |
  s2. * 4 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  r4 <a c f> <bf d f> |
  r4 <a c f> <bf d f> |
  r4 <a c f> <bf d f> |
  r4 <a c f> q |
  s2. * 4 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 3 |
  s4 <f g bf d>2 |
  s2. |
  r4 <a e'!> <a d> |
  s2. |
  r4 <a c g'> <a c f> |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 3 |
  s4 <f g bf d>2 |
  s2. |
  r4 <a e'!> <a d> |
  s2. |
  r4 <a c g'> <a c f> |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 8 |
  
  \barNumberCheck 129
  \voiceThree r4 <a c f> <bf d f> |
  r4 <a c f> <bf d f> |
  r4 <a c f> <bf d f> |
  r4 <a c f> q |
}

leftHandLower = \relative {
  <c g' bf e>2. |
  q2. |
  q4 r r |
  q2. |
  \repeat unfold 4 { q4 r r | }
  
  \barNumberCheck 9
  q4 r r |
  R2. * 7 |
  
  \barNumberCheck 17
  \voiceFour f2. |
  f2. |
  f2. |
  f2. |
  \oneVoice c4 <bf' c e> q |
  c,4 <bf' c e> q |
  f,4 <a' c> q |
  f4 \clef treble <c' a'> q |
  
  \barNumberCheck 25
  f,4 <c' a'>( <d bf'>) |
  f,4 <c' a'>( <d bf'>) |
  f,4 <c' a'>( <d bf'>) |
  f,4 <c' a'>( <a f'>) |
  \clef bass c,4 <bf' c e> q |
  c,4 \clef treble <bf' c a'>( <bf c g'>) |
  \clef bass f4( <a f'> q |
  f,4) r r |
  
  \barNumberCheck 33
  \voiceFour f'2. |
  f2. |
  f2. |
  f2. |
  \oneVoice c4 <bf' c e> q |
  c,4 <bf' c e> q |
  f,4 <a' c> q |
  f4 \clef treble <c' a'> q |
  
  \barNumberCheck 41
  f,4 <c' a'>( <d bf'>) |
  f,4 <c' a'>( <d bf'>) |
  f,4 <c' a'>( <d bf'>) |
  f,4 <c' a'>( <a f'>) |
  \clef bass c,4 <bf' c e> q |
  c,4 \clef treble <bf' c a'>( <bf c g'>) |
  \clef bass f4-\slurShapeE ( <a f'> q |
  f,4) r r |
  
  \barNumberCheck 49
  g4 <ef' bf' ef> q |
  a,4 <f' c' ef> q |
  bf,4 <f' bf d> q |
  ef,4 <ef' g c> q |
  f,4 <f' d'> q |
  f,4 <f' bf d> q |
  f,4 <f' a ef'> q |
  bf,4 <f' bf d> q |
  
  \barNumberCheck 57
  g,4 <ef' bf' ef> q |
  a,4 <f' c' ef> q |
  fs,4 <fs' a d> q |
  f,!4 <f' af b d> q |
  ef,4 <ef' g c> q |
  f,4 <f' bf! d> q |
  f,4 <f'a ef'> q |
  bf,4 <f' bf d> r |
  
  \barNumberCheck 65
  g,4 <ef' bf' ef> q |
  a,4 <f' c' ef> q |
  bf,4 <f' bf d> q |
  ef,4 <ef' g c> q |
  f,4 <f' d'> q |
  f,4 <f' bf d> q |
  f,4 <f' a ef'> q |
  bf,4 <f' bf d> q |
  
  \barNumberCheck 73
  g,4 <ef' bf' ef> q |
  a,4 <f' c' ef> q |
  fs,4 <fs' a d> q |
  f,!4 <f' af b d> q |
  ef,4 <ef' g c> q |
  f,4 <f' bf! d> q |
  f,4 <f'a ef'> q |
  bf,4 <f' bf d> r |
  
  \barNumberCheck 81
  f,4 <gf' bf ef> q |
  f,4 <f' a ef'> q |
  bf,4 <f' bf d> q |
  q4 q q |
  f,4 <gf' bf ef> q |
  f,4 <f' a ef'> q |
  bf,4 <f' bf d> q |
  q4 q q |
  
  \barNumberCheck 89
  f,4 <gf' bf ef> q |
  f,4 <f' a ef'> q |
  bf,4 <f' bf d> q |
  <f g bf d>4 \voiceFour r d |
  \oneVoice c4 \clef treble <bf' c a'>( <bf c g'>) |
  \moveClefA \clef bass \voiceFour f2. |
  \oneVoice c4 \clef treble <bf' c a'>( <bf c g'>) |
  \moveClefA \clef bass \voiceFour f2. |
  
  \barNumberCheck 97
  \oneVoice f,4 <gf' bf ef> q |
  f,4 <f' a ef'> q |
  bf,4 <f' bf d> q |
  q4 q q |
  f,4 <gf' bf ef> q |
  f,4 <f' a ef'> q |
  bf,4 <f' bf d> q |
  q4 q q |
  
  \barNumberCheck 105
  f,4 <gf' bf ef> q |
  f,4 <f' a ef'> q |
  bf,4 <f' bf d> q |
  <f g bf d>4 \voiceFour r d |
  \oneVoice c4 \clef treble <bf' c a'>( <bf c g'>) |
  \moveClefA \clef bass \voiceFour f2. |
  \oneVoice c4 \clef treble <bf' c a'>( <bf c g'>) |
  \moveClefA \clef bass \voiceFour f2. |
  
  \barNumberCheck 113
  \oneVoice af,4 <af' c gf'> q |
  q4 q q |
  df,4 <af' df f> q |
  q4 q q |
  af,4 <af' c gf'> q |
  q4 q q |
  df,4 <af' df f> q |
  q4 q q |
  
  \barNumberCheck 121
  af,4 <af' c gf'> q |
  q4 q q |
  df,4 <af' df f> <af f'> |
  q4 q q |
  df,4 <g f'> q |
  c,4 <g' c e> q |
  c,4 <g' d'! f> q |
  c,4 <g' bf c e> q |
  
  \barNumberCheck 129
  \voiceFour f2. |
  f2. |
  f2. |
  f2. |
  \oneVoice c4 <bf' c e> q |
  c,4 <bf' c e> q |
  f,4 <a' c> q |
  f4 \clef treble <c' a'> q |
  
  \barNumberCheck 137
  f,4 <c' a'>( <d bf'>) |
  f,4 <c' a'>( <d bf'>) |
  f,4 <c' a'>( <d bf'>) |
  f,4 <c' a'>( <a f'>) |
  \clef bass c,4 <bf' c e> q |
  c,4 \clef treble <bf' c a'>( <bf c g'>) |
  \clef bass <f a f'>4 r r |
  R2. |
  
  \barNumberCheck 145
  f,4 <f' a ef'> q |
  q4 <f ef'> q |
  f,4 <f' bf d>( <e! bf' d> |
  <g bf d>4 <f bf d> <d f'>) |
  f,4 <c' e bf'> q |
  q4 <c bf'> q |
  f,4 <c' a'!> <b a'> |
  <d a'> <c a'> <a a'> |
  
  \barNumberCheck 153
  f4 <ef' c'> q |
  q4 q q |
  f,4 <d' af'> q |
  <df af'> 4 q q |
  f,4 <df' g> q |
  R2. |
  \omit MultiMeasureRestNumber
  \compressMMRests
  R2. * 2 |
  
  \barNumberCheck 161
  <f,, f'>4 <c'' f a> q |
  q4 q q |
  q4 q q |
  <c f a c>4 q q |
  <f,, f'>4 <c'' f a> q |
  q4 q q |
  <c f a c>4 q q |
  q4 q q |
  
  \barNumberCheck 169
  f,,4 r r |
  <f'' c' f>4 r r |
  <f, c'>4 r r |
  <a' c f a>4 r r |
  <f,, f'>2.\fermata |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  s2.\f |
  s2. * 4 |
  s2.\cresc 
  s2. |
  s2 s8 s\! |
  
  \barNumberCheck 9
  s4\sf s2\p |
  s2.\cresc |
  s2. * 5 |
  s2 s8 s\! |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 7 |
  s2 s4\f |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 5 |
  s4 s2\< |
  s2 s8 s\! |
  s2. |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 5 |
  s4 s2\< |
  s2 s8 s\! |
  s2.\sf |
  
  \barNumberCheck 81
  s2.\f |
  s2. |
  s2.\p |
  s2. |
  s2.\f |
  s2. |
  s2.\p |
  s2. |
  
  \barNumberCheck 89
  s2.\f |
  s2. |
  s2.\p |
  s2. |
  s2\> s8 s\! |
  s2. |
  s2\> s8 s\! |
  s2. |
  
  \barNumberCheck 97
  s2.\f |
  s2. |
  s2.\p |
  s2. |
  s2.\f |
  s2. |
  s2.\p |
  s2. |
  
  \barNumberCheck 105
  s2.\f |
  s2. |
  s2.\p |
  s2. |
  s2\> s8 s\! |
  s2. |
  s2\> s8 s\! |
  s2. |
  
  \barNumberCheck 113
  s2.\p |
  s2. * 7 |
  
  \barNumberCheck 121
  s2. * 7 |
  \override DynamicTextSpanner.style = #'none
  s2.\cresc |
  
  \barNumberCheck 129
  s4.\> s\! |
  s2. * 7 |
  
  \barNumberCheck 137
  s2. * 8 |
  
  \barNumberCheck 145
  s2. * 6 |
  s2.\dim |
  s2.\! |
  
  \barNumberCheck 153
  s2. * 6 |
  \hide MultiMeasureRest
  \once \override MultiMeasureRestNumber.Y-offset = -3
  \compressMMRests
  R2. * 2 |
  
  \barNumberCheck 161
  s2.\ff |
}

pedal = {
  s2.\sd |
  s2.
  s8 s\su s2 |
  s2.\sd |
  s8 s\su s2 |
  \repeat unfold 3 { s4.\sd s\su | }
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 4 |
  \repeat unfold 4 { s2\sd s8 s\su | }
  
  \barNumberCheck 25
  \repeat unfold 2 { s2-\tweak Y-offset -2 \sd s4-\tweak Y-offset -2 \su | }
  s2\sd s4\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset 2 \sd s8 s-\tweak Y-offset 2 \su |
  s2\sd s4\su |
  s2.-\tweak Y-offset 2 \sd |
  s8 s-\tweak Y-offset 2 \su s2 |
  
  \barNumberCheck 33
  s2. * 4 |
  s2\sd s8 s\su |
  \override SustainPedal.Y-offset = 2
  \repeat unfold 3 { s2\sd s8 s\su | }
  
  \barNumberCheck 41
  \revert SustainPedal.Y-offset
  \repeat unfold 3 { s2\sd s4\su | }
  s2\sd s8 s\su |
  s2-\tweak Y-offset 2 \sd s8 s-\tweak Y-offset 2 \su |
  s2\sd s4\su |
  s2.\sd |
  s8 s\su s2 |
  
  \barNumberCheck 49
  \repeat unfold 8 { s2\sd s8 s\su | }
  
  \barNumberCheck 57
  \repeat unfold 8 { s2\sd s8 s\su | }
  
  \barNumberCheck 65
  \repeat unfold 8 { s2\sd s8 s\su | }
  
  \barNumberCheck 73
  \repeat unfold 8 { s2\sd s8 s\su | }
  
  \barNumberCheck 81
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  
  \barNumberCheck 89
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s4 s2\su |
  s2. * 4 |
  
  \barNumberCheck 97
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  
  \barNumberCheck 105
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s4 s2\su |
  s2. * 4 |
  
  \barNumberCheck 113
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  
  \barNumberCheck 121
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 129
  s2. * 4 |
  \repeat unfold 4 { s2\sd s8 s\su | }
  
  \barNumberCheck 137
  s2-\tweak Y-offset -2 \sd s4-\tweak Y-offset -2 \su |
  \repeat unfold 2 { s2\sd s4\su | }
  s2\sd s8 s\su |
  s2-\tweak Y-offset 2 \sd s8 s-\tweak Y-offset 2 \su |
  s2\sd s4\su |
  s2. * 2 |
  
  \barNumberCheck 145
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2. * 2 |
  
  \barNumberCheck 153
  s2.\sd |
  s2 s8 s\su |
  \repeat unfold 3 { s2\sd s8 s\su | }
  s2. * 3 |
  
  \barNumberCheck 161
  s2.\sd |
  s2. * 2 |
  s2 s8 s\su |
  s2.\sd |
  s2. * 3 |
  
  \barNumberCheck 169
  s2. * 4 |
  \tag midi { s2 s4\su | } 
}

tempi = {
  \set Score.tempoHideNote = ##t
  \once \override Score.MetronomeMark.Y-offset = 4
  \tempo "Vivace" 2. = 84
  s2. * 8 |
  
  \barNumberCheck 9
  \tempo 2. = 96
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 7 |
  s2 \tempo 2. = 76 s4 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  \tempo 2. = 80
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 8 |
  
  \barNumberCheck 129
  \tempo 2. = 96
  s2. * 8 |
  
  \barNumberCheck 137
  s2. * 8 |
  
  \barNumberCheck 145
  \tempo 2. = 84
  s2. * 8 |
  
  \barNumberCheck 153
  s2. * 8 |
  
  \barNumberCheck 161
  \tempo 2. = 96
  s2. * 8 |
  
  \barNumberCheck 169
  s2. * 4 |
  \tempo 2. = 40
  s2. |
}

forceBreaks = {
  s2. * 8 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \pageBreak
  
  s2. * 5 \break
  s2. * 5 \break
  s2. * 5 \break
  s2. * 7 \break
  s2. * 6 \break
  s2. * 6 \pageBreak
  
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  \grace { s8 } s2. * 6 \break
  s2. * 6 \pageBreak
  
  \grace { s8 } s2. * 6 \break
  \grace { s8 } s2. * 6 \break
  \grace { s8 } s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 5 \pageBreak
  
  s2. * 5 \break
  s2. * 5 \break
  s2. * 6 \break
  s2. * 7 \break
  s2. * 6 \break
  \grace { s8 }
}

waltzThreeNotes =
\score {
  \header {
    title = "Waltz in F major"
    composer = "Frédéric Chopin"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 3"
  } 
  \keepWithTag layout  
  <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \tempi
    \new Devnull \forceBreaks
  >>
  \layout {
    \context { \Dynamics \consists Multi_measure_rest_engraver }
  }
}

\include "articulate.ly"

waltzThreeMidi =
\book {
  \bookOutputName "waltz-op34-no3"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
