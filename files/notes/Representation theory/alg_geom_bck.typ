#import "import.typ": *

= Derived algebraic geometry

In this chapter, we follow the book @DAG1 of Gaitsgory-Rozenblyum, and give a brief account of what derived algebraic geometry is needed in geometric representation theory. 

== Stacks and schemes

=== Categorical constructions

#def[
	Throughout this note, the word category will mean $(oo,1)$-categories unless stated otherwise. A functor is said to be continuous if it preserves all filtered colimits. Most importantly, we use cohomological indexing. 
]

#rem[
	We assume the reader is familiar with the definition of a $t$-structure on stable $oo$-categories but slightly confused about the indexing convention, so we briefly recall here that what in the cohomological indexing convention should the $t$-structure should look like. For a stable $oo$-category $cal(C)$, it is equipped with two subcategories $cal(C)^(<=0)$ and $cal(C)^(>=0)$, where the shift or suspension functor $[1]=Sigma$ preserves $cal(C)^(<=0)$ (i.e., [1] shifts the grading down). Moreover, we have $tau^(>=0):cal(C)->cal(C)^(>=0)$ left adjoint to the inclusion and $tau^(<=0):cal(C)->cal(C)^(<=0)$ right adjoint to the inclusion, which gives rise to the semi-orthogonality $H^0Hom(c,d)=0$ for $c in cal(C)^(<=0)$ and $d in cal(C)^(>=1)$. Then, we have the decomposition for any object 
	$ tau^(<=0)c->c->tau^(>=1)c $
	Finally, we may define the eventually connective or coconnective parts of $cal(C)$ by 
	$ cal(C)^-=union.big_(n>=0)cal(C)^(<=n),cal(C)^+=union.big_(n<=0)cal(C)^(>=n) $
	We say a functor is left $t$-exact if it sends $cal(C)^(>=0)$ to $cal(D)^(>=0)$, and right $t$-exact if the dual version holds. Consequently, left $t$-exact functors sends $cal(C)^+$ to $cal(D)^+$ and right $t$-exact functors the dual. 
] <Rem_recall_t_str>

#def[
	We say a functor $F:cal(C)->cal(D)$ is of finite tor-amplitude if it is left $t$-exact and right $t$-exact up to different shifts. We say an object $c in cal(C)$ a monoidal stable $oo$-category is of finite tor-amplitude $-times.o c:cal(C)->cal(C)$ is so. 
] <Def_finite_tor_amplitude>

#def[
	We fix a ground field $k$. We let $Vect=Mod_(H k)(Sp)$ denote the category of module spectra of the Eilenberg-Maclane spectrum $H k$ regarded as a $EE_oo$-ring spectrum. 
] 

#def[
	We define the category $DGCat$ to be $Mod_Vect (Pr^L_St)$ (we will not go into details of the definitions and properties of $Pr^L_St$ here, but the readers may refer to @HTT for $Pr^L$ and @HA for $Pr^L_St$). Moreover, we can define its non-continuous version $DGCat^nc$, given as follows: 
	-	We begin with the category $Mod_(Vect^omega) (Cat)$. 
	-	We take its full subcategory spanned by categories that are stable and having that the action functor $Vect^omega times cal(C)->cal(C)$ exact in both variables. We denote this category by $DGCat^(#[non-cocmpl])$
	-	We define $DGCat^nc$ to be the essential image of the functor $DGCat->DGCat^(#[non-cocmpl])$. 
]

#todo[
	Write something more here, at least explain left complete $t$-structure and blah blah. 
]

=== The category of prestacks

#def[
	We define the category of affine schemes by $Aff=CAlg(Vect^(<=0))^op$. 
] <Def_affines>

#rem[
	The geometry of non-connective and connective schemes differ subtlely, and we (following Gaitsgory and possibly Lurie) consider the connective case in most circumstances. 
]

#def[
	We define the category of prestacks by $pStk=pSh(Aff)=Fun(Aff^op,Ani)$. By Yoneda embedding, we obtain an inclusion $Aff inj pStk$. 
] <Def_prestacks>

#def[
	We now introduce a truncated version of affine schemes. Consider the subcategory of $Vect$ given by the objects concentrated between degrees $[-n,0]$, say $Vect^[-n,0]$. We have a symmetric monoidal structure on this subcategory given by $(A,B)mapsto tau^(>=-n)(A times.o B)$, thus we may define the category of $n$-coconnective affine schemes $attach(Aff,tl: <=n)=CAlg(Vect^[-n,0])^op$. This category of commutative algebras is denoted by $CAlg^[-n,0]$ also for short. 
]

#const[
	Notice that the inclusion $Vect^[-n,0]inj Vect^(<=0)$ is lax symmetric monoidal, and inparticular preserves commutative algebras. Thus we have a fully faithful functor 
	$ CAlg^[-n,0]inj CAlg^(<=0) $
	hence an inclusion $attach(Aff,tl:<=n)inj Aff$. 

	Notice that we have a truncation functor $tau^(>=-n):Vect^(<=0)->Vect^[-n,0]$, which naturally restricts to the commutative algebra category, that is, we have a commutative diagram 
	// https://q.uiver.app/#r=typst&q=WzAsNCxbMCwwLCJDQWxnKFZlY3ReKD49MCkpIl0sWzEsMCwiQ0FsZyhWZWN0XlswLG5dKSJdLFswLDEsIlZlY3ReKD49MCkiXSxbMSwxLCJWZWN0XlswLG5dIl0sWzAsMSwidGF1Xyg8PW4pIl0sWzEsMywiVSJdLFswLDIsIlUiLDJdLFsyLDMsInRhdV8oPD1uKSIsMl1d
	#align(center, diagram({
		node((0, 0), [$CAlg^(<=0)$])
		node((1, 0), [$CAlg^[-n,0]$])
		node((0, 1), [$Vect^(<=0)$])
		node((1, 1), [$Vect^[-n,0]$])
		edge((0, 0), (1, 0), [$tau^(>=-n)$], label-side: left, "->")
		edge((1, 0), (1, 1), [$U$], label-side: left, "->")
		edge((0, 0), (0, 1), [$U$], label-side: right, "->")
		edge((0, 1), (1, 1), [$tau^(>=-n)$], label-side: right, "->")
	}))
	where $U$ is the forgetful functor. Moreover, $tau^(>=-n)$ is left adjoint to the inclusion functor. We denote the functor induced on the category of affine schemes by taking $op$ by $attach(tau,tl:<=n):Aff->attach(Aff,tl:<=n)$. We abuse notations and write the same functor post-composed with the inclusion $attach(Aff,tl:<=n)inj Aff$. 
]

#def[
	We have $attach(Aff,tl:<=0)$ by definition the classical category of affine schemes. Hence, we will also denote $attach(tau,tl:<=0)(-)$ by $(-)_cl$
]

#def[
	We define the category 
	$ attach(Aff,tl:<oo)=union.big attach(Aff,tl:<=n) $
	the category of eventually coconnective affine schemes. 
]

#def[
	We define the category of $n$-prestacks by $attach(pStk, tl:<=n)=pSh(attach(Aff,tl:<=n)^op)$. Restriction along the inclusion $attach(Aff,tl:<=n)inj Aff$ gives a functor $attach(tau,tl:<=n):pStk->attach(pStk, tl:<=n)$. Moreover, the left Kan extension functor gives a fully faithful left adjoint of $attach(tau,tl:<=n)$, say $LKE:attach(pStk, tl:<=n)inj pStk$, which somehow justifies the name of the above truncation functor. 
]

#rem[
	Right Kan extension gives a right adjoint of the functor $attach(tau, tl:<=n)$. 
]

#warn[
	We should think $attach(pStk,tl:<=n)$ as the prestacks $n$-coconnective in the sense that they are detected or determined by all the maps from $n$-coconnective affines, rather than the usual sense of truncatedness of presheaves, i.e., has values in $n$-coconnective vector spaces. 
]

#def[
	Let $cal(X)$ be a prestack. We say $cal(X)$ is convergent (or nilcomplete in the sense of @SAG) if for any $S in Aff$, we have 
	$cal(X)(S)->lim_n cal(X)(attach(tau,tl:<=n)(S))$ is an equivalence. 
]

#lem[
	Any prestack representable by an affine scheme is convergent. 
]
#proof[
	By completeness of the $t$-structure in $Sp$ hence in $Vect$, for any algebra $A in CAlg(Vect^(<=0))$ we have $A->lim tau^(<=n)A$ is an isomorphism. The rest follows by Yoneda embedding and the universal property of $tau^(<=n)$ as a left adjoint. 
]

#exam[
	The stack of isomorphisms of quasi-coherent sheaves is not convergent. 
]

#prop[
	A prestack $cal(X)$ is convergent iff as a functor $cal(X):(Aff)^op->Ani$, we have the equivalence $cal(X)tilde.eq RKE(cal(X)|_((attach(Aff,tl:<oo))^op))$
] <Prop_conv_equiv_bdd_RKE>
#proof[
	We first directly compute the right Kan extension of $cal(Z):(attach(Aff,tl:<oo))^op->Ani$. By the point-wise limit formula, 
	$ cal(Z)(S)=lim_(S'in(attach(Aff,tl:<oo))_(\/S))cal(Z)(S') $
	So it suffices to see that the functor $NN->(attach(Aff,tl:<oo))_(\/S)$ by sending $n$ to $attach(tau,tl:<=n)(S)$ is cofinal in the category. We omit the higher bullshit here and verify only that it is cofinal on the level of underlying 1-categories. By definition, any object $T in attach(Aff,tl:<oo)$ is $n$-truncated for some $n$, and a map $T->S$ hence factors through $T->attach(tau,tl:<=n)(S)$ by adjunction. 
]

#const[
	By the above proposition, if we let $pStk_conv subset pStk$ denote the subcategory of convergent prestacks, this inclusion admit a left adjoint $cal(X) mapsto cal(X)_conv$, constructed as $cal(X)_conv=RKE(cal(X)|_(attach(Aff,tl:<oo)))$
]

