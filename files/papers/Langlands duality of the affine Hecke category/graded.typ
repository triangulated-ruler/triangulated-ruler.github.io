#import "let_bindings.typ": *
#import "void-template/1.0.0/void-import.typ": *
#import "Bezrukavnikov-Arkhipov.typ"

= The graded setting 

== Remarks on graded sheaves 

In this chapter, we will make use of the graded sheaves introduced in the paper@GrShv. We summarize here the main properties we will use on graded sheaves. 

#def([Definition 2.4.2@GrShv])[
	Let $X$ be a stack over $k$ with a model $X_0$ over $FF_q$. We let $D_mixed (X_0)^ren$ denote $Ind(D_mixed (X_0))$. Then, we let $D_gr (X_0)^ren$ denote the Lurie tensor product 
	$ D_gr (X_0)^ren=D_mixed (X_0)^ren times.o_(D_mixed (Spec FF_q)^ren)Vect^gr $
	where $D_mixed (Spec FF_q)^ren->D_mixed (X_0)^ren$ is given by the modules structure, and the functor $D_mixed (Spec FF_q)^ren->Vect^gr$ is the functor sending a constructible sheaf to the associated graded vector space of its stalk. Here the stalk has the weight filtration. 

	We define $D_gr (X_0)$ to be the compact objects in $D_gr (X_0)^ren$. 
]

#thm([Proposition 2.7.9])[
	Let $X_1=X_0 times.o FF_(q^n)$. There is a monoidal equivalence 
	$ D_gr (X_0)^ren tilde.eq D_gr (X_1)^ren $
]

#thm([Theorem 2.7.12], label-name: "Thm_6ff_gr_shv")[
	We can attach to each stack $X$ over $k$ with a model $X_0$ over $FF_q$ a presentably symmetric monoidal stable $oo$-category $D_gr (X)^ren:=D_gr (X_0)^ren$, well-defined by the previous theorem. Moreover, for nice enough morphisms $f:X->Y$, there is a theory of $f_! adj f^!$ and $f^* adj f_*$ between the categories $D_gr (X)^ren$ and $D_gr (Y)^ren$. 
]

#thm([Lemma 2.4.3, 2.4.7])[
	There is a symmetric monoidal continuous and compact preserving functor 
	$ gr:D_mixed (X)^ren->D_gr (X)^ren $
	Moreover, the image of $gr$ of compact objects compactly generates $D_gr (X)^ren$. 
]

#thm([Remark 2.7.17], label-name: "Thm_gr_decomp_gr_shv")[
	We let $chevron.l n chevron.r$ denote the grade shift functor of $D_gr (X)$. Then, there is a functor $oblv_gr:D_gr (X)->D(X)$ satisfying
	$ plus.o.big_(n in ZZ)Hom_gr (cal(F),cal(G)chevron.l n chevron.r)=Hom(oblv_gr (cal(F)),oblv_gr (cal(G))) $
]

#thm([Theorem 3.4.8, Proposition 3.5.1], label-name: "Thm_gr_t_wt_compatible_preserve")[
	The category $D_gr (X)$ is equipped with a weight structure and a $t$-structure, such that the $t$-structure is transversal to the weight structure. We will call this $t$-structure the perverse $t$-structure. Moreover, the functors $gr:D_mixed (X)->D_gr (X)$ and $oblv_gr:D_gr (X)->D(X)$ preserve and reflect the perverse $t$-structures, and are compatible with the six functors. 
]

#thm([Proposition 3.5.6], label-name: "Thm_simple_gr_perv_shf")[
	The category $Perv_(gr)(X)$ is of finite length. An object $cal(F)in Perv_(gr)(X)$ is simple iff $oblv(cal(F))in Perv(X)$ is simple, and is necessarily pure of some weight. 
]

#def[
	We define $D_(I,gr)(Fl)$ to be the category of graded sheaves over the stack $I\\L G\/I$. More precisely, we need to go through the process of pro-groups acting on ind-schemes@AffGrsSat. First, we pick a split model $G_0$ of $G$ over $FF_q$. Hence, we can choose a Borel defined over $FF_q$. The loop group and the Iwahori can also be defined over $FF_q$. Then, we may define 
	$ D_(I_0,mixed)(Fl_0):=colim_(w in W^ext) D_((I_0)_k,mixed)((overline(Fl_(0,w)))) $
	Here, $(I_0)_k$ is a finite type quotient of $I_0$ through which the action of $I_0$ on $overline(Fl_(0,w))$ factors. Based on this, we may define the corresponding renormalized versions. Then, we follow the above formalism and define the associated graded category and its compact objects. Thus we obtain the category $D_(I,gr)(Fl)$. In particular, the inclusions of strata $j_w:I\\Fl_w inj I\\Fl$ are nice morphisms in the sense of @Thm_6ff_gr_shv, and we have access to the $!$- and $*$-pushforwards and pullbacks for these morphisms. 

	The category $D_(IW,gr)(Fl)$ is defined through a likewise process. 
]

#def[
	We define the graded versions of standard, costandard, and IC sheaves. We define for each $w in W$ the following graded sheaves 
	$ j_(w!)^gr=j_(w!)overline(QQ)_ell [ell(w)]chevron.l ell(w)chevron.r,j_(w*)^gr=j_(w*)overline(QQ)_ell [ell(w)]chevron.l ell(w)chevron.r $
	and we define the corresponding simple IC object by 
	$ L_w^gr=j_(w!*)overline(QQ)_ell [ell(w)]chevron.l ell(w)chevron.r $
	By definition, we have $j_(w!)^gr=gr(j_(w!)^m)$ and the likewise statement for costandards and simple objects. 
]

