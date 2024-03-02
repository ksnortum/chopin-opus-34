%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 2.5) (0 . -2) (0 . -2) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . -3) (0 . -3) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0) (0 . -2.5) (0 . -2.5) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 1) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeE = \shape #'((1 . -0.5) (1 . -0.5) (0 . -0.5) (0 . 0)) \etc
slurShapeF = \shape #'(
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ((0 . 2) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeG = \shape #'((0 . 0) (0 . -8) (0 . -5) (0 . 2)) \etc
slurShapeH = \shape #'((0 . 3) (0 . 3) (0 . 1) (0 . 0)) \etc
slurShapeI = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) \etc
slurShapeJ = \shape #'((0 . 1) (0 . -1) (0 . -0.5) (0 . 0)) \etc
slurShapeK = \shape #'((0 . 1) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeL = \shape #'((0 . 1) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeM = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 1))
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeO = \shape #'((0 . 2) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeP = \shape #'(
                        ((0 . 1) (0 . 2) (0 . 3) (0 . 4))
                        ((0 . 5) (0 . 4) (0 . 4) (0 . 1))
                        ) \etc
slurShapeQ = \shape #'((0 . 1) (0 . 3) (0 . 5) (0 . 1)) \etc
slurShapeR = \shape #'(
                        ((0 . 1) (0 . -1) (0 . -3) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 2.5))
                        ) \etc

rotateHairpinA = \once \override Hairpin.rotation = #'(10 -1 0)
rotateHairpinB = \once {
  \override Hairpin.rotation = #'(20 1 0)
  \override Hairpin.extra-offset = #'(0 . 3)
}

%%% Music %%%