Beside coconnectivity, there is a parallel notion we can consider on stacks. We denote this property by truncatedness. 

#def[
	We say a prestack $cal(X)$ is $k$-truncated if as a functor $Aff^op->Ani$, it has image in $Ani_(<=k)$. We denote this category by $pStk_(<=k)$. Likewise, we may define the category $attach(pStk,tl:<=n)_(<=k)$. This form a $(k,1)$-category. 
] <Def_pStk_truncated>

#exam[
	By definition, the Yoneda image of $attach(Aff,tl:<=n)^op$ in $attach(pStk,tl:<=n)$ is $n$-truncated. 
]

=== Finite type conditions

#def[
	We say an object $A in CAlg^(<=0)$ is of finite type if $H^0(A)$ is of finite type over $k$ and $H^i (A)$ is finitely generated module over $H^0(A)$. We denote this category by $CAlg^(<=0)_ft$. We denote the intersection $CAlg^(<=0)_ft inter CAlg^[-n,0]=CAlg^[-n,0]_ft$. Likewise on its opposite, we define $attach(Aff,tl:<oo)_ft$ and $attach(Aff,tl:<oo)_ft inter attach(Aff,tl:<=n)=attach(Aff,tl:<=n)_ft$. 
]

#thm(name: [@HA])[
	The objects of $CAlg^[-n,0]_ft$ are compact in $CAlg^[-n,0]$. Moreover, for any $S in attach(Aff,tl:<=n)$, the category opposite to $I=(attach(Aff,tl:<=n)_ft)_(\/S)$ is filtered, and the cofiltered limit $S mapsto lim_(S_0 in I) S_0$ is an isomorphism. 
] <Thm_cpt_obj_ft>

#coro[
	$CAlg^[-n,0]_ft$ is a subcategory of compact generators in $CAlg^[-n,0]$. Hence, $CAlg^[-n,0]=Ind(CAlg^[-n,0]_ft)$. Dually, we have $attach(Aff,tl:<=n)=Pro(attach(Aff,tl:<=n)_ft)$. Moreover, since $CAlg^[-n,0]_ft$ is idempotent complete, we have $CAlg^[-n,0]_ft=(CAlg^[-n,0])^omega$. 
] 

#def[
	Let $cal(X) in attach(pStk, tl:<=n)$ for some $n$, we say it is locally of finite type if it is the left Kan extension $cal(X)=LKE(cal(X)|_(attach(Aff,tl:<=n)_ft))$. We denote the full subcategory by $attach(pStk, tl:<=n)_lft$. 
]

#const[
	Regarding the above definition as $attach(pStk,tl:<=n)_lft=pSh(attach(Aff,tl:<=n)_ft)$, we may restate the above definition as there is an inclusion functor given by the left Kan extension $attach(pStk, tl:<=n)_lft inj attach(pStk, tl:<=n)$ with a right adjoint given by restriction of sites. 
]

#coro[
	By @Thm_cpt_obj_ft, a stack $cal(X) in attach(pStk, tl:<=n)$, equivalent to a functor $CAlg^[-n,0]->Ani$ is left Kan extended from $CAlg^[-n,0]_ft=(CAlg^[-n,0])^omega$ iff it preserves filtered colimits. Thus, by expanding definitions, $attach(Aff,tl:<=n)inter attach(pStk, tl:<=n)_lft=attach(Aff,tl:<=n)_ft$. 
] <Coro_Yon_preserve_ft>

#def[
	We say an affine scheme $S in Aff$ is almost of finite type if for all $n$ we have $attach(tau,tl:<=n)(S)$ is of finite type. We denote the full subcategory of almost of finite type affine schemes by $attach(Aff,tl:<=n)_aft$. 
	
	Dually, an algebra $A in CAlg^(<=0)$ is almost of finite type if $H^0(A)$ is of finite type over $k$ and $H^n (A)$ is finitely generated as an $H^0(A)$-module (for example, this implies that $A$ is coherent in the sense of @HA, Definition 7.2.4.16, since we are working over fields). We denote the category by $CAlg^(<=0)_aft$. 
]

#def[
	We say a prestack $cal(X) in pStk$ is locally almost of finite type if it is convergent and for every $n$, we have $attach(tau, tl:<=n)(cal(X)) in attach(pStk,tl:<=n)_lft$. We denote the corresponding full subcategory by $pStk_laft$. 
]

#coro[
	By @Coro_Yon_preserve_ft, $pStk_laft inter Aff=Aff_aft$. 
]

#prop[
	We have an equivalence of categories 
	$ pStk_laft = pSh(attach(Aff,tl:<oo)_ft) $
	where $pStk_laft->pSh(attach(Aff,tl:<oo)_ft)$ is given by restricting along the inclusion $attach(Aff,tl:<oo)_ft inj Aff$, and the inverse is given by $RKE_((attach(Aff,tl:<oo)inj Aff))LKE_((attach(Aff,tl:<oo)_aft inj attach(Aff,tl:<oo))):pSh(attach(Aff,tl:<oo)_aft)->pSh(attach(Aff,tl:<oo))->pSh(Aff)$. 
]
#proof[
	Recall that we require a locally almost of finite type prestack $cal(X)$ to be convergent. By @Prop_conv_equiv_bdd_RKE, $cal(X)$ is determined by its data on $attach(Aff,tl:<oo)^op$. It suffices to prove that the data of $cal(X)$ on $attach(Aff,tl:<oo)^op$ is determined by its data on $attach(Aff,tl:<oo)_aft^op$ via left Kan extension. By definition, the restriction $attach(tau,tl:<=n)(cal(X)):attach(Aff,tl:<=n)^op->Ani$ is obtained from left Kan extension from $attach(Aff,tl:<=n)_ft^op$. Thus, it suffices to identify the following two conditions on a convergent stack $cal(X)$ regarded as a functor $cal(X):CAlg^(<=0)->Ani$: 
	-	It is a Kan extension along $CAlg^(<=0)_aft inj CAlg^(<=0)$. 
	-	Its restriction to any $CAlg^[-n,0]$ is the Kan extension along $CAlg^[-n,0]_ft inj CAlg^[-n,0]$. 
	Notice that by definition $CAlg^[-n,0] inter CAlg^(<=0)_aft=CAlg^[-n,0]_ft$, then note for $A in CAlg^[-n,0]$, $B in CAlg^(<=0)$, we can compute $H^0Hom(B,A)=H^0Hom(tau^(>=-n)B,A)$. 
	
	We first show the first condition implies the second. In the pointwise colimit formula for computing the value at $A$, namely 
	$ LKE(F)(A)=colim_(B->A)F(B) $
	we may assume $B in CAlg^[-n,0]_ft$ since any map $B->A$ factors through $B->tau^(>=-n)B->A$, exhibiting the subcategory $(CAlg^[-n,0]_ft)_(\/A)$ cofinal in $(CAlg_(aft)^(<=0))_(\/A)$. Thus, the first condition clearly implies the second. 

	The converse is done similarly.  
]

The above arguments give a basic setting for performing descent to extend convergent functors from affine schemes to prestacks. 

=== Descent conditions and stacks

#def[
	Recall a morphism $A->B$ of $EE_oo$-rings in $Vect^(<=0)$ is flat if $H^0(A)->H^0(B)$ is flat, and the map $H^n (A)times.o_(H^0(A))H^0(B)->H^n (B)$ is an isomorphism. For $S,S' in Aff$, we say a morphism $S->S'$ is flat if it is so on the structure rings. 
]

By definition, the notion of flatness is convergent, i.e., a map $S->S'$ is flat iff $attach(tau,tl:<=n)(S)->attach(tau,tl:<=n)(S')$ is so. 

#def[
	We say a morphism of affine schemes $f:S->S'$ is ppf, smooth, etale, open embedding, Zariski if $f$ is flat and $f_cl$ is so. 

	We say furthermore $f$ is a flat, smoooth, etale, Zariski covering if $f_cl$ is moreover surjective. 
] <Def_topologies>

#def[
	We say a morphism of prestacks $f:cal(X)->cal(Y)$ is affine schematic, if for any affine scheme $S->cal(Y)$, we have the pullback $S times_(cal(Y))cal(X)$ affine. 
] <Def_aff_schematic>

#def[
	We say an affine schematic map of prestack $cal(X)->cal(Y)$ is flat, ppf, smooth, etale, open, Zariski if the pullback map is so for any $S->cal(Y)$ where $S$ is affine. 
] <Def_prop_mor_prestk>

#def[
	We say a prestack $cal(X)$ satisfies flat, ppf, smooth, etale, Zariski descent if the following conditions holds. 
	+	$cal(X)(nothing)=*$. 
	+	$cal(X)(S_1 union.sq S_2)=cal(X)(S_1)times cal(X)(S_2)$. 
	+	For $S'->S$ a covering, the map $cal(X)(S)->Tot(cal(X)(S'^bullet\/S))$ is an isomorphism. 
	We define the category $Stk$ (we omit the topology in the notation however) to be the full subcategory of $pStk$ with objects satisfying the above descent conditions. 
] <Def_stk_desc>

#def[
	We fix a topology $T in{#[Zariski, etale, smooth, ppf, flat, ...]}$. We define a map $cal(X)->cal(Y)$ to be a $T$-equivalence if for any $cal(Z) in Stk$ with respect to $T$, we have an isomorphism $Hom(cal(Y),cal(Z))->Hom(cal(X),cal(Z))$. 
] <Def_top_equiv>

#const[
	The inclusion $Stk inj pStk$ admit a left adjoint, which is the localization functor at the $T$-equivalences. We denote this localization by $L:pStk->Stk$, and we sometimes abuse notations and write $L:pStk->Stk->pStk$. We call it the sheafification functor. By construction, it commutes with finite limits. 
] <Const_pStk_Stk_sheafification>