#const(label-name: "Const_gr_conv_prod")[
	By the general formalism introduced in @Const_equi_conv_product, we may define the convolution product of graded sheaves. In particular, this convolution product is compatible with $gr$ and $oblv_gr$, since the two functors preserve the six-functor formalism. 
]

#coro[
	The lemma @Lem_conv_I_equi_shv holds with $j_(w!)$ replaced by $j_(w!)^gr$, and $j_(w*)$ replaced by $j_(w*)^gr$. 
]
#proof[
	This is obvious by taking associated graded of @Coro_conv_I_equi_shv_mixed. 
]

#def[
	We also need the graded version of the Iwahori–Whittaker sheaves. Firstly, as before, we define the category $D_(IW,gr)(Fl)$ via the formalism introduced in the paper@AffGrsSat and @Const_twisted_equi_shv, with the construction of the character sheaf explained below. 
	
	For each $w in attach(W^ext,tl:f)$, we define 
	$ Delta_w^gr=i_(w!)Psi_w^*(AS)[ell(w)]chevron.l ell(w) chevron.r,nabla_w^gr=i_(w*)Psi_w^*(AS)[ell(w)]chevron.l ell(w)chevron.r $
	We explain our notation here. We first consider $AA SS$ as a sheaf over $(GG_a)_0\/FF_q$, which by definition is a mixed sheaf over $GG_a$ pure of weight 0. Then, we let $Psi^*(AA SS)$ be the desired character sheaf over $I_0$, which is also pure of weight 0 since $Psi$ is smooth. Then, note $Psi_w$ is also smooth, hence $Psi_w^*(AA SS)$ is pure of weight 0. Hence, letting $Delta_w^m$ and $nabla_w^m$ be the corresponding mixed sheaves in $D_(I,mixed)(Fl)$ given by 
	$ Delta_w^m=i_(w!)Psi_w^*(AS)[ell(w)](ell(w)/2),nabla_w^m=i_(w*)Psi_w^*(AS)[ell(w)](ell(w)/2) $
	which lives in weight $<=0$ and $>=0$ respectively. Then, taking associated graded sheaf at any of the process above gives our definition. Again we take the notations $Delta_lambda^gr$ and $nabla_lambda^gr$. In particular, we have 
	$ Delta_e^m=nabla_e^m,Delta_e^gr=nabla_e^gr $
	by an analogous proof as in @Prop_basic_avr. In particular, these sheaves are pure of weight 0. Moreover, we need the simple objects 
	$ IC_w^gr=i_(w!*)Psi_w^*(AS)[ell(w)]chevron.l ell(w)chevron.r $
]

#def[
	Finally, we define the graded version of Wakimoto sheaves. Namely, we define 
	$ J_eta^gr=j_(t_mu*)^gr *_I j_(t_nu !)^gr $ 
	for $eta=mu-nu$, $mu,nu in X_*(T)^+$. 
	
	Again, we also define the generalized Wakimoto sheaves 
	$ J_w^gr=J_lambda^gr *_I j_(w_f *)^gr $
	for $w=lambda dot w_f in W^ext$, $lambda in X_*(T)$, $w_f in W_f$. 

	Again, $J_mu^gr *_I J_nu^gr=J_(mu+nu)^gr$, so the full subcategory $Perv^waki_(I,gr)(Fl)subset Perv_(I,gr)(Fl)$, consisting of objects admitting a filtration by $J_lambda^gr chevron.l n chevron.r$, is closed under convolution in $D_(I,gr)(Fl)$. 
]

#prop(label-name: "Prop_K_grp_gr_shv_Hecke")[
	We have $cal(H)tilde.eq K^0(D_(I,gr)(Fl))$, with $H_w mapsto (-1)^(ell(w))[j_(w*)^gr]$. 
]
#proof[
	The proof is exactly the same as the proof of @Prop_Hecke_alg_eq_K_tensor. 
]

#coro[
	For any $lambda in X_*(T)^+$, the class $[Z^gr (V_lambda)]in cal(H)$ is given by 
	$ sum_(mu in X_*(T))dim V_lambda^(T^or=mu) dot theta_mu $
]
#proof[
	Also the same as @Prop_num_Waki_wt_fil. 
]

== The construction of the graded functor 

In this section, we will construct the functor $Phi_gr$ in @Thm_main_graded_vers. 

#const[
	The strategy of the construction would mostly follow from the previous construction. However, since we have an additional action of $GG_m lact tilde(cal(N))^or$ given by $t$ acting by $t:(b,x)mapsto (b,t^(-2)x)$, under the embedding 
	$ tilde(cal(N))^or inj cal(B)^or times frak(g)^or $ 
	some of the construction must be modified. 

	Mainly, we do the following: 
	+	Construct a functor #h(1fr)
		$ Phi_(0,gr):Rep(G^or times T^or times GG_m)->Perv^waki_(I,gr)(Fl) $
	+	Use the de-equivariantization principle to upgrade it to a functor 
		$ Phi_(1,gr):Coh_fr^(G^or times T^or times GG_m)(overline(G^or\/U^or)times frak(g)^or)->Perv^waki_(I,gr)(Fl) $
	+	Use the de-equivariantization principle to restrict it to a functor 
		$ Phi_(2,gr):Coh_fr^(G^or times T^or times GG_m)(hat(cal(N))^or_aff)->Perv^waki_(I,gr)(Fl) $
	+	Again pass to derived category, postcompose $Perv^waki_(I,gr)(Fl)inj Perv_(I,gr)(Fl)$ and construct 
		$ Phi_(3,gr):D Coh^(G^or times GG_m)(tilde(cal(N))^or)->D(Perv_(I,gr)(Fl)) $
	+	Compose with the functor $Av_Psi^gr$ 
		$ Phi_(IW,gr):D Coh^(G^or times GG_m)(tilde(cal(N))^or)->D_(IW,gr)(Fl) $
]

