#import "@preview/ctheorems:1.1.3" as C

#let color_config = (
	default : rgb("#ffffff"), 
	definition : rgb("#dbdbff"), 
	construction : rgb("#dffdff"), 
	theorem : rgb("#fcd8e8"), 
	proposition : rgb("#f5dffe"), 
	warning : rgb("#ffffd9"), 
	todo : rgb("FF0000"), 
	conjecture : rgb("#b5ffda")
)

#let env_boxed_std(identifier: "Default_boxed_id", head, color_id: none, ..args) = (name: none, body) => {
	let color_id_actual = if (color_id == none) {lower(head)} else {color_id}
	C.thmbox(
		identifier, 
		head, 
		fill: if (color_id_actual in color_config) {color_config.at(color_id_actual)} else {color_config.at("default")}, 
		stroke: black, 
		width: 100%, 
		inset: (x: 6pt, y: 8pt), 
		breakable: true, 
		separator: [#h(0.1em).#h(0.2em)], 
		..args.named()
	)(name, body)
}

#let env_unboxed_std(identifier: "Default_unboxed_id", head, generator: C.thmplain, ..args) = body => {
//	set par(hanging-indent: 1em);
	generator(
		identifier, 
		head, 
		separator: [#h(0.1em).#h(0.2em)], 
		..args.named()
	)(body)
	align(center)[
		#box(line(length: 41%, stroke: 0.5pt)) #h(0.5em) #box(line(length: 0%, stroke: (thickness: 2pt, cap: "round"))) #h(0.5em) #box(line(length: 41%, stroke: 0.5pt))
	]
}

#let def = env_boxed_std("Definition")
#let thm = env_boxed_std("Theorem")
#let prop = env_boxed_std("Proposition")
#let lem = env_boxed_std("Lemma")
#let const = env_boxed_std("Construction")
#let coro = env_boxed_std("Corollary")
#let conj = env_boxed_std("Conjecture")
#let warn = env_boxed_std("Warning")
#let question = env_boxed_std("Question")
#let todo = env_boxed_std("todo", identifier: "todo")
#let ass = env_boxed_std("Assumption")
//, separator: [#h(0.1em)⚠#h(0.2em)]

#let exam = env_unboxed_std("Example")
#let fact = env_unboxed_std("Fact")
#let notn = env_unboxed_std("Notation")
#let problem = env_unboxed_std("Problem")
#let rem = env_unboxed_std("remark")

#let proof = body => {
	C.thmproof("proof", "Proof")(body)
	align(center)[
		#line(length:85.8%, stroke: (thickness: 0.7pt, dash: ("dot", 2pt, 4pt, 2pt)))
	]
}