#lem[
	We fix a topology $T in{#[Zariski, etale, ppf, flat]}$. Then, let $f:cal(X)->cal(Y)$ be an $T$-surjection. Then, we have 
	$ bar(Bar(cal(X)^bullet\/cal(Y)))->cal(Y) $
	is a $T$-equivalence. 
] <Lem_eff_epi_top_surj>
#proof[
	By @HTT Corollary 6.2.3.5, it suffices to prove that $tau_(<=-1)(cal(X)->cal(Y))$ is the final object of $pStk_(\/cal(Y))$. This is direct by surjectivity. 
]

#coro[
	Let $cal(X)->cal(Y)$ be a $T$-surjection. Then, we have an equivalence of categories 
	$ bar(Bar(Stk_(cal(X))^bullet\/Stk_cal(Y)))=Stk_cal(Y) $
] <Coro_Stk_desc_flat>
#proof[
	By @Lem_eff_epi_top_surj, we have $cal(X)->cal(Y)$ an effective epimorphism in $Stk$. This then follows from the property that $Stk$, as a localization of $pStk$ by a topology, is a topos. 
]

#coro[

] <Coro_sheafification_surj>

#lem[
	The image of the Yoneda functor $Aff inj pStk$ lies in $Stk$. 
] <Lem_flat_subcanonical>
#proof[
	Since $T=#[flat]$ is the finest topology, it suffices to show that the flat topology is subcanonical. This is done by reduction to the ordinary faithfully flat descent as follows: 

	Take a faithfully flat map $A->B$ and a ring $R$. We wish to prove that 
	$ Hom_(CAlg^(>=0))(R,A)=Tot_(n>=1)(Hom_(CAlg^(>=0))(R,B^(times.o_A n))) $
	Note $Hom_(CAlg^(>=0))(R,-)$ preserves limits, it suffices to prove 
	$ A=lim_(Delta)(B arrows B times.o_A B arrows.rrr dots.c) $
	We prove that this is an isomorphism on each cohomology. By flatness, we have 
	$ H^n (B^(times.o_A m))=H^n (A)times.o_(H^0(A))H^0(B)^(times.o_(H^0(A))m) $
	Then, since taking limits commutes with taking cohomology, we have the map 
	$ H^n (A)->lim_(Delta)H^n (A) times.o_(H^0(A))H^0(B)^(times.o_(H^0(A))m)=H^n (A) $
	by the classical faithfully flat descent. Hence the Yoneda functor has image in $Stk$. 
]

#lem[
	Consider the Cartesian square 
	// https://q.uiver.app/#r=typst&q=WzAsNCxbMSwxLCJTIl0sWzAsMSwiUyciXSxbMCwwLCJjYWwoWCknIl0sWzEsMCwiY2FsKFgpIl0sWzEsMCwiZiJdLFsyLDNdLFsyLDFdLFszLDBdXQ==
	#align(center, diagram({
		node((1, 1), [$S$])
		node((0, 1), [$S'$])
		node((0, 0), [$cal(X)'$])
		node((1, 0), [$cal(X)$])
		edge((0, 1), (1, 1), [$f$], label-side: left, "->")
		edge((0, 0), (1, 0), "->")
		edge((0, 0), (0, 1), "->")
		edge((1, 0), (1, 1), "->")
		node((0.2, 0.2), [$Cartmark$])
	}))
	in $Stk$ such that $S,S',cal(X)' in Aff$. Moreover, assume $f$ is a $T$-covering. Then, $cal(X) in Aff$. 
] <Lem_aff_flat_desc>
#proof[
	Assume $S'->S=Spec B->Spec A$ induced by a faithfully flat map $f:A->B$. By an analogous proof of @Lem_flat_subcanonical, we have 
	$ Mod_A=lim(Mod_B arrows Mod_(B times.o_A B)arrows.rrr dots.c) $
	Passing to commutative algebras, we have 
	$ CAlg_A=lim(CAlg_B arrows CAlg_(B times.o_A B)arrows.rrr dots.c) $
	Then, assume $cal(X)'=Spec T$ for some $T in CAlg_B$. We define $R in CAlg_A$ given by the descent 
	$ R=lim(S arrows S times.o_B B times.o_A times.o B arrows.rrr dots.c) $
	where the structure morphisms of the cosimplicial object is given by the pullback map above, essentially because $cal(X)'$ is the pullback of something (not yet known to be affine) over $S$. We now prove $cal(X)=Spec R$. This is because $cal(X)$ and $Spec R$ share the same descent datum, and hence they are the same by @Coro_Stk_desc_flat. 
]

#coro[
	Let $f:cal(X)->cal(Y)$ be an affine schematic morphism in $pStk$. Then, the sheafification $L(f):L(cal(X))->L(cal(Y))$ is an affine schematic morphism. 
] <Coro_aff_sch_preserved_sheafification>
#proof[
	Take any $S in Aff$ and $S->L(cal(Y))$, and we wish to show the product $S times_(L(cal(Y)))L(cal(X))$ is affine. By @Lem_aff_flat_desc, it suffices to show that for a $T$-surjection $S'->S$ we have the fiber product $S' times_(L(cal(Y)))L(cal(X))$ is affine. Note the unit $cal(Y)->L(cal(Y))$ is $T$-surjective, so we may choose $S'$ such that the composition $S'->S->L(cal(Y))$ factors through $cal(Y)$ Since $L$ commutes with finite limits and $S'$ is affine hence a stack, it suffices to prove $S' times_(L(cal(Y)))L(cal(X))=L(S' times_cal(Y)cal(X))$ is affine. However, $S' times_cal(Y)cal(X)$ is affine, so applying $L$ is an equivalence. 
]

The interaction of sheafification with $n$-coconnectivity is rather curious. 

#def[
	We denote $attach(Stk,tl:<=n)$ the full subcategory of $attach(pStk,tl:<=n)$ that satisfy $T$-descent in $attach(Aff,tl:<=n)$. We denote $attach(L,tl:<=n)$ by the corresonding sheafification functor. By definition, the functor $pStk->attach(pStk,tl:<=n)$ sends $Stk$ to $attach(Stk,tl:<=n)$, and preserves $T$-equivalences. 
] <Def_coconn_Stk>

#const(name:[@HA, 6.5.3])[
	Recall that $attach(Stk,tl:<=n)$ is the category of sheaves over an $n$-category $attach(Aff,tl:<=n)$. Hence, the sheafification functor $attach(L,tl:<=n)$ is the composition of $(n+2)$ times plus construction, with $attach(L,tl:<=n):attach(pStk,tl:<=n)->attach(Stk,tl:<=n)->attach(pStk,tl:<=n)$ preserving $k$-truncated objects. 
]

=== Schemes and Artin stacks

#def[

]

#def[
	We say an Artin stack is quasi-compact if it admit a smooth affine atlas. 

	We say a morphism of prestacks $cal(X)->cal(Y)$ is quasi-compact if its pullback along an affine scheme is a quasi-compact Artin stack. 
] <Def_quasi_cpt>

#def[
	We let $attach(Sch,tl:<=n)_lft:=Sch inter attach(Stk,tl:<=n)_lft$ and $Sch_laft:=Sch inter Stk_laft$, and define $attach(Sch,tl:<=n)_ft$ and $Sch_aft$ to be the intersection of these categories with the quasi-compact schemes (@Def_quasi_cpt). 
] <Def_sch_ft>

== Quasi-coherent sheaves

=== Basic properties 

#def[
	We define the category of quasi-coherent sheaves over affine schemes to be a functor 
	$ QCoh_Aff:Aff=CAlg(Vect^(<=0))^op->DGCat $
	defined to be the composition 
	$ CAlg(Vect^(<=0))^op->CAlg(Vect)^op-->^(Mod)DGCat $
	where the second functor sends a ring $A$ to the category $Mod_A$ of its $EE_oo$-modules, and a map of rings $A->B$ the restriction functor $Mod_B->Mod_A$. The functor is obviously continuous. 
	
	Equivalently, we interpret the above functor as $S mapsto QCoh(S)$ for $S in Aff$, and the transition functors are given by $f:S->S'$ inducing $f_*:QCoh(S)->QCoh(S')$. For this reason, we sometimes write the above functor as $QCoh_*$ to indicate that we are using $(-)_*$ for the transitions. 
]

#rem[
	In @DAG1, the authors used the category of $EE_1$-left modules instead. We can see that this is equivalent to the category of $EE_oo$-modules via the theorem of Lurie (@HA, Corollary 4.5.1.5). We remark here that although the category of $EE_1$-left modules admit no tensor structure, the viewpoint of $EE_1$-left modules is also useful, for example, when considering Koszul duality of polynomial algebras. 
]

#def[
	By passing to left adjoints, we obtain a functor $QCoh_Aff^*:Aff^op->DGCat$, to be thought of as assigning a morphism $f:S->S'$ to $f^*:QCoh(S')->QCoh(S)$. 
]

#def[
	We define $QCoh_pStk^*:pStk^op->DGCat$ to be the right Kan extension of the functor $QCoh_Aff^*:Aff^op->DGCat$ along the Yoneda embedding $Aff^op->pStk^op$. 

	Unwinding the definition of the limit, for any prestack $cal(X)$, we can think an object of $QCoh(cal(X))$ as assinging each $S->cal(X)$ an element $cal(F)_S in QCoh(S)$ for $S$ affine, and such that $cal(F)_S$ are compatible with pulling back along the transition maps. 

	Since the limit is taken in $DGCat$, for $f:cal(X)->cal(Y)$, there is a functor $f_*:QCoh(cal(X))->QCoh(cal(Y))$ right adjoint to $f^*:QCoh(cal(Y))->QCoh(cal(X))$. 
] <Def_QCoh>

#prop[
	For $cal(X) in attach(pStk,tl:<=n)$, we have 
	$ QCoh(cal(X))=(RKE_(attach(Aff,tl:<=n)^op inj attach(pStk,tl:<=n)^op)QCoh)(cal(X)) $
] <Prop_QCoh_coconn>
#proof[
	By the cofinality obvious. 
]

#prop[
	For $cal(X) in attach(pStk,tl:<=n)_(lft)$, we have 
	$ QCoh(cal(X))=(RKE_(attach(Aff,tl:<=n)_ft^op inj attach(pStk,tl:<=n)_ft^op)QCoh)(cal(X)) $
] <Prop_QCoh_lft>
#proof[
	Again by the cofinality obvious. 
]

