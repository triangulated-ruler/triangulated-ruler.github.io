//#import "void-import.typ": *
#import "let_bindings.typ": *

#show sym.backslash: [#h(-0.00em)#sym.backslash #h(-0.00em)]
#show: it => [#void-style(documentclass: documentclass, showtableofcontent: showtableofcontent, include("cover-page.typ"), it)]
#set cite(style: "gb-7714-2015-numeric")
#set text(size: 12pt)
#set par(leading: 8pt, first-line-indent: (amount:2em))
#set page(numbering: "1")
#counter(page).update(1)
//#set text(font: "Symbol")

// Edit by Void, 2605081819
/*
#import "@preview/suiji:0.5.1" as suiji

#let crc32-table = {
  let tab = 256 * (0,)
  let crc32 = 1
  for b in range(7, -1, step: -1) {
    crc32 = crc32.bit-rshift(1).bit-xor(if (crc32.bit-and(1) != 0) {0xedb88320} else {0})
    let i = 1.bit-lshift(b)
    for j in range(0, 256, step: 2*i) {
      tab.at(i + j) = tab.at(j).bit-xor(crc32)
    }
  }
  tab
}

#let hash-crc32(val) = {
  if type(val) != bytes {
    if type(val) != str {
      val = repr(val)
    }
    val = bytes(val)
  }
  let crc32 = 0xffffffff
  for b in val {
    crc32 = crc32.bit-xor(b)
    crc32 = crc32.bit-rshift(8).bit-xor(crc32-table.at(crc32.bit-and(0xff)))
  }
  return crc32.bit-xor(0xffffffff)
}

#show regex("[\u{20}-\u{7f}]{1,16}"): it => {
  let s = it.text.clusters()
  let n = s.len()
  let hash = hash-crc32(s)
  let gen = suiji.gen-rng-f(hash)
  let (_, data) = suiji.integers(gen, low: 0, high: 240, size: 3 * n)
  for i in range(n) {
    let (r, g, b) = data.slice(3 * i, 3 * i + 3)
    {
      set text(fill: rgb(r, g, b))
      s.at(i)
    }
  }
}

// Edit END
*/
#include("intro.typ")

#include("Bezrukavnikov-Arkhipov.typ")

#include("graded.typ")

#pagebreak()

#show bibliography: set heading(
	offset: 1,
)
#show bibliography: set heading(outlined: false)
#show heading.where(level: 2): it => [
    #set block(below: 18pt, above: 24pt)
    #set text(size:16pt, weight: "medium", font: "Arial")
    #v(3em)
    #align(center, it)
    #v(1em)]

#bibliography("ref.yaml", style: "gb-7714-2015-numeric", title: [#set text(size:16pt)
References])
#include("ack.typ")