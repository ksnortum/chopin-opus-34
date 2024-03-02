%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 3) (0 . -2) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 3) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -1) (0 . -1) (0 . 0) (0 . 0))
                        ) \etc
slurShapeD = \shape #'((0 . 3) (0 . -2) (0 . -1) (0 . 0)) \etc
slurShapeE = \shape #'((0 . 2) (0 . -1.5) (0 . -1) (0 . 2)) \etc
slurShapeF = \shape #'((-1 . 1) (0 . 0) (0 . 0) (0 . 0.75)) \etc
slurShapeG = \shape #'((0 . 2.5) (0 . 2) (0 . 1) (0 . 0)) \etc
slurShapeH = \shape #'((0 . 1.5) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'((0 . 2) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ) \etc
slurShapeK = \shape #'((0 . 3) (0 . 2.5) (0 . 1) (0 . 0)) \etc
slurShapeL = \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . -0.5)) \etc
slurShapeM = \shape #'((0 . 2) (0 . -0.5) (0 . -0.5) (0 . 2)) \etc
slurShapeN = \shape #'((0 . 3) (0 . 0) (0 . 0) (0 . 2)) \etc
slurShapeO = \shape #'((0 . 2) (0 . 1.5) (0 . 1) (0 . 0)) \etc
slurShapeP = \shape #'((0 . 3) (0 . -1.5) (0 . -1) (0 . 0)) \etc
slurShapeQ = \shape #'((0 . 2) (0 . -1) (0 . -1) (0 . 2)) \etc
slurShapeR = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0.5) (0 . 0) (0 . -1))
                        ) \etc
slurShapeS = \shape #'((-1 . 1) (0 . 0) (0 . 0) (0 . 1)) \etc
slurShapeT = \shape #'((0 . 3) (0 . 2.5) (0 . 1) (0 . 0)) \etc
slurShapeU = \shape #'((0 . 3) (0 . 1.5) (0 . 0) (0 . 0)) \etc
slurShapeV = \shape #'((0 . 3) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeW = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . 2)) \etc
slurShapeX = \shape #'((0 . 2) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeY = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeZ = \shape #'((0 . 1) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeAA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . 1) (0 . 0) (0 . 0))
                        ) \etc
% slurShapeAB = \shape #'((0 . 2) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeAC = \shape #'((1.25 . 0) (1 . 1) (1 . 1) (1 . 0)) \etc
slurShapeAD = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0 . 0) (0 . -8) (0 . -7) (3 . 2))
                         ) \etc
slurShapeAE = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . 3)) \etc

beamPositionsA = \once \override Beam.positions = #'(2 . 0)

moveRestA = \tweak Y-offset -3 \etc
moveBarLineA = \once \override Score.BarLine.extra-offset = #'(-1 . 0) 

%%% Music %%%

