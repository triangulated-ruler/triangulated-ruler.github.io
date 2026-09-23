#import "template.typ": *

#let set_style(file) = [

	#set page(
		paper: "a4", 
		margin: (x: 48pt, y: 60pt), 
		footer: context align(center)[#counter(page).get().at(0)]
	)

	#set heading(numbering: "1.")

	#set enum(numbering: "(1a)")

	#show: C.thmrules.with(qed-symbol: $square$)
	
	#set text(
		font: ((covers: regex("[\u0000-\u2023]"), name: "New Computer Modern"), "STSong"), 
		// font: "New Computer Modern"
	)

	#show math.gt.eq: math.gt.eq.slant
	
	#show math.lt.eq: math.lt.eq.slant

	#show sym.backslash: [#h(0em)#sym.backslash #h(0em)]

	#show ref: set text(purple)

	#show link: it => {
		set text(blue) if str(it.dest).starts-with("http")
		it
	}

	#set cite(style: "alphanumeric")

	#file
]