#prop(label-name: "Prop_waki_fil_gr_unshift")[
	The sheaf $Z^gr (V)in Perv_(I,gr)(Fl)$ admits a filtration by the unshifted graded Wakimoto sheaves $J_lambda^gr$, with the multiplicity of $J_lambda^gr$ given by $dim V^(T^or=lambda)$. 
]
#proof[
	We first mimic the proof of @Prop_fil_cent_Wakimoto to see that $Z^gr (V)$ admits a filtration by the grade-shifted Wakimoto sheaves $J_lambda^gr chevron.l n chevron.r$. Now let $X$ be any graded convolution exact perverse sheaf. We apply @Lem_orbit_conv_estimate, and take $S$ to be the set in the lemma for $X$. We write $S={lambda_i w_i}$ such that $lambda_i in X_*(T)$ and $w_i in W_f$. Then, we choose a coweight $nu_0<<0 in X_*(T)$ such that $-(nu_0+lambda_i)$ is strictly dominant. This implies that 
	$ J_(t_(-nu_0)dot s)^gr=j_(t_(-nu_0)dot s!)^gr $
	By definition of $S$, we have 
	$ Supp(j_(t_(-nu_0))!^gr *_I X)subset union.big.sq_(s in S)Fl_(t_(-nu_0)dot s) $
	Then, since graded perverse sheaves are generated (as a triangulated category) by $L_(w)chevron.l n chevron.r$ (for all $n$), and by induction on $ell(w)$ such sheaves are generated by $j_(w!)chevron.l n chevron.r[m]$ ($m>=0$), we obtain 
	$ j_(t_(-nu_0) !)^gr*_I X in Span{j^gr_(w!)[i]chevron.l j chevron.r | i>=0,j in ZZ} $
	hence by support reasons 
	$ j_(t_(-nu_0) !)^gr*_I X in Span{j^gr_(t_(-nu_0)dot s!)[i]chevron.l j chevron.r | i>=0,j in ZZ,s in S} $
	By the equality $J_(t_(-nu_0)dot s)^gr=j_(t_(-nu_0)dot s!)^gr$, we have
	$ J_(-nu_0)^gr*_I X in Span{J^gr_(t_(-nu_0)dot s)[i]chevron.l j chevron.r | i>=0,j in ZZ,s in S} $
	Hence, by the monoidality of $Phi_(0,gr)$, for any $nu in X_*(T)$ we have 
	$ J_nu^gr *_I X in Span{J^gr_(t_nu dot s)[i]chevron.l j chevron.r | i>=0,j in ZZ,s in S} $
	Thus, choose $nu$ such that $nu+lambda_i$ are dominant for all $i$, we obtain 
	$ J_nu^gr *_I X in Span{j^gr_(t_nu dot s *)[i]chevron.l j chevron.r | i>=0,j in ZZ,s in S} $
	Since the left hand side is already perverse, we may remove the shift $[i]$ on the right. Hence $J_nu^gr *_I X$ admits a filtration by $J_w^gr chevron.l j chevron.r$, and by convolving with $J^gr_(-nu)$ on both sides, we obtain the Wakimoto filtration for $X$. Taking $X=Z^gr (V)$ gives the first part of the claim. 

	Then, passing to $K$-groups, we have by @Prop_num_Waki_wt_fil (its graded version of course) that the only objects appearing in the filtration are the objects $J_lambda^gr$, with multiplicity $dim V^(T^or=lambda)$. 
]

#def()[
	We define $Perv^waki_(I,gr)(Fl)$ to be the category of graded sheaves with a filtration by sheaves $J_lambda^gr chevron.l n chevron.r$. 
]

#const(label-name: "Const_gr_fct_step_0")[
	We first construct 
	$ Phi_(0,gr):Rep (G^or times T^or times GG_m)->Perv^waki_(I,gr)(Fl) $  
	Similar to the previous $Phi_0$, we define 
	$ Phi_(0,gr)(V_lambda times.o (overline(QQ)_ell)_eta times.o (overline(QQ)_ell)_n) mapsto Z_lambda^gr *_I J_mu^gr chevron.l-n chevron.r $
	Here, we define $Z_lambda^gr:=gr(Z(L_lambda^(Gr,gr)))$, where $L_lambda^(Gr,gr):=j_(lambda!*)^Gr overline(QQ)_ell [ell(lambda)]chevron.l ell(lambda) chevron.r$. 

	Again, this functor is monoidal, since $Z^gr$ is central and monoidal by the fact proven in @Thm_central1 for $Z^m$ (the mixed version). Moreover, the functor 
	$ V_lambda |->L_lambda^(Gr,gr) $
	is symmetric monoidal by the finite field version of the geometric Satake equivalence (see Theorem 5.5.12@AffGrsSat; here our group $G_0$ is split, so $attach(G_0,tl:L)=G_0 times Gamma$, and we can omit the second factor to obtain the desired functor), so $V_lambda |-> L_lambda^(Gr,m)$ is symmetric monoidal. Hence, by the compatibility of convolution with the functor $gr$, we have the above claim. Then, since $Z_lambda^gr$ is central and convolution exact, it admits a Wakimoto filtration, so the functor is indeed well-defined. 
]

