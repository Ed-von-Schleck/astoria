\version "2.18.2"

\header {
  title = "Wenn der Himmel grau wird"
  composer = "Christian H. M. Schramm"
  poet = "Jura Soyfer"
}

global = {
  \key a \minor
  \time 4/4
}

chordNames = \chordmode {
  \global
  \germanChords
  a1:m a:m7+ a:m7 a:m7-
  
  b1*2:dim/d e:7
  a1:m a:m7+ a:m7 a:m7-
  
  b1*2:dim/d e:7
  f1 f/e f/d f/c
  
  g1*2/b g:m/bes f/a f:m/as
  c/g es1:dim/fis b:7/es e1*2:7
  
  a1:m a:m7+ a:m7 a:m7-
}

melody = \relative c'' {
  \global
  R1*4
  
  \repeat volta 2 {
  
  r4 b b b
  b b b a8 b~
  b2 r4 b
  b a b c8 b~
  
  b4 a4 r2
  r1
  r1
  r1
  
  r4 b b b
  b b b a8 b~
  b2 r4 b
  b a b c8 b~
  
  b4 a4 r2
  r1
  r1
  r1
  
  r2. b4
  b2 c4 d~
  d2 c4 c~
  c bes2 a4~
  
  a2 r4 a
  a2 a4 c~
  c2 d4 d~
  d c2.
  
  r2. g4
  g4 c2 d4~
  d c2 c4~
  c4 b2 b4~
  
  b2 r4 e,4
  e e e d8 d8~
  
  d4 c r2
  r1
  r1
  r1
  
  }
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  In wei -- ter Fer -- ne sind ver -- blaßt
  die Ster -- ne, uns -- re Brü -- der
  als ei -- ne blei -- ern grau -- e Last
  senkt sich der Him -- mel nie -- der
  der Mensch er -- wacht in sei -- nem Leid 
  zum Mord und zum Ge -- be -- te
  der A -- tem ei -- ner kran -- ken Zeit
  geht keu -- chend durch die Städ -- te
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Steh auf im Schein des kar -- gen Lichts
  du Lump auf frem -- der Schwel -- le
  steh auf und geh und hof -- fe nichts
  der Him -- mel wird nicht hel -- le
  das wird ein Ar -- me -- leu -- te -- tag
  voll Schweiß und Blut und Trä -- nen 
  das wird ein Tag vom al -- ten Schlag
  nicht der, den wir er -- seh -- nen
}

verseThree = \lyricmode {
  \set stanza = "3."
  Nicht der, der uns im Traum er -- schien
  ge -- krönt von hun -- dert Son -- nen
  da blü -- hend stand im ew' -- gen Grün
  die Welt, die wir ge -- won -- nen
  den Ran -- zen pack und troll dich sacht
  schon na -- hen die Gen -- dar -- men
  ver -- birg, ver -- birg den Traum der Nacht
  den lich -- ten Traum der Ar -- men
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