global = {
  \time 3/4
  \key a \minor
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  r4 <c' e>( <c a'>) |
  r4 <b d>( <b a'>) |
  r4 <c e>( <c a'>) |
  r4 <b d>( <b a'>) |
  r4 <c e>( <c a'>) |
  r4 <ds fs>( <ds a'>) |
  r4 <d! e>( <d gs>) |
  r4 d( <d gs>) |
  
  \barNumberCheck 9
  r4 <c e>( <c a'>) |
  r4 <b d>( <b a'>) |
  r4 <c e>( <c a'>) |
  r4 <b d>( <b a'>) |
  r4 <c e>( <c a'>) |
  r4 <ds fs>( <ds a'>) |
  r4 <d! e>( <d gs>) |
  <c a'>4 r e-\slurShapeD ( |
  
  \barNumberCheck 17
  e'4 a,4. b8) |
  r4 a( gs) |
  f'4( b,4. c8) |
  r4 b( a) |
  a'4.( g8 \tuplet 3/2 { g f e } |
  g8 f a, b c d |
  e d d, a' c b |
  a8\prall gs)-\slurShapeK ( \tuplet 7/4 { b c d ds e g! f } |
  
  \barNumberCheck 25
  % Second ds e, SrcA, it's unclear what under them (figerings?) so using 
  % tenuto from SrcB instead. 
  \tuplet 7/6 { ds8 e ds,-- e-- c' b a }
  \slashedGrace { b8 } a4 gs) gs-\slurShapeF ( |
  f8 f' \tuplet 3/2 { as, b c } \tuplet 3/2 { b d c) } |
  b4( a!) a |
  \voiceOne a'2.( |
  a2. |
  a2. |
  a2. |
  
  \barNumberCheck 33
  e2. |
  e2. |
  e2. |
  \oneVoice a,4) r a-> |
  a4\trill g8( b d f_~ | 
  <f a>4 <e g>) q( |
  g,)\prall fs8^( f e' d~ |
  << { \voiceOne d4 } \new Voice { \voiceTwo f, } >> <e c'>) \oneVoice q |
  
  \barNumberCheck 41
  f4\prall e8( gs b d_~ |
  <d f>4 <c e>) q( |
  e,4)\prall ds8^( d c' b~ |
  <d, b'>4 <c a'>) q->( |
  <b a'>4\prall g'!8 b d f_~ |
  <f a>4 <e g>) q( |
  g,4)\prall fs8^( f e' d~ |
  << { \voiceOne d4 } \new Voice { \voiceTwo f, } >> <e c'>) \oneVoice q |
  
  \barNumberCheck 49
  f4\prall e8( gs b d_~ |
  <d f>4 <c e>) q( |
  e,4)\prall ds8^( d c' b |
  a8 gs f' e ds d) |
  \bar "||"
  \key a \major
  cs2.^\sostenuto( |
  b2 a4 |
  \grace { gs16[ a] } gs4 fss8 gs a b |
  a2.) |
  
  \barNumberCheck 57
  b2.( |
  cs2 a4 |
  \grace { fs16[ gs] } fs4 es8 fs e'! d |
  b2 bs4 |
  cs2. |
  b2 a4 |
  \grace { gs16[ a] } gs4 fss8 gs a b |
  a2.) |
  
  \barNumberCheck 65
  e8( a b cs d e |
  fs8 d' cs e, cs a' |
  \voiceTwo fs8 a, fs d' cs e, |
  \oneVoice <cs a'>2) c4-\slurShapeH ( |
  \bar "||"
  \key a \minor 
  c'2. |
  bf2 a4 |
  \grace { gs16[ a] } gs4 fss8 gs a b! |
  a2.) |
  
  \barNumberCheck 73
  b2.-\slurShapeG ( |
  c2 a4 |
  \grace { f16[ g] } f4 e8 f e' d |
  b2.) |
  c2.( |
  bf2 a4 |
  \grace { gs16[ a] } gs4 fss8 gs a b! |
  a2.) |
  
  \barNumberCheck 81
  e8-\slurShapeI ( a b c d e |
  f8 d' c e, c a' |
  \voiceTwo f8 a, f d' c e, |
  \oneVoice <c a'>4) r e-\slurShapeJ ( |
  e'4 a,4. b8) |
  r4 a( gs) |
  f'4( b,4. c8) |
  r4 b( a) |
  
  \barNumberCheck 89
  a'4.( g8 \tuplet 3/2 { g f e } |
  g8 f a, b c d |
  e d d, a' c b |
  a8\prall gs)-\slurShapeK ( \tuplet 7/4 { b c d ds e g! f } |
  \tuplet 7/6 { ds8 e ds,-- e-- c' b a }
  \slashedGrace { b8 } a4 gs) gs( |
  f8 f' \tuplet 3/2 { as, b c } \tuplet 3/2 { b d c) } |
  b4( a!) a |
  
  \barNumberCheck 97
  \voiceOne a'2.( |
  a2. |
  a2. |
  a2. |
  e2. |
  e2. |
  e2. |
  \oneVoice a,4) r a-> |
  
  \barNumberCheck 105
  a4\trill g8( b d f_~ | 
  <f a>4 <e g>) q( |
  g,)\prall fs8^( f e' d~ |
  << { \voiceOne d4 } \new Voice { \voiceTwo f, } >> <e c'>) \oneVoice q |
  f4\prall e8( gs b d_~ |
  <d f>4 <c e>) q( |
  e,4)\prall ds8^( d c' b~ |
  <d, b'>4 <c a'>) q->( |
  
  \barNumberCheck 113
  <b a'>4\prall g'!8 b d f_~ |
  <f a>4 <e g>) q( |
  g,4)\prall fs8^( f e' d~ |
  << { \voiceOne d4 } \new Voice { \voiceTwo f, } >> <e c'>) \oneVoice q |
  f4\prall e8( gs b d_~ |
  <d f>4 <c e>) q( |
  e,4)\prall ds8^( d c' b |
  a8 gs f' e ds d) |
  
  \barNumberCheck 121
  \bar "||"
  \key a \major
  cs2.-\slurShapeM (^\sostenuto |
  b2 a4 |
  \grace { gs16[ a] } gs4 fss8 gs a b |
  a2.) |
  b2.-\slurShapeN ( |
  cs2 a4 |
  \grace { fs16[ gs] } fs4 es8 fs e'! d |
  b2 bs4 |
  
  \barNumberCheck 129
  cs2. |
  b2 a4 |
  \grace { gs16[ a] } gs4 fss8 gs a b |
  a2.) |
  e8-\slurShapeI ( a b cs d e |
  fs8 d' cs e, cs a' |
  \voiceTwo fs8 a, fs d' cs e, |
  \oneVoice <cs a'>2) c4-\slurShapeH ( |
  
  \barNumberCheck 137
  \bar "||"
  \key a \minor 
  c'2. |
  bf2 a4 |
  \grace { gs16[ a] } gs4 fss8 gs a b! |
  a2.) |
  b2.-\slurShapeG ( |
  c2 a4 |
  \grace { f16[ g] } f4 e8 f e' d |
  b2.) |
  
  \barNumberCheck 145
  c2.( |
  bf2 a4 |
  \grace { gs16[ a] } gs4 fss8 gs a b! |
  a2.) |
  e8-\slurShapeI ( a b c d e |
  f8 d' c e, c a' |
  \voiceTwo f8 a, f d' c e, |
  \oneVoice <c a'>4) r <c e>->~ |
  
  \barNumberCheck 153
  q4 q( <c a'>) |
  r4 <b d>( <b a'>) |
  r4 <c e>( <c a'>) |
  r4 <b d>( <b a'>) |
  r4 <c e>( <c a'>) |
  r4 <ds fs>( <ds a'>) |
  r4 <d! e>( <d gs>) |
  r4 d( <d gs>) |
  
  \barNumberCheck 161
  r4 <c e>( <c a'>) |
  r4 <b d>( <b a'>) |
  r4 <c e>( <c a'>) |
  r4 <b d>( <b a'>) |
  r4 <c e>( <c a'>) |
  r4 <ds fs>( <ds a'>) |
  r4 <d! e>( <d gs>) |
  r4 <c e>( <c a'>) |
  
  \barNumberCheck 169
  r4 <b f'>( <b f' g>) |
  r4 <c g'>( <c e g>) |
  r4 <b f'! g>( <f' g>) |
  r4 <e g>( <e c'>) |
  r4 gs( <d e gs>) |
  r4 <c e a>( q) |
  r4 <b ds a'>( q) |
  r4 <ds a' b>( q) |
  
  \barNumberCheck 177
  r4 <e gs b>( <gs b>) |
  r4 \voiceOne s b~ |
  b4 b fs'~ |
  fs4 gs ds |
  fs4 e2 |
  r4 \voiceOne s b~ |
  b4 b fs'~ |
  fs4 gs ds |
  
  \barNumberCheck 185
  fs4 e2~ |
  e2. |
  \oneVoice r4 <gs, b>( q |
  e'2 e,4)~ |
  e4 <c e>( <c a'>) |
  r4 <b d>( <b a'>) |
  r4 <c e>( <c a'>) |
  r4 <b d>( <b a'>) |
  
  \barNumberCheck 193
  r4 <c e>( <c a'>) |
  r4 <ds fs>( <ds a'>) |
  r4 <d! e>( <d gs>) |
  r4 d( <d gs>) |
  r4 <c e>( <c a'>) |
  r4 <b d>( <b a'>) |
  r4 <c e>( <c a'>) |
  r4 <b d>( <b a'>) |
  
  \barNumberCheck 201
  r4 <c e>( <c a'>) |
  r4 <ds fs>( <ds a'>) |
  r4 <d! e>( <d gs>) |
  <c a'>4 r r |
  \bar "|."
}

rightHandLower = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 4 |
  \voiceTwo a''4. g8 f e |
  g4. f8 e d |
  f4. e8 d cs |
  \omit TupletBracket
  e8[ \tuplet 3/2 { d16 e d] } cs8 d e f |
  
  \barNumberCheck 33
  e4. d8 c! b |
  d4. c8 b a |
  c4. e,8 c' b |
  s2. * 5 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 2 |
  s4 \voiceOne fs s |
  s2. * 5 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 2 |
  s4 f s |
  s2. * 5 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  \voiceTwo a'4. g8 f e |
  g4. f8 e d |
  f4. e8 d cs |
  \omit TupletBracket
  e8[ \tuplet 3/2 { d16 e d] } cs8 d e f |
  e4. d8 c! b |
  d4. c8 b a |
  c4. e,8 c' b |
  s2. |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 8 |
  
  \barNumberCheck 129
  s2. * 6 |
  s4 \voiceOne fs s |
  s2. |
  
  \barNumberCheck 137
  s2. * 8 |
  
  \barNumberCheck 145
  s2. * 6 |
  s4 f s |
  s2. |
  
  \barNumberCheck 153
  s2. * 8 |
  
  \barNumberCheck 161
  s2. * 8 |
  
  \barNumberCheck 169
  s2. * 8 |
  
  \barNumberCheck 177
  s2. |
  s4 \voiceTwo b-\slurShapeP ^( gs |
  r4 a <a b> |
  r4 q q |
  r4 <gs b> q) |
  s4 \voiceTwo b-\slurShapeQ ^( gs |
  r4 a <a b> |
  r4 q q |
  
  \barNumberCheck 185
  r4 <gs b> q |
  r4 <gs b> q) |
}

rightHand = {
  \global
  \clef treble
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}
  

leftHandUpper = \relative {
  \voiceThree e2( d8 e |
  f2 g8 f |
  e2)-\slurShapeA ( d8 e |
  f2 g8 f |
  \oneVoice e2)\trill \hideNoteHead ds4-\slurShapeB ( |
  \voiceThree c'2 b8 a |
  b4_\< c8 b as b\! |
  e2 e,4) |
  
  \barNumberCheck 9
  e2( d8 e |
  f2 g8 f |
  e2)-\slurShapeA ( d8 e |
  f2 g8 f |
  \oneVoice e2)\trill \hideNoteHead ds4-\slurShapeC ( |
  \voiceThree c'2 b8 a |
  b2 c8 b |
  \oneVoice a4) r r |
  
  \barNumberCheck 17
  s2. * 5 |
  \voiceThree r4 <f a e'> <f a d> |
  r4 
    << 
      { \voiceFour a2_~ | a4-\slurShapeE ^( gs) } 
      \new Voice { s4 \voiceThree d'~ | d2 } 
    >> s4 |
    
  \barNumberCheck 25
  s2. * 4 |
  \voiceThree r4 <g, a e'> q |
  r4 <f a d> q |
  r4 <a cs g'> q |
  r4 <a d a'> s |
  
  \barNumberCheck 33
  s2. * 3 |
  r4 <e c'> s |
  s2. * 4 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 4 |
  \key a \major
  s2. * 2 |
  r4 <b' d>2 |
  r4 < a cs> q |
  
  \barNumberCheck 57
  r4 <gs b e> r |
  s2. |
  r4 <fs b d> s4 |
  r4 <gs d' fs> <gs d' e> |
  s2. |
  r4 <fs b> q |
  r4 <b d> q |
  r4 <a c>2 |
  
  \barNumberCheck 65
  s2. * 3 |
  r4 <e a e'> s4 |
  \key a \minor
  s2. * 2 |
  r4 <b'! d> q |
  r4 <a c> q |
  
  \barNumberCheck 73
  r4 <gs b e> r |
  r4 <e a e'> q |
  r4 <f bf d> q |
  r4 <gs d' f> <gs d' e> |
  s2. |
  r4 <f bf> q |
  r4 <b! d> q |
  r4 <a c>2 |
  
  \barNumberCheck 81
  s2. * 3 |
  r4 <e a> s |
  s2. * 4 |
  
  \barNumberCheck 89
  s2. |
  \voiceThree r4 <f a e'> <f a d> |
  r4 
    << 
      { \voiceFour a2_~ | a4-\slurShapeE ^( gs) } 
      \new Voice { s4 \voiceThree d'~ | d2 } 
    >> s4 |
  s2. * 4 |
  
  \barNumberCheck 97
  \voiceThree r4 <g, a e'> q |
  r4 <f a d> q |
  r4 <a cs g'> q |
  r4 <a d a'> s |
  s2. * 3 |
  r4 <e c'> s |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  \key a \major
  s2. * 2 |
  r4 <b' d>2 |
  r4 < a cs> q |
  r4 <gs b e> r |
  s2. |
  r4 <fs b d> s4 |
  r4 <gs d' fs> <gs d' e> |
  
  \barNumberCheck 129
  s2. |
  r4 <fs b> q |
  r4 <b d> q |
  r4 <a c>2 |
  s2. * 3 |
  r4 <e a e'> s4 |
  
  \barNumberCheck 137
  \key a \minor
  s2. * 2 |
  r4 <b'! d> q |
  r4 <a c> q |
  r4 <gs b e> r |
  r4 <e a e'> q |
  r4 <f bf d> q |
  r4 <gs d' f> <gs d' e> |
  
  \barNumberCheck 145
  s2. |
  r4 <f bf> q |
  r4 <b! d> q |
  r4 <a c>2 |
  s2. * 3 |
  r4 <e a> s |
  
  \barNumberCheck 153
  e2( d8 e |
  f2 g8 f |
  e2)( d8 e |
  f2 g8 f |
  \oneVoice e2)\trill \hideNoteHead ds4-\slurShapeB ( |
  \voiceThree c'2 b8 a |
  b4_\< c8 b as b\! |
  e2 e,4) |
  
  \barNumberCheck 161
  e2( d8 e |
  f2 g8 f |
  e2)-\slurShapeO ( d8 e |
  f2 g8 f |
  \oneVoice e2)\trill \hideNoteHead ds4-\slurShapeC ( |
  \voiceThree c'2 b8 a |
  b2 c8 b |
  \oneVoice a2.) |
  
  \barNumberCheck 169
  s2. * 8 |
  
  \barNumberCheck 177
  s2. * 8 |
  
  \barNumberCheck 185
  s2. * 4
  \voiceThree e2( d8 e |
  f2 g8 f |
  e2)-\slurShapeA ( d8 e |
  f2 g8 f |
  
  \barNumberCheck 193
  \oneVoice e2)\trill \hideNoteHead ds4-\slurShapeR ( |
  \voiceThree c'2 b8 a |
  b4_\< c8 b as b\! |
  e2 e,4) |
  e2( d8 e |
  f2 g8 f |
  e2)-\slurShapeA ( d8 e |
  f2 g8 f |
  
  \barNumberCheck 201
  \oneVoice e2)\trill \hideNoteHead ds4-\slurShapeC ( |
  \voiceThree c'2 b8 a |
  b2 c8 b |
  \oneVoice a4) r r |
}

leftHandLower = \relative {
  \voiceFour a,2.~ |
  a2.~ |
  a2.~ |
  a2. |
  s2 ds8 e~ |
  e2.~ |
  e2.~ |
  e2 e4 |
  
  \barNumberCheck 9
  a,2.~ |
  a2.~ |
  a2.~ |
  a2. |
  s2 ds8 e~ |
  e2.~ |
  e2. |
  s2. |
  
  \barNumberCheck 17
  \oneVoice a,4 <e' c'> q |
  b4 <e d'> q |
  b4 <f' gs d'> q |
  c4 <f a f'> q |
  cs4 <g' a f'> <g a e'> |
  \voiceTwo d2. |
  f2. |
  e2 \oneVoice r4 |
  
  \barNumberCheck 25
  a,4 <e' c'> q |
  b4 <e d'> q |
  b4 <f' gs d'> q |
  c4 <f a f'> q |
  \voiceFour cs2. |
  d2. |
  e2. |
  f2 \oneVoice r4 |
  
  \barNumberCheck 33
  gs,4 <e' b' d> q |
  a,4 <e' c'> q |
  e,4 <e' gs d'> q |
  \voiceFour a,2 \oneVoice r4 |
  b4 f''8( g, a g) |
  c,4 <g' e'> q |
  g,4 d'8( g a b) |
  c,4 <g' c> <a c> |
  
  \barNumberCheck 41
  e,4 d''8( e, f e) |
  a,4 <e' a c> q |
  e,4 b'8( e fs gs) |
  a,4 <e' a> <d f!> |
  g,!4 f''8( g, a g) |
  c,4 <g' e'> q |
  g,4 d'8( g a b) |
  c,4 <g' c> <a c> |
  
  \barNumberCheck 49
  e,4 d''8( e, f e) |
  a,4 <e' a c> q |
  e,4( b' gs' |
  d'4 \clef treble b') r |
  \key a \major
  \clef bass a,,4 <e' cs'> <e g cs> |
  d4 <fs d'> <fs b d> |
  \voiceFour e2 es4 |
  fs2. |
  
  \barNumberCheck 57
  e2 d4 |
  \oneVoice cs <gs' b es> <fs a fs'> |
  \voiceFour d2 b4 |
  e2. |
  \oneVoice  a,4 <e' a cs> q |
  \voiceFour d2. |
  e2. |
  f2 ds4 |
  
  \barNumberCheck 65
  \oneVoice e4 \clef treble <cs'! a'> r |
  R2. |
  \clef bass e,,4 <e' gs d'> q |
  \voiceFour a,2 \oneVoice r4 |
  \key a \minor
  a4 <e' a c> q |
  d4 <f bf d> q |
  \voiceFour e2. |
  f2. |
  
  \barNumberCheck 73
  e2 d4 |
  c2. |
  d2. |
  e2. |
  \oneVoice a,4 <e' a c> q |
  \voiceFour d2. |
  e2. |
  f2 ds4 |
   
  \barNumberCheck 81
  \oneVoice e4 \clef treble <c' a'> r |
  R2. |
  \clef bass e,,4 <e' gs d'> q |
  \voiceFour a,2 \oneVoice r4 |
  \oneVoice a4 <e' c'> q |
  b4 <e d'> q |
  b4 <f' gs d'> q |
  c4 <f a f'> q |
  
  \barNumberCheck 89
  cs4 <g' a f'> <g a e'> |
  \voiceTwo d2. |
  f2. |
  e2 \oneVoice r4 |  
  a,4 <e' c'> q |
  b4 <e d'> q |
  b4 <f' gs d'> q |
  c4 <f a f'> q |
  
  \barNumberCheck 97
  \voiceFour cs2. |
  d2. |
  e2. |
  f2 \oneVoice r4 |
  gs,4 <e' b' d> q |
  a,4 <e' c'> q |
  e,4 <e' gs d'> q |
  \voiceFour a,2 \oneVoice r4 |
  
  \barNumberCheck 105
  b4 f''8( g, a g) |
  c,4 <g' e'> q |
  g,4 d'8( g a b) |
  c,4 <g' c> <a c> |
  e,4 d''8( e, f e) |
  a,4 <e' a c> q |
  e,4 b'8( e fs gs) |
  a,4 <e' a> <d f!> |
  
  \barNumberCheck 113
  g,!4 f''8( g, a g) |
  c,4 <g' e'> q |
  g,4 d'8( g a b) |
  c,4 <g' c> <a c> |
  e,4 d''8( e, f e) |
  a,4 <e' a c> q |
  e,4-\slurShapeL ( b' gs' |
  d'4 \clef treble b') r |
  
  \barNumberCheck 121
  \key a \major
  \clef bass a,,4 <e' cs'> <e g cs> |
  d4 <fs d'> <fs b d> |
  \voiceFour e2 es4 |
  fs2. |
  e2 d4 |
  \oneVoice cs <gs' b es> <fs a fs'> |
  \voiceFour d2 b4 |
  e2. |
  
  \barNumberCheck 129
  \oneVoice  a,4 <e' a cs> q |
  \voiceFour d2. |
  e2. |
  f2 ds4 |
  \oneVoice e4 \clef treble <cs'! a'> r |
  R2. |
  \clef bass e,,4 <e' gs d'> q |
  \voiceFour a,2 \oneVoice r4 |
  
  \barNumberCheck 137
  \key a \minor
  a4 <e' a c> q |
  d4 <f bf d> q |
  \voiceFour e2. |
  f2. |
  e2 d4 |
  c2. |
  d2. |
  e2. |
  
  \barNumberCheck 145
  \oneVoice a,4 <e' a c> q |
  \voiceFour d2. |
  e2. |
  f2 ds4 |
  \oneVoice e4 \clef treble <c' a'> r |
  R2. |
  \clef bass e,,4 <e' gs d'> q |
  \voiceFour a,2 \oneVoice r4 |
  
  \barNumberCheck 153
  \voiceFour a2.~ |
  a2.~ |
  a2.~ |
  a2. |
  s2 ds8 e~ |
  e2.~ |
  e2.~ |
  e2 e4 |
  
  \barNumberCheck 161
  a,2.~ |
  a2.~ |
  a2.~ |
  a2. |
  s2 ds8 e~ |
  e2.~ |
  e2. |
  s2. |
  
  \barNumberCheck 169
  \oneVoice \acciaccatura { g,8 } a'4(_\> g8 f e d\! |
  c8_\< d e f fs g |
  a8 g fs g a b |
  c8 d c b c d\! |
  f4_\> e8 d c b |
  d8 c b a gs a |
  b8 a g! f e f |
  g f e f g, f)\! |
  
  \barNumberCheck 177
  \rotateHairpinA e8(_\< b' e gs b e\! |
  gs4_\> fs8 e ds cs\! |
  ds_\> cs b fs b,4)\! |
  ds'8(_\> cs b fs b,4)\! |
  \rotateHairpinA e,8(_\< b' e gs b e\! |
  gs4_\> fs8 e ds cs\! |
  ds_\> cs b fs b,4)\! |
  ds'8(_\> cs b fs b,4)\! |
  
  \barNumberCheck 185
  \rotateHairpinA e,8(_\< b' e gs b e\! |
  gs4_\> e8 b gs e)\! |
  \rotateHairpinB e,8_(_\< b' e b' \staffUp e b')\! |
  \staffDown R2. |
  \voiceFour a,,2.~ |
  a2.~ |
  a2.~ |
  a2. |
  
  \barNumberCheck 193
  s2 ds8 e~ |
  e2.~ |
  e2.~ |
  e2 e4 |
  a,2.~ |
  a2.~ |
  a2.~ |
  a2. |
  
  \barNumberCheck 201
  s2 ds8 e~ |
  e2.~ |
  e2. |
  s2. |
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
  s2.\p |
  s2. * 7 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 4 |
  % key a major
  s2.\f |
  s2. * 3 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 4 |
  % key a minor
  s2.\p |
  s2. * 3 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2.\pp |
  s2. * 7 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  % key a major
  s2.\f |
  s2. * 7 |
  
  \barNumberCheck 129
  s2. * 8 |
  
  \barNumberCheck 137
  % key a minor
  s2.\p |
  s2. * 7 |
  
  \barNumberCheck 145
  s2. * 4 |
  s2.-\tweak X-offset 0 -\tweak Y-offset -5 \pp |
  s2. * 3 |
  
  \barNumberCheck 153
  s2. * 8 |
  
  \barNumberCheck 161
  s2. * 8 |
  
  \barNumberCheck 169
  s2. * 8 |
  
  \barNumberCheck 177
  s2.-\tweak X-offset 0 -\tweak Y-offset -5 \pp |
  s2. * 7 |
  
  \barNumberCheck 185
  s2. * 2 |
  s2.^\pocoRiten |
}

pedal = {
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2. * 5 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2. * 5 |
  
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
  s2. * 4 |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2. |
  
  \barNumberCheck 137
  s2. * 8 |
  
  \barNumberCheck 145
  s2. * 4 |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2. |
  
  \barNumberCheck 153
  s2. * 8 |
  
  \barNumberCheck 161
  s2. * 8 |
  
  \barNumberCheck 169
  s2. * 8 |
  
  \barNumberCheck 177
  s2.-\tweak Y-offset -2 \sd |
  s4 s2\su |
  s4 s2\sd |
  s4\su s4.\sd s8\su |
  s2.-\tweak Y-offset -2 \sd |
  s4 s2\su |
  s4 s2\sd |
  s4\su s4.\sd s8\su |
  
  \barNumberCheck 185
  s2.-\tweak Y-offset -2 \sd |
  s2. * 3 |
  s2.\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \once \override Score.MetronomeMark.Y-offset = 4
  \tempo "Lento" 2. = 44
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 4
  \tempo 2. = 48
  s2. * 4 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 4 |
  \tempo 2. = 44
  s2. * 4 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
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
  \tempo 2. = 48
  s2. * 8 |
   
  \barNumberCheck 129
  s2. * 8 |
  
  \barNumberCheck 137
  \tempo 2. = 44
  s2. * 8 |
  
  \barNumberCheck 145
  s2. * 8 |
  
  \barNumberCheck 153
  s2. * 8 |
  
  \barNumberCheck 161
  s2. * 8 |
  
  \barNumberCheck 169
  s2. * 8 |
  
  \barNumberCheck 177
  s2. * 8 |
  
  \barNumberCheck 185
  s2. * 8 |
  
  \barNumberCheck 193
  s2. * 8 |
  
  \barNumberCheck 201
  s2. * 2 |
  \tempo 2. = 36
  s2. |
  \tempo 2. = 16
  s2. |
}

forceBreaks = {
  s2. * 8 \break
  s2. * 10 \break
  s2. * 8 \break
  s2. * 8 \break
  s2. * 9 \break
  s2. * 9 \pageBreak
  
  s2. * 10 \break
  \grace { s8 } s2. * 8 \break
  \grace { s8 } s2. * 9 \break
  s2. * 9 \break
  s2. * 7 \break
  s2. * 8 \pageBreak
  
  s2. * 9 \break
  s2. * 8 \break
  s2. * 9 \break
  s2. * 9 \break
  \grace { s8 } s2. * 8 \break
  \grace { s8 } s2. * 9 \pageBreak
  
  s2. * 9 \break
  s2. * 8 \break
  s2. * 7 \break
  s2. * 7 \break
  s2. * 9 \break
}

waltzTwoNotes =
\score {
  \header {
    title = "Waltz in A minor"
    composer = "Frédéric Chopin"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 2"
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
  \layout {}
}

\include "articulate.ly"

waltzTwoMidi =
\book {
  \bookOutputName "waltz-op34-no2"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
