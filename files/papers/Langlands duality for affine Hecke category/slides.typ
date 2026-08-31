#import "let_bindings.typ": *
#import "@preview/touying:0.7.4": *
#import themes.stargazer: *
#show: stargazer-theme.with(
	aspect-ratio: "4-3",
	config-info(
		title: [Langlands duality of the affine Hecke category],
		author: [Xiaoyang Chen\ Advisor: Penghui Li],
		date: datetime.today(),
		institution: [Qiuzhen College, Tsinghua University],
  ),
)

#show sym.backslash: [#h(-0.00em)#sym.backslash #h(-0.00em)]

#set align(left)

#title-slide()

#outline-slide()

= Backgrounds 

#slide[
	Recall the unipotent version of Local Langlands conjecture: 

	#tblock(title: [Conjecture])[	
		There exists a canonical finite-to-one map
		$ mat("Representations of" G_k; "with a non-zero" I"-fixed vector"; delim: "{")-->mat("Representations of" W_K; "factoring through" W_K->>ZZ->G^or (CC); delim: "{") $
	]

	Kazhdan--Lusztig proved the following geometric interpretation of the affine Hecke algebra, hence solved the unipotent local Langlands conjecture. 

	#tblock(title: [Theorem (Kazhdan--Lusztig)])[	
		We have the following equivalence of algebras
		$ cal(H)=K^(G^or times GG_m)(St^or) $
	]
]

#slide[
	Then, Bezrukavnikov proved the following categorification of the above equivalence of algebras 
	
	#tblock(title: [Theorem (Bezrukavnikov)])[
		There is a monoidal equivalence of categories
		$ Phi_(I,I):D(I\\L G\/I)->D Coh^(G^or)(tilde(cal(N))^or times_(frak(g)^or)^L tilde(cal(N))^or) $
		where $tilde(cal(N))^or times_(frak(g)^or)^L tilde(cal(N))^or$ is the correct version of Steinberg here. 
	]
	However, one may see that the $GG_m$-action is missing in this categorification. 
]

#slide[
	A central step in the above categorification is given by 

	#tblock(title: [Theorem (Arkhipov--Bezrukavnikov)])[	
		We have the following monoidal equivalence of categories
		$ Phi_IW:D_IW (Fl)->D Coh^(G^or)(tilde(cal(N))^or) $
	]
	We were able to enhance this step to add in the $GG_m$-action, which is the main result of the paper. 

	#tblock(title: [Theorem.])[ 
		There is a monoidal equivalence of categories
		$ Phi_(IW,gr):D Coh^(G^or times GG_m)(tilde(cal(N))^or)tilde.eq D_(IW,gr)(Fl) $
	]
	where $D_gr (Fl)$ is the category of graded sheaves introduced by Ho--Li. 
]

= The original equivalence 

#slide[
	We first review the original equivalence of Arkhipov--Bezrukavnikov. 
	#tblock(title: [Construction])[
		The construction of the functor $Phi_IW:D_IW (Fl)->D Coh^(G^or)(tilde(cal(N))^or)$ is summarized as follows: 
		+	Find a monoidal functor #h(1fr)
			$ Phi_0:Rep(G^or times T^or)->Perv^waki_I (Fl) $
		+	Upgrade it to a monoidal functor 
			$ Phi_1:Coh_fr^(G^or times T^or)(hat(cal(N))^or_aff)->Perv_I^waki (Fl) $
		+	Take derived categories 
			$ Phi:D Coh^(G^or)(tilde(cal(N))^or)->D(Perv_I (Fl)) $
		+	Post compose the Whittaker-averaging functor and get
			$ Phi_IW:D Coh^(G^or)(tilde(cal(N))^or)->D_IW (Fl) $
	]
]

#slide[
	The construction of $Phi_0$ relies on the two following facts:
	#pause 
	+	For $lambda in X_*(T)$ we define the Wakimoto sheaves $J_lambda:=j_(mu*)*_I j_(nu!)$ for $lambda=mu-nu$, with $mu,nu in X_*(T)^+$. They are perverse sheaves satisfying $J_lambda *_I J_mu=J_(lambda+mu)$. Thus, we have a monoidal functor 
		$ Rep(T^or)->Perv_I^waki (Fl) $
		The right category is the subcategory of $Perv_I (Fl)$ consisting of objects admitting a filtration by Wakimoto sheaves, hence a monoidal category. 
	#pause 
	+	Gaitsgory's central functor $Z:Rep(G^or)->Perv_I (Fl)$, which is a central monoidal functor with convolution exact image. The image of $Z$ admits a filtration by Wakimoto sheaves, so we have a monoidal functor 
		$ Rep(G^or)->Perv_I^waki (Fl) $
	#pause 
	They combine to give the desired monoidal functor 
	$ Phi_0:Rep(G^or times T^or)->Perv_I^waki (Fl) $ 
]

