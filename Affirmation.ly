\version "2.18.2"
\language "nederlands"

\header {
  title = "AFFIRMATION (Bb)"
  composer = "José Feliciano"
  subtitle = ""
  tagline = ##f
}

melody = \relative cis'' {
  \clef treble \key e \major \time 4/4

  \partial 4 cis16 dis e fis |

  \mark \markup {
    \line { \box "A" \hspace #1 \musicglyph #"scripts.segno" }
  }
  \repeat volta 2 {
    % Battute comuni 1–2
    \repeat percent 2 {
      gis8. gis16~ gis8 fis16 b16~ b8 a8 gis16 fis16 r8 |
    }

    % 3–4
    fis8. fis16~ fis8 e8~ e4 r16 gis,16 b16 cis16 |
    dis8. dis16~ dis8 b16 cis16~ cis8
      r16 b16 cis16 dis16 e16 fis16 | \break

    % 5–6
    gis8. gis16 gis8 fis16 b16~ b8 a8 gis16 fis8 cis16 |
    gis'8. gis16 gis8 fis16 b16 b8. cis16 a16 b16 gis8 |

    % 7–8
    fis8. fis16~ fis8 e8~ e4 r16 gis,16 b16 cis16 |
    dis8. dis16~ dis8 cis8~
      cis2^\markup { \musicglyph #"scripts.coda" } | \break

    % 9–10
    fis8. fis16~ fis8. e16~ e4 r8 fis16 gis16 |
    fis8. e16~ e8 b8~ b4 r8 fis'16 gis16 |
  }

  \alternative {
    {
      % Prima alternativa, battute 11–16
      fis8. cis16~ cis8 e8 e2 |
      r2 r4 cis16 dis16 e16 fis16 | \break

      gis4 gis8 fis16 fis16~ fis4. e16 gis16 |
      gis4 gis8 fis16 fis16~ fis4. e16 b'16~ |
      b2.. b16 cis16 |
      e8 b16 cis16 e8 cis8 gis8 cis,8 e16 fis8. |
    }
    {
      % Seconda alternativa, battute 11–16
      fis8. e16~ e8 cis8~ cis4. cis'8 |
      c2. r4 |

      r8 b,16 e16~ e8\glissando gis8 r4 r8 e8 |
      b'16 b16 gis8 e8 cis8 b16 cis8 e16~
        e16 fis8 e16~ | \break

      e1 |
      R1 |
    }
  }

  % B: otto battute
  \key c \major
  \mark \markup { \box "B" }

  g,1 |
  % DA VERIFICARE (B, b. 2): ritmo e altezze.
  r4 e'4 f8 e8 d8 c8 | \break

  g1 |
  % DA VERIFICARE (B, b. 4): suddivisione dei sedicesimi.
  r4 r8 e'8 f16 f16 e8 d8 c8 |

  g1~ |
  g1 | \break

  % DA VERIFICARE (B, bb. 7–8): alterazioni e legature.
  b4-> cis8 a8~ a8 cis8 gis4-> |
  g8 fis8~ fis8 g8 e4 g8
    dis8^\markup { "D.S. al Coda" } \bar "||"

  % Coda: otto battute
  \break
  \key e \major
  \mark \markup { \musicglyph #"scripts.coda" }

  % DA VERIFICARE: note piccole e alterazione locale.
  \repeat percent 2 {
    e'8 cis8 r4 r8 fis,16 fis16~ fis16 gis16 b16 e16 |
    e8 cis8 cis4-> r8 a16 bis16 cis8 r8 |
  }

  \break
  % DA VERIFICARE: differenze rispetto al primo rigo.
  \repeat percent 2 {
    e8 cis8 r4 r8 fis,16 fis16~ fis16 gis16 b16 e16 |
    e8 cis8 cis4 r8 a16 bis16 cis8 r8 |
  } \bar "|."
} 

harmonies = \chordmode {
  \partial 4 s4

  \repeat volta 2 {
    fis1:m9 | fis1:m9 |
    cis1:m7 | cis1:m7 |
    fis1:m9 | fis1:m9 |
    cis1:m7 | cis1:m7 |
    cis1:m7 | b2:m7 e2:7 |
  }

  \alternative {
    {
      a1:maj7 | a1:maj7 |
      fis1:7 | fis1:7 |
      b1:7sus4 | fis2:m7 e2:7 |
    }
    {
      a1:maj7 | a1:maj7 |
      gis2:m7 g2:7 |
      fis2:m7 f2:7 |
      e1:maj9 | e1:maj9 |
    }
  }

  % B
  c1:maj7 | c1:maj7 |
  c1:maj7 | c1:maj7 |
  c1:maj7 | c1:maj7 |
  b1:7sus4 | b1:7sus4 |

  % Coda
  \repeat percent 2 { cis1:m7/e | cis1:m7/e | }
  \repeat percent 2 { cis1:m7/e | cis1:m7/e | }
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
}