#const[
	However, the functor $QCoh^*:pStk^op->DGCat$ is not convergent. Take $S=Spec k[eta]$ with $eta$ in cohomological degree $-2$. Then, we have $k[eta]$ the free $EE_1$-algebra under 1 generator in degree $-2$. Thus, an $k[eta]$-module is simply a $k$-module equipped with a degree $-2$ endomorphism. However, taking the limit gives a $k$-module equipped with a _nilpotent_ degree $-2$ endomorphism. 
]

#todo[After finishing descent, finish the descent for quasi-coherent sheaves]

We now construct a $t$-structure on $QCoh(cal(X))$. 

#const[
	Recall we have the theorem of Lurie (@HA, Proposition 1.2.1.16) that a $t$-structure on a stable $oo$-category $cal(C)$ is equivalent to the data of a localization functor $tau^(<=0):cal(C)->cal(C)$ subject to certain conditions. 
	
	We first recall that for $S in Aff$, $QCoh(S)$ inherits a natural $t$-structure inherited from the forgetful functor $QCoh(S)->Vect_k$. Notice that the pullback functors over affine schemes are right $t$-exact, for the rings are all connective. Then, by the description of limit categories by Cartesian sections, we see that colimits in such categories are computed pointwise. In particular, since $QCoh(S)^(<=0)$ is closed under colimits, the subcategory 
	$ QCoh(cal(X))^(<=0)subset QCoh(cal(X)) $
	spanned by object with $(cal(F)_S)$ satisfying $cal(F)_S in QCoh(S)^(<=0)$ for any $S$ is closed under colimits. Thus, we have its right adjoint $tau^(<=0):QCoh(cal(X))->QCoh(cal(X))^(<=0)$. Then by verifying the Ext condition of the localization functor $tau^(>=1)=cofib(tau^(<=0)->id)$, we obtain a $t$-structure on $QCoh(cal(X))$. 
]

We have constructed the pushforward functor as above. In partiuclar, we notice that it is discontinuous, as it arise from a general right adjoint of a functor in $Pr^L_St$. However, there are some nice properties which we can deduce from and used to deduce the continuity of the pushforward functor. Namely, we have the following. 

#prop[
	Let $f:cal(X)_1->cal(X)_2$ be a morphism of prestacks, and consider the pullback diagram // https://q.uiver.app/#r=typst&q=WzAsNCxbMCwwLCJjYWwoWSlfMSJdLFswLDEsImNhbChZKV8yIl0sWzEsMCwiY2FsKFgpXzEiXSxbMSwxLCJjYWwoWClfMiJdLFsyLDMsImYiXSxbMCwxLCJmJyIsMl0sWzAsMiwiZyciXSxbMSwzLCJnIiwyXSxbMCwzLCIiLDEseyJzdHlsZSI6eyJuYW1lIjoiY29ybmVyLWludmVyc2UifX1dXQ==
	#align(center, diagram({
		node((0, 0), [$cal(Y)_1$])
		node((0, 1), [$cal(Y)_2$])
		node((1, 0), [$cal(X)_1$])
		node((1, 1), [$cal(X)_2$])
		edge((1, 0), (1, 1), [$f$], label-side: left, "->")
		edge((0, 0), (0, 1), [$f'$], label-side: right, "->")
		edge((0, 0), (1, 0), [$g'$], label-side: left, "->")
		edge((0, 1), (1, 1), [$g$], label-side: right, "->")
		node((0.2, 0.2), [$Cartmark$])
	}))
	Then, if $f$ is schematic and quasi-compact (recall the definitions in @Def_aff_schematic and @Def_quasi_cpt), we have the following property. 
	+	$f_*:QCoh(cal(X)_1)->QCoh(cal(X)_2)$ is continuous. 
	+	The base change morphism $g^*compose f_*->f'_*compose g'^*$ is an isomorphism. 
] <Prop_bc_QCoh_sch_qc>
#proof[

]

=== The symmetric monoidal structure of $QCoh$

We aim to give a right lax symmetric monoidal structure on $QCoh^*$ in this subsection. Before this, we first prove a baby version of the theorem. 

#prop[
	Let $cal(C)_1,cal(C)_2 in Pr^L_St$, and let $T_1,T_2$ be monads over $cal(C)_1,cal(C)_2$ respectively. Then, we have the functor $Alg_(T_1)(cal(C_1))times.o Alg_(T_2)(cal(C_2))->Alg_(T_1 times.o T_2)(cal(C)_1 times.o cal(C)_2)$ an equivalence. 
]
#proof[
	Notice that the forgetful functors $U_(T_1)$ and $U_(T_2)$ preserves geometric realizations, thus so does $U_(T_1)times.o U_(T_2)$. By the Barr-Beck-Lurie theorem, to show 
	$ F_T_1 times.o F_T_2:cal(C)_1 times.o cal(C)_2->Alg_(T_1)(cal(C)_1)times.o Alg_(T_2)(cal(C)_2) $ 
	is a monadic left adjoint, it suffices to show $U_(T_1)times.o U_(T_2)$ is conservative. This is because $cal(C)_1 times.o cal(C)_2$ is generated by the image of $cal(C)_1 times cal(C)_2$, by taking a presentation of $cal(C)_i$ by sites. 

	Then, the monads induced by $F_T_1 times.o F_T_2$ and $F_(T_1 times.o T_2)$ clearly coincide, thus identifying the corresponding algebra categories. 
]

#coro[
	The functor $QCoh_Aff^*:Aff^op->DGCat$ admit a canonical symmetric monoidal structure, where $Aff^op tilde.eq CAlg(Vect^(<=0))$ is equipped with the coCartesian monoidal structure. 
] <Coro_QCoh_aff_sym_mon>

#const[
	We now construct a right lax symmetric monoidal structure on the functor $QCoh^*:pStk^op->DGCat$ using @Coro_QCoh_aff_sym_mon. Consider the presentation 
	$ QCoh(cal(X))times.o QCoh(cal(Y))=(lim_(S->cal(X))QCoh(S))times.o (lim_(T->cal(Y))QCoh(T)) $
	and 
	$ QCoh(cal(X)times cal(Y))=lim_(S->cal(X)times cal(Y))QCoh(S) $
	However, the functor $Aff_(\/cal(X))^op times Aff_(\/cal(Y))^op->Aff_(\/cal(X)times cal(Y))^op$ is cofinal, so 
	$ QCoh(cal(X)times cal(Y))=lim_(S times T->cal(X)times cal(Y))QCoh(S)times.o QCoh(T) $
	and the desired $QCoh(cal(X))times.o QCoh(cal(Y))->QCoh(cal(X)times cal(Y))$ is then given by exchanging limits with the tensor product. 

	We denote the functor $QCoh(cal(X))times.o QCoh(cal(Y))->QCoh(cal(X)times cal(Y))$ by the exterior tensor, whose precomposition with $QCoh(cal(X))times QCoh(cal(Y))->QCoh(cal(X))times.o QCoh(cal(Y))$ denoted by $cal(F)_1 times.o cal(F)_2 mapsto cal(F)_1 times.square cal(F)_2$. 

	We also call the exterior tensor map the categorical Künneth formula map, and say the categorical Künneth formula holds if the above map is an equivalence of categories. 
] <Const_right_lax_sym_mon_QCoh>

#coro[
	Since taking tensor products with dualizable categories commutes with taking limits, the categorical Künneth formula holds for the stacks where one has $QCoh$ dualizable. 
]

#const[
	We now apply @Const_right_lax_sym_mon_QCoh to give a symmetric monoidal structure on the category $QCoh(cal(X))$ for any prestack $cal(X)$. We define 
	$ cal(F)_1 times.o cal(F)_2=Delta_cal(X)^*(cal(F)_1 times.square cal(F)_2) $

	Thus, the pullback functor is naturally symmetric monoidal. The pushforward functor, as its right adjoint, is naturally right lax symmetric monoidal. This in particular yields a projection formula map 
	$ cal(F) times.o f_*(cal(G))->f_*(f^*(cal(F))times.o cal(G)) $
	for any $f:cal(X)->cal(Y)$ and any $cal(F) in QCoh(cal(Y))$ and $cal(G) in QCoh(cal(X))$. We say the projection formula holds if the above map is an isomorphism. 
]

#prop[
	The projection formula for $QCoh$ holds for affine schematic morphisms $f:cal(X)->cal(Y)$. 
]
#proof[

]

#todo[
	Finish the proofs of the properties of affine schematic morphisms. 
]

We then consider a stronger version of the categorical Künneth formula for $QCoh$. Namely, we consider when the following map is an equivalence. 
$ QCoh(cal(X))times.o_(QCoh(cal(Z)))QCoh(cal(Y))->QCoh(cal(X)times_(cal(Z))cal(Y)) $
It turns out that this is related to the rigidity of $QCoh$. 

#todo[
	Finish this part. 
]

== Ind-coherent sheaves 

We then move on to the topic of ind-coherent sheaves. For a brief summary, recall that we have that for smooth classical schemes, the coherent sheaves can be identified with the perfect sheaves (@Lem_coh_eq_perf_sm_cl). However, when $S$ is singular, the two categories differ, however slightly. We have that they always agree on the eventually coconnective parts (@Label_undetermined_todo). This suggests that coherent sheaves can detect the singularities of the scheme. Then, the category of coherent sheaves is not presentable, since it does not contain infinite direct sums. The way to resolve this is to consider the ind-coherent sheaves, which is a certain ind-completion of coherent sheaves. Going back to the topic of singularities, we can define the singular support of ind-coherent sheaves, which contains the data of where this ind-coherent sheaf is non-perfect. In particular, the quasi-coherent sheaves can be identified with the ind-coherent sheaves with zero singular support. 

A second reason for considering ind-coherent sheaves is that the functoriality for ind-coherent sheaves are better than the ones for quasi-coherent sheaves. We will see this in @Label_undetermined_todo. 

=== Definitions

