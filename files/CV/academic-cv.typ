// ================================================================
// Ph.D. student academic CV template in Typst
//
// How to use this file:
// 1. Replace all placeholder text such as "Your Name".
// 2. Delete any sections you do not need.
// 3. Compile with: typst compile academic-cv.typ academic-cv.pdf
//
// This template uses only built-in Typst features, so no packages
// or downloads are required.
// ================================================================

// ---------- Personal information: edit this part first ----------
#let your-name = "Xiaoyang Chen"
// Use "Ph.D. Candidate" only if your university formally uses that title,
// usually after you have passed the relevant candidacy examination.
#let academic-title = "Incoming Ph.D. Student in Mathematics"
#let institution = "Tsinghua University"
#let email = "chensean229@gmail.com"
#let website = "https://triangulated-ruler.github.io"
#let github = "https://github.com/triangulated-ruler"
#let orcid = "https://orcid.org/0000-0000-0000-0000"
#let location = "Beijing, China"
#let last-updated = "August 2026"

// ---------- Appearance: change these values if you wish ----------
#let accent = rgb("#244A73")
#let muted = rgb("#555D66")

// This information is embedded in the exported PDF.
#set document(
  title: [#your-name — Curriculum Vitae],
  author: your-name,
  description: [Academic curriculum vitae of #your-name, a mathematics Ph.D. student.],
  keywords: ("curriculum vitae", "mathematics", "Ph.D. student"),
)

#set page(
  paper: "a4",
  margin: (x: 1.65cm, y: 1.45cm),
  numbering: "1",
  number-align: center,
)

#set text(
  font: ("Libertinus Serif", "New Computer Modern", "Noto Serif SC"), 
  size: 10pt,
  lang: "en",
)

#set par(
  justify: false,
  leading: 0.58em,
)

#set list(
  indent: 1.1em,
  body-indent: 0.5em,
  spacing: 0.22em,
)

#set enum(
  indent: 1.1em,
  body-indent: 0.55em,
  spacing: 0.42em,
)

// Make every hyperlink use the accent color.
#show link: set text(fill: accent)

// A section heading followed by a thin horizontal rule.
#let cv-section(title) = block(
  width: 100%,
  spacing: 0pt,
  sticky: true,
  {
    v(0.65em)
    text(size: 12.5pt, weight: "bold", fill: accent, title)
    v(-0.28em)
    line(length: 100%, stroke: 0.7pt + accent)
    v(0.25em)
  },
)

// A reusable dated entry. The final "details" argument is optional.
#let cv-entry(title, organization, date, details: none) = {
  block(
    width: 100%,
    breakable: false,
    spacing: 0pt,
    [
	  #v(0.3em)
      #grid(
        columns: (1fr, auto),
        column-gutter: 1em,
        strong(title),
        align(right, text(size: 9.2pt, weight: "medium", date)),
      )
	  #v(-0.5em)
      #text(size: 9.6pt, style: "italic", fill: muted, organization)
      #if details != none {
        pad(top: -0.3em, left: 0.55em, details)
      }
      #v(1.5em)
    ],
  )
}

// ----------------------------- Header ----------------------------
#align(right, text(size: 8pt, fill: muted)[Last updated: #last-updated])

#align(center)[
  #text(size: 24pt, weight: "bold", fill: accent)[#your-name]
  #v(0.12em)
  #text(size: 11pt, weight: "medium")[#academic-title · #institution]
  #v(0.3em)
  #text(size: 9.2pt)[
    #location
    #h(0.55em)·#h(0.55em)
    #link("mailto:" + email)[#email]
    #h(0.55em)·#h(0.55em)
    #link(website)[Website]
    #h(0.55em)·#h(0.55em)
    #link(github)[GitHub]
//    #h(0.55em)·#h(0.55em)
//    #link(orcid)[ORCID]
  ]
]

// If you want a very short introductory statement, uncomment and edit this:
// #cv-section[Profile]
// Ph.D. student working in geometric representation theory, with interests in ...

// ---------------------------- Education --------------------------
#cv-section[Education]

#cv-entry(
  [Incoming Ph.D. in Mathematics (expected 2031)],
  [Qiuzhen College, Tsinghua University, Beijing, China],
  [Starting September 2026],
  details: [Expected advisor: Prof. Penghui Li. Intended research area: Geometric representation theory.],
)

#cv-entry(
  [B.Sc. in Mathematics],
  [Qiuzhen College, Tsinghua University, Beijing, China],
  [2023–2026],
)

// ----------------------- Awards and support -----------------------
#cv-section[Fellowships, Scholarships, and Awards]

#cv-entry(
  [Outstanding undergraduate thesis award],
  [Qiuzhen College, Tsinghua University],
  [June 2026],
)

#cv-entry(
  [Fellowship 2024 of Tsinghua University], 
  [Qiuzhen College, Tsinghua University], 
  [2024]
)

// ----------------------- Research interests ----------------------
#cv-section[Research Interests]

