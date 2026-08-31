#import "let_bindings.typ": *
#import "void-template/1.0.0/void-import.typ": *
#v(40pt)
#align(center, image("qiuzhen.png",height: 27pt))
#align(center, block(above:30pt,[
  #set text(font: "LiSu", size: 24pt)
  综合论文训练（领军）
]))
#align(center, block(above: 30pt,[
  #set text(size: 26pt, font:"Times New Roman", weight: "bold")
  Langlands duality of the affine Hecke category
]))
#align(center,block(above: 210pt,[
  #set text(font: "FangSong", size: 16pt)
  #table(
    columns: 2,
    stroke: none,
    align: (center, left),
    row-gutter: 8pt,
    [系#h(2em)别：], [求真书院],
    [专#h(2em)业：], [数学与应用数学（领军班）],
    [姓#h(2em)名：], [陈潇扬],
    [指导教师： ], [李鹏辉 副教授]
  )
]))
#align(center+bottom,[
  #set text(font:"SimSun", size: 16pt)
  二〇二六年六月
])
#counter(page).update(0)
//Authorized page
#pagebreak()
#v(30pt)
#align(center, block(above: 24pt, below: 18pt,[
  #set text(size: 16pt, font: "SimHei")
  关于论文使用授权的说明
]))
#[
  #set par(justify: true)
  #set text(font: "SimSun", size: 12pt)
  #set par(leading: 8pt, first-line-indent: (amount:2em, all: true))
  本人完全了解清华大学有关保留、使用综合论文训练论文的规定，即：学校有权保留论文的复印件，允许论文被查阅和借阅；学校可以公布论文的全部或部分内容，可以采用影印、缩印或其他复制手段保存论文。
  #linebreak()
  #linebreak()
  #linebreak()
  #columns(4)[
    #align(right)[
    作者签名：
    #linebreak()
    #linebreak()
    日期：
    ]
    #colbreak()
    #colbreak()
    #align(right)[
    指导教师签名：
    #linebreak()
    #linebreak()
    日期：
    ]
    #colbreak()
  ]
]
#counter(page).update(0)

//Abstract page
#pagebreak(to:"even")
#set page(numbering: "I")
#v(30pt)
#align(center, block(above: 24pt, below: 26pt,[
  #set text(size: 16pt, font: "SimHei")
  摘#h(1em)要
]))
#[
  #set par(justify: true)
  #set text(size: 12pt)
  #set par(leading: 0.6em, first-line-indent: (amount:2em, all: true))
  设 $k$ 为特征 $p>0$ 的有限域的代数闭包，$G$ 为 $k$ 上的分裂约化群。受仿射 Hecke 代数的几何实现及其在具有幺幂单值的局部 Langlands 对应中的作用启发，本文研究反球面模 (anti-spherical module) 与对偶 Springer 消解的等变 $K$-理论之间等式的范畴化。沿用 Arkhipov–Bezrukavnikov 的框架，并结合 Achar–Riche 的相关发展，本文回顾并使用 Gaitsgory 的中心函子、Wakimoto 层及其滤过，以及仿射旗簇上的 Iwahori–Whittaker 层范畴。借助这些结构、Tannakian 形式化以及去等变化 (de-equivariantization) 方法，本文构造从 $tilde(cal(N))^or$ 上的凝聚层范畴到仿射旗簇上层范畴的相关函子，并通过 Iwahori–Whittaker 范畴重新得到 Arkhipov–Bezrukavnikov 等价。本文的主要结果是该等价的分次版本：利用分次层理论，构造并证明如下张量范畴等价
  $ Phi_(gr,IW):D Coh^(G^or times GG_m)(tilde(cal(N))^or)tilde.eq D_(IW,gr)(Fl) $
  由此，本文给出了
  $ cal(M)^(upright("asph"))=K^(G^or times GG_m)(tilde(cal(N))^or) $
  的完整范畴化，并保留了 $GG_m$-等变结构所对应的分次信息。
  #v(0.6em)
  #set par(leading: 0.6em, first-line-indent: 0em)
  #math.bold("关键词：")范畴化；Arkhipov–Bezrukavnikov 等价；去等变化
]



#pagebreak(to:"even")
#v(30pt)
#align(center, block(above: 24pt, below: 26pt,[
  #set text(size: 16pt, font: "Arial")
  Abstract
]))
#[
  #set par(justify: true)
  #set text(font: "Times New Roman", size: 12pt)
  #set par(leading: 0.85em, first-line-indent: (amount:2em, all: true))
  Let $k$ be an algebraic closure of a finite field of characteristic $p>0$, and let $G$ be a split reductive group over $k$. Motivated by the geometric realization of affine Hecke algebras and their role in the local Langlands correspondence with unipotent monodromy, this paper studies a categorical refinement of the equivalence between the antispherical module and the equivariant $K$-theory of the Springer resolution. Following the framework of Arkhipov–Bezrukavnikov and related developments of Achar–Riche, we review Gaitsgory's central functor, Wakimoto sheaves and their filtrations, and the category of Iwahori–Whittaker sheaves on the affine flag variety. Using these structures, together with Tannakian formalism and de-equivariantization arguments, we construct the relevant functors from coherent sheaves on $tilde(cal(N))^or$ to sheaf categories on the affine flag variety and recover the Arkhipov–Bezrukavnikov equivalence through the Iwahori–Whittaker category. The main result is a graded refinement: using the theory of graded sheaves, we construct and prove the monoidal equivalence
  $ Phi_(gr,IW):D Coh^(G^or times GG_m)(tilde(cal(N))^or)tilde.eq D_(IW,gr)(Fl) $
  This gives a complete categorification of the equivalence 
  $ cal(M)^(upright("asph"))=K^(G^or times GG_m)(tilde(cal(N))^or) $
  retaining the $GG_m$-equivariant grading. 
  #v(0.85em)
  #set par(leading: 0.85em, first-line-indent: 0em)
  $bold("Keywords: ")$Categorification; Arkhipov–Bezrukavnikov equivalence; de-equivariantization
]

#pagebreak()
#show outline: it => {
    show heading: set align(center)
    set page(numbering: "I")
    it
    }
#show outline.entry: it => {set text(font: "Arial")
    v(1.15em, weak:true)
	it}
#set outline(indent:1em)
#outline(
      depth: 3,
      title: [#v(3em)#block(text("Contents",size: 16pt,weight: "medium"),above: 24pt, below: 18pt)#v(1em)]
    )