#def[
	For $X in Sch_aft$, we define $Coh(X)$ to be the category of bounded complexes with cohomologies lying in $Coh(X_cl)$. We define $Ind(Coh)(X)$ to be the ind-completion $Ind(Coh(X))$. 

	On the level of affine schemes, for $A in CAlg_aft^(<=0)$ we have $Coh(Spec A)$ the subcategory of $Mod_A$ given by objects $M$ with bounded cohomologies and such that $H^i (M)$ is finitely generated (equivalent to finitely presented) as an $H^0(A)$-module. 

	By definition, there is a comparison map $Psi_X:Ind(Coh)(X)->QCoh(X)$ given by ind-extending the inclusion $Coh(X)inj QCoh(X)$. 
] <Def_IndCoh_sch_aft>

#def[
	Let $A in CAlg_aft^(<=0)$. We say $M in Mod_A$ is almost perfect if $M in Mod_A^(<=k)$ for some $k$, and $tau^(>=n)(M)$ is compact in $Mod_A^([n,k])$ for all $n$. 
] <Def_aperf_aff_aft>

#thm(name: [@HA, Proposition 7.2.4.17])[
	Let $A in CAlg_aft^(<=0)$ and $M in Mod_A$. Then, $M$ is almost perfect iff the following conditions holds: 
	+	$M in Mod_A^-$. That is, $M in Mod_A^(<=k)$ for some $k$. 
	+	For every $n$ we have $H^n (M)$ finitely generated as an $H^0 (A)$-module. 
]

Thus, a coherent module is by definition an almost perfect module which is also eventually coconnective. We will use this later on. 

#lem[
	When $X$ is a smooth classical scheme finite type over a field, $Psi_X$ is an equivalence of categories. 
] <Lem_coh_eq_perf_sm_cl>
#proof[
	It suffices to prove that $Coh(X)=Perf(X)$. Notice that since $X$ is Noetherian, the property of coherence and perfectness is local. Hence, we may assume that $X=Spec A$ where $A$ is a Noetherian regular ring of finite dimension. Hence, $A$ is of finite global dimension. Thus every finitely generated (i.e. coherent) $A$-module admit a finite length resolution. Thus we have obtained the result. 
]

#def[
	We say $X$ is eventually coconnective if $cal(O)_X in Coh(X)$. 
] <Def_ev_coconn>

#lem[
	For eventually coconnective $X$, the functor $Psi_X$ admits a fully faithful left adjoint, which we will denote by $Xi_X$. 
]
#proof[
	If $cal(O)_X in Coh(X)$, then we have a fully faithful functor $Perf(X)inj Coh(X)$. Then, for such schemes, we have $QCoh(X)=Ind(Perf(X))$, so $Xi_X$ is obtained by ind-extending the inclusion. Hence, $Psi_X compose Xi_X$ is the ind-extension of the inclusion $Perf(X)inj QCoh(X)$, which is clearly the identity. The left adjoint property is obvious. 
]

We now construct a $t$-structure on the category $Ind(Coh)(X)$. 

#lem[
	Let $cal(C)_0 in DGCat^(#[non-cocmpl])$ be a non-cocomplete DG category, endowed with a $t$-structure. Then, we have $cal(C)=Ind(cal(C)_0) in DGCat$ admit a natural $t$-structure, with the following properties: 
	+	The inclusion $cal(C)_0inj cal(C)$ is $t$-exact. 
	+	The subcategories $cal(C)^(<=0)$ and $cal(C)^(>=0)$ are compactly generated under filtered colimits by $cal(C)_0^(<=0)$ and $cal(C)_0^(>=0)$. 
	+	Let $cal(D)$ be another DG category with a $t$-structure, such that $cal(D)^(>=0)$ is closed under filtered colimits. Then, a continuous functor $F:cal(C)->cal(D)$ is $t$-exact iff $F|_(cal(C)_0)$ is. 
] <Lem_t_str_IndCoh>
#proof[
	The existence of the $t$-structure is an application of @HA, Proposition 1.2.1.16. For $(3)$, if $F|_(cal(C)_0)$ is $t$-exact, we clearly have $F$ preserves both connective and coconnective objects, since both are closed under taking filtered colimits. 
]

Via @Lem_t_str_IndCoh, we may define a $t$-structure on $Ind(Coh)(X)$. 

#coro[
	The $t$-structure on $Ind(Coh)(X)$ makes $Psi_X$ $t$-exact, and is compatible with filtered colimits. 
]

#prop[
	The functor $Psi_X:Ind(Coh)(X)^(>=0)->QCoh(X)^(>=0)$ is an equivalence of categories. Hence, we have $refl(Ind(Coh)(X))^+=QCoh(X)^+$. 
]
#proof[
	It suffices to show that $QCoh(X)^(>=0)$ is compactly generated by $Coh(X)^(>=0)$ under filtered colimits. This is done by first passing to modules, and use that coherent sheaves are almost perfect. 
]

#lem[
	We have $Coh(X)=refl(Ind(Coh)(X))^omega$. 
]
#proof[
	Firstly note that $refl(Ind(Coh)(X))^omega$ is the Karoubi completion of $Coh(X)$. Then, for $cal(F) in refl(Ind(Coh)(X))^omega$, assume it is a direct summand (retract) of $cal(F)' in Coh(X)$. Then we have $Psi_X (cal(F))$ is a direct summand of $Psi_X (cal(F)')$. But since $Coh(X)$ is Karoubi complete in $QCoh(X)$, we may assume $Psi_X (cal(F))=Psi_X (cal(F)')$. Then by definition, $cal(F),cal(F)' in refl(Ind(Coh)(X))^omega subset refl(Ind(Coh)(X))^+ tilde.eq QCoh(X)^+$, we have $cal(F)=cal(F)'$. 
]

#const[
	We now construct an action of $QCoh(X)$ on $Ind(Coh)(X)$, such that $Psi_X:Ind(Coh)(X)->QCoh(X)$ is a map of $QCoh(X)$-modules. For the action, notice that $Perf(X)subset Coh(X)$ gives an action, whose ind-extension is the desired action. Moreover, we claim that this action is unique because the action of $Perf(X)$ on $Ind(Coh)(X)$ must preserves compact objects, which is by dualizability of $Perf(X)$. 
] <Const_action_QCoh_IndCoh_Sch_aft>

#lem[
	Suppose $X in Sch_aft$ and $cal(E)in QCoh(X)^b$, with $cal(E)times.o -:QCoh(X)->QCoh(X)$ left $t$-exact up to finite shift. Then, the functor 
	$ cal(E)times.o -:Ind(Coh)(X)->Ind(Coh)(X) $
	is also left $t$-exact up to finite shift. 
] <Lem_finite_tor_amplitude_remain_IndCoh>
We temporarily postpone the proof (#link(<proof_Lem_finite_tor_amplitude_remain_IndCoh>)[here]) of this lemma to the following section, after we have developed certain functorialities of $Ind(Coh)$. 

=== The usual pushforward and pullback functors 

Unlike the $QCoh$, we need to construct the pullback and pushforward functors by ourselves, and prove that they satisfy a good functoriality. 

#const[
	Let $f:X->Y$ be a morphism in $Sch_aft$. We construct a functor 
	$ f_*^Ind(Coh):Ind(Coh)(X)->Ind(Coh)(Y)in DGCat $
	making the following diagram commute: 
	// https://q.uiver.app/#r=typst&q=WzAsNCxbMCwwLCJJbmQoQ29oKShYKSJdLFsxLDAsIlFDb2goWCkiXSxbMCwxLCJJbmQoQ29oKShZKSJdLFsxLDEsIlFDb2goWSkiXSxbMSwzLCJmXyoiXSxbMCwxLCJQc2lfWCJdLFsyLDMsIlBzaV9ZIiwyXSxbMCwyLCJmXypeSW5kKENvaCkiLDJdXQ==
	#align(center, diagram({
		node((-1, 0), [$Ind(Coh)(X)$])
		node((0, 0), [$QCoh(X)$])
		node((-1, 1), [$Ind(Coh)(Y)$])
		node((0, 1), [$QCoh(Y)$])
		edge((0, 0), (0, 1), [$f_*$], label-side: left, "->")
		edge((-1, 0), (0, 0), [$Psi_X$], label-side: left, "->")
		edge((-1, 1), (0, 1), [$Psi_Y$], label-side: right, "->")
		edge((-1, 0), (-1, 1), [$f_*^Ind(Coh)$], label-side: right, "->")
	}))
	Moreover, we can show that the constructed functor $f_*^Ind(Coh)$ is left $t$-exact. 

	By definition, functors in $DGCat$ must be continuous, so $f_*^Ind(Coh)$ is the ind-extension of the restriction to $Coh(X)$. Then, the above commutative diagram is nothing but 
	$ Psi_Y compose f_*^Ind(Coh)|_Coh(X)=f_*|_Coh(X) $
	Since $f_*:QCoh(X)->QCoh(Y)$ is left $t$-exact and $Coh(X)subset QCoh(X)^+$, we have the image of the functor $Psi_Y compose f_*^Ind(Coh)$ contained in $QCoh(Y)^+$. Hence, we may define $f_*^Ind(Coh)|_Coh(X)$ by 
	$ f_*^Ind(Coh)|_Coh(X)=Psi_Y|_(refl(Ind(Coh)(Y))^+)^(-1)compose f_*|_Coh(X) $
	and finally define $f_*^(Ind(Coh))$ by ind-extending the above functor. 

	Moreover, we have $f_*^Ind(Coh):Ind(Coh)(X)->Ind(Coh)(Y)$ is a functor of $QCoh(Y)$-modules. 
] <Const_IndCoh_Sch_aft_star_pshfwd>

#prop[
	The above construction upgrades to a functor 
	$ Ind(Coh)_(Sch_aft):Sch_aft->DGCat $
	equipped with a natural transformation 
	$ Psi:Ind(Coh)_(Sch_aft)->QCoh_(Sch_aft) $
	such that at the level of objects and 1-morphisms we obtain the above construction. 
] <Prop_pshfwd_IndCoh_Sch_aft>

