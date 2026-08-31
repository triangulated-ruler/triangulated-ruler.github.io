#let Set = math.bold("Set")
#let Fin = math.bold("Fin")
#let Ani = math.bold("Ani")
#let Sp = math.bold("Sp")
#let Cat = math.bold("Cat")
#let DGCat = math.bold("DGCat")
#let Mon = math.bold("Mon")
#let Alg = math.bold("Alg")
#let CMon = math.bold("CMon")
#let CAlg = math.bold("CAlg")
#let Mod = math.bold("Mod")
#let LMod = math.bold("LMod")
#let Ab = math.bold("Ab")
#let Vect = math.bold("Vect")
#let Pr = math.bold("Pr")
#let Aff = math.bold("Aff")
#let Sch = math.bold("Sch")
#let Stk = math.bold("Stk")
#let pStk = math.bold("pStk")
#let Rep = math.bold("Rep")
#let Perv = math.bold("Perv")
#let nPr = [$upright("n")$$bold("Pr")$]

#let Sh = math.upright("Sh")
#let pSh = math.upright("pSh")
#let QCoh = math.upright("QCoh")
#let Coh = math.upright("Coh")
#let Perf = math.upright("Perf")
#let Desc = math.upright("Desc")
#let Sat = math.upright("Sat")
#let Ch = math.upright("Ch")
#let HS = math.upright("HS")
#let Rex = math.upright("Rex")
#let Loc = math.upright("Loc")

#let BoldCatList = ([Set], [Fin], [Ani], [Sp], [Cat], [DGCat], [Mon], [Alg], [CMon], [CAlg], [Mod], [LMod], [Ab], [Vect], [Pr], [Aff], [Stk], [pStk], [Rep], [Perv], [Sch])
#let StrCatList = ([Sh], [pSh], [QCoh], [Coh], [Perf], [Desc], [Sat], [Ch], [HS], [Rex], [Loc])

#let prefixcat(pre, cat) = {
	if cat.has("child") and cat.at("child") in BoldCatList {
		$bold(pre)cat$
	} else if cat.has("child") and cat.at("child") in StrCatList {
		$upright(pre)cat$
	} else {
		$upright(pre)(cat)$
	}
}

#let refl(it) = it

#let Ind(it) = math.op(prefixcat("Ind", it))
#let Pro(it) = math.op(prefixcat("Pro", it))
#let Fil(it) = math.op(prefixcat("Fil", it))

#let lim = math.op("lim", limits: true)
#let colim = math.op("colim", limits: true)
#let op = math.upright("op")
#let St = math.upright("St")
#let Fun = math.op("Fun")
#let Hom = math.upright("Hom")
#let Map = math.op("Map")
#let LKE = math.op("LKE")
#let RKE = math.op("RKE")
#let gr = math.op("gr")
#let Span = math.op("Span")
#let coker = math.op("coker")
#let ad = math.op("ad")
#let Ad = math.op("Ad")
#let rank = math.op("rank")
#let Tot = math.op("Tot")

#let cn = math.upright("cn")
#let conv = math.upright("conv")
#let ft = math.upright("ft")
#let lft = math.upright("lft")
#let aft = math.upright("aft")
#let laft = math.upright("laft")
#let perf = math.upright("perf")
#let unip = math.upright("unip")
#let RHom = [$R$Hom]
#let acyc = math.upright("acyc")
#let nc = math.upright("nc")
#let str = math.upright("str")
#let cl = math.upright("cl")
#let mon = math.upright("mon")

#let inj = sym.arrow.r.hook
#let surj = sym.arrow.r.twohead
#let End = math.op("End")
#let Aut = math.op("Aut")
#let LHS = math.op("LHS")
#let RHS = math.op("RHS")
#let ladj = sym.tack.l
#let adj = sym.arrows.rl.long
#let Ext = math.upright("Ext")
#let Bar = math.op("Bar")

#let Spec = math.op("Spec")
#let Gr = math.upright("Gr")
#let GL = math.upright("GL")
#let SL = math.upright("SL")
#let PGL = math.upright("PGL")
#let Fl = math.upright("Fl")
#let Coord = math.upright("Coord")
#let Supp = math.op("Supp")

#let Inv = math.op("Inv")
#let Ad = math.op("Ad")
#let IC = math.upright("IC")
#let CT = math.op("CT")
#let Frac = math.op("Frac")

#let lact = [#rotate(90deg, sym.arrow.cw) #h(0pt)]
#let ract = [#rotate(270deg, sym.arrow.ccw) #h(0pt)]

#let res = math.op("res")
#let ind = math.op("ind")
#let coind = math.op("coind")
#let red = math.upright("red")
#let fr = math.upright("fr")
#let pt = math.upright("pt")
#let loc = math.upright("loc")
#let ext = math.upright("ext")
#let aff = math.upright("aff")
#let Stab = math.op("Stab")
#let card = [\# #h(0pt)]
#let Mat = math.op("Mat")
#let fib = math.op("fib")
#let cofib = math.op("cofib")
#let heart = math.suit.heart.stroked
#let Cartmark = scale(rotate($angle.right.rev$,180deg),80%)
#let coCartmark = scale($angle.right.rev$,80%)

#let IW = math.cal("IW")
#let AS = math.bb("AS")
#let Av = math.op("Av")

#let Sym = math.op("Sym")

#let Fr = math.op("Fr")

#let check(sth) = [$caron(sth, size: #0%)$]
#let bracket(sth) = [$chevron.l sth chevron.r$]

//https://forum.typst.app/t/how-does-one-avoid-caligraphic-font-difference-between-typst-and-latex/1781/2
/*#let cal(it) = math.class("normal", box({
  show math.equation: set text(font: "Garamond-Math", stylistic-set: 3)
  $#math.cal(it)$
}) + h(0pt))*/

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