#slide[
	The upgrade to $Phi_1$ relies on the following formalism: 
	#tblock(title: [De-equivariantization])[
		Let $H$ be an affine group scheme, and let $cal(A)$ be a monoidal Abelian category. Then, to upgrade a monoidal functor $Rep H->cal(A)$ to a monoidal functor $Mod_(A,fr)^H->cal(A)$, it suffices to give a equivariant map $A->B$, where 
		$ B=Hom_(Ind(cal(A)))^(upright("comm"),times.o)(1,F(cal(O)(H))) $
		Here $upright("comm")$ and $times.o$ denote certain constraints on the map. 
	]
	Then, $Phi_1$ relies on the following application of the above principle on $Phi_0$: 
	#pause
	+	Gaitsgory's central functor is equipped with a nilpotent tensor endomorphism $ M:Z->Z $ 
	+	There is a highest weight arrow $Z(V_lambda)->j_(lambda*)=J_lambda$ compatible with the Plücker relations, and that its composition with $M$ is 0. 
]

#slide[
	Then, to upgrade to $Phi:D Coh^G^or (tilde(cal(N))^or)->D(Perv_I (Fl))$, note first that since $hat(N)^or_aff\/G^or times T^or$ is smooth, we have $D Coh^(G^or times T^or)(tilde(cal(N))^or)=Perf^(G^or times T^or)(tilde(cal(N)))$. 

	The functor $K(Phi_2):D Coh^(G^or times T^or)(hat(cal(N))^or_aff)->D(Perv^waki_I (Fl))$ then vanishes on the boundary $hat(cal(N))^or_aff-hat(cal(N))^or$. Thus, it factors through the quotient category $D Coh^(G^or times T^or)(hat(cal(N))^or)$, giving $Phi$. 

	Finally, we post-compose with the Whittaker-averaging functor to get $Phi_IW$. Here, Whittaker-averaging is the functor $Av_IW: D(Perv_I (Fl))->D_IW (Fl)$ given by convolution with the Iwahori--Whittaker sheaf at the unit $Delta_e$.
]

#slide[
	The equivalence is finally proven via the computation of stalks 
	$ (Z_IW (V):Delta_lambda)=(Z_IW (V):nabla_lambda)=dim(V^(T^or=lambda)) $
	The computation of cohomology
	$ &Hom_(D Coh^(G^or)(tilde(cal(N))^or))(cal(O)_(tilde(cal(N))^or),V times.o cal(O)_(tilde(cal(N))^or)(lambda)[n])\ inj&Hom_(D_IW (Fl))(Phi_IW (cal(O)_(tilde(cal(N))^or)),Phi_IW (V times.o cal(O)_(tilde(cal(N))^or)(lambda))[n]) $ 
	and finding the two separate sets of generators 
	$ {cal(O)(lambda),lambda in X_*(T)},{V times.o cal(O)(lambda),V in Rep G^or,lambda in X_*(T)^+} $
	for $D Coh^(G^or)(tilde(cal(N))^or)$ and the generator ${J_lambda}$ for $D_IW (Fl)$. 
]

= The graded version

#slide[
	To upgrade the above functor to an equivalence, we need a suitable sheaf theory. This is the graded sheaf theory. The main properties we will use is the following. 
	#tblock(title: [Theorem])[
		For any stack $X$ one may associate it to a sheaf theory $D_gr (X)$ with the following properties: 
		+	$D_gr (X)$ is a triangulated category with the perverse $t$-structure and a transversal weight structure. 
		+	There is an associated graded functor $gr:D_mixed (X)->D_gr (X)$ and a forgetful functor $oblv_gr :D_gr (X)->D(X)$. The functors preserves and reflects the respective perverse $t$-structures. $gr$ preserves the weights. 
		+	For nice enough morphisms of stacks $f:X->Y$ we can define adjunction $f^* adj f_*$ and $f_! adj f^!$ on graded sheaves. These functors are compatible with $gr$ and $oblv_gr$. 
		+	We have the decomposition 
			$ Hom(oblv_gr (cal(F)),oblv_gr (cal(G)))tilde.eq plus.o.big_(n in ZZ)Hom_gr (cal(F),cal(G)chevron.l n chevron.r) $
	]
]