The construction of the full functorial structure is not direct because we need to specify the higher structures. However, we do not need to determine them by force, but via a clever construction of an auxillary $oo$-category. We will use similar techniques to obtain further functorialities of $Ind(Coh)$. 

#def[
	We define a 1-fully faithful functor of $oo$-categories to be a functor $F:cal(C)->cal(D)$ such that $Hom_cal(C)(c_1,c_2)->Hom_cal(D)(F(c_1),F(c_2))$ is an inclusion of connected components of spaces. In this case, we say $cal(C)$ is a 1-full subcategory of $cal(D)$. 
] <Def_fct_1ff>

We first give a precise formulation of our current status of the functoriality to be constructed. 

#def[
	Let $cal(I)$ and $cal(C)$ be $oo$-categories. We define an assignment $F$ from $cal(I)$ to $cal(C)$ to be a map of sets $pi_0(cal(I)^tilde.eq)->pi_0(cal(C)^tilde.eq)$, denoted by $i arrow.squiggly F(i)$. We say it can be extended to a functor if there is a functor $F':cal(I)->cal(C)$ such that $F'(i)=F(i)$ for all $i in pi_0(cal(I)^tilde.eq)$. We abuse notations and denote this functor $F'$ also by $F$. 
] <Def_assignment_cats_ext_fct>

#lem[
	Let $T:cal(C)->cal(D)$ be a 1-fully faithful functor of $oo$-categories. Let $cal(I)$ be another $oo$-category, and let $i arrow.squiggly F'(i)$ be an assignment from $cal(I)$ to $cal(C)$ such that $i arrow.squiggly T compose F'(i)$ can be extended to a functor $F:cal(I)->cal(D)$. Then, suppose that for every $alpha in Hom_cal(I)(i_1,i_2)$, $F(alpha) in Hom_cal(D)(F(i_1),F(i_2))$ lies in the image of $T$. Then, there exists a unique extension of $F'$ to a functor. 
] <Lem_extn_ass_fct_1ff>
#proof[
	This is obvious. 
]

#lem[
	We keep the settings as in the previous lemma. Now, let $F'_1$ and $F'_2$ be two functors from $cal(I)$ to $cal(C)$. Let $i arrow.squiggly psi'_i in Hom_cal(C)(F'_1(i),F'_2(i))$ be an assignment from $cal(I)$ to $Fun(Delta^1,cal(C))$. Assume $i arrow.squiggly T(psi'_i) in Hom_(cal(D))(F_1(i),F_2(i))$ can be extended to a functor $psi:cal(I)->Fun(Delta^1,cal(D))$, then there exists a unique extension of $psi'$ to a functor $psi':cal(I)->Fun(Delta^1,cal(C))$. 
] <Lem_extn_ass_nat_tr_fct_1ff>
#proof[
	Also obvious. 
]

#const[
	We define the category $DGCat^+$ to be the 1-full subcategory of $DGCat^#[non-cocmpl]$, spanned by objects that are non-cocomplete DG categories $cal(C)$ with the following properties:
	+	It is equipped with a $t$-structure, and $cal(C)=cal(C)^+$. 
	+	$cal(C)^(>=0)$ has all filtered colimits and the inclusion $cal(C)^(>=0)inj cal(C)$ commutes with filtered colimits. 
	We take the 1-morphisms to be spanned by the functors $F:cal(C)_1->cal(C)_2$ left $t$-exact up to a finite shift, and $F|_(cal(C)_1^(>=0))$ preserves filtered colimits. 

	We define the category $DGCat^t$ to be the 1-full subcategory of $DGCat$, spanned by the objects that are DG categories $cal(C)$ with the following properties: 
	+	$cal(C)$ is equipped with a $t$-structure, and is compactly generated by $cal(C)^+$. 
	+	$cal(C)^(>=0)$ admits all filtered colimits. 
	We take the 1-morphisms to be spanned by the continuous functors left $t$-exact up to a finite shift. 

	Moreover, we can identify $DGCat^t$ as a 1-full subcategory of $DGCat^+$ by $cal(C)mapsto cal(C)^+$. 
] <Const_var_DGCat_1>

#proof[
	We now prove @Prop_pshfwd_IndCoh_Sch_aft. We set $cal(I)=Sch_aft$, $cal(C)=DGCat^t$, $cal(D)=DGCat$, $F=QCoh_Sch_aft:Sch_aft->DGCat$, and the assignment $F'$ to be $X arrow.squiggly QCoh(X)in DGCat^t$. Now, apply @Lem_extn_ass_fct_1ff, we obtain a genuine functor $QCoh^t_Sch_aft:Sch_aft->DGCat^t$. Then, we may compose into $QCoh^+_(Sch_aft):Sch_aft->DGCat^+$. We now set $cal(C)=DGCat^t$, $cal(D)=DGCat^+$, $F=QCoh^+_Sch_aft$, and the assignment $F':X arrow.squiggly Ind(Coh)(X) in DGCat^t$. Thus, again by @Lem_extn_ass_fct_1ff, we obtain an extension $Ind(Coh)^t_Sch_aft:Sch_aft->DGCat^t$. Post-composing with the 1-fully faithful inclusion $DGCat^t inj DGCat$, we obtain the desired lift as a functor $Ind(Coh)_Sch_aft:Sch_aft->DGCat$. The natural transformation $Psi$ then is obtained by applying @Lem_extn_ass_nat_tr_fct_1ff to the obvious assignment, and the naturality condition used is ensured by @Const_IndCoh_Sch_aft_star_pshfwd. 
]

We are not yet ready to define the category of ind-coherent sheaves for general prestacks. We will first construct a functor of $*$-pullbacks of ind-coherent sheaves for certain nice morphisms. 

#def[
	Let $f:X->Y in Sch_aft$. We say $f$ is eventually coconnective if $f^*:QCoh(Y)->QCoh(X)$ sends $Coh(Y)$ to $Coh(X)$. The definition will remain unchanged if we replace $Coh(X)$ above by $QCoh(Y)^+$. 
] <Def_Sch_aft_ev_coconn>

#lem[
	$f$ is eventually coconnective iff $f^*$ is of finite tor-amplitude (as the definition @Def_finite_tor_amplitude, and note $f^*$ is naturally right $t$-exact, so here we use only left $t$-exactness up to a shift). 
] <Lem_ev_coconn_equiv_finite_tor_ampitude>
#proof[
	Obviously we have finite tor-amplitude implies eventual coconnectivity. For the converse, since the problem is Zariski local, we may factor $f$ as $X inj Y times AA^n ->Y$ by almost finite type condition. Then $f$ is of finite tor-amplitude iff $X inj Y times AA^n$ is, so we may assume $f$ is a closed embedding. 

	Then, to test that $f^*$ is of finite tor-amplitude, we compute $f^*(Coh(Y)^heart)$. But then, since $Coh(Y)^heart=Coh(Y_cl)^heart$, we may assume $Y$ is itself classical. Then since $f$ is eventually coconnective, so is $X$. Now, since $f:X->Y$ is affine schematic, so the projection formula holds, for $cal(F) in QCoh(Y)$, we have 
	$ f_*f^*(cal(F))=f_*(cal(O)_X)times.o cal(F) $
	But then $f$ is a closed immersion so affine, and hence $f_*$ is $t$-exact and conservative. So to prove $f^*$ is of finite tor-amplitude, it suffices to prove $f_*(cal(O)_X)$ is of finite tor-amplitude. 

	Now, notice that $f$ also satisfy base change, so for any geometric point $s inj Y$, we have $s^*f_*(cal(O)_X)=R Gamma(cal(O)_(X_s))$ is eventually coconnective. Then, we prove that this implies $f_*(cal(O)_X)$ is perfect. Let $E=f_*(cal(O)_X)$. Suppose $s^*(E) in Mod_K^([-n,m])$, where $K=cal(O)_s (s)$. We prove that on a neighborhood of $s$, $E times.o -$ has amplitude $[-n,m]$. Firstly by shifting, we may assume $m=0$. Then, we prove by induction. 

	The base case is $n=-1$, which says $s^*E=0$. By derived Nakayama's lemma, we have the restriction of $E$ to $Spec cal(O)_(Y,s)$ is 0. Hence, there is a neighborhood of $s$ such that $E=0$. 

	Then, we assume the induction hypothesis. We choose a finite rank free sheaf $P->E$ inducing an isomorphism $H^0(s^*P)->^tilde.eq H^0(s^*E)$. We let $F=fib(P->E)$. Hence, by the long exact sequence, we have $s^*F in Mod_K^([-n+1,0])$. Hence, $F$ is of tor-amplitude $[-n+1,0]$ on some neighborhood of $s$. Then on the same neighborhood, $E$ is of tor-amplitude $[-n,0]$. Finally, since $Y$ is quasi-compact, we may find a uniform bound on the tor-amplitude of $E$. 
]

#rem[
	Recall by @Stacks 0658, being perfect is equivalent to being finite tor-amplitude and pseudo-coherent. So in fact, the sheaves appearing in the above proof are all perfect. 
]

#def[
	For $f:X->Y$ eventually coconnective, we may ind-extend the functor $f^*:Coh(Y)->Coh(X)$ and obtain $f^(Ind(Coh),*)$. In particular, it commutes with $Psi_X$ and $f^*$ on coherent sheaves. 
] <Def_IndCoh_Sch_aft_star_pullback>

#lem[
	$f^(Ind(Coh),*)$ is left adjoint to $f_*^(Ind(Coh))$. 
]
#proof[
	Obviously we have for $cal(F)_X in Coh(X)$ and $cal(F)_Y in Coh(Y)$ an equivalence 
	$ Hom_(Ind(Coh)(X))(f^(Ind(Coh),*)(cal(F)_Y),cal(F)_X)=Hom_QCoh(X)(f^*(cal(F)_Y),cal(F)_X) \
	=Hom_QCoh(Y)(cal(F)_Y,f_*(cal(F_X)))=Hom_(Ind(Coh)(Y))(cal(F)_Y,f_*^(Ind(Coh))(cal(F)_X)) $
	Then writing every object of $Ind(Coh)$ into filtered colimits of these compact generators, we are done. 
]

