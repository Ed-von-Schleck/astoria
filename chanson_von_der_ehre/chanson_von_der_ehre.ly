\version "2.18.2"

\header {
  title = "Chanson von der Ehre"
  composer = "Christian H. M. Schramm"
  poet = "Jura Soyfer"
}

global = {
  \key g \major
  \time 4/4
}

chordNames = \chordmode {
  \global
  \germanChords
  
  g1 gis:dim a:m d
  g1 gis:dim a:m d
  
  e:m a a:m a
  g2 g/fis e:m d c b/g a:m d
  g2 g/fis e:m d c b/g a4:m d4 g2
  

}

melody = \relative c'' {
  \global
  d4 c b c
  d8 c4 b d4.
  c4 b a b
  c4 b8 a4 d,4 r8

  d'4 c b c
  d8 c4 b d4.
  c4 b a b
  c4 b8 a4 b4 r8
  
  g4 e g e
  a a8 b4 a4.
  g4 e g e
  a a8 b4. r4
  
  b4 b b b
  b a8 g4 a4 r8
  g4 e g d
  a' b a r
  
  b4 b b b
  b a8 g4 a4 r8
  g4 e g d
  b' a g r
  \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  Willst du Platz am war -- men Her -- de
  und für an -- dre Platz da -- ne -- ben?
  schweig von leib -- li -- cher Be -- schwer -- de, 
  wei -- he dich dem hö -- hern Stre -- ben
  heb dich in die Gei -- stes -- sphä -- re, 
  wo sich schei -- den Mensch und Vieh, 
  denk, oh, denk an dei -- ne Eh -- re, 
  den -- ke Tag und Nacht an sie.
  \set stanza = "Alle"
  denk, oh, denk an dei -- ne Eh -- re, 
  den -- ke Tag und Nacht an sie.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Eh -- ren -- ta -- ge dich be -- schwe -- ren,
  all die köst -- lich kos -- ten -- lo -- sen
  du be -- klei -- dest tau -- send Eh -- ren, 
  statt dich selbst mit Rock und Ho -- sen
  oh, ver -- ach -- te die Mi -- se -- re, 
  laß den Tisch mit Staub be -- deckt, 
  a -- ber hal -- te rein die Eh -- re! 
  halt sie rein und un -- be -- fleckt.
  \set stanza = "Alle"
  a -- ber hal -- te rein die Eh -- re! 
  halt sie rein und un -- be -- fleckt.
}

verseThree = \lyricmode {
  \set stanza = "3."
  Sieh, auch oh -- ne Bar -- be -- trä -- ge
  spie -- len gro -- ße Ha -- sar -- deu -- re
  wäh -- len die be -- quem -- ren We -- ge, 
  set -- zen nur mehr ih -- re Eh -- re
  von der gro -- ßen Eh -- ren -- tor -- te 
  schnei -- de dir ein Stück -- chen ab, 
  näh -- re dich vom Eh -- ren -- wor -- te
  bis ans küh -- le Eh -- ren -- grab
  \set stanza = "Alle"
  näh -- re dich vom Eh -- ren -- wor -- te
  bis ans küh -- le Eh -- ren -- grab
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