#const(label-name: "Const_gr_fct_step_1")[
	We then construct 
	$ Phi_(1,gr):Coh_fr^(G^or times T^or times GG_m)(overline(G^or\/U^or)times frak(g)^or)->Perv^waki_(I,gr)(Fl) $
	Before the construction of this functor, we first construct the graded highest weight line $b_lambda^gr:Z_lambda^gr->j_(t_lambda*)^gr=J_lambda^gr$. Here, the graded highest weight line exists because $pi_*:Fl_t_lambda->Gr_lambda$ is open dense, so the stalk $j_w^*(Z_lambda^gr)$ is equal to the stalk of $L_lambda^(Gr,gr)$ in the graded setting, by @Thm_central1(4), since the isomorphism $pi_*(Z(-))=pi_!(Z(-))=id$ preserves Frobenius weights. Thus we obtain a morphism $j_w^*(Z_lambda^gr)->overline(QQ)_ell [ell(lambda)]chevron.l ell(lambda)chevron.r$, and taking adjunction gives the graded highest weight line $b_lambda^gr:Z_lambda^gr->j_(t_lambda*)^gr$. 

	Analogous to the previous construction, we may construct a functor 
	$ Coh_fr^(G^or times T^or)(overline(G^or\/U^or))->Perv^waki_(I,gr)(Fl) $
	via sending the highest weight line $B_lambda:V_lambda times.o cal(O)->cal(O)(lambda)$ to the line $b_lambda^gr:Z_lambda^gr->j_(t_lambda *)^gr$. Note that $GG_m$ does not act on the part $overline(G^or\/U^or)$, so this part remains untouched. For the other part, we need a functor 
	$ Coh_fr^(G^or times GG_m)(frak(g)^or)->Perv^waki_(I,gr)(Fl) $
	since $T^or$ does not act on $frak(g)^or$. So this time, we need an $(G^or times GG_m)$-equivariant morphism $frak(g)^or->A$. Since $GG_m lact frak(g)^or$ by $t:x mapsto t^(-2)x$, we can regard $cal(O)(frak(g)^or)$ as the graded $G^or$-equivariant algebra $overline(QQ)_ell [(frak(g)^or)^*]$ with elements in $(frak(g)^or)^*$ of degree $2$. Then, an $(G^or times GG_m)$-equivariant morphism $cal(O)(frak(g)^or)->A$ is a graded $G^or$-equivariant morphism $cal(O)(frak(g)^or)->A$, which is equivalent to a $G^or$-equivariant map of $overline(QQ)_ell$-vector spaces 
	$ (frak(g)^or)^*->A_2 $
	where $A_2$ denotes the piece of grade 2 of $A$. Then, this by definition corresponds to an element $x in (frak(g)^or times.o A_2)^G^or$. Then, using the functor of points 
	$ 
	frak(g)^or times.o A=&ker(G(A[epsilon])->G(A)) \
	=&{#[functions $f:cal(O)(G)->A$ which is a derivation at $v_e$ (evaluation at $e$)]} \
	=&{#[tensor derivations of $- times.o A:Rep G^or->Mod_A$]}
	$
	where derivation at $v_e$ means $m^*f=f times.o v_e+v_e times.o f in cal(O)(G times G)$. the final equivalence is given by the composition 
	$ V times.o A->V times.o cal(O)(G) times.o A->V times.o A times.o A->V times.o A $
	the first arrow is given by the comodule structure, the second by the map $f:cal(O)(G)->A$, and the final one by multiplication in $A$. Thus, an element in $(frak(g)^or times.o A_2)^(G^or)$ corresponds to a $G^or$-equivariant tensor endomorphism of weight 2, since in the above composition the first map is of weight 0, the second of weight 2, and the final map of weight 0. 

	Hence, for a map 
	$ Coh_fr^(G^or times GG_m)(frak(g)^or)->Perv^waki_(I,gr)(Fl) $
	we need a weight 2 tensor derivation of the functor $Z^gr$, which is exactly the mixed version of the nilpotent endomorphism $M^m:Z^m (-)->Z^m (-)(-1)$ in @Thm_central2. Here, we must write it as $M^gr:Z^gr (-)->Z^gr (-)chevron.l -2 chevron.r$. 

	Putting the two constructions together, we have constructed 
	$ Phi_(1,gr):Coh_fr^(G^or times T^or times GG_m)(overline(G^or\/U^or)times frak(g)^or)->Perv^waki_(I,gr)(Fl) $
]

#const(label-name: "Const_gr_fct_step_2")[
	Now we construct 
	$ Phi_(2,gr):Coh_fr^(G^or times T^or times GG_m)(hat(cal(N))^or_aff)->Perv^waki_(I,gr)(Fl) $
	This again corresponds to the condition $b^gr compose M^gr_Z_lambda^gr=0$. This follows from $b compose M_Z_lambda=0$, since the functor $oblv_gr:D_(I,gr)(Fl)inj D_I (Fl)$ is faithful. 
]