#slide[
	To upgrade $Phi_IW$ to the graded version, the only obstruction lies in lifting 
	$ Phi_(0,gr):Rep(G^or times T^or times GG_m)->Perv^waki_(I,gr)(Fl) $
	to 
	$ Phi_(1,gr):Coh_fr^(G^or times T^or times GG_m)(hat(cal(N))^or_aff)->Perv^waki_(I,gr)(Fl) $
	this is obtained by taking the associated graded of Gaitsgory's central functor in the mixed setting $M:Z->Z(-1)$. The Plücker relations and the composite to 0 conditions are still satisfied, and the rest of the construction is analogous. 
]

#slide[
	Finally, to prove the graded equivalence, we simply apply the diagram // https://q.uiver.app/#r=typst&q=WzAsNixbMCwwLCJIb21fKEdHX20pKGNhbChGKSxjYWwoRykpIl0sWzEsMCwiSG9tX2dyIChQaGlfKElXLGdyKShjYWwoRikpLFBoaV8oSVcsZ3IpKGNhbChHKSkpIl0sWzAsMSwicGx1cy5vLmJpZ18obiBpbiBaWikgSG9tXyhHR19tKShjYWwoRiksY2FsKEcpY2hldnJvbi5sIG4gY2hldnJvbi5yKSJdLFsxLDEsInBsdXMuby5iaWdfKG4gaW4gWlopMEhvbV9nciAoUGhpXyhJVyxncikoY2FsKEYpKSxQaGlfKElXLGdyKShjYWwoRykpY2hldnJvbi5sIG4gY2hldnJvbi5yKSJdLFswLDIsIkhvbShvYmx2XyhHR19tKShjYWwoRikpLG9ibHZfKEdHX20pKGNhbChHKSkpIl0sWzEsMiwiSG9tKG9ibHZfZ3IgKFBoaV8oSVcsZ3IpKGNhbChGKSksb2Jsdl9nciAoUGhpXyhJVyxncikoY2FsKEcpKSkiXSxbMCwxXSxbMCwyLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsxLDMsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzIsNCwidGlsZGUuZXEiLDJdLFszLDUsInRpbGRlLmVxIl0sWzQsNSwidGlsZGUuZXEiXSxbMiwzLCJ0aWxkZS5lcSJdXQ==
	#scale(95%)[
		#align(center, diagram({
			node((-1, 0), [$Hom_(GG_m)(cal(F),cal(G))$])
			node((0, 0), [$Hom_gr (Phi_(IW,gr)(cal(F)),Phi_(IW,gr)(cal(G)))$])
			node((-1, 1), [$plus.o.big_(n in ZZ) Hom_(GG_m)(cal(F),cal(G)chevron.l n chevron.r)$])
			node((0, 1), [$plus.o.big_(n in ZZ)Hom_gr (Phi_(IW,gr)(cal(F)),Phi_(IW,gr)(cal(G))chevron.l n chevron.r)$])
			node((-1, 2), [$Hom(oblv_(GG_m)(cal(F)),oblv_(GG_m)(cal(G)))$])
			node((0, 2), [$Hom(oblv_gr (Phi_(IW,gr)(cal(F)),oblv_gr (Phi_(IW,gr)(cal(G)))))$])
			edge((-1, 0), (0, 0), "->")
			edge((-1, 0), (-1, 1), "hook->")
			edge((0, 0), (0, 1), "hook->")
			edge((-1, 1), (-1, 2), [$tilde.eq$], label-side: right, "->")
			edge((0, 1), (0, 2), [$tilde.eq$], label-side: left, "->")
			edge((-1, 2), (0, 2), [$tilde.eq$], label-side: left, "->")
			edge((-1, 1), (0, 1), [$tilde.eq$], label-side: left, "->")
		}))
	]
	which proves fully faithfulness. Essential surjectivity is analogous to the previous proof. 
]

#focus-slide[
	#text(size: 2.5em, weight: "bold")[Thank you!]

	#v(1em)

	#text(size: 1.3em)[Questions?]
]

