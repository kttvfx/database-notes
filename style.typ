#let lecture-style(body) = {
  let accent = blue.darken(25%)

  set text(
    font: "Libertinus Serif",
    size: 12pt,
    lang: "ru",
    fill: black,
  )

  set par(
    justify: true,
    first-line-indent: 0pt,
  )

  set page(
    paper: "a4",
    margin: (top: 3cm, rest: 2cm),
    numbering: "— 1 —",

    header: [
      #set text(size: 10pt)
      #set par(justify: false, spacing: 0pt)

      #block(
        width: 100%,
        inset: (bottom: 5pt),
        stroke: (bottom: 0.6pt + black),
      )[
        #grid(
          columns: (1fr, 1fr),
          gutter: 12pt,

          [
            #smallcaps[*Лекции Мацнева Н. И.*] \
            #smallcaps[
              #link(
                "https://yutaj17.github.io/itmo_notes/data_bases_Matsnev.pdf"
              )[
                #text(fill: accent)[*Оригинал работы*]
              ]
            ]
          ],

          align(right)[
            *Базы данных* \
            *Осень 2026*
          ],
        )
      ]
    ],
  )

  set heading(numbering: none)

  show heading.where(level: 1): it => block(
    width: 100%,
    above: 1.6em,
    below: 0.9em,
    inset: (bottom: 4pt),
    stroke: (bottom: 0.8pt + accent.lighten(40%)),
    breakable: false,
    sticky: true,
  )[
    #set par(
      justify: false,
      leading: 0pt,
      spacing: 0pt,
    )

    #text(
      size: 14pt,
      weight: "bold",
      fill: accent,
    )[#it.body]
  ]

  show heading.where(level: 2): set text(
    size: 13pt,
    weight: "bold",
    fill: black,
  )

  show heading.where(level: 3): set text(
    size: 12pt,
    weight: "bold",
    fill: black,
  )

  show link: set text(fill: accent)

  body
}

#let note-box(
  title: none,
  accent: rgb("#138025"),
  background: rgb("#e8f8e8"),
  body,
) = block(
  width: 100%,
  fill: background,
  stroke: (left: 3pt + accent),
  inset: (left: 12pt, right: 12pt, top: 8pt, bottom: 8pt),
  above: 12pt,
  below: 12pt,
  breakable: true,
)[
  #set par(justify: true, first-line-indent: 0pt)
  #set list(spacing: 3pt)

  #if title != none {
    block(
      below: 8pt,
      sticky: true,
    )[
      #text(
        fill: accent,
        weight: "bold",
        size: 14pt,
      )[#title]
    ]
  }

  #body
]

#let definition(title: "Definition", body) = note-box(
  title: title,
  accent: rgb("#138025"),
  background: rgb("#e8f8e8"),
  body,
)

#let explanation(title: none, body) = note-box(
  title: title,
  accent: rgb("#07969e"),
  background: none,
  body,
)

#let important(title: "Important definitions", body) = note-box(
  title: title,
  accent: rgb("#00518b"),
  background: rgb("#e9e8f8"),
  body,
)