#const(label-name: "Const_gr_fct_step_3")[
	We now construct 
	$ Phi_(3,gr):D Coh^(G^or times GG_m)(tilde(cal(N))^or)->D(Perv_(I,gr)(Fl)) $
	By a graded analogue of @Lem_Wakimoto_hom_partial_ord, there exists an associated graded functor 
	$ gr_(waki,gr):Perv_(I,gr)^waki (Fl)->Rep (T^or times GG_m) $
	Since we have identified the associated graded in @Prop_waki_fil_gr_unshift, we see that the composition 
	$ Rep (G^or)-->^(Z^gr)Perv_(I,gr)^waki (Fl)-->^(gr_(waki,gr))Rep(T^or times GG_m) $
	is isomorphic to the restriction to $T^or$ and tensoring with the trivial $GG_m$-representation. 

	Then, we follow the previous proof of @Prop_waki_fil_gr_coh and prove that the composition 
	$ Coh_fr^(G^or times T^or times GG_m)(hat(cal(N))^or_aff)-->^(Phi_(2,gr))Perv_(I,gr)^waki (Fl)-->^(gr_(waki,gr))Rep (T^or times GG_m) $
	is isomorphic to the pullback of coherent sheaves along the point $iota:(1,0)inj hat(cal(N))^or_aff$, this time regarding $(1,0)$ as a $T^or times GG_m$ fixed point (note $GG_m$ acts purely on the fibers by scaling, so fixes 0). Again, we have the precomposition 
	$ Rep(G^or times T^or times GG_m)->Rep(T^or times GG_m) $
	given by the diagonal inclusion $T^or inj G^or times T^or$ and the identity on $GG_m$, resulting in a map 
	$ T^or times GG_m inj G^or times T^or times GG_m $
	So the upgrade 
	$ Coh_fr^(G^or times T^or times GG_m)(hat(cal(N))^or_aff)->Rep (T^or times GG_m) $
	corresponds to an $(G^or times T^or times GG_m)$-equivariant morphism $cal(O)(hat(cal(N))^or_aff)->overline(QQ)_ell$. Again, it suffices to determine where $gr_(waki,gr)$ send the morphisms $M^gr_Z_lambda^gr:Z_lambda^gr->Z_lambda^gr$ and the highest weight line $b_lambda^gr:Z_lambda^gr->j_(t_lambda *)^gr$ to. This time, $gr_(waki,gr)M^gr_Z_lambda^gr=0$, since it is sent by $oblv_gr$ to $gr_waki M_Z_lambda=0$, and $oblv_gr$ is faithful. 
	
	Then, the image of $gr_(waki,gr)b_lambda^gr$ agrees with $gr_waki b_lambda$ since $GG_m$ does not act on $overline(G^or\/U^or)$. Hence, this composition again agrees with restriction at $iota:(1,0)inj hat(cal(N))_aff^or$. 

	Again, by smoothness of $hat(cal(N))_aff^or$, we have 
	$ K(Coh_fr^(G^or times T^or times GG_m)(hat(cal(N))_aff^or))=Perf^(G^or times T^or times GG_m)(hat(cal(N))_aff^or)=D Coh_fr^(G^or times T^or times GG_m)(hat(cal(N))_aff^or) $
	Thus taking homotopy categories, we have a functor 
	$ D Coh_fr^(G^or times T^or times GG_m)(hat(cal(N))_aff^or)->K(Perv_(I,gr)(Fl))->D(Perv_(I,gr)(Fl)) $
	Again, we have 
	$ D Coh^(G^or times T^or times GG_m)(hat(cal(N))^or_aff)\/D Coh^(G^or times T^or times GG_m)(hat(cal(N))_aff^or)_(partial hat(cal(N))^or)=D Coh^(G^or times T^or times GG_m)(hat(cal(N))^or) $
	and since the restriction $iota^*$ kills $D Coh^(G^or times T^or times GG_m)(hat(cal(N))_aff^or)_(partial hat(cal(N))^or)$ because $(1,0)in.not partial hat(cal(N))^or$. Thus we obtain a functor 
	$ Phi_(3,gr):D Coh^(G^or times GG_m)(tilde(cal(N))^or)tilde.eq D Coh^(G^or times T^or times GG_m)->D(Perv_(I,gr)(Fl)) $
]