#coro[
	$f^(Ind(Coh),*):Ind(Coh)(Y)->Ind(Coh)(X)$ is a map of $QCoh(Y)$-modules. 
] <Coro_usual_pullback_IndCoh_compat_mod>
#proof[
	Ind-extend the action of $QCoh^omega$ on $Coh$. 
]

#prop[
	$f_*^(Ind(Coh)):Ind(Coh)(X)->Ind(Coh)(Y)$ admit a left adjoint iff $f$ is eventually coconnective. 
] 
#proof[
	Let $f^(Ind(Coh),L)$ denote the left adjoint. Since it preserves all colimits, it preserves compact objects. We let $f^L$ denote the restriction $f^L:Coh(X)->Coh(Y)$, and $f^(Ind(Coh),L)$ is its ind-extension. Hence, it suffices to prove that ???????
]

#coro[
	By the same process as the proof of @Prop_pshfwd_IndCoh_Sch_aft, we have the assignment $X arrow.squiggly Ind(Coh)(X)$, $f arrow.squiggly f^(Ind(Coh),*)$ extends to a functor 
	$ Ind(Coh)^*_(Sch_(aft,#[ev-coconn])):Sch_(aft,#[ev-coconn])^op->DGCat $
] <Prop_pullback_IndCoh_Sch_aft_ev_coconn>

=== Basic properties of the functors

We now establish some basic properties of the above constructed functors. We begin with the base change theorem. 

#prop[
	Consider the following Cartesian diagram in $Sch_aft$: 
	// https://q.uiver.app/#r=typst&q=WzAsNCxbMCwwLCJYXzEiXSxbMSwwLCJYXzIiXSxbMCwxLCJZXzEiXSxbMSwxLCJZXzIiXSxbMCwyLCJmXzEiLDJdLFsxLDMsImZfMiJdLFswLDEsImdfWCJdLFsyLDMsImdfWSIsMl1d
	#align(center, diagram({
		node((-1, 0), [$X_1$])
		node((0, 0), [$X_2$])
		node((-1, 1), [$Y_1$])
		node((0, 1), [$Y_2$])
		node((-0.8, 0.2), [$Cartmark$])
		edge((-1, 0), (-1, 1), [$f_1$], label-side: right, "->")
		edge((0, 0), (0, 1), [$f_2$], label-side: left, "->")
		edge((-1, 0), (0, 0), [$g_X$], label-side: left, "->")
		edge((-1, 1), (0, 1), [$g_Y$], label-side: right, "->")
	}))
	Assume $f_2$ is eventually coconnective. Then, the base change morphism 
	$ f_2^(Ind(Coh),*)compose g_(Y,*)^(Ind(Coh))->g_(X,*)^Ind(Coh)compose f_1^(Ind(Coh),*) $
	is an equivalence
] <Prop_IndCoh_Sch_aft_base_change>
#proof[
	It suffices to show that this is an equivalence for $cal(F)in Coh(Y_1)$. In this case, both sides belong to $refl(Ind(Coh)(X_2))^+$. Thus, it suffices to show that the above map is an equivalence after applying $Psi_X_2$. Using compatibility of $Psi$'s with $f_*^Ind(Coh)$ and $f^(Ind(Coh),*)$, this now follows from @Prop_bc_QCoh_sch_qc. 
]

#coro[
	The following version of projection formula holds. In this case, we do not need $f$ even to be eventually coconnective. 
	$ cal(E)_Y times.o f_*^(Ind(Coh))cal(F)_X->^tilde.eq f_*^(Ind(Coh))(f^*(cal(E)_Y)times.o cal(F)_X) $
] <Coro_proj_formula_IndCoh_QCoh>
#proof[
	Follows from $f_*^(Ind(Coh)):Ind(Coh)(X)->Ind(Coh)(Y)$ is a morphism of $QCoh(Y)$-modules, as in @Const_IndCoh_Sch_aft_star_pshfwd. 
]

The projection formula for $f_*^(Ind(Coh))$ and $f^(Ind(Coh),*)$ is much more difficult. For these, we need the Zariski descent for $Ind(Coh)$. 

#lem[
	Suppose $j:X inj Y$ is an open embedding, then $j_*^Ind(Coh)$ is fully faithful. 
] <Lem_IndCoh_open_emb_Sch_aft_star_pshfwd_fully_faithful>
#proof[
	We show the counit of the adjunction $j^(Ind(Coh),*)compose j_*^(Ind(Coh))->id$ is an equivalence. Note on both sides the functors are continuous, so it suffices to check that for $cal(F) in Coh(X)$ we have $j^(*,Ind(Coh))compose j_*^(Ind(Coh))(cal(F))->cal(F)$ is an equivalence. Since both sides are in $Ind(Coh)^+$, applying $Psi_X$ to both sides it suffices to show $j^*compose j_*->id$ is an equivalence, which is obvious. 
]

#coro[
	By @Lem_t_str_IndCoh and @Lem_IndCoh_open_emb_Sch_aft_star_pshfwd_fully_faithful, we have $j^(Ind(Coh),*)$ $t$-exact. 
] <Coro_IndCoh_star_pullback_open_t_exact>

#prop[
	Let $f:U->X$ be a Zariski cover. Then, the functor 
	$ Ind(Coh)(X)->Tot(Ind(Coh)(U^bullet)) $
	is an equivalence. 
] <Prop_IndCoh_Sch_aft_Zariski_desc>
#proof[
	By compactness of $X$, we immediately reduces to the following case: 
	$ X=U_1 union U_2,U_(12)=U_1 inter U_2 $
	we must show 
	$ Ind(Coh)(X)->Ind(Coh)(U_1)times_(Ind(Coh)(U_(12)))Ind(Coh)(U_2) $
	is an equivalence. 
	
	We first construct the right adjoint of this functor. We send the data 
	$ (cal(F)_i in Ind(Coh)(U_i),cal(F)_(12) in Ind(Coh)(U_12),cal(F)_1,j_(12,1)^(Ind(Coh),*)(cal(F)_1)=cal(F)_12=j_(12,2)^(Ind(Coh),*)(cal(F)_2)) $
	to the obvious ind-coherent sheaf 
	$ ker (j_(1,*)^(Ind(Coh))(cal(F)_1)plus.o j_(2,*)^(Ind(Coh))(cal(F)_2)->j_(12,*)^Ind(Coh)(cal(F)_(12))) $
	By the base change theorem @Prop_IndCoh_Sch_aft_base_change and @Lem_IndCoh_open_emb_Sch_aft_star_pshfwd_fully_faithful, the composition 
	$ Ind(Coh)(U_1)times_(Ind(Coh)(U_(12)))Ind(Coh)(U_2)->Ind(Coh)(X)->Ind(Coh)(U_1)times_(Ind(Coh)(U_(12)))Ind(Coh)(U_2) $
	is an equivalence. Then, to show that 
	$ Ind(Coh)(X)->Ind(Coh)(U_1)times_(Ind(Coh)(U_(12)))Ind(Coh)(U_2)->Ind(Coh)(X) $
	is an equivalence, it suffices to show that for $cal(F)in Ind(Coh)(X)$, we have 
	$ ker (j_(1,*)^(Ind(Coh))compose j_1^(Ind(Coh),*)(cal(F))plus.o j_(2,*)^(Ind(Coh))compose j_2^(Ind(Coh),*)(cal(F))->j_(12,*)^Ind(Coh)compose j_(12)^(Ind(Coh),*)(cal(F))) $
	is an equivalence. Again, since all functors are continuous, we may assume $cal(F) in Coh(X)$, and again both sides are in $Ind(Coh)(X)^+$, so we may apply $Psi_X$ to both sides. In this case, it reduces to the Zariski descent of quasi-coherent sheaves, which is by @Label_undetermined_todo. 
]

#coro[
	Let $f:U->X$ be a Zariski cover. Then, $cal(F) in Ind(Coh)(X)$ is in $refl(Ind(Coh)(X))^(>=0)$ or $refl(Ind(Coh)(X))^(<=0)$ iff $f^(Ind(Coh),*)(cal(F))$ does. 
] <Prop_IndCoh_Sch_aft_conn_coconn_Zariski_desc>
#proof[
	For only if, we have $j^(Ind(Coh),*)$ $t$-exact by @Coro_IndCoh_star_pullback_open_t_exact. For the other direction, assume $f^(Ind(Coh),*)(cal(F))in refl(Ind(Coh)(U))^(<=0)$, apply $Psi_U$, and we obtain the result from @Label_undetermined_todo. Assume $f^(Ind(Coh),*)(cal(F))in refl(Ind(Coh)(U))^(>=0)$, the assertion follows from the construction of the inverse functor as in @Prop_IndCoh_Sch_aft_Zariski_desc. 
]

#proof[
	We may now prove @Lem_finite_tor_amplitude_remain_IndCoh. By @Lem_t_str_IndCoh, it suffices to prove that $cal(E)times.o-$ sends $Coh(X)^(>=0)$ to $refl(Ind(Coh)(X))^(>=-n)$. To show this, it suffices to prove $Coh(X)^heart$ is mapped to $refl(Ind(Coh)(X))^(>=-n)$. We consider the closed embedding $i:X_cl inj X$. Note $i_*^(Ind(Coh))=i_*:Coh(X_cl)^heart->Coh(X)^heart$ induces an equivalence of categories. By the projection formula above, we have 
	$ cal(E)times.o i_*^(Ind(Coh))(cal(F)')tilde.eq i_*^(Ind(Coh))(i^*(cal(E))times.o cal(F)') $
	and notice that $i^*(cal(E))$ is bounded of the same tor amplitude as $cal(E)$, and $i_*^(Ind(Coh))$ is $t$-exact, we may assume that $X$ is classical. Moreover, by @Prop_IndCoh_Sch_aft_conn_coconn_Zariski_desc, we may assume that $X$ is affine. In this case, the assumption that $cal(E)$ is bounded of tor amplitude $[-n,0]$ is equivalent that $cal(E)$ has a flat resolution of length at most $n$. Again by cohomological devissage, it suffices to prove for $cal(E)$ a flat module. In this case, $cal(E)times.o-:Coh(X)->Coh(X)$ is obviously $t$-exact, and by @Lem_t_str_IndCoh so is $cal(E)times.o-:Ind(Coh)(X)->Ind(Coh)(X)$. 
] <proof_Lem_finite_tor_amplitude_remain_IndCoh>

