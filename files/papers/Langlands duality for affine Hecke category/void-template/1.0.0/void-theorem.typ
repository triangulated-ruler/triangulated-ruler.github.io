#import "@preview/ctheorems:1.1.3" as C

#let nesting-state = state("vthm-nesting-state", 1)
#let nest-block(block) = [
  #nesting-state.update(x => x + 1)
  #block
  #nesting-state.update(x => x - 1)
]

#let amplify-color(color, magnitude) = {
  if (magnitude >= 1.0) {return color}
  if (magnitude <= 0.0) {return rgb("#ffffff")}
  return rgb(
    //..rgb(color).components().map(x => {
    //let y = 100% - (100% - x) * magnitude
    //return y
  //})
  "#ffffff00")
}

// fontconfig for special environment: theorem, proposition, lemma, corollary. italicconfig for controlling italic style in these special environment.
#let fontconfig = ((covers: regex("[\u0000-\u2023]"), name: "New Computer Modern"),"SimSun")
#let italicconfig = true

// Rewrite thmbox to support show-number argument: Control the numbering behavior for the thmbox.
#let thmbox_control_number(
  identifier,
  head,
  ..blockargs,
  show-number: true,
  supplement: auto,
  padding: (top: 0.5em, bottom: 0.5em),
  namefmt: x => [(#x)],
  titlefmt: strong,
  bodyfmt: x => x,
  separator: [#h(0.1em):#h(0.2em)],
  base: "heading",
  base_level: none,
) = {
  if supplement == auto {
    supplement = head
  }
  let boxfmt(name, number, body, title: auto, ..blockargs_individual) = {
    if not name == none {
      name = [ #namefmt(name)]
    } else {
      name = []
    }
    if title == auto {
      title = head
    }
    if not number == none {
      title += " " + number
    }
    title = titlefmt(title)
    body = bodyfmt(body)
    pad(
      ..padding,
      block(
        width: 100%,
        inset: 1.2em,
        radius: 0.3em,
        breakable: false,
        ..blockargs.named(),
        ..blockargs_individual.named(),
        [#title#name#separator#body]
      )
    )
  }
  if(show-number == true){
  return C.thmenv(
    identifier,
    base,
    base_level,
    boxfmt
  ).with(
    supplement: supplement,
  )
  }
  if(show-number == false){
    return C.thmenv(
    identifier,
    base,
    base_level,
    boxfmt
  ).with(
    supplement: supplement, numbering: none
  )
  }
}

// Integrate into a single function vthm-std-box. Label-name: referencing name, Number: Show number or not.
#let vthm-std-box(identifier: "theorem", head, color-id: none, generator: thmbox_control_number, ..args, font: 0) = (..inner-args, label-name: "Default", number: true, base-level: none, body) => {
  context nest-block[
    #if(generator == thmbox_control_number){
    generator(identifier,  
      head,
      width: 100% - 0pt,
      inset: (x: 0pt, y: -2pt), 
      breakable: true, 
      separator: [#h(0.01em).#h(0.1em)],
      show-number: number,
      base_level: base-level,
      ..args.named()
    )(..inner-args)[
      #set text(
        ..(if font == 0 {(:)} else {
        if(italicconfig) {(font: font, style: "italic")}
        else {(font:font)}
        }
        )
      )
      #body
    ]}#label(label-name)

    #if(generator == C.thmproof){
    generator(identifier,  
      head,
      width: 100% - 0pt,
      inset: (x: 0pt, y: -2pt), 
      breakable: true, 
      separator: [#h(0.01em).#h(0.1em)],
      ..args.named()
    )(..inner-args)[
      #set text(
        ..(if font == 0 {(:)} else {
        if(italicconfig) {(font: font, style: "italic")}
        else {(font:font)}
        }
        )
      )
      #body
    ]}
  ]
}

#let theorem = vthm-std-box("Theorem", font: fontconfig)
#let lemma = vthm-std-box("Lemma", font: fontconfig)
#let problem = vthm-std-box(identifier: "problem", "Problem")
#let remark = vthm-std-box("Remark")
#let definition = vthm-std-box("Definition")
#let conjecture = vthm-std-box("Conjecture")
#let example = vthm-std-box("Example")
#let notation = vthm-std-box("Notation")
#let properties = vthm-std-box("Properties")
#let exercise = vthm-std-box("Exercise")
#let observation = vthm-std-box("Observation")
#let construction = vthm-std-box("Construction")
#let proposition = vthm-std-box("Proposition", font: fontconfig)
#let question = vthm-std-box("Question", color-id: "example")
#let fact = vthm-std-box("Fact", color-id: "lemma")
#let corollary = vthm-std-box("Corollary", font:fontconfig)
#let solution = vthm-std-box("Solution")

#let proof = vthm-std-box(identifier: "proof", "Proof", generator: C.thmproof)
#let proof_(head, body) = vthm-std-box(identifier: "proof", head, color-id: "proof", generator: C.thmproof)(body)
#let date(body) = vthm-std-box(identifier: "proof", none, color-id: "date", generator: C.thmproof, separator: none)([
  #C.thm-qed-done.update(true)
  #align(center, body)
])
