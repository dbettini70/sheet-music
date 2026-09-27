\versi\version "2.18.2"

\header {
  title = "52nd Street Theme (Bb)"
  composer = "Thelonious Monk"
  subtitle = ""
  tagline = ##f
}

theme = \relative d' {
  \acciaccatura fis8 d8 eis8 fis8 a8 d8 b8 r4
}

turnA = \relative fis'' {
  \tuplet 3/2 { fis8 d8 b8 } a8 gis8 ~ gis4. a8
}

turnFinal = \relative fis'' {
  \tuplet 3/2 { fis8 d8 b8 } a8 gis8 ~ gis4 r8 a8
}

ending = \relative d'' { r8 d8 r4 r2 }

melody = {
  \clef treble \key d \major \time 4/4

  \repeat volta 2 {
    \bar ".|:"
    \theme | R1 |
    \theme | R1 |
    \theme | R1 |
    \turnA |
  }
  \alternative {
    { \ending | }
    { \ending | }
  }
  \break

  \relative bes' {
    bes8 a8 es'8 d8 bes8 fis8 c'8 as8 |
    e8 bes'8 fis8 d8 es8 f8 ees8 d8 |
    d2 ~ d4. d8 |
    r4 r8 e8 fis8 gis8 a8 bes8 |
    c8 b8 f'8 e8 c8 gis8 d'8 bes8 |
    g8 c8 gis8 e8 bes'8 a4 a8 ~ |
    a8 a8 a4 \acciaccatura c8 a8 c8 f8 a8 ~ |
    a8 a8 es2. |
  }
  \bar "||" \break

  \theme | R1 |
  \theme | R1 |
  \theme | R1 |
  \turnFinal |
  \ending | \bar "|."
}

aChords = \chordmode {
  d2 b2:m7 | e2:m7 a2:7.5+ |
}

harmonies = \chordmode {
  \repeat volta 2 {
    \grace s8
    \aChords \aChords \aChords
    b2:m7 e2:7 |
  }
  \alternative {
    { d1 | }
    { d1 | }
  }
  d1:7 | d2:7 aes2:7.11+ |
  g2:maj7 aes2:7.11+ | g1:6 |
  e1:7 | e2:7 e2:m7 |
  a1:7.5+ | a1:7.5+ |
  \aChords \aChords \aChords
  b2:m7 e2:7 | d2 a2:7.5+
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff { \melody }
  >>
  \layout { }
  \midi { }
}