#coro[
	The following version of projection formula holds. 
	$ f_*(cal(E)_X)times.o cal(F)_Y->^(tilde.eq)f_*^(Ind(Coh))(cal(E)_X times.o f^(Ind(Coh),*)(cal(F)_Y)) $
] <Coro_proj_formula_QCoh_IndCoh_ev_coconn>
#proof[
	It suffices to construct the natural transformation and prove that it is an equivalence on the level of functors $QCoh(X)^omega times.o Coh(Y)->Ind(Coh)(Y)$, and both sides are ind-extended from here. Note that after post-composing $Psi_Y$, this is just the ordinary projection formula for $QCoh$, which is an equivalence. Then, we have $f^(Ind(Coh),*)(cal(F)_Y)=f^*(cal(F)_Y)in Coh(X)$, so by @Const_action_QCoh_IndCoh_Sch_aft we have $cal(E)_X times.o f^(Ind(Coh),*)(cal(F)_Y) in Coh(X)$. Finally, by @Const_IndCoh_Sch_aft_star_pshfwd we have $f_*^Ind(Coh)$ preserves coherent sheaves, so we obtain 
	$ f_*^(Ind(Coh))(cal(E)_X times.o f^(Ind(Coh),*)(cal(F)_Y)) in Coh(Y)subset refl(Ind(Coh)(Y))^+ $
	Hence, it suffices to prove 
	$ f_*(cal(E)_X)times.o cal(F)_Y in Ind(Coh)(Y)^+ $
	where $Psi_Y$ is an equivalence. 

	By the analogous steps of the proof in @Lem_ev_coconn_equiv_finite_tor_ampitude, we have $f_*(cal(E)_X)$ finite tor amplitude. By @Lem_finite_tor_amplitude_remain_IndCoh, the desired conclusion follows. 
]

Then, we investigate more properties of the action of $QCoh$ on $Ind(Coh)$. Namely, we aim to prove the following property. 

#prop[
	We have a fully faithful functor 
	$ (id_(QCoh(X))times.o f^(Ind(Coh),*)):QCoh(X)times.o_(QCoh(Y))Ind(Coh)(Y)->Ind(Coh)(X) $
] <Prop_tensor_pshfwd_fully_faithful>
#proof[
	The left hand side is compactly generated by objects of the form $cal(E)_X times.o cal(F)_Y$, where $cal(E)_X in QCoh(X)^omega$ and $cal(F)_Y in Coh(Y)$. Moreover, above functor preserves compact objects. We thus suffices to show for compact $cal(E)_X^1, cal(E)_X^2, cal(F)_Y^1, cal(F)_Y^2$, the following equivalence 
	$ 
	&Hom_(QCoh(X)times.o_(QCoh(Y))Ind(Coh)(Y))(cal(E)_X^1times.o cal(F)_Y^1, cal(E)_X^2 times.o cal(F)_Y^2)->^(tilde.eq) \ 
	&Hom_(Ind(Coh)(X))(cal(E)_X^1 times.o f^(Ind(Coh),*)(cal(F)_Y^1), cal(E)_X^2 times.o f^(Ind(Coh),*)(cal(F)_Y^2)) 
	$
	By dualizability of $cal(E)_X^1$, by replacing $cal(E)_X^2$ by tensoring it with $(cal(E)_X^1)^or$, it suffices to show 
	$ 
	Hom_(QCoh(X)times.o_(QCoh(Y))Ind(Coh)(Y))(cal(F)_Y^1, cal(E)_X times.o cal(F)_Y^2)->^(tilde.eq)Hom_(Ind(Coh)(X))(f^(Ind(Coh),*)(cal(F)_Y^1), cal(E)_X times.o f^(Ind(Coh),*)(cal(F)_Y^2)) 
	$
	Since $f^(Ind(Coh),*)$ is left adjoint to $f_*^Ind(Coh)$,  it suffices to show that 
	$ Hom_(QCoh(X)times.o_(QCoh(Y))Ind(Coh)(Y))(cal(F)_Y^1, cal(E)_X times.o cal(F)_Y^2)->^(tilde.eq)Hom_(Ind(Coh)(Y))(cal(F)_Y^1, f_*^Ind(Coh)(cal(E)_X times.o f^(Ind(Coh),*)(cal(F)_Y^2))) $
	By @Coro_proj_formula_QCoh_IndCoh_ev_coconn, we have 
	$ f_*^Ind(Coh)(cal(E)_X times.o f^(Ind(Coh),*)(cal(F)_Y^2))=f_*(cal(E)_X)times.o cal(F)_Y^2 $
	and the rest is by definition. 
]

#coro[
	The map in @Prop_tensor_pshfwd_fully_faithful is an equivalence when $f$ is an open immersion. 
]
#proof[
	The essential image of the functor clearly generates the target category. 
]

=== The exceptional pullback functor 

#def[
	Let $f:X->Y in Sch_aft$ be a functor. We say $f$ is proper (or closed embedding) if $f_cl$ is so. 
] <Def_proper_closed_emb>

#lem[
	If $f:X->Y$ is proper, then the functor $f_*^(Ind(Coh)):Ind(Coh)(X)->Ind(Coh)(Y)$ preserves compact objects. That is, it sends $Coh(X)$ to $Coh(Y)$. 
]
#proof[
	By @Const_IndCoh_Sch_aft_star_pshfwd, it suffices to show that $f_*:QCoh(X)->QCoh(Y)$ sends $Coh(X)$ to $Coh(Y)$. By definition, for $f$ a closed embedding this obviously holds. Then, it suffices to prove $f_*$ maps $Coh(X)^heart$ to $Coh(Y)$. Then, noticing $Coh(X)^heart=Coh(X_cl)^heart$, we may assume $X$ is classical. Then, the map $X->Y$ factors through $Y_cl$, and since $Y_cl inj Y$ is a closed embedding, we may assume that $Y$ is also classical. 

	Thus, we are reduced to proving that for a proper map of classical schemes of finite type $f:X->Y$ over a field (hence Noetherian), we have $R^i f_*(cal(F))$ coherent for any coherent $cal(F)$. This is @Stacks 02O5. 
	
	We will recall and use @Stacks 01YI. Let $X$ be a Noetherian scheme and $cal(P)$ a property for coherent sheaves over $X$. Assume that $cal(P)$ has the two-out-of-three property for any exact sequence, and for every integral closed subscheme $Z subset X$ with generic point $xi$, there is a coherent sheaf $cal(G) in Coh(X)$ satisfying the following properties: 
	+	it is supported on $Z$, 
	+	$cal(G)_xi$ is annihilated by $frak(m)_xi$, 
	+	$dim_(kappa(xi))cal(G)_xi=1$
	+	$cal(G)$ has property $cal(P)$
	then $cal(P)$ holds for any coherent sheaf over $X$. The proof of this lemma is basically a version of Noetherian induction. 

	Now, we set $cal(P)$ to be $R^i f_*(cal(F))$ is coherent for all $i$. We verify the properties above. Firstly, $cal(P)$ satisfy the two-out-of-three for exact sequences is obvious by the long exact sequence of cohomology. Then, take $Z subset X$ an integral closed subscheme. We wish to find a coherent sheaf satisfying the above properties. We let $g:Z->Y$ denote the restriction of $f$. We will actually construct a coherent sheaf $cal(G)$ over $Z$ such that $g_*(cal(G))$ has no higher images, $cal(G)_xi$ is 1-dimensional, and $g_*(cal(C))$ is coherent. Then, pushing $cal(G)$ to $X$ gives a coherent sheaf with the desired properties. Thus everything reduces to finding such a coherent sheaf $cal(G)$. 

	We apply Chow's lemma to $Z->Y$. Namely, there is a proper $Y$-scheme map $pi:Z'->>Z$, with a dense open $U subset Z$ such that $pi^(-1)(U)->U$ is an isomorphism, and $i:Z' inj PP^n_Y$. By properness of $pi$, the diagonal map $i':Z' inj PP^n_Y times_Y Z=PP^n_Z$ is a closed immersion. We take a line bundle
	$ cal(L)=i^*(cal(O)_(PP^n_Y)(1))=i'^*(cal(O)_(PP^n_Z)(1)) $
	which is ample for both $g':Z'->S$ and $pi:Z'->Z$. By the equivalent characterization of ampleness, there is some $m$ such that the higher direct images of $cal(L)^(times.o m)$ with respect to $g'$ and $pi$ vanishes. We then set $cal(G)=pi_* (cal(L)^(times.o n))$. Note $cal(G)$ is invertible over $U$ since $pi$ is an isomorphism over $U$, we have $cal(G)_xi$ dimension 1 over $kappa(xi)$. The higher direct images vanishes by a computation of the Leray-Serre spectral sequence 
	$ E_2^(p,q)=R^p g_* compose R^q pi_*(cal(L)^(times.o n))==>R^(p+q)g'_*(cal(L)^(times.o n)) $
	we have the left hand side is non-zero iff $q=0$, and the right hand side is non-zero iff $p+q=0$, so $R^p g_*(cal(G))=0$ for $p>0$. Then, since $g'$ is projective, $g_*(cal(G))=g'_*(cal(L)^(times.o n))$ is clearly coherent by a computation of the cohomology of line bundles over projective spaces. 
]

== Application: 1-Cartier duality

The contents in this section may be treated over the more general base $Sp$. That is, we no longer suppose the base ring we are considering over is any field of characteristic 0, but over the sphere spectrum $SS$. The readers may assume that all the statements needed still holds. 

= Todo chapter

#todo[

] <Label_undetermined_todo>