#const(label-name: "Const_gr_fct_step_4")[
	We now give 
	$ Phi_(IW,gr):D Coh^(G^or times GG_m)(tilde(cal(N))^or)->D_(IW,gr)(Fl) $
	We first recall the construction of the functor $Av_Psi$. It is given by 
	$ cal(F)mapsto Delta_e*_I cal(F):Perv_I (Fl)->Perv_(IW)(Fl) $
	We upgrade this to a functor 
	$ Av_Psi^gr:Perv_(I,gr)(Fl)->Perv_(IW,gr)(Fl) $
	Firstly, recall $Delta_e^gr$ is pure of weight 0. Then, consider the convolution 
	$ Delta_0^gr *_I (-):D_(I,gr)(Fl)->D_(IW,gr)(Fl) $
	If for some mixed perverse sheaf $cal(F)$ is such that $Delta_0^gr *_I cal(F)$ is not perverse, by considering the diagram // https://q.uiver.app/#r=typst&q=WzAsNCxbMCwwLCJEXyhJLG1peGVkKShGbCkiXSxbMSwwLCJEXyhJVyxtaXhlZCkoRmwpIl0sWzAsMSwiRF9JIChGbCkiXSxbMSwxLCJEX0lXIChGbCkiXSxbMCwxXSxbMCwyXSxbMSwzXSxbMiwzXV0=
	#align(center, diagram({
		node((-2, 0), [$D_(I,gr)(Fl)$])
		node((-1, 0), [$D_(IW,gr)(Fl)$])
		node((-2, 1), [$D_I (Fl)$])
		node((-1, 1), [$D_IW (Fl)$])
		edge((-2, 0), (-1, 0), "->")
		edge((-2, 0), (-2, 1), "->")
		edge((-1, 0), (-1, 1), "->")
		edge((-2, 1), (-1, 1), "->")
	}))
	we obtain a perverse sheaf $cal(F) in D_I (Fl)$ such that $Av_Psi (cal(F))$ is not perverse, since $oblv_gr$ preserves the perverse $t$-structure by @Thm_gr_t_wt_compatible_preserve. This contradicts @Prop_comp_I_IW_1st_half. Hence, we obtain a functor 
	$ Av_Psi^gr=Delta_0^gr *_I (-):Perv_(I,gr)(Fl)->Perv_(IW,gr)(Fl) $
	whose image under $oblv_gr$ is $Av_Psi$. Hence, by composing, we obtain 
	$ Phi_(IW,gr):D Coh^(G^or times GG_m)(tilde(cal(N))^or)->D_(IW,gr)(Fl) $	
	In particular, the following diagram commutes 
	// https://q.uiver.app/#r=typst&q=WzAsNCxbMCwwLCJEIENvaF4oR15vciB0aW1lcyBHR19tKSh0aWxkZShjYWwoTikpXm9yKSJdLFswLDEsIkQgQ29oXihHXm9yKSh0aWxkZShjYWwoTikpXm9yKSJdLFsxLDAsIkRfKElXLGdyKShGbCkiXSxbMSwxLCJEX0lXIChGbCkiXSxbMCwyLCJQaGlfZ3IiXSxbMCwxLCJvYmx2XyhHR19tKSIsMl0sWzIsMywib2Jsdl9nciIsMl0sWzEsMywiUGhpX0lXIl1d
	#align(center, diagram({
		node((-2, 0), [$D Coh^(G^or times GG_m)(tilde(cal(N))^or)$])
		node((-2, 1), [$D Coh^(G^or)(tilde(cal(N))^or)$])
		node((-1, 0), [$D_(IW,gr)(Fl)$])
		node((-1, 1), [$D_IW (Fl)$])
		edge((-2, 0), (-1, 0), [$Phi_(IW,gr)$], label-side: left, "->")
		edge((-2, 0), (-2, 1), [$oblv_(GG_m)$], label-side: right, "->")
		edge((-1, 0), (-1, 1), [$oblv_gr$], label-side: left, "->")
		edge((-2, 1), (-1, 1), [$Phi_IW$], label-side: left, "->")
}))
]

== Proof of the graded equivalence

With the help of the commutative diagram in @Const_gr_fct_step_4, the final equivalence is relatively easy, mainly building on @Thm_gr_decomp_gr_shv and @Thm_3_Bez_Ark. 

#lem(label-name: "Lem_simple_oblv_gr_agree_shift")[
	For simple objects $cal(F),cal(G)in Perv_gr (X)$, if $oblv_gr (cal(F))=oblv_gr (cal(G))$, then we have $cal(F)=cal(G)chevron.l n chevron.r$ for some $n$. 
]
#proof[
	We apply @Thm_gr_decomp_gr_shv, and obtain 
	$ plus.o.big_(n in ZZ)Hom_gr (cal(F),cal(G)chevron.l n chevron.r)=Hom(oblv_gr (cal(F)),oblv_gr (cal(G))) $
	Since $cal(F)$ and $cal(G)$ are simple, so is $oblv_gr (cal(F))$ and $oblv_gr (cal(G))$. Hence, we have $RHS=overline(QQ)_ell$ a 1-dimensional vector space. Thus, exactly one direct summand on $LHS$ is non-trivial, and is of dimension 1. Assume $Hom_gr (cal(F),cal(G)chevron.l n chevron.r)=overline(QQ)_ell$. Then since $cal(G)$ is simple, so is $cal(G)chevron.l n chevron.r$. Thus we have constructed a non-trivial morphism between simple objects, hence gave an isomorphism $cal(F)tilde.eq cal(G)chevron.l n chevron.r$. 
]

