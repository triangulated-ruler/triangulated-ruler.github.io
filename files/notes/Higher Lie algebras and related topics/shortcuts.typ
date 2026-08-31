#let DefCatBold(name) = [
	#math.op(math.bold(name))
	#label("categories-bold-"+name)
]
#let DefCatStr(name) = [
	#math.op(math.upright(name))
	#label("categories-str-"+name)
]

#let Set = DefCatBold("Set")
#let Fin = DefCatBold("Fin")
#let Ani = DefCatBold("Ani")
#let Sp = DefCatBold("Sp")
#let Cat = DefCatBold("Cat")
#let DGCat = DefCatBold("DGCat")
#let Mon = DefCatBold("Mon")
#let Alg = DefCatBold("Alg")
#let coAlg = DefCatBold("coAlg")
#let CMon = DefCatBold("CMon")
#let CAlg = DefCatBold("CAlg")
#let Mod = DefCatBold("Mod")
#let BiMod = DefCatBold("BiMod")
#let Ab = DefCatBold("Ab")
#let Vect = DefCatBold("Vect")
#let Pr = DefCatBold("Pr")
#let Aff = DefCatBold("Aff")
#let Stk = DefCatBold("Stk")
#let pStk = DefCatBold("pStk")
#let Rep = DefCatBold("Rep")
#let Op = DefCatBold("Op")
#let coOp = DefCatBold("coOp")
#let Art = DefCatBold("Art")
#let Grp = DefCatBold("Grp")

#let Sh = DefCatStr("Sh")
#let pSh = DefCatStr("pSh")
#let QCoh = DefCatStr("QCoh")
#let Coh = DefCatStr("Coh")
#let Perf = DefCatStr("Perf")
#let Desc = DefCatStr("Desc")
#let Sat = DefCatStr("Sat")
#let SSeq = DefCatStr("SSeq")
#let Pro = DefCatStr("Pro")


#let lim = math.op("lim", limits: true)
#let colim = math.op("colim", limits: true)
#let op = math.upright("op")
#let St = math.upright("St")
#let Fun = math.op("Fun")
#let Hom = math.op("Hom")
#let Map = math.op("Map")
#let LKE = math.op("LKE")
#let RKE = math.op("RKE")
#let Tot = math.op("Tot")

#let cn = math.upright("cn")
#let conv = math.upright("conv")
#let ft = math.upright("ft")
#let lft = math.upright("lft")
#let aft = math.upright("aft")
#let laft = math.upright("laft")

#let inj = sym.arrow.r.hook
#let surj = sym.arrow.r.twohead
#let End = math.op("End")
#let Aut = math.op("Aut")
#let LHS = math.op("LHS")
#let RHS = math.op("RHS")
#let adj = sym.tack.l

#let Spec = math.op("Spec")
#let Gr = math.op("Gr")
#let GL = math.upright("GL")
#let SL = math.upright("SL")
#let PGL = math.upright("PGL")
#let Inv = math.op("Inv")
#let Ad = math.op("Ad")
#let IC = math.upright("IC")
#let CT = math.op("CT")
#let Spf = math.op("Spf")

#let lact = rotate(180deg, sym.arrow.cw)
#let ract = rotate(180deg, sym.arrow.ccw)

#let res = math.op("res")
#let ind = math.op("ind")
#let red = math.upright("red")

#let tfib = math.op("tfib")
#let tcofib = math.op("tcofib")
#let fib = math.op("fib")
#let cofib = math.op("cofib")

#let Assoc = math.op(math.bold("Assoc"))
#let Comm = math.op(math.bold("Comm"))
#let Lie = math.op(math.bold("Lie"))

#let Span = math.op("Span")
#let Sym = math.op("Sym")

#let lcone = sym.triangle.stroked.small.l
#let rcone = sym.triangle.stroked.small.r

#let Emb = math.op("Emb")

#let B0 = [$B$ #h(0pt)]

#let Bar = math.op("Bar")
#let coBar = math.op("coBar")

#let deg = math.op("deg")

#let author_name_process(name) = {
	let position_comma = name.position(",")
	if position_comma == none {
		name
	}
	else {
		name.slice(position_comma + 2, position_comma + 3) + ". " + name.slice(0, position_comma)
	}
}

#let date_process(date) = {
	let position_hyphen = date.position("-")
	if position_hyphen == none {
		name
	}
	else {
		date.slice(0, position_hyphen)
	}
}

#let bibmanagement(biblist) = {
	for work in biblist {
		if "url" in work.at(1).keys() {
			[[#work.at(0)], #author_name_process(work.at(1).at("author")), #link(work.at(1).at("url"))[#emph(work.at(1).at("title"))], #date_process(work.at(1).at("date"))
			#label(work.at(0))\
			]
		}
		else {
			[[#work.at(0)], #author_name_process(work.at(1).at("author")), #emph(work.at(1).at("title")), #date_process(work.at(1).at("date"))
			#label(work.at(0))\
			]
		}
	}
}

#let bibref(name, pos: none) = {
	if (pos == none) {
		link(label(name))[[#name]]
	} else {
		link(label(name))[[#name, #pos]]
	}
}