global = {
  \time 3/4
  \key af \major
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  \voiceOne ef'4_>-\slurShapeA ( ef8 ef ef4_> |
  \beamPositionsA f8_> ef df \staffDown bf ef,4) |
  \staffUp \oneVoice r4 <g' df' ef g>-. <af df ef af>-. |
  <a df ef a>4-. <bf df ef bf'>-. r |
  \voiceOne ef,4_>-\slurShapeA ( ef8 ef ef4_> |
  \beamPositionsA f8_> ef df \staffDown bf ef,4) |
  \staffUp \oneVoice r4 <bf'' ef bf'>-. <b ef b'>-. |
  <c ef fs c'>4-. <df ef g df'>-. r |
  
  \barNumberCheck 9
  \voiceOne ef,4_>-\slurShapeB ( ef8 ef ef4_> |
  \beamPositionsA f8_> ef df \staffDown bf ef,4) |
  \staffUp \oneVoice f''8_>-\slurShapeAE ( ef df bf ef,4) |
  f''8(_> ef df bf ef,4) |
  \ottava 1 f''8_>-\slurShapeC ( ef df bf ef, f |
  \ottava 0 ef8 df bf ef, f ef |
  df8 bf ef, f ef df |
  \staffDown \voiceOne bf ef, f ef df bf) |
  
  \repeat volta 2 {
    \barNumberCheck 17
    \staffUp \oneVoice <ef' c'>2.^( |
    <f df'>2. |
    <ef c'>4 <df bf'> <ef c'> |
    <df bf'>4 <c af'>) r |
    <bf' g'>2.-\slurShapeW ( |
    <c af'>2. |
    <bf g'>4 <af f'> <bf g'> |
    <af f'> <g ef'> <f df'>) |
    
    \barNumberCheck 25
    <ef c'>4\prall( <d b'> <ef c'> |
    \acciaccatura { gf8 } <gf ef'>2 <f df'>4 |
    <ef c'>4 <df bf'> <ef c'> |
    <df bf'>4 <c af'>) r |
    \acciaccatura { bf'8 } <bf g'>4\prall-\slurShapeY ( <a fs'> <bf g'> |
    <d bf'>4 <df bff'> <c af'> |
    <bf g'>4 <af f'> <bf g'> |
    <af f'> <g ef'>) af->\prall |
    
    \barNumberCheck 33
    g8( df' ef g df' f |
    ef4\prall df8 g, f ef) |
    g,8( df' ef g df' f |
    ef4\prall c8 af f ef) |
    g,8( df' ef g df' f |
    ef4\prall df8 g, f ef) |
    g,8( df' ef g df' g |
    <af, af'>4) r4 af,\prall( |
    
    \barNumberCheck 41
    g8[ df' ef g df' f16]) r |
    ef4_>\prall( df8 g, f ef) |
    g,8[( df' ef g df' f16]) r |
    ef4_>\prall( c8 af f ef) |
    g,8[( df' ef g df' f16]) r |
    ef4\prall( df8 g, f ef) |
    g,8( df' ef g df' g |
    \alternative {
      { <af, af'>4) r ef,-> | }
      { <af' af'\repeatTie>4 r af,,^>~ | }
    }
  }

  \barNumberCheck 50
  af2 af'4^>~^( |
  af4 af8 af af4 |
  af\prall g!8 af df ef |
  f4) r bf,,^>~ |
  bf2 bf'4^>~^( |
  bf4 bf8 bf bf4 |
  bf\prall a8 bf ef f |
  g4) r <ef, ef'>^>~ |
  
  \barNumberCheck 58
  q2 <ef' ef'>4~ |
  q4 q8 q q4 |
  \ottava 1 ef'4\prall d8( ef <af, af'> <bf bf'> |
  <c af' c>4.) q8( q[-.) r16 q16]( |
  q4-.) r8 <bf g' bf>( q[-.) r16 <af f' af>]( |
  q4-.) r8 <g ef' g>( q[-.) r16 <f df' f>] |
  \ottava 0 q4. q8( q[-.) r16 <g, df' g>]( |
  <af c af'>4-.) r4 af,^>~ |
  
  \barNumberCheck 66
  af4 af'4.. af'16( |
  af,4..) af16 af4^> |
  af2\prall 
    \strictSpacingOn \barLinesOff \scaleDurations 6/13 { \magnifyMusic 0.63 {
      g!8([ af bf c df ef f gf af bf c df ef]
    } } \strictSpacingOff \barLinesOn f4-.) |
  bf,,,4 bf'4.. bf'16( |
  bf,4..) bf16 bf4-> |
  bf2\prall
    \strictSpacingOn \barLinesOff \scaleDurations 6/13 { \magnifyMusic 0.63 {
      a8([ bf c d ef f g af! bf c d ef f]
    } } \strictSpacingOff \barLinesOn g4-.) |
    
  \barNumberCheck 74
  <ef,, ef'>4 <ef' ef'>-> r8 r16 \ottava 1 <ef' ef'> |
  <ef, ef'>4 r8 r16 q q4 |
  ef'4\prall d8( ef <af, af'> <bf bf'> |
  <c af' c>4.) q8( q[-.) r16 q16]( |
  q4-.) r8 <bf g' bf>( q[-.) r16 <af f' af>]( |
  q4-.) r8 <g ef' g>( q[-.) r16 <f df' f>] |
  \ottava 0 q4. q8( q[-.) r16 <g, df' g>]( |
  <af c af'>4-.) r af | \bar"||" 
  
  \barNumberCheck 82
  \key df \major
  <gf bf>2^( <c, af'>4 |
  <gf' bf>4. <c, af'>8 \slashedGrace { c'8 } <gf bf>8. <c, af'>16 |
  <df f>4.)-\slurShapeD ( q8[ <f af> r16 <f df'>] |
  <af f'>2) q4( |
  << { f'4 } \\ { af,8[ g] } >> <gf ef'>4\prall \stemDown <f d'> \stemNeutral |
  <gf ef'>4 <bf gf'> < af f'> |
  <gf ef'>4 <f df'> <e bf'> |
  <f af>4.) q8( q[-.) r16 q16]^( |
  
  \barNumberCheck 90
  <gf bf>4 r8 <c, af'> <gf' bf>[ r16 <c, af'>] |
  <gf' bf>4) r8 <c, af'>-\slurShapeF ^( \slashedGrace { c'8 } 
    <gf bf>[ r16 <c, af'>] |
  <df f>4.)-\slurShapeG ( <f af>8[ <af df>) r16 <af df f>]( |
  <af d af'>4.) <d af'>8( q[-.) r16 q]( |
  <df! af'>4-.) r8 \voiceOne g[( ef s16 f] |
  gf!4) \oneVoice r8 \voiceOne gf8[( gf s16 gf16] |
  gf4) \oneVoice r8 <af, f'>( q[-.) r16 <gf ef'>]( |
  q4-.) r8 <f df'>( <f c'>[-.) r16 <f bf>] |
  
  \barNumberCheck 98
  <gf bf>2^( <c, af'>4 |
  <gf' bf>4. <c, af'>8 \slashedGrace { c'8 } <gf bf>8. <c, af'>16 |
  <df f>4.)-\slurShapeH ( q8[ <f af> r16 <f df'>] |
  <af f'>2) q4( |
  << { f'4 } \\ { af,8[ g] } >> <gf ef'>4\prall \stemDown <f d'> \stemNeutral |
  <gf ef'>4 <bf gf'> < af f'> |
  <gf ef'>4 <f df'> <e bf'> |
  <f af>4.) q8( q[-.) r16 q16]^( |
  
  \barNumberCheck 106
  <gf bf>4 r8 <c, af'> <gf' bf>[ r16 <c, af'>] |
  <gf' bf>4) r8 <c, af'>-\slurShapeJ ^( \slashedGrace { c'8 } 
    <gf bf>[ r16 <c, af'>] |
  <df f>4.)-\slurShapeK ( <f af>8[ <af df>) r16 <af df f>]( |
  <af d af'>4.) <d af'>8( q[-.) r16 q]( |
  <df! af'>4-.) r8 \voiceOne g[( ef s16 f] |
  gf!4) \oneVoice r8 \voiceOne gf8[( gf s16 gf16] |
  gf4) \oneVoice r8 <af, f'>( q[-.) r16 <gf ef'>] |
  <f df'>4 r s |
  
  \barNumberCheck 114
  \voiceOne <ef' gf>4. q8 q4 |
  q4( <df f> <bf df>) |
  \oneVoice <ef, c' ef>2^( <df bf' df>4 |
  <c a' c>4) r ef^>^(~ |
  ef2 df4 |
  c4) r ef^>-\slurShapeL ^(~ |
  <ef c'>2 <df bf'>4 |
  <c a'>4) r s |
  
  \barNumberCheck 122
  \voiceOne <ef' gf>4~ \oneVoice \tupletUp \tuplet 3/2 4 { 
    <gf, ef' gf>8( q q  q q q 
  } |
  q4 <f df' f>4 <df bf' df>) |
  <ef c' ef>4.-\slurShapeM ^( <df bf' df>8 <ef c' ef> <df bf' df> |
  <c a' c>4) r ef^>~-\slurShapeN ^( |
  ef4. df8 ef df |
  c4) r ef^>~^( |
  <ef c'>4 <eff cf'>8 <df bf'> <ef c'> <df bf'> |
  <c a'>4) r f^>^( |
  
  \barNumberCheck 130
  <gf! bf>2 <c, af'!>4 |
  <gf' bf>4. <c, af'>8 \slashedGrace { c'8 } <gf bf>8. <c, af'>16 |
  <df f>4.)-\slurShapeP ( q8[ <f af> r16 <f df'>] |
  <af f'>2) q4-\slurShapeR ( |
  << { f'4 } \\ { af,8[ g] } >> <gf ef'>4\prall \stemDown <f d'> \stemNeutral |
  <gf ef'>4 <bf gf'> < af f'> |
  <gf ef'>4 <f df'> <e bf'> |
  <f af>4.) q8( q[-.) r16 q16]^( |
  
  \barNumberCheck 138
  <gf bf>4 r8 <c, af'> <gf' bf>[ r16 <c, af'>] |
  <gf' bf>4) r8 <c, af'>-\slurShapeS ^( \slashedGrace { c'8 } 
    <gf bf>[ r16 <c, af'>] |
  <df f>4.)-\slurShapeT ( <f af>8[ <af df>) r16 <af df f>]( |
  <af d af'>4.) <d af'>8( q[-.) r16 q]( |
  <df! af'>4-.) r8 \voiceOne g[( ef s16 f] |
  gf!4) \oneVoice r8 \voiceOne gf8[( gf s16 gf16] |
  gf4) \oneVoice r8 <af, f'>( q[-.) r16 <gf ef'>] |
  <f df'>4 r \staffDown \voiceOne df,->~ |
  
  \barNumberCheck 146
  df4 \staffUp \oneVoice r df'~ |
  df4 df8 df df4 |
  df4-\slurShapeU ^(\prall c!8 df gf af |
  bf4) r4 \staffDown \voiceOne  ef,,->~ |
  ef4 \staffUp \oneVoice r ef'~ |
  ef4 ef8 ef ef4 |
  ef4-\slurShapeV ^(\prall d8 ef af bf |
  c4) r <af, af'>~^> |
  
  \barNumberCheck 154
  q4 r <af' af'>~ |
  q4. q8 q4 |
  af'4\prall g8( af <df, df'> <ef ef'> |
  <f df' f>4.) q8( q[-.) r16 q]( |
  q4-.) r8 <ef c' ef>( q[-.) r16 <df bf' df>]( |
  q4-.) r8 <c af' c>( q[-.) r16 <bf gf' bf>]( |
  q4-.) r8 q( q[-.) r16 <c, gf' c>]( |
  <df f df'>4) r \staffDown \voiceOne df,->~ |
  
  \barNumberCheck 162
  df4 \staffUp \oneVoice df'4..^> df'16( |
  df,4) r8 r16 df( df4 |
  df2->)\prall 
    \strictSpacingOn \barLinesOff \scaleDurations 6/13 { \magnifyMusic 0.63 {
      c!8([ df ef f gf af bf cf df ef f gf af]
    } } \strictSpacingOff \barLinesOn bf4-.) |
  \staffDown \voiceOne ef,,,4 \staffUp \oneVoice  ef'4..^> ef'16( |
  ef,4) r8 r16 ef( ef4 |
  ef2->)\prall
    \strictSpacingOn \barLinesOff \scaleDurations 6/13 { \magnifyMusic 0.63 {
      d8([ ef f g af bf c df! ef f g af bf]
    } } \strictSpacingOff \barLinesOn c4-.) |
    
  \barNumberCheck 170
  <af,, af'>4-> <af' af'>-> r8 \ottava 1 <af' af'> |
  q4. q8 q4 |
  af'4\prall g8( af <df, df'> <ef ef'> |
  <f df' f>4.) q8( q[-.) r16 q]( |
  q4-.) r8 <ef c' ef>( q[-.) r16 <df bf' df>]( |
  q4-.) r8 <c af' c>( q[-.) r16 <bf gf' bf>]( |
  q4-.) r8 q( q[-.) \ottava 0 r16 <gf, c>]( |
  <df f df'>4) r ef4^> | \bar "||"
  
  \barNumberCheck 178
  \key af \major
  <ef c'>2.-\slurShapeX ^( |
  <f df'>2. |
  <ef c'>4 <df bf'> <ef c'> |
  <df bf'>4 <c af'>) r |
  <bf' g'>2.-\slurShapeW ( |
  <c af'>2. |
  <bf g'>4 <af f'> <bf g'> |
  <af f'> <g ef'> <f df'>) |
  
  \barNumberCheck 186
  <ef c'>4\prall-\slurShapeZ ( <d b'> <ef c'> |
  \acciaccatura { gf8 } <gf ef'>2 <f df'>4 |
  <ef c'>4 <df bf'> <ef c'> |
  <df bf'>4 <c af'>) r |
  \acciaccatura { bf'8 } <bf g'>4\prall-\slurShapeY ( <a fs'> <bf g'> |
  <d bf'>4 <df bff'> <c af'> |
  <bf g'>4 <af f'> <bf g'> |
  <af f'> <g ef'>) af->\prall |
  
  \barNumberCheck 194
  g8-\slurShapeAA ( df' ef g df' f |
  ef4\prall df8 g, f ef) |
  g,8( df' ef g df' f |
  ef4\prall c8 af f ef) |
  g,8( df' ef g df' f |
  ef4\prall df8 g, f ef) |
  g,8( df' ef g df' g |
  <af, af'>4) r4 af,\prall( |
  
  \barNumberCheck 202
  g8[ df' ef g df' f16]) r |
  ef4_>\prall( df8 g, f ef) |
  g,8[( df' ef g df' f16]) r |
  ef4_>\prall( c8 af f ef) |
  g,8[( df' ef g df' f16]) r |
  ef4\prall( df8 g, f ef) |
  g,8( df' ef g df' g |
  <af, af'>4) r af,,^>~ |
  
  \barNumberCheck 210
  % af2 af'4^>~-\slurShapeAB ^( |
%   af4 af8 af af4 |
%   af-\tweak avoid-slur #'inside \trill g!8 af df ef |
  af2 af'4^>~^( |
  af4 af8 af af4 |
  % Prall, not trill: SrcB
  af\prall g!8 af df ef |
  f4) r bf,,^>~ |
  bf2 bf'4^>~^( |
  bf4 bf8 bf bf4 |
  bf\prall a8 bf ef f |
  g4) r <ef, ef'>^>~ |
  
  \barNumberCheck 218
  q2 <ef' ef'>4~ |
  q4 q8 q q4 |
  \ottava 1 ef'4\prall d8( ef <af, af'> <bf bf'> |
  <c af' c>4.) q8( q[-.) r16 q16]( |
  q4-.) r8 <bf g' bf>( q[-.) r16 <af f' af>]( |
  q4-.) r8 <g ef' g>( q[-.) r16 <f df' f>] |
  \ottava 0 q4. q8( q[-.) r16 <g, df' g>]( |
  <af c af'>4-.) r4 af,^>~ |
  
  \barNumberCheck 226
  af4 af'4.. af'16( |
  af,4..) af16 af4^> |
  af2\prall 
    \strictSpacingOn \barLinesOff \scaleDurations 6/13 { \magnifyMusic 0.63 {
      g!8([ af bf c df ef f gf af bf c df ef]
    } } \strictSpacingOff \barLinesOn f4-.) |
  bf,,,4 bf'4.. bf'16( |
  bf,4..) bf16 bf4-> |
  bf2\prall
    \strictSpacingOn \barLinesOff \scaleDurations 6/13 { \magnifyMusic 0.63 {
      a8([ bf c d ef f g af! bf c d ef f]
    } } \strictSpacingOff \barLinesOn g4-.) |
    
  \barNumberCheck 234
  <ef,, ef'>4 <ef' ef'>-> r8 r16 \ottava 1 <ef' ef'> |
  <ef, ef'>4 r8 r16 q q4 |
  ef'4\prall d8( ef <af, af'> <bf bf'> |
  <c af' c>4.) q8( q[-.) r16 q16]-\slurShapeAC ( |
  q4-.) r8 <bf g' bf>( q[-.) r16 <af f' af>]( |
  q4-.) r8 <g ef' g>( q[-.) r16 <f df' f>] |
  \ottava 0 <f df' f>2.( |
  <bf, f' af bf>2.) |
  
  \barNumberCheck 242
  \ottava 1 <c' af' c>4 r8 <bf g' bf>( q[-.) r16 <af f' af>]( |
  q4-.) r8 <g ef' g>( q[-.) r16 <f bf f'>] |
  \ottava 0 q2.( |
  <bf, f' af bf>2 <b b'>4 |
  <c af' c>4) c8( df d f |
  \tuplet 3/2 { ef8 f ef } c df d f |
  \tuplet 3/2 { ef8 f ef } c df d f |
  e8 f c' gf f ef |
  
  \barNumberCheck 250
  \tuplet 3/2 { df8 f df } a bf b c |
  \tuplet 3/2 { df8 ff df } a bf b c |
  df8 ff ef df g, bf! |
  df8 ef g df' f! ef |
  c4) c8( df d f |
  \tuplet 3/2 { ef8 f ef } c df d f |
  \ottava 1 \tuplet 3/2 { ef8 f ef } c df d f |
  e8 f c' gf f ef |
  
  \barNumberCheck 258
  \tuplet 3/2 { df8 f df } a bf b c |
  \tuplet 3/2 { df8 ff df } a bf b c |
  \ottava 0 df8 ff ef df bf! g |
  ef8 df bf g ef df) |
  c8-\slurShapeAD ^( df d ef e f |
  gf8 c a gf f ef! |
  df8 ef e f fs g |
  af8 d b af g f! |
  
  \barNumberCheck 266
  ef8 e f fs g af |
  bf8 ef! c bf af gf |
  f8 gf af bf c df |
  ef e f fs g af |
  g8 bf af g f ef |
  g8 af g f ef df |
  f8 g f ef df c |
  ef f ef df c bf |
  
  \barNumberCheck 274
  cf8 d f af cf d |
  \ottava 1 cf'8 d, cf af' cf, af |
  \ottava 0 f'8 af, f d' f, d |
  cf'8 d, cf af' cf, af) |
  ef2.->~ |
  ef2. |
  \tuplet 3/2 { ef8( f ef } d ef af bf |
  c4) r r |
  
  \barNumberCheck 282
  r4 r8 r16 <df, bf'>( q4-.) |
  r4 r8 r16 <c af'>( q4-.) |
  r4 r8 r16 <bf ef>( q4-.) |
  r4 r8 r16 <af ef'>( q4-.) |
  \clef bass ef2.->~ |
  ef2. |
  \tuplet 3/2 { ef8( f ef } d ef af b |
  c4) r r |
  
  \barNumberCheck 290
  \clef treble r4 r8 r16 ef <bf ef>4 |
  r4 r8 r16 ef <af, ef'>4 |
  r4 r8 r16 ef' <bf ef>4 |
  r4 r8 r16 ef <af, ef'>4 |
  % SrcB, bass clef instead of cross staff
  \clef bass af,,2.~ |
  af2. |
  \oneVoice R2. |
  \clef treble \tuplet 3/2 { ef'''8( f ef } d ef af bf |
  
  \barNumberCheck 298
  c4) r r |
  \tuplet 3/2 { ef,8( f ef } d ef af bf |
  c4) r r |
  \tuplet 3/2 { ef,8( f ef } d ef af bf |
  c4) af8( bf c ef |
  af8 bf \ottava 1 c ef af bf |
  c4) \ottava 0 r r |
  <af, ef' af>4 r r |
  <af,, af'>2.\fermata |
  \bar "|."
}

rightHandLower = \relative {
  s2. * 8 
  
  \barNumberCheck 9
  s2. * 8 |
  
  \repeat volta 2 {
    \barNumberCheck 17
    s2. * 8 |
    
    \barNumberCheck 25
    s2. * 8 |
    
    \barNumberCheck 33
    s2. * 8 |
    
    \barNumberCheck 41
    s2. * 7 |
    { s2. }
    { s2. }
  }
  
  \barNumberCheck 50
  s2. * 8 |
  
  \barNumberCheck 58
  s2. * 8 |
  
  \barNumberCheck 66
  s2. * 8 |
  
  \barNumberCheck 74
  s2. * 8 |
  
  \barNumberCheck 82
  s2. * 8 |
  
  \barNumberCheck 90
  s2. * 4 |
  s4. \voiceTwo df''8[ df r16 df16] |
  df4 s8 c[ g r16 af] |
  bff4 s2 |
  s2. |
  
  \barNumberCheck 98
  s2. * 8 |
  
  \barNumberCheck 106
  s2. * 4 |
  s4. df8[ df r16 df16] |
  df4 s8 c[ g r16 af] |
  bff4 s2 |
  s2 \oneVoice f4->_~ |
  
  \barNumberCheck 114
  \voiceTwo f2.~ |
  f2 df4 |
  s2. * 5 |
  s2 \oneVoice gf4->_~ |
  
  \barNumberCheck 122
  \voiceTwo gf4~ \hideNoteHead gf s |
  s2. * 7 |
  
  \barNumberCheck 130
  s2. * 8 |
  
  \barNumberCheck 138
  s2. * 4 |
  s4. df'8[ df r16 df16] |
  df4 s8 c[ g r16 af] |
  bff4 s2 |
  s2
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
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \repeat volta 2 {
    \barNumberCheck 17
    s2. * 7 |
    \voiceThree r4 <g ef'> <g df'!> |
    
    \barNumberCheck 25
    s2. * 7 |
    r4 <bf ef> <c ef> |
    
    \barNumberCheck 33
    s4 \clef treble af'( g) |
    s4 g( f) |
    s4 f( ef) |
    s4 f( ef) |
    s4 af( g) |
    s4 g( f) |
    s4 f( ef) |
    s2. |
    
    \barNumberCheck 41
    s4 af( g) |
    s4 g( f) |
    s4 f( ef) |
    s4 f( ef) |
    s4 af( g) |
    s4 g( f) |
    s4 f( ef) |
    \alternative {
      { s2. }
      { s2. }
    }
  }
  
  \barNumberCheck 50
  s2. * 8 | 
  
  \barNumberCheck 58
  s2. * 8 | 
  
  \barNumberCheck 66
  s2. * 8 | 
  
  \barNumberCheck 74
  s2. * 8 | 
  
  \barNumberCheck 82
  s2. * 2 |
  r4 af,4~-\slurShapeE ( af |
  af4 \slashedGrace { c8 } bf4 af) |
  s2. * 2 |
  r4 <af df> <g df'> |
  r4 <af df> q |
  
  \barNumberCheck 90
  s2. * 2 
  r4 <af df> s |
  s2. * 4 |
  r4 <af df> q |
  
  \barNumberCheck 98
  s2. * 2 |
  r4 af4~-\slurShapeI ( af |
  af4 \slashedGrace { c8 } bf4 af) |
  s2. * 2 |
  r4 <af df> <g df'> |
  r4 <af df> q |
  
  \barNumberCheck 106
  s2. * 7 |
  r4 <af df> r |
  
  \barNumberCheck 114
  s2. * 8 |
  
  \barNumberCheck 122
  s2. * 8 |
  
  \barNumberCheck 130
  s2. * 2 |
  r4 af4~-\slurShapeQ ( af |
  af4 \slashedGrace { c8 } bf4 af) |
  s2. * 2 |
  r4 <af df> <g df'> |
  r4 <af df> q |
  
  \barNumberCheck 138
  s2. * 7 |
  r4 <af df> s4
  
  \barNumberCheck 146
  s2. * 8 |
  
  \barNumberCheck 154
  s2. * 8 |
  
  \barNumberCheck 162
  s2. * 8 |
  
  \barNumberCheck 170
  s2. * 8 |
  
  \barNumberCheck 178
  s2. * 7 |
  r4 <g ef'> <g df'!> |
  
  \barNumberCheck 186
  s2. * 7 |
  r4 <bf ef> <c ef> |
  
  \barNumberCheck 194
  s4 \clef treble af'( g) |
  s4 g( f) |
  s4 f( ef) |
  s4 f( ef) |
  s4 af( g) |
  s4 g( f) |
  s4 f( ef) |
  s2. |
  
  \barNumberCheck 202
  s4 af( g) |
  s4 g( f) |
  s4 f( ef) |
  s4 f( ef) |
  s4 af( g) |
  s4 g( f) |
  s4 f( ef) |
  s2. |
    
  \barNumberCheck 210
  s2. * 8 |
  
  \barNumberCheck 218
  s2. * 8 |
  
  \barNumberCheck 226
  s2. * 8 |
  
  \barNumberCheck 234
  s2. * 8 |
  
  \barNumberCheck 242
  s2. * 8 |
  
  \barNumberCheck 250
  s2. * 8 |
  
  \barNumberCheck 258
  s2. |
  \clef treble r4 <af df> r |
  r4 <g df'> q |
  s2. * 5 |
  
  \barNumberCheck 266
  s2. * 4 |
  \clef bass r4 <bf,! df! g> q |
  r4 <af c f> q |
  r4 <g ef'> q |
  r4 <f df'> q |
  
  \barNumberCheck 274
}

leftHandLower = \relative {
  R2. |
  R2. | 
  ef,4 <ef' ef'>-. <f ef' f>-. |
  <fs ef' fs>4-. < g ef' g>-. r |
  R2. |
  R2. |
  ef,4 \clef treble <g' ef' g>-. <af ef' af>-. |
  <a ef' a>4-. <bf ef bf'>-. r |
  
  \barNumberCheck 9
  R2. |
  \clef bass R2. |
  f'8( ef df bf ef,4) |
  \clef treble f''8( ef df bf ef,4)~ |
  <ef bf' df g>4 r r |
  R2. |
  R2. |
  \clef bass \moveRestA R2. |
  
  \repeat volta 2 {
    \barNumberCheck 17
    af,,,4 <ef'' af c> q |
    df,4 < df' af'> q |
    ef,4 <ef' g> q |
    af,4 <ef' af> q |
    ef,4 <g' bf ef g> q |
    af,4 <f' c' f> q |
    bf,4 <f' bf d> q |
    \voiceFour ef2. |
    
    \barNumberCheck 25
    \oneVoice af,4 <f' af b> <ef af c> |
    df,4 <df' a'> <df bf'!> |
    ef,4 <ef' g> q |
    af,4 <ef' af> q |
    ef,4 <g' bf ef g> q |
    af,4 <f' c' f> q |
    bf,4 <f' bf d> q |
    \voiceFour ef2. |
    
    \barNumberCheck 33
    ef4 \clef treble <bf' df>2 |
    \clef bass ef,4 \clef treble <bf' df>2 |
    \clef bass ef,4 \clef treble <bf' df>2 |
    \clef bass ef,4 \clef treble <af c>2 |
    \clef bass ef4 \clef treble <bf' df>2 |
    \clef bass ef,4 \clef treble <bf' df>2 |
    \clef bass ef,4 \clef treble <bf' df>2 |
    \clef bass \oneVoice af,4 <ef' af c> r |
    
    \barNumberCheck 41
    ef,4 \clef treble \voiceFour <bf'' df>2 |
    \clef bass ef,4 \clef treble <bf' df>2 |
    \clef bass ef,4 \clef treble <bf' df>2 |
    \clef bass ef,4 \clef treble <af c>2 |
    \clef bass ef4 \clef treble <bf' df>2 |
    \clef bass ef,4 \clef treble <bf' df>2 |
    \clef bass ef,4 \clef treble <bf' df>2 |
    \alternative {
      { \clef bass \oneVoice af,4 <ef' c'> r | }
      { af,4 <ef' c'> r | }
    }
  }
  
  \barNumberCheck 50
  <af,, af'>4 <ef'' gf c> <ef gf af c> |
  <df, df'> <f' af df> <af df f> |
  af,4 <af' c gf'> q |
  df, <af' df f> r |
  <bf,, bf'>4 <f'' af d> <f af bf d> |
  <ef, ef'>4 <g' bf ef> <bf ef g> |
  bf,4 \clef treble <bf' d af'!> q |
  \clef bass ef,4 <bf' ef g> r |
  
  \barNumberCheck 58
  <ef,, ef'>4 \clef treble <bf'' df! ef g> q |
  \clef bass <ef, ef'>4 \clef treble <c' ef af c> q |
  \clef bass <ef, ef'>4 \clef treble <df'! ef g df'!> q |
  \clef bass <af, af'>4 \clef treble <c' ef af c> r |
  \clef bass <df,, df'>4 <f' af bf df> <af bf df f> |
  % Stay in bass clef: SrcB (and following)
  <af bf df af'>4 <af bf df f> <f af bf df> |
  <ef, ef'>4 <bf'' df ef g> <ef, bf' df> |
  af,4 <ef' af c> r4 |
  
  \barNumberCheck 66
  <af,, af'>4 <ef'' af c> <af c gf'> |
  <df,, df'>4 <f' af df> < af df f> |
  af,4 <ef' af c> <af c gf'> | \moveBarLineA
  df,4 <f af df> <af df f> |
  <bf,, bf'>4 <f'' bf d> <bf d af'> |
  <ef,, ef'>4 <g' bf ef> < bf ef g> |
  % Editorial decision to keep the whole bar in bass cleff
  bf,4 <f' bf d> <bf d af'!> | \moveBarLineA
  ef, <g bf ef> < bf ef g> |
  
  \barNumberCheck 74
  <ef,, ef'> \clef treble <bf'' df! ef g> q |
  \clef bass <ef, ef'> \clef treble <c' ef af c> q |
  \clef bass <ef, ef'>4 \clef treble <df'! ef g df'!> q |
  \clef bass <af, af'>4 \clef treble <c' ef af c> r |
  \clef bass <df,, df'>4 <f' af bf df> <af bf df f> |
  <af bf df af'>4 <af bf df f> <f af bf df> |
  <ef, ef'>4 <bf'' df ef g> <ef, bf' df> |
  af,4 <ef' af c> r4 | 
  
  \barNumberCheck 82
  \key df \major
  af,4 af' af |
  af4 af af |
  df,2._~ |
  df2. |
  af4 <ef' af c> q |
  af,4 <ef' af c> q |
  df2. |
  df2. |
  
  \barNumberCheck 90
  af4 <af' ef'> q |
  af,4 <af' ef'> q |
  df,2 cf4 |
  bf4 <bf' f'> r |
  % g natural, the g flat in SrcB is probably a mistake
  <ef,, ef'> <bf'' df ef g> q |
  af,4 <af' ef' gf!> <af c gf'> |
  af,4 <ef' af c> q |
  df2. |
  
  \barNumberCheck 98
  af4 <af' ef'> q |
  q4 q q |
  df,2._~ |
  df2. |
  af4 <ef' af c> q |
  af,4 <ef' af c> q |
  df2. |
  df2. |
  
  \barNumberCheck 106
  af4 <ef' af ef'> q |
  af,4 <ef' af ef'> q |
  <df, df'>4 <f' af df> r |
  <bf,, bf'>4 <f'' bf f'> r |
  <ef, ef'>4 <bf'' df ef g> q |
  af,4 <af' ef' gf!> <af c gf'> |
  af,4 <ef' af c> q |
  df2. |
  
  \barNumberCheck 114
  f,4 <c' ef a> q |
  f,4 <df' bf'> q |
  f,4 <df' gf bf> <df bf'> |
  f,4 <c' a'> q |
  e,4 <df' gf bf> q |
  f,4 <c' a'> q |
  e,4 <df' gf bf> q |
  f,4 <c' a'> q |
  
  \barNumberCheck 122
  <f,, f'>4 <c'' ef a c> q |
  f,4 <df' f bf df> <df f bf> |
  f,4 < df' gf bf> <df bf'> |
  f,4 <c' f a> <c a'> |
  e,4 <df' gf bf> q |
  f,4 <c' a'> q |
  e,4 <df' gf bf> q |
  f,4-\slurShapeO ( <c' a'>) r |
  
  \barNumberCheck 130
  af!4 <af' ef'> q |
  q4 q q |
  df,2._~ |
  df2. |
  af4 <ef' af c> q |
  af,4 <ef' af c> q |
  df2. |
  df2. |
  
  \barNumberCheck 138
  af4 <ef' af ef'> q |
  af,4 <ef' af ef'> q |
  <df, df'>4 <f' af df> r |
  <bf,, bf'>4 <f'' bf f'> r |
  <ef, ef'>4 <bf'' df ef g> q |
  af,4 <af' ef' gf!> <af c gf'> |
  af,4 <ef' af c> q |
  df2 \voiceFour r4 |
  
  \barNumberCheck 146
  df,4 \oneVoice <df' f cf'> q |
  gf,4 <df' gf bf> q |
  f,4 <df' af' cf> q |
  gf,4 <df' gf bf> \voiceFour r |
  g,4 \oneVoice <ef' bf' df> q |
  af,4 <ef' af c> q |
  g,4 <ef' bf' df!> q |
  af,4 <ef' af c> r |
  
  \barNumberCheck 154
  <af,, af'>4 <ef'' af c> <af c gf'!> |
  <df,, df'> <f' af df> <af df f> |
  <af, af'>4 <af' c gf'!> q |
  <df,, df'>4 <f' af df f> r |
  <gf,, gf'>4 <gf'' bf df ef> \clef treble <bf df ef gf> |
  <df ef bf'>4 <bf df ef gf> <gf bf df ef> |
  \clef bass <af,, af'>4 <ef'' gf af c> q |
  <df, df'> <f' af df> \voiceFour r |
  
  \barNumberCheck 162
  df,4 \oneVoice <df' f cf'> q |
  gf,4 <df' gf bf> q |
  f,4 <df' af' cf> q | \moveBarLineA
  gf,4 <df' gf bf> r |
  \voiceFour g,4 \oneVoice <ef' bf' df> q |
  af,4 <ef' af c> q |
  ef,4 <ef' bf' df!> q | \moveBarLineA
  af,4 <ef' af c> r |
  
  \barNumberCheck 170
  <af,, af'>4 <ef'' af c> <af c gf'!> |
  <df,, df'> <f' af df> <af df f> |
  <af, af'>4 \clef treble <af' c af'> <af c gf'!> |
  \clef bass <df,, df'>4 <f' af df f> r |
  <gf,, gf'>4 <gf'' bf df ef> \clef treble <bf df ef gf> |
  <df ef bf'>4 <bf df ef gf> <gf bf df ef> |
  \clef bass <af,, af'>4 <ef'' gf af c> q |
  df, <df' af'> r |
  
  \barNumberCheck 178
  \key af \major
  af4 <ef' af c> q |
  df,4 < df' af'> q |
  ef,4 <ef' g> q |
  af,4 <ef' af> q |
  ef,4 <g' bf ef g> q |
  af,4 <f' c' f> q |
  bf,4 <f' bf d> q |
  \voiceFour ef2. |
  
  \barNumberCheck 186
  \oneVoice af,4 <f' af b> <ef af c> |
  df,4 <df' a'> <df bf'> |
  ef,4 <ef' g> q |
  af,4 <ef' af> q |
  ef,4 <g' bf ef g> q |
  af,4 <f' c' f> q |
  bf,4 <f' bf d> q |
  \voiceFour ef2. |
  
  \barNumberCheck 194
  ef4 \clef treble <bf' df>2 |
  \clef bass ef,4 \clef treble <bf' df>2 |
  \clef bass ef,4 \clef treble <bf' df>2 |
  \clef bass ef,4 \clef treble <af c>2 |
  \clef bass ef4 \clef treble <bf' df>2 |
  \clef bass ef,4 \clef treble <bf' df>2 |
  \clef bass ef,4 \clef treble <bf' df>2 |
  \clef bass \oneVoice af,4 <ef' af c> r |
  
  \barNumberCheck 202
  ef,4 \clef treble \voiceFour <bf'' df>2 |
  \clef bass ef,4 \clef treble <bf' df>2 |
  \clef bass ef,4 \clef treble <bf' df>2 |
  \clef bass ef,4 \clef treble <af c>2 |
  \clef bass ef4 \clef treble <bf' df>2 |
  \clef bass ef,4 \clef treble <bf' df>2 |
  \clef bass ef,4 \clef treble <bf' df>2 |
  \clef bass \oneVoice af,4 <ef' c'> r |
  
  \barNumberCheck 210
  <af,, af'>4 <ef'' gf c> <ef gf af c> |
  <df, df'> <f' af df> <af df f> |
  af,4 <af' c gf'> q |
  df, <af' df f> r |
  <bf,, bf'>4 <f'' af d> <f af bf d> |
  <ef, ef'>4 <g' bf ef> <bf ef g> |
  bf,4 \clef treble <bf' d af'!> q |
  \clef bass ef,4 <bf' ef g> r |
  
  \barNumberCheck 218
  <ef,, ef'>4 \clef treble <bf'' df! ef g> q |
  \clef bass <ef, ef'>4 \clef treble <c' ef af c> q |
  \clef bass <ef, ef'>4 \clef treble <df'! ef g df'!> q |
  \clef bass <af, af'>4 \clef treble <c' ef af c> r |
  \clef bass <df,, df'>4 <f' af bf df> <af bf df f> |
  <af bf df af'>4 <af bf df f> <f af bf df> |
  <ef, ef'>4 <bf'' df ef g> <ef, bf' df> |
  af,4 <ef' af c> r4 |
  
  \barNumberCheck 226
  <af,, af'>4 <ef'' af c> <af c gf'> |
  <df,, df'>4 <f' af df> < af df f> |
  af,4 <ef' af c> <af c gf'> | \moveBarLineA
  df,4 <f af df> <af df f> |
  <bf,, bf'>4 <f'' bf d> <bf d af'> |
  <ef,, ef'>4 <g' bf ef> < bf ef g> |
  % Editorial decision to keep the whole bar in bass cleff
  bf,4 <f' bf d> <bf d af'!> | \moveBarLineA
  ef, <g bf ef> < bf ef g> |
  
  \barNumberCheck 234
  <ef,, ef'> \clef treble <bf'' df! ef g> q |
  \clef bass <ef, ef'> \clef treble <c' ef af c> q |
  \clef bass <ef, ef'>4 \clef treble <df'! ef g df'!> q |
  \clef bass <af, af'>4 \clef treble <c' ef af c> r |
  \clef bass <df,, df'>4 <f' af bf df> <af bf df f> |
  <af bf df af'>4 <af bf df f> <f af bf df> |
  <df, df'>4 <f' af bf df> <af bf df f> |
  <af bf df af'>4 <af bf df f> <f af bf df> |
  
  \barNumberCheck 242
  <d, d'>4 <d' af' bf> <af' bf f'> |
  <af bf af'> <af bf f'> <d, af' bf> |
  <d, d'>4 <d' af' bf> <af' bf f'> |
  <af bf af'> <af bf f'> <d, af' b> |
  <ef, ef'>4 <ef' af c> q |
  <af c af'>4-> <ef af c> q |
  <a c gf'>4-> <ef a c> q |
  <a c f>4 <ef a c> q |
  
  \barNumberCheck 250
  <bf' df f>4 <ef, bf' df> q |
  <af! df ff>4 <ef af df> q |
  <g df' ef>4 <ef df'> q |
  <bf' df g>4 <ef, df'> q |
  af4 \clef treble <ef' c'> q |
  \clef bass ef,4 \clef treble <ef' c'> q |
  af,4 <ef' c'> q |
  a,4 <ef' f c'> q |
  
  \barNumberCheck 258
  bf4 <df f df'> q |
  \voiceFour ff2( bf,!4) |
  ef2. |
  \oneVoice \clef bass ef,4 r r |
  af,2. |
  a4 <f' c'> a,( |
  bf4) <f' df'> q |
  b,4 <g' d'> b,( |
  
  \barNumberCheck 266
  c4) <g' ef'!> q |
  c,4 <af' gf'> c,( |
  df4) <af' f'> ef( |
  d4) <af' b f'> f! |
  ef2. |
  ef2. |
  ef2. |
  ef2. |
  
  \barNumberCheck 274
  <ef f af cf d>2. |
  <af f'>2.-> |
  \clef treble <cf af'>2.^> |
  <d cf'>4 r r |
  \clef bass ef,,4 <ef' g df'!> q |
  af,4 <ef' af c> q |
  g,4 <ef' bf' df!> q |
  af,4 <ef' af c> q |
  
  \barNumberCheck 282
  ef,4 <ef' g ef'> q |
  af,4 <ef' af ef'> q |
  ef,4 <ef' g df'> q |
  af,4 <ef' c'> q |
  ef,4 <g' df'> q |
  ef,4 <af' c> q |
  g,4 <bf' df!> <ef, df'> |
  af,4 <ef' af ef'> q |
  
  \barNumberCheck 290
  ef,4 <ef' g df'> q |
  af,4 <ef' c'> q |
  ef,4 <ef' g df'> q |
  af,4 <ef' c'> q |
  af,4 <ef' af c> q |
  q4 q q |
  q4 q q |
  q4 q q |
  
  \barNumberCheck 298
  af,4 <ef' af c> <ff af c> |
  af,4 <ef' af c> q |
  af,4 <ef' af c> <ff af c> |
  af,4 <ef' af c> q |
  af,4 r r |
  R2. * 2 |
  \clef treble <c' ef af c>4 r r |
  \clef bass <af,, af'>2.\fermata |
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
  s2.-\tweak Y-offset -1 \f |
  s2. |
  s4\sf s2\< <>\! |
  s2. * 3 |
  s4\sf s2\< |
  s4 s\! s |
  
  \barNumberCheck 9
  s2. |
  s2 s4\crescWhiteout |
  s2. * 2 |
  s2.\sf |
  s2. * 3 |
  
  \repeat volta 2 {
    \barNumberCheck 17
    s2.\sf^\dolce |
    s2. * 7 |
    
    \barNumberCheck 25
    s2. * 8 |
    
    \barNumberCheck 33
    s2. * 7 |
    s2 s4\parenthesize\p |
    
    \barNumberCheck 41
    s2. * 6 |
    s2.\< |
    \alternative {
      { s2.\sf | }
      { s2\sf s4\parenthesize\mf | }
    }
  }
  
  \barNumberCheck 50
  s2. * 4 | 
  s2 s4^\crescParen |
  s2. * 3 |
  
  \barNumberCheck 58
  s2. * 2 |
  s4 s2\< |
  s2.-\tweak X-offset 0 \parenthesize\ff |
  s2. * 3 |
  s2 s4\parenthesize\mf |
  
  \barNumberCheck 66
  s2. * 4 |
  s4 s2-\tweak X-offset 0.5 ^\crescParen |
  s2. * 3 |
  
  \barNumberCheck 74
  s2. * 2 |
  s4 s2\< |
  s2.-\tweak X-offset 0 \parenthesize\ff |
  s2. * 3 |
  s2 s4\p |
  
  \barNumberCheck 82
  s2. * 8 |
  
  \barNumberCheck 90
  s2. * 2 |
  s4. s\< |
  s2.\f |
  s2. * 4 |
  
  \barNumberCheck 98
  s2.\p |
  s2. * 7 |
  
  \barNumberCheck 106
  s2. * 2 |
  s4. s\< |
  s2.\f |
  s2. * 4 |
  
  \barNumberCheck 114
  s2. * 8 |
  
  \barNumberCheck 122 
  s4 s2\< <>\! |
  s2. * 5 |
  s4 s2\p |
  s2. |
  
  \barNumberCheck 130
  s2. * 8 |
  
  \barNumberCheck 138
  s2. * 2 |
  s4. s\< |
  s2.\f |
  s2. * 3 |
  s2 s4\f |
  
  \barNumberCheck 146
  s2. * 8 |
  
  \barNumberCheck 154
  s2. * 2 |
  s4 s2-\tweak to-barline ##f \< |
  s4\! s2 |
  s2.-\tweak X-offset 0 \parenthesize\ff |
  s2. * 2 |
  s2 s4\f |
  
  \barNumberCheck 162
  s2. * 2 |
  s2 s4\< |
  s2 s4\! |
  s2. * 2 |
  s2 s4\< |
  s2 s4\! |
  
  \barNumberCheck 170
  s2. * 2 |
  s4 s2-\tweak to-barline ##f \< |
  s4\! s2 |
  s2.\ff 
  s2. * 3 |
  
  \barNumberCheck 178
  s2.^\dolce |
  s2. * 7 |
  
  \barNumberCheck 186
  s2. * 8 |
  
  \barNumberCheck 194
  s2. * 7 |
  s2 s4\parenthesize\p |
  
  \barNumberCheck 202
  s2. * 6 |
  s2.\< |
  s2\sf s4\parenthesize\mf |
  
  \barNumberCheck 210
  s2. * 4 |
  s4 s2^\crescParen |
  s2. * 3 |
  
  \barNumberCheck 218
  s2. * 2 |
  s4 s2\< |
  s2.\parenthesize\f |
  s2. * 4 |
  
  \barNumberCheck 226
  s2. * 8 |
  
  \barNumberCheck 234
  s2. * 2 |
  s4 s2\< |
  s2.\parenthesize\ff |
  s2. * 4 |
  
  \barNumberCheck 242
  s2. * 4 |
  s4\sf s2\p |
  s2. * 3 |
  
  \barNumberCheck 250
  s2. * 8 |
  
  \barNumberCheck 258
  s2. * 6 |
  s2.^\crescParen |
  s2. |
  
  \barNumberCheck 266
  s2. * 8 |
  
  \barNumberCheck 274
  s2. * 8 |
  
  \barNumberCheck 282
  s2. * 8 |
  
  \barNumberCheck 290
  s2.\dim |
  s2. * 2 |
  s2 s8 s\! |
  s2.\p |
  s2. * 3 |
  
  \barNumberCheck 298
  s2. * 4 |
  s4 s2\pp |
  s2. * 2 |
  s2.\ff |
}

pedal = {
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su|
  s2. |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2. |
  
  \barNumberCheck 9
  s2.\sd |
  s2. * 6 |
  s2 s8 s-\tweak Y-offset 1 \su |
  
  \repeat volta 2 {
    \barNumberCheck 17
    s2-\tweak Y-offset -1 \sd s8 s\su |
    \repeat unfold 7 { s2\sd s8 s\su | }
    
    \barNumberCheck 25
    s2. * 8 |
    
    \barNumberCheck 33
    \repeat unfold 8 { s2\sd s8 s\su | }
    
    \barNumberCheck 41
    \repeat unfold 7 { s2\sd s8 s\su | }
    {} % Needed to prevent \alternative from attaching to \repeat unfold
    \alternative {
      { s2\sd s8 s\su | }
      { s2\sd s8 s\su | }
    }
  }
  
  \barNumberCheck 50
  s2-\tweak Y-offset -2 \sd s8 s\su |
  \repeat unfold 3 { s2\sd s8 s\su | }
  s2-\tweak Y-offset -1 \sd s8 s\su |
  \repeat unfold 3 { s2\sd s8 s\su | }
  
  \barNumberCheck 58
  \repeat unfold 3 { s2\sd s8 s\su | }
  s2\sd s4\su |
  s2.\sd |
  s2 s8. s16\su |
  s2\sd s8. s16\su |
  s2\sd s4\su |
  
  \barNumberCheck 66
  s2-\tweak Y-offset -2 \sd s8 s\su |
  \repeat unfold 3 { s2\sd s8 s\su | }
  s2-\tweak Y-offset -1 \sd s8 s\su |
  \repeat unfold 3 { s2\sd s8 s\su | }
  
  \barNumberCheck 74
  \repeat unfold 3 { s2\sd s8 s\su | }
  s2\sd s4\su |
  s2.\sd |
  s2 s8. s16\su |
  s2\sd s8. s16\su |
  s2\sd s4\su |
  
  \barNumberCheck 82
  s2.\sd |
  s2 s8. s16\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su
  s2\sd s8 s\su |
  s2\sd s8. s16\su |
  
  \barNumberCheck 90
  s2.\sd |
  s2 s8. s16\su |
  s2. |
  \repeat unfold 5 { s2\sd s8. s16\su | }
  
  \barNumberCheck 98
  s2.\sd |
  s2 s8. s16\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su
  s2\sd s8 s\su |
  s2\sd s8. s16\su |
  
  \barNumberCheck 106
  s2.\sd |
  s2 s8. s16\su |
  s2. |
  s2-\tweak Y-offset -1 \sd s8. s16\su |
  \repeat unfold 4 { s2\sd s8. s16\su | }
  
  \barNumberCheck 114
  \repeat unfold 8 { s2\sd s8 s\su | }
  
  \barNumberCheck 122
  s2-\tweak Y-offset -2 \sd s8. s16\su |
  \repeat unfold 5 { s2\sd s8 s\su | }
  s2. * 2 |
  
  \barNumberCheck 130
  s2.\sd |
  s2 s8. s16\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s4\su |
  s2\sd s8. s16\su |
  
  \barNumberCheck 138
  s2.\sd |
  s2 s8. s16\su |
  s2\sd s8. s16\su |
  s2-\tweak Y-offset -1 \sd s8. s16\su |
  \repeat unfold 3 { s2\sd s8. s16\su | }
  s2\sd s4\su |
  
  \barNumberCheck 146
  s2-\tweak Y-offset -2 \sd s8 s\su |
  \repeat unfold 2 { s2\sd s8 s\su | }
  s4\sd s\su s\sd |
  s2 s8 s\su |
  \repeat unfold 3 { s2\sd s8 s\su | }
  
  \barNumberCheck 154
  s2-\tweak Y-offset -1.5 \sd s8 s\su |
  \repeat unfold 2 { s2\sd s8 s\su | }
  s2\sd s8. s16\su |
  s2.-\tweak Y-offset -2 \sd |
  s2 s8. s16\su |
  s2-\tweak Y-offset -1.5 \sd s8. s16\su |
  s2\sd s4\su | |
  
  \barNumberCheck 162
  s2-\tweak Y-offset -2 \sd s8 s\su |
  \repeat unfold 7 { s2\sd s8 s\su | }
  
  \barNumberCheck 170
  s2-\tweak Y-offset -1 \sd s8 s\su |
  \repeat unfold 2 { s2\sd s8 s\su | }
  s2\sd s8. s16\su |
  s2.-\tweak Y-offset -1 \sd |
  s2 s8. s16\su |
  s2-\tweak Y-offset -1 \sd s8. s16\su |
  s2\sd s4\su |
  
  \barNumberCheck 178
  \repeat unfold 8 { s2\sd s8 s\su | }
  
  \barNumberCheck 186
  \repeat unfold 8 { s2\sd s8 s\su | }
  
  \barNumberCheck 194
  \repeat unfold 8 { s2\sd s8 s\su | }
  
  \barNumberCheck 202
  \repeat unfold 8 { s2\sd s8 s\su | }
  
  \barNumberCheck 210
  s2-\tweak Y-offset -2 \sd s8 s\su |
  \repeat unfold 3 { s2\sd s8 s\su | }
  s2-\tweak Y-offset -2 \sd s8 s\su |
  \repeat unfold 3 { s2\sd s8 s\su | }
  
  \barNumberCheck 218
  \repeat unfold 3 { s2\sd s8 s\su | }
  s2\sd s4\su |
  s2.\sd |
  s2 s8. s16\su |
  s2\sd s8. s16\su |
  s2\sd s4\su |
  
  \barNumberCheck 226
  \repeat unfold 8 { s2\sd s8 s\su | }
  
  \barNumberCheck 234
  s2\sd s8. s16\su |
  \repeat unfold 2 { s2\sd s8 s\su | }
  s2\sd s4\su |
  s2.\sd |
  s2 s8. s16\su |
  s2.\sd |
  s2 s8 s\su |
  
  \barNumberCheck 242
  s2.\sd |
  s2 s8. s16\su |
  s2.\sd |
  s2 s8 s\su |
  s2. * 4 |
  
  \barNumberCheck 250
  s2. * 4 |
  \repeat unfold 4 { s2\sd s8 s\su | }  
  \barNumberCheck 258
  s2. * 8 |
  
  \barNumberCheck 266
  s2. * 8 |
  
  \barNumberCheck 274
  s2.\sd |
  s2. * 2 |
  s2 s8 s\su |
  \repeat unfold 4 { s2\sd s8 s\su | }
  
  \barNumberCheck 282
  \repeat unfold 8 { s2\sd s8 s\su | }
  
  \barNumberCheck 290
  \repeat unfold 4 { s2\sd s8 s\su | }
  s2.\sd |
  s2. * 3 |
  
  \barNumberCheck 298
  s4 s2\su |
  s2.\sd |
  s4 s2\su |
  s2.\sd 
  s2. * 2 |
  s2 s4\su |
  s2.\sd |
  s2 s4\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \once \override Score.MetronomeMark.Y-offset = 4
  \tempo "Vivace" 2. = 80
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \repeat volta 2 {
    \barNumberCheck 17
    \tempo 2. = 72
    s2. * 8 |
    
    \barNumberCheck 25
    s2. * 8 |
    
    \barNumberCheck 33
    \tempo 2. = 80
    s2. * 8 |
   
    \barNumberCheck 41
    s2. * 7 |
    \alternative {
      { s2. }
      { s2. }
    }
  }
  
  \barNumberCheck 50
  s2. * 8 |
  
  \barNumberCheck 58
  s2. * 5 |
  \tempo 2. = 76
  s2. |
  \tempo 2. = 72
  s2. |
  \tempo 2. = 69
  s2. |
  
  \barNumberCheck 66
  \tempo 2. = 80
  s2. * 8 |
  
  \barNumberCheck 74
  s2. * 5 |
  \tempo 2. = 76
  s2. |
  \tempo 2. = 72
  s2. |
  \tempo 2. = 69
  s2. |
  
  \barNumberCheck 82
  \tempo 2. = 72
  s2. * 8 |
  
  \barNumberCheck 90
  s2. * 8 |
  
  \barNumberCheck 98
  s2. * 8 |
  
  \barNumberCheck 106
  s2. * 8 |
  
  \barNumberCheck 114
  s2. * 8 |
  
  \barNumberCheck 122
  s2. * 8 |
  
  \barNumberCheck 130
  s2. * 8 |
  
  \barNumberCheck 138
  s2. * 8 |
  
  \barNumberCheck 146
  \tempo 2. = 80
  s2. * 8 |
  
  \barNumberCheck 154
  s2. * 5 |
  \tempo 2. = 76
  s2. |
  \tempo 2. = 72
  s2. |
  \tempo 2. = 69
  s2. |
  
  \barNumberCheck 162
  \tempo 2. = 80
  s2. * 8 |
  
  \barNumberCheck 170
  s2. * 5 |
  \tempo 2. = 76
  s2. |
  \tempo 2. = 72
  s2. |
  \tempo 2. = 69
  s2. |
  
  \barNumberCheck 178 
  \tempo 2. = 72
  s2. * 8 |
  
  \barNumberCheck 186
  s2. * 8 |
  
  \barNumberCheck 194
  \tempo 2. = 80
  s2. * 8 |
  
  \barNumberCheck 202
  s2. * 8 |
  
  \barNumberCheck 210
  s2. * 8 |
  
  \barNumberCheck 218
  s2. * 5 |
  \tempo 2. = 76
  s2. |
  \tempo 2. = 72
  s2. |
  \tempo 2. = 69
  s2. |
  
  \barNumberCheck 226
  \tempo 2. = 80
  s2. * 8 |
  
  \barNumberCheck 234
  s2. * 8 |
  
  \barNumberCheck 242
  s2. * 4 |
  s4 \tempo 2. = 92 s2 |
  s2. * 3 |
  
  \barNumberCheck 250
  s2. * 8 |
  
  \barNumberCheck 258
  s2. * 8 |
  
  \barNumberCheck 266
  s2. * 8 |
  
  \barNumberCheck 274
  s2. * 8 |
  
  \barNumberCheck 282
  s2. * 8 |
  
  \barNumberCheck 290
  s2. * 8 |
  
  \barNumberCheck 298
  s2. * 8 |
  \tempo 2. = 40
  s2. |
}

forceBreaks = {
  s2. * 6 \break\noPageBreak
  s2. * 7 \break\noPageBreak
  s2. * 7 \break\noPageBreak
  s2. * 8 \break\noPageBreak
  \grace { s8 } s2. * 7 \break\noPageBreak
  s2. * 7 \pageBreak
  
  s2. * 6 \break\noPageBreak
  s2. * 8 \break\noPageBreak
  s2. * 7 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 6 \pageBreak
  
  s2. * 7 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 7 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 8 \pageBreak
  
  s2. * 7 \break\noPageBreak
  s2. * 7 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 7 \break\noPageBreak
  s2. * 7 \break\noPageBreak
  s2. * 6 \pageBreak
  
  s2. * 6 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 8 \break\noPageBreak
  s2. * 7 \pageBreak
  
  s2. * 6 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 7 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 6 \pageBreak
  
  s2. * 6 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 6 \pageBreak
  
  s2. * 7 \break\noPageBreak
  s2. * 7 \break\noPageBreak
  s2. * 8 \break\noPageBreak
  s2. * 7 \break\noPageBreak
  s2. * 8 \break\noPageBreak
}

waltzOneNotes =
\score {
  \header {
    title = \markup \concat { 
      "Waltz in A" \raise #0.75 \large \flat " major" 
    }
    composer = "Frédéric Chopin"
  }
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 1"
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

waltzOneMidi =
\book {
  \bookOutputName "waltz-op34-no1"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