#prop(label-name: "Prop_final_gr_equiv_1")[
	The sheaves $Av_Psi^gr (J_lambda^gr)chevron.l n chevron.r$ generates the category $D_(IW,gr) (Fl)$ as a triangulated category. 
]
#proof[
	Firstly, we recall that $Perv_IW (Fl)$ is generated by $IC_lambda$ as a triangulated category. Then, for any sheaf $cal(F)in Perv_(IW,gr) (Fl)$, we consider its filtration $F^bullet cal(F)$ with associated graded simple sheaves in $Perv_gr (Fl)$. Then, taking $oblv_gr (F^bullet cal(F))$, we obtain a filtration of $oblv_gr (cal(F))$ with associated graded simple objects in $Perv (Fl)$. Then, since we have $oblv_gr (cal(F))in Perv_IW (Fl)$, the associated graded simple objects must be of the form $IC_lambda$. 

	Now, notice $oblv_gr (IC_lambda^gr)=IC_lambda$, so the associated graded piece of $gr^bullet_F cal(F)$ satisfies 
	$ oblv_gr (gr^bullet_F cal(F))=IC_lambda $
	so by @Lem_simple_oblv_gr_agree_shift we have $gr^bullet_F cal(F)=IC_lambda^gr chevron.l n chevron.r$ for some $n$. Hence, the sheaves $IC_lambda^gr chevron.l n chevron.r$ generates $Perv_(IW,gr)(Fl)$ as a finite length Abelian category, and hence generates $D_(IW,gr)(Fl)$. Then, this implies that the standard objects $Delta_lambda^gr chevron.l n chevron.r$ and costandard objects $nabla_lambda^gr chevron.l n chevron.r$ generate the category by induction on lengths. 

	Then, we prove the asserted generation. We temporarily write $w_lambda$ for the element in $W^ext$ which is of minimal length in the coset $W_f dot t_lambda$. Firstly by definition we have 
	$ oblv_gr (Av_Psi^gr (J_lambda^gr)chevron.l n chevron.r)=Av_Psi (J_lambda) $
	Thus $oblv_gr (i_w^! Av_Psi^gr (J_lambda^gr))=i_w^! Av_Psi (J_lambda)$, so we have the support of $Av_Psi (J_lambda) subset overline(Fl^lambda)$ and its stalk at the open strata is of rank 1. We prove that these objects generate the standard objects. Again we apply induction on lengths. For $ell(w_lambda)=0$, we have $Av_Psi^gr (J_lambda^gr chevron.l n chevron.r)=Delta_e^gr chevron.l n chevron.r$. Then, suppose these sheaves generate $Delta_(w_mu)^gr chevron.l n chevron.r$ for all $n$ and $ell(w_mu)<k$. Then for some $lambda$ such that $w_lambda$ is of length $k$, we consider the triangle 
	$ K->Delta_(w_lambda)^gr chevron.l n_0 chevron.r->Av_Psi^gr (J_lambda^gr) $
	where the second arrow is obtained from applying the adjunction $i_(w_lambda !)adj i_(w_lambda)^!$ to the isomorphism of stalks 
	$Psi_w^*(AS) [ell(w_lambda)]chevron.l ell(w_lambda)+n_0 chevron.r->i_(w_lambda)^! Av_Psi^gr (J_lambda^gr)$ (we do not yet know the exact weight of the shifted local system $Av_Psi^gr (J_lambda^gr)$, so we need such a choice of $n_0$). Thus, we have $K$ supported in $overline(Fl^lambda)-Fl^lambda$, so generated by the standards $Delta_mu^gr chevron.l m chevron.r$ with $ell(w_mu)<k$. But, by our induction hypothesis, $Delta_mu^gr chevron.l m chevron.r$'s are generated by $J_mu^gr chevron.l m chevron.r$'s, so $K$ is generated by $J_mu^gr chevron.l m chevron.r$'s. Hence, we arrive at a generation of $Delta^gr_w_lambda chevron.l n_0 chevron.r$ by weight shifted Wakimoto sheaves, hence a generation of $Delta^gr_w_lambda chevron.l n chevron.r$ for arbitrary $n$. 

	Thus, we have the desired generation property. 
]

#lem(label-name: "Lem_gr_coh_hom_decomp")[
	Let $X$ be any Noetherian stack with a $GG_m$-action. We have for any sheaves $cal(F),cal(G)in D Coh^(GG_m)(X)$ the equality 
	$ plus.o.big_(n in ZZ)Hom_(D Coh^(GG_m)(X))(cal(F),cal(G)chevron.l n chevron.r)=Hom_(D Coh^()(X)) (cal(F),cal(G)) $
	Here $cal(G)chevron.l n chevron.r:=cal(G)times.o k_(-n)$, where $k_(-n)$ denotes the 1-dimensional $GG_m$ representation acting by $t:k->k$, $1 mapsto t^(-n)$. 
]
#proof[
	We denote $p:X->X\/GG_m$ by the projection. Then, by the adjunction $p^* adj p_*$, we have 
	$ Hom_(D Coh^()(X))(cal(F),cal(G)):=Hom_(D Coh^()(X))(p^*cal(F),p^*cal(G))=Hom_(IndCoh^(GG_m)(X))(cal(F),p_*p^*(cal(G))) $
	where the left equality is by our abuse of notation forgetting the $GG_m$-equivariance, and the right equality is by adjunction. Then, by the projection formula, we have 
	$ p_*p^*cal(G)=p_*(cal(O)_X times.o p^*cal(G))=p_*cal(O)_X times.o cal(G) $
	However, since $X->X\/GG_m$ is a $GG_m$-torsor, we have 
	$ p_*cal(O)_X=plus.o.big_(n in ZZ) cal(O)_(X\/GG_m)chevron.l n chevron.r $
	Finally, since $cal(F)$ is a coherent complex, it is a compact object, so we have 
	$ 
	Hom_(D Coh^()(X))(cal(F),cal(G))=&Hom_(IndCoh^(GG_m)(X))(cal(F),p_*p^*(cal(G))) \
	=&Hom_(IndCoh^(GG_m)(X))(cal(F),plus.o.big_(n in ZZ) cal(G)chevron.l n chevron.r) \
	=&Hom_(IndCoh^(GG_m)(X))(cal(F),colim_(N->oo)plus.o.big_(-N<=n<=N) cal(G)chevron.l n chevron.r) \
	=&colim_(N->oo)Hom_(D Coh^(GG_m)(X))(cal(F),plus.o.big_(-N<=n<=N) cal(G)chevron.l n chevron.r) \
	=&colim_(N->oo)plus.o.big_(-N<=n<=N)Hom_(D Coh^(GG_m)(X))(cal(F), cal(G)chevron.l n chevron.r) \
	=&plus.o.big_(n in ZZ)Hom_(D Coh^(GG_m)(X))(cal(F), cal(G)chevron.l n chevron.r)
	$
	Here we used that finite direct sums are finite products. 
]

