#import "@preview/commute:0.3.0" as commute
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "@preview/ouset:0.2.0": *
#import "void-rubby.typ": *


#let danger = box(image("Knuth's_dangerous_bend_symbol.svg", height: 1.5em))

// #let cupp = sym.paren.b
// #let cupp = scale(y: 50%)[#math.union]

//Coloring math formula
#let colmath(x,color) = text(fill: color)[$#x$]

#let gen(..args) = $lr(angle.l #{
  args = args.pos()
  args.remove(0)
  for x in args {$,#x$}
} angle.r)$

#let center-comm-diag(..args) = align(center, commute.commutative-diagram(..args))

#let ignore-todo = true
// to see todos in document, set ignore-todo = false
// then every #todo will throw an error
#let todo(soft: false) = [#text("todo", weight: "bold", fill: if (soft) {blue} else {red})#assert(ignore-todo or soft, message: "todo")]
#let soft-todo() = todo(soft: true)

#let qed-symb = $square$
#let insert-qed = [#h(1fr)#qed-symb]

#let ge-eq(x, y) = (x >= y, x == y)
#let compares(x, y) = {
  return (
    lt: x < y, gt: x > y, 
    le: x <= y, ge: x >= y, 
    eq: x == y
  )
}

// https://forum.typst.app/t/how-does-one-avoid-caligraphic-font-difference-between-typst-and-latex/1781/5
// Workaround to get LaTeX-like \mathcal in Typst


// Controlling font for headings.
#let levelfont(n) = {
 if(n == 1){return "CMU Sans Serif"}
 if(n >= 2){return "New Computer Modern"}
}


// Producing heading title (up to a given level) at current position.
#let numberingH(c) = {
  if (c.numbering == none) {return ""}
  return numbering(c.numbering,..counter(heading).at(c.location()))
}

#let currentH(level: 1) = {
  let elems = query(selector(heading.where(level: level)).after(here()))
  if elems.len() != 0 and elems.first().location().page() == here().page() {
    return [#numberingH(elems.first()) #elems.first().body] 
  } else {
    elems = query(selector(heading.where(level: level)).before(here()))
    if elems.len() != 0 {
      return [#numberingH(elems.last()) #elems.last().body] 
    }
    if elems.len() == 0 {return ""}
  }
  return currentH(level: level - 1)
}