Geometric representation theory; geometric Langlands; graded sheaves; derived algebraic geometry; higher category theory.

// ----------------------- Research experience ---------------------
#cv-section[Research Experience]

#cv-entry(
  [Undergraduate Thesis — "Langlands duality of affine Hecke categories"],
  [Qiuzhen College, Tsinghua University],
  [2025–2026],
  details: [Advisor: Prof. Penghui Li. The paper gives a graded lift of the Bezrukavnikov-Arkhipov equivalence. The paper is available on my website. ],
)

/*
// -------------------------- Publications -------------------------
#cv-section[Publications and Preprints]

// This section is optional. Delete it if you do not yet have a publication or
// public preprint. Put your name in bold, and link to the journal or arXiv page.
+ *Your Name* and Coauthor Name, “Title of the article,” _Journal Name_
  00 (2026), no. 0, 1–25.
  #link("https://doi.org/10.0000/example")[doi]

+ *Your Name*, “Title of a preprint,” preprint (2026), 30 pages.
  #link("https://arxiv.org/abs/0000.00000")[arXiv:0000.00000]

// You may list genuinely active work in progress, but this is optional:
// + Coauthor Name and *Your Name*, “Working title,” in preparation.
*/
// ----------------------------- Talks -----------------------------
#cv-section[Seminar Talks and Presentations]

#cv-entry(
  [The geometric Satake equivalence], 
  [], 
  [December 2025], 
  details: [Joint presentation with: Mingyu Bai, Kun Zheng]
)

#cv-entry(
  [Equivariant $K$-theory and index theory],
  [],
  [June 2025],
)

#cv-entry(
  [The moduli stack of formal groups and chromatic homotopy theory],
  [],
  [May 2025],
)

#cv-entry(
  [Galois extensions of structured ring spectra and Goerss--Hopkins theory],
  [],
  [May 2025], 
  details: [\ The notes of these talks are also available on my website. ]
)

#pagebreak()

#align(right, text(size: 8pt, fill: muted)[
  Xiaoyang Chen — Curriculum Vitae
])

/*
// ---------------------------- Teaching ---------------------------
#cv-section[Teaching Experience]

#cv-entry(
  [Teaching Assistant — Course Title],
  [University Name],
  [Fall 2026],
  details: [Led weekly tutorials, held office hours, and graded assignments.],
)

#cv-entry(
  [Grader or Tutor — Course Title],
  [University Name],
  [Spring 2025],
  details: [Graded assignments and exams, or supported students in weekly problem-solving sessions.],
)

// If you were formally the instructor of record, add a separate entry and
// describe your responsibility for lectures, assessments, and course design.
*/
// ------------------- Conferences and workshops -------------------
#cv-section[Conferences and Workshops]

#cv-entry(
  [International Workshop on Algebraic Topology 2026 (IWoAT 2026)],
  [Peking University, Beijing],
  [August 2026],
)

#cv-entry(
	[International Congress of Mathematicians 2026 (ICM 2026)], 
	[IMU, Pennsylvania Convention Center, Philadelphia, USA], 
	[July 2026], 
)

#cv-entry(
	[International Congress of Chinese Mathematicians 2025 (ICCM 2025)], 
	[SIMIS, Shanghai], 
	[January, 2026], 
)

#cv-entry(
	[Beijing--Shanghai Summer School in Mathematics 2025],
	[SIMIS, Shanghai],
	[June-July 2025],
	details: [The course topic contains various aspects of the geometric Langlands programs],
)

#cv-entry(
	[International Congress of Basic Science], 
	[BIMSA, Beijing], 
	[July 2023, July 2024, July 2025, August 2026], 
)


/*
// ---------------------------- Service ----------------------------
#cv-section[Service and Outreach]

- Co-organizer, Graduate Student Seminar or Reading Group, University Name (2025–present).
- Volunteer or mentor, Mathematics Outreach Program (2025).
- Graduate student representative, Departmental Committee (2024–2025).

// ---------------- Additional sections you may want ---------------
// You can delete these, or duplicate #cv-section[...] to add sections
// such as Professional Experience, Mentoring, or Professional Memberships.

// Early-stage Ph.D. students may include selected advanced courses. Remove
// this section once research outputs and presentations represent you better.
// #cv-section[Selected Graduate Coursework]
// Algebraic Geometry; Representation Theory; Homological Algebra;
// Category Theory; Number Theory.

// Delete this section if the listed skills are not relevant to your work.
*/
/*
#cv-section[Languages and Technical Skills]

- *Languages:* English (fluent), Chinese (native).
- *Technical:* Typst, LaTeX, Git, SageMath, Python.

// References are normally omitted from a public homepage CV. If an application
// specifically requests them, uncomment this heading and add two or three
// faculty members who have agreed to serve as referees.
// #cv-section[References]
// #cv-entry(
//   [Professor Full Name],
//   [Department, University Name],
//   [email@example.com],
//   details: [Ph.D. advisor or research supervisor.],
// )
*/