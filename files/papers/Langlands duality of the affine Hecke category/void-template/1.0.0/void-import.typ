#import "void-theorem.typ": *
#import "void-let-bindings.typ": *
#import "@preview/commute:0.3.0" as commute
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge, interpret-marks-arg
#import "@preview/mitex:0.2.7": *
#import "@preview/ouset:0.2.0": *
#import "@preview/ctheorems:1.1.3" as C
#import "@preview/kouhu:0.2.0": *
#import "void-rubby.typ": *
#import "void-staged-cd-helpers.typ" as scdh: node2, edge2
#import "void-coercion.typ": *


#let void-style(documentclass: "article", showtableofcontent: "false", titlenumber: 0, contentdepth: 3, coverpagefile,..args, it) = [
  #set text(
  font: (
    (covers: regex("[\u0000-\u2023]"), name: "Times New Roman"), "SimSun"),
  lang: "en", region: "US", 
  top-edge: "ascender", bottom-edge: "descender"
  )
  //size = A4
  #set page(
    paper: "a4"
  )
  //pagrfooter format and margin
  #set page(
    ..if(documentclass == "article"){
      (footer: context align(center)[#counter(page).get().at(0)])
      (margin: (x: 30pt, y: 60pt))
    },
    ..if(documentclass == "book"){
      (footer: context {
        if(calc.rem(counter(page).get().at(0), 2) == 0){
          align(left)[#counter(page).get().at(0)]
        }
        if(calc.rem(counter(page).get().at(0), 2) == 1){
          align(right)[#counter(page).get().at(0)]
        }
      })
      (margin: (x: 2cm, y: 2.5cm))
    },
    ..if(documentclass == "thu_undergraduate_thesis"){
      (margin: (x: 3cm, y: 3cm))
    }
  )
  //pageheader format
  #set page(
    ..if(documentclass == "article"){
      (header: context {
          if(calc.rem(counter(page).get().at(0), 2) == 0){
            align(center)[#set text(10pt)
            #currentH(level: 1)]
          }
          if(calc.rem(counter(page).get().at(0), 2) == 1 and counter(page).get().at(0) != 1){
            align(center)[
              #set text(10pt)
              #currentH(level: 2)
              ]
          } 
        }
      )
    }, 
    ..if (documentclass == "book"){
      (header: context {
          if(calc.rem(counter(page).get().at(0), 2) == 0){
            align(left)[#set text(10pt)
            #currentH(level: 1)]
          }
          if(calc.rem(counter(page).get().at(0), 2) == 1 and counter(page).get().at(0) != 1){
            align(right)[
              #set text(10pt)
              #currentH(level: 2)
            ]
          }
        }
      )
    }
  )
  #set heading(
    numbering: "1."
  )
  #set math.mat(delim: "(")
  #set enum(numbering: "(1a)")
  #set math.cases(gap: 0.5em)
  #set cite(style: "alphanumeric")
  #set par(justify: true)
  

  #show math.equation: set block(breakable: true)

  #show heading: it => [
    #set text(..if (documentclass == "book" or documentclass == "article"){
      (font: ((covers: regex("[\u0000-\u2023]"), name: levelfont(it.level)), "SimSun"))
    },
    ..if (documentclass == "thu_undergraduate_thesis"){
      (font: ((covers: regex("[\u0000-\u2023]"), name: "Arial"), "SimSun"))
    }
    )
  #it
  ]

  #if(documentclass == "thu_undergraduate_thesis"){
    it = {
	  show heading.where(level: 1): set heading(numbering: (num)=>{"Chapter"+" "+numbering("1",num)+" "}, supplement: [Chapter])
      show heading.where(level: 1): it => [
        #pagebreak(to: "even")
        #set block(below: 18pt, above: 24pt)
        #set text(size:16pt,weight:"medium")
		#v(3.5em)
        #align(center, it)]
      show heading.where(level: 2): it =>[
        #set block(below: 6pt, above: 24pt)
        #set text(size:14pt,weight:"medium")
        #v(0.5em)#it#v(0.5em)]
      show heading.where(level: 3): it =>[
        #set block(below: 6pt, above: 12pt)
        #set text(size:13pt,weight:"medium")
        #it]
      show heading.where(level: 4): it =>[
        #set block(below: 6pt, above: 12pt)
        #set text(size:12pt,weight:"medium")
        #it]
    it    
    }
  }
  #import "@preview/ctheorems:1.1.3" as C
  #show: C.thmrules.with(qed-symbol: qed-symb)
  
  #coverpagefile
  #if(showtableofcontent and documentclass == "thu_undergraduate_thesis"){
    
  }
  #if(showtableofcontent and documentclass != "thu_undergraduate_thesis"){
    outline(
      depth: contentdepth
    )
  }
  #it
]