#thm[
	There is a monoidal equivalence of categories 
	$ Phi_(IW,gr):D Coh^(G^or times GG_m)(tilde(cal(N))^or)tilde.eq D_(IW,gr)(Fl) $
]
#proof[
	We first prove that this functor is fully faithful. Let $cal(F),cal(G)in D Coh^(G^or times GG_m)(tilde(cal(N))^or)$, and we wish to prove 
	$ Hom_(D Coh^(G^or times GG_m)(tilde(cal(N))^or))(cal(F),cal(G))->Hom_(D_(IW,gr)(Fl))(Phi_(gr,IW)(cal(F)),Phi_(gr,IW)(cal(G))) $
	is an isomorphism. Then, by construction of $Phi_(0,gr)$, we have 
	$ Phi_(gr,IW)(cal(G))chevron.l n chevron.r=Phi_(gr,IW)(cal(G)chevron.l n chevron.r) $
	This gives the following morphism 
	$ plus.o.big_(n in ZZ) Hom_(D Coh^(G^or times GG_m)(tilde(cal(N))^or))(cal(F),cal(G)chevron.l n chevron.r)->plus.o.big_(n in ZZ) Hom_(D_(IW,gr)(Fl))(Phi_(gr,IW)(cal(F)),Phi_(gr,IW)(cal(G))chevron.l n chevron.r) $
	By @Const_gr_fct_step_4, we have a commutative diagram 
	// https://q.uiver.app/#r=typst&q=WzAsNCxbMCwwLCJwbHVzLm8uYmlnXyhuIGluIFpaKSBIb21fKEQgQ29oXihHXm9yIHRpbWVzIEdHX20pKHRpbGRlKGNhbChOKSleb3IpKShjYWwoRiksY2FsKEcpY2hldnJvbi5sIG4gY2hldnJvbi5yKSJdLFsxLDAsInBsdXMuby5iaWdfKG4gaW4gWlopIEhvbV8oRF8oSVcsZ3IpKEZsKSkoUGhpXyhncixJVykoY2FsKEYpKSxQaGlfKGdyLElXKShjYWwoRykpY2hldnJvbi5sIG4gY2hldnJvbi5yKSJdLFswLDEsIkhvbV8oRCBDb2heKEdeb3IpKHRpbGRlKGNhbChOKSleb3IpKShjYWwoRiksY2FsKEcpKSJdLFsxLDEsIkhvbV8oRF9JVyAoRmwpKFBoaV9JVyAoY2FsKEYpKSxQaGlfSVcgKGNhbChHKSkpIl0sWzAsMiwib2Jsdl8oR0dfbSkiLDJdLFsxLDMsIm9ibHZfKGdyKSJdLFsyLDMsIlBoaV9JVyJdLFswLDEsIlBoaV8oSVcsZ3IpIl1d
	#scale(95%)[
	#align(center, diagram({
		node((0, 0), [$ plus.o.big_(n in ZZ) Hom_(D Coh^(G^or times GG_m)(tilde(cal(N))^or))(cal(F),cal(G)chevron.l n chevron.r) $])
		node((1, 0), [$ plus.o.big_(n in ZZ) Hom_(D_(IW,gr)(Fl))(Phi_(gr,IW)(cal(F)),Phi_(gr,IW)(cal(G))chevron.l n chevron.r) $])
		node((0, 1), [$Hom_(D Coh^(G^or)(tilde(cal(N))^or))(cal(F),cal(G))$])
		node((1, 1), [$Hom_(D_IW (Fl))(Phi_IW (cal(F)),Phi_IW (cal(G)))$])
		edge((0, 0), (0, 1), [$oblv_(GG_m)$], label-side: right, "->")
		edge((1, 0), (1, 1), [$oblv_(gr)$], label-side: left, "->")
		edge((0, 1), (1, 1), [$Phi_IW$], label-side: left, "->")
		edge((0, 0), (1, 0), [$Phi_(IW,gr)$], label-side: left, "->")
	}))
	]
	The bottom arrow is an isomorphism by @Thm_3_Bez_Ark. The vertical arrows are isomorphisms by @Thm_gr_decomp_gr_shv and @Lem_gr_coh_hom_decomp. Thus the top row is an isomorphism, hence restricting to isomorphisms in each degree. To sum up, the functor $Phi_(IW,gr)$ is fully faithful. 

	We then prove essential surjectivity. By @Prop_final_gr_equiv_1, it suffices to show the image of $Phi_(IW,gr)$ contains $Av_Psi (J_lambda^gr)chevron.l n chevron.r$, which is evident, since 
	$ Phi_(0,gr)(V_0 times.o k_lambda times.o k_n)=Av_Psi^gr (J_lambda^gr)chevron.l -n chevron.r $
	Thus this functor is an equivalence of categories! 
]
