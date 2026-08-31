#import "import.typ": *

= The geometric Satake equivalence

== The affine Grassmannian

=== Basic constructions

#notn[
	Let $k$ be a field, and $F=k((t))$ the local function field. Then let $cal(O)=k[[t]]$ denote the ring of integers. We let $D_R=Spec R[[t]]$ and $D_R^*=Spec R((t))$ denote the (punctured) formal disc. 
]

#def[
	Let $G$ be a smooth affine $k$-group. We let $Gr_G$, the affine Grassmannian of $G$ be the functor of points given by $Gr_G(R)={(cal(E),beta)}$, where $cal(E)$ is a $G$-torsor on $D_R$ and $beta:cal(E)|_(D_R^*)->cal(E)^0|_(D_R^*)$ be a trivialization of $cal(E)$ on the punctured disc (here $cal(E)^0$ is the trivial bundle). We shall call the data $beta$ a modification of the bundle $cal(E)$, sometimes denoted by $beta:cal(E)arrow.r.dashed cal(E)^0$

	Note that this definition makes sense for general group schemes $underline(G)$ over $cal(O)$ or $D_k$ (whereas in the above case $underline(G)=G_cal(O)$), which we also denote by $Gr_underline(G)$. 
]

#exam[
	As a first example, take $G=GL_n$. Then $Gr_G(R)$ admits another functor of points description, given by the set of lattices $Lambda inj R((t))^n$, where $Lambda$ is a projective $R[[t]]$-module such that $Lambda times.o_(R[[t]])R((t))=R((t))^n$. To see that this is equivalent to the above definition, notice that a $GL_n$-principal bundle is equivalent to an $n$-dimensional vector bundle, and the projective module is the data for $cal(E)$, and the second isomorphism is the trivialization away from 0. 
]

#prop[
	$Gr_underline(G)$ is represented by an ind-scheme ind-of-finite-type over $k$. Moreover, if $underline(G)$ is reductive, then $Gr_underline(G)$ is ind-projective. 
]
#proof[
	We only prove the case where $G$ is constant, since the general fact relies on the fact that for any group $underline(G)$ over $k[[t]]$, there is a faithful representation $underline(G)inj GL_n$ for some $n$ such that $GL_n/underline(G)$ is quasi-affine, and when $underline(G)$ is reductive, it is affine. In the constant case, we can obviously embed $G$ into $GL_n$ over $k$ with the above properties and base change to $k[[t]]$. In this case, we have a locally closed embedding $Gr_G inj Gr_(GL_n)$ which is closed in the reductive case. It thus remains to show that $Gr_(GL_n)$ is ind-projective. 

	To show this, we note that for every lattice $Lambda inj R((t))^n$, there is some $N$ such that $t^(-N)R[[t]]^n inj Lambda inj t^N R[[t]]^n$. By definition, the functor of points for lattices $Lambda$ between $t^(-N)R[[t]]^n$ and $t^N R[[t]]^n$ is $Gr(2n N)$, the usual grassmannian. By the Plucker embedding, $Gr(2n N)$ is projective, and by definition $Gr_(GL_n)=colim_N Gr(2n N)$. Moreover, note that the transition maps are closed embeddings, so we have $Gr_(GL_n)$ ind-projective. 
]

We then give another characterization of the affine Grassmannian. 

#def[
	Let $X$ denote a presheaf over $cal(O)$. We define the $n$-th jet space of $X$ $L^n X$ to be the presheaf over $k$ such that $L^n X(R)=X(R[t]/t^n)$. Moreover, we define the positive loop space of $X$ $L^+X$ to be the presheaf over $k$ such that $L^+ X(R)=X(R[[t]])$. 

	Then let $X$ denote a presheaf over $K$. We define the loop space $L X$ to be the presheaf over $k$ such that $L X(R)=X(R((t)))$. 

	For $X$ a presheaf over $k$, we write $L^n X$, $L^+ X$, $L X$ short for $L^n (X times.o_k cal(O))$, $L^+ (X times.o_k cal(O))$, and $L (X times.o_k K)$. 
]

#exam[
	In particular, for $underline(G)$ a group scheme over $cal(O)$, we may define the loop group $L G$ and the positive loop group $L^+G$, which would be of fundamental importance in the theory. 
]

#thm[
	$Gr_(underline(G))=L G\/L^+G$, where the right hand side is identified with the fpqc quotient stack. 
]
#proof[
	We first construct a natural action $L underline(G) lact Gr_underline(G)$, given on $R$-points by $g dot.c(cal(E),beta)=(cal(E),g beta)$. Notice that we have a natural identification of $L underline(G)(R)$ with the set of data $(cal(E),beta,epsilon)$, where $(cal(E),beta) in Gr_underline(G)(R)$, and $epsilon:cal(E)->cal(E)^0$ is a global trivialization. We have this isomorphism by mapping $g in L underline(G)(R)$ to $g mapsto (cal(E)^0,g,id)$ and the inverse $(cal(E),beta,epsilon) mapsto beta dot.c epsilon$. Thus the projection $L underline(G) surj Gr_underline(G)$ to the first two factors clearly identifies $L underline(G)$ as a $L^+underline(G)$-torsor over $Gr_underline(G)$. 
]

We now introduce the global version of the affine Grassmannian. 

#def[
	Let $X$ be a reduced connected curve over $k$ (not necessarily smooth), and let $x in |X|$ be a closed point. Let $underline(G)$ be a smooth affine group scheme over $X$, and we define $Gr_(underline(G),x)$ to be the presheaf over $k$ sending $R$ to pairs $(cal(E),beta)$, where $cal(E)$ is a $underline(G)$-torsor on $X_R$, and $beta:cal(E)|_(X_R^*)->cal(E)^0|_(X_R^*)$ be a trivialization of $cal(E)$ away from $x$ (here $X_R^*$ is the the base change of $X^*=X-x$ to $R$). 
]

#def[
	Let $x in |X|$ be a closed point in a reduced connected curve over $k$. We let $cal(O)_x$ denote the completed local ring at $x$ (since we will not use the usual stalk in this section), and let $D_(x,R)$ denote $Spec cal(O)_x hat(times.o) R$. 
]

#def[
	Let $underline(G)_x=underline(G)times_X x$. Moreover, let $res:Gr_(underline(G),x)-> Gr_(G_x)$ induced by restricting a $underline(G)$-torsor on $X_R$ to $D_(x,R)$. 
]

#prop[
	The above restriction map is an isomorphism. 
] <Prop_aff_grassmannian_glob_defn>

To prove @Prop_aff_grassmannian_glob_defn, we need the Beauville-Laszlo's descent theorem. 

#thm(name: "Beauville-Laszlo")[
	Let $p:A->tilde(A)$ be a map of commutative rings. We fix a non-zero-divisor $f in A$ and assume that $p(f)$ is also not a zero divisor. Moreover, we assume that the natural map $A\/f->tilde(A)\/p(f)$ is an isomorphism. Let $Mod_A^f$ denote the $f$-torsion-free $A$-modules, and $Desc(A,tilde(A),f)$ denote the category of the descent datum $(M_1,M_2,phi)$ where $M_1 in Mod_A[f^(-1)]$, $M_2 in Mod_(tilde(A))^(p(f))$, and $phi:M_1 times.o_(A[f^(-1)])tilde(A)[p(f)^(-1)]->M_2 times.o_(tilde(A))tilde(A)[p(f)^(-1)]$ is an isomorphism. 

	Now, by flatness of localization, we have $phi:M[f^(-1)] times.o_(A[f^(-1)])tilde(A)[p(f)^(-1)]tilde.eq (M times.o_A tilde(A))[p(f)^(-1)]$, so $M mapsto (M[f^(-1)],M times.o_A tilde(A), phi)$ gives a functor $Mod_A^f->Desc(A,tilde(A),f)$. This functor is then an equivalence, and finiteness, flatness, and finite projectivity are preserved under descent. 
] <Thm_Beauville-Laszlo_thm>

#proof[
	We now prove @Prop_aff_grassmannian_glob_defn. We directly construct an inverse to $res$, namely, given an $underline(G)_x$-torsor on $D_(x,R)$ with a trivialization $beta$ on $D_(x,R)^*$, we glue it with the trivial $underline(G)$-torsor on $X_R^*$ by $beta$ via @Thm_Beauville-Laszlo_thm (we should find a vector bundle on $X$ such that it is the associated bundle of our principal bundles, but I'm temporarily not quite sure on how to do this). 
]

#coro[
	The loop group $L underline(G)_x$ represents the $k$-presheaf sending $R$ to triples $(cal(E), alpha, beta)$, $cal(E)$ is a $underline(G)$-torsor on $X$, $alpha$ a trivialization of $cal(E)|_(D_(x,R))$, and $beta$ a trivialization of $cal(E)|_(X_R^*)$. 
]

#rem[
	There is an alternate construction of loopgroups and affine Grassmannians over the mixed characteristic world, sometimes called the Witt Grassmannian. Namely, this time, $L^+G(R)=G(W(R))$, $L G(R)=G(W(R)[p^(-1)])$, $Gr_G=L G\/L^+G$. They are sheaves over the perfect algebras over $FF_p$. 
]

=== The affine Weyl group

#notn[
	From now on, we assume $G$ is a reductive group over $k$. We fix a Borel subgroup $B subset G$, and its maximal torus $T$. Denote the weight (character) lattice and coweight (cocharacter) lattice by $X^bullet (T)=Hom(T,GG_m)$ and $X_bullet (T)=Hom(GG_m,T)$ respectively. We let $Phi subset X^bullet (T)$ denote the set of roots, and $Phi^or subset X_bullet (T)$ denote the coroots. We denote the positive roots by $Phi^+$, and the dominant coweights by $X_bullet (T)^+$. 

	For $mu in X_bullet (T)$ a coweight, we denote $t^mu$ by the image of $t in GG_m (K)$ by $mu$ in $T(K)$. 
]

#thm[
	We have an natural isomorphism $G(cal(O))\\G(F)\/G(cal(O))tilde.eq X_bullet (T)\/W=X_bullet (T)^+$. 
] <Thm_Bruhat_decomp>
#proof[
	Recall that we have the Cartan decomposition by linear algebra 
	$ G(F)=product.co_(mu in X_bullet(T)) G(cal(O))t^mu G(cal(O)) $
	which gives the desired decomposition. 
]

#const[
	Let $cal(E)_1$ and $cal(E)_2$ be two trivial $G$-torsors over $D$ with trivializations $phi_i:cal(E)_i->cal(E)^0$, and let $beta:cal(E)_1|_(D^*)->cal(E)_2|_(D^*)$ be an isomorphism over $D^*$. Then, the composition $phi_2 beta phi_1^(-1)in Aut(cal(E)^0|_(D^*))=G(F)$, so obviously its image in $G(cal(O))\\G(F)\/G(cal(O))=X_bullet (T)^+$ does not depend on the trivializations $phi_i$, denoted by $Inv(beta)$, the relative position of the modification $beta$. 
]

Now, given the Bruhat decomposition, as in the classical case, we may define the Schubert varieties. The Schubert varieties defined via the dominant coweights by the spherical Schubert varieties. But before we start, we need a lemma on group actions and orbits. 

#lem(name: "orbit lemma")[
	Let $G$ be a smooth group scheme and $X$ an algebraic variety. Let $G lact X$, then for any $x in X$, the orbit $G dot.c x subset X$ is locally closed in $X$. 
]

We omit the proof, but the key of the proof is using that the image of maps of varieties is constructible, and finally using a dense open set to deduce locally closedness. 

#def[
	Recall $L^+G lact L G$ hence on the quotient $L G\/L^+G$ (note that we take quotient on the right here, so the action is not trivial). We let $Gr_mu$ denote the $L^+G$-orbit (naturally equipped with the reduced structure) of the image of the point $t^mu in L G->>Gr$. Then, we let 
	$ Gr_(<=mu)=product.co_(lambda<=mu)Gr_lambda $
	We call $Gr_(<=mu)$ the spherical Schubert varieties and $Gr_mu$ the spherical Schubert cell. 
]

Alternatively, one may directly describe the locally closed subset $Gr_mu$ via the modification. 

#prop[
	$Gr_mu$ can also be identified as the subset of $Gr$
	$ Gr_mu={(cal(E),beta)in Gr|Inv(beta)=mu} $
]
#proof[
	Firstly, note that $t^mu=(cal(E),beta) in Gr$ has obviously $Inv(beta)=mu$ by the definition of relative position and the projection $L G->Gr$. Then, note that for $(cal(E)',beta')=g(cal(E),beta)$ for some $g in L^+G$, we have $Inv(beta')=Inv(beta)$ since the action of $g$ on $(cal(E),beta)$ is given by left multiplication on $beta$, and in the definition of relative position, we have a quotient of $G(cal(O))$ on the left. Thus, in a single $L^+G$-orbit, the relative position of $beta$ is always the same. Finally, by @Thm_Bruhat_decomp, we have 
	$ Gr=product.co (L^+G\\L G\/L^+G)\/L^+G=product.co Gr_mu $
	so each $Gr_mu$ is exactly the orbit such that the invariant is equal to $mu$. 
]

#rem[
	There is a slight subtlety in the above proof by confusing the set $G(F)$ ($G(cal(O))$) with the ind-scheme $L G$ ($L^+G$). However, since everything is reduced, and we are working over an algebraically closed field, no serious problem arises since any closed reduced subscheme over a algebraically closed fields are determined by its closed points. 
]

#prop[
	$Gr_mu$ is a quasi-projective variety of dimension $chevron.l 2rho,mu chevron.r$. Moreover, we have $Gr_(<=mu) $ the Zariski closure of $Gr_mu$, so is a (not necessarily smooth) projective variety. 
] <Prop_Schubert_cell_closure_var>
#proof[
	By definition, the stabilizer for $L^+G lact Gr$ of $t^mu$ is $L^+G\/(L^+G inter t^mu L^+G t^(-mu))$, which is firstly finite dimensional by calculating the dimension of its tangent space, which is given by 
	$ frak(g)(cal(O))\/(frak(g)(cal(O))inter Ad_(t^mu)frak(g)(cal(O)))=plus.big_(chevron.l alpha,mu chevron.r>=0)frak(g)_alpha (cal(O))\/t^(chevron.l alpha,mu chevron.r)frak(g)_alpha $ 
	so $dim Gr_mu=chevron.l 2rho,mu chevron.r$. Then, since it is finite dimensional locally closed subscheme of an ind-projective variety $Gr$, it is quasi-projective. 

	The second assertion is more difficult. We show that the Zariski closure of $Gr_mu$ contains $Gr_lambda$ for any $lambda<=mu$, and assume the spherical Schubert variety $Gr_(<=mu)$ is closed in $Gr$, so identifying $Gr_(<=mu)$ as the closure of $Gr_mu$. Then, recall that for $lambda<mu$, there is a sequence $mu_i$ such that $lambda=mu_0<mu_1<dots<mu_n=mu$, where $mu_i$ and $mu_(i-1)$ differ by a positive simple root. Thus, it suffices to show that $t^(mu-alpha)$ lies in the closure of $Gr_mu$. To show this, we construct a curve $C$ connecting the two points $t^(mu-alpha)$
]

#lem[
	$Theta$ is an effective Cartier divisor corresponding to the $cal(O)(1)$-bundle. 
] <Lem_O1_min_wt>

== The proof of the Satake equivalence

=== The Satake category

=== The geometric Satake transform 

Now that we have proven that the functor of taking hypercohomology $H^*:Sat_G->Vect_(overline(QQ)_ell)$ is a neutral Tannakian category, we may identify $Sat_G$ with the representation category $Rep_(tilde(G))$, where the Tannakian group $tilde(G)$ is the algebraic group of automorphisms $Aut^times.o H^*$. We now (and the proof of theorem suffices to) identify $tilde(G)$ with the dual group of $G$ over $overline(QQ)_ell$. 

#def[
	Recall a reductive group is completely determined by its root datum $(X_bullet (T),Phi^or,X^bullet (T),Phi)$. For a reductive group $G$ over a algebraically closed field with its root datum given by  $(X_bullet (T),Phi^or,X^bullet (T),Phi)$, its dual group $hat(G)$ to be the reductive group with root datum $(X^bullet (T),Phi,X_bullet (T),Phi^or)$. 
	
	Notice that the base field of $hat(G)$ can be arbitrary. 
]

#exam[
	$GL_n$ has dual $GL_n$, and $SL_n$ has dual $PGL_n$. 
]

#lem[
	$tilde(G)$ is a connected reductive group over $overline(QQ)_ell$. 
]
#proof[
	Firstly, we claim that the sheaves $IC_mu$ for $mu$ the fundamental coweights (the weights dual to the simple roots) form a set of tensor generators for $Sat_G$. Notice that the convolution Grassmannian $Gr_(<=mu)tilde(times)Gr_(<=nu)->Gr_(<=mu+nu)$ is birational. Now, given a proper birational map $f:X->Y$, we prove $IC_Y$ is a direct summand of $f_*IC_X$. Now, take an open set $U$ contained in the smooth locus of $Y$ such that $f$ is an isomorphism on $U$. By definition, $f_*IC_X|_U=IC_Y|_U=k_U$. By the perverse continuation principle applied to the sheaves $f_*IC_X|_U$ and $IC_Y|_U$, we have a map $IC_Y->f_*IC_X$ non-zero on $U$, so is non-zero. Thus since $IC_Y$ is simple, it must be a subobject of $f_*IC_X$. Thus applied to our previous settings, $IC_(mu+nu)$ is a subobject hence a direct summand of the convolution sheaf $IC_mu*IC_nu$ by the decomposition theorem. 

	This provides that $tilde(G)$ is connected and algebraic (i.e. the algebra $cal(O)_tilde(G)(tilde(G))$ is of finite type) because $times.o.big_mu IC_mu$ for $mu$ running over fundamental coweights is a tensor generator for $Sat_G$. Then, since $Sat_G$ is semisimple, we have furthermore that $tilde(G)$ is reductive. 
]

#thm[
	Letting $(X^bullet (T),Phi^or,X_bullet (T),Phi)$ denote the root datum of $G$, we have the Tannakian group $tilde(G)$ has root datum $(X_bullet (T),Phi,X^bullet (T),Phi^or)$, so $tilde(G)$ can be identified with the dual group of $G$. 
] <Thm_Tan_grp_dual>

The proof of @Thm_Tan_grp_dual is by first proving the easy case where $G$ is a torus, then reducing general cases to tori. 

Now, in general, the affine Grassmannians can be very non-reduced, but since we are talking about $ell$-adic sheaves over the spaces, we may temporarily get rid ourselves of the nuisances by taking $(Gr_G)_(red)$. Thus, from now on, $Gr_G$ will naturally mean the reduced versions without further notices. 

#lem[
	@Thm_Tan_grp_dual holds if $G=T$ is a torus. 
]
#proof[
	We first discuss the structure of $Gr_T$. By definition, let $T=GG_m^n$, then $L T(R)=T(R((t)))=(R((t))^times)^n$, and $L^+T(R)=(R[[t]]^times)^n$. Then, by definition, we have $R((t))^times\/R[[t]]^times$ identified by $ZZ$, identified to the lowest exponent of $t$ in each component. Thus this tuple of integers is given equivalently by a cocharacter $lambda in X_bullet (T)tilde.eq ZZ^n$. Therefore, $Gr_T$ is a discrete set with points identified with $X_bullet (T)$. Thus, $Sat_T$ is the category of $X_bullet (T)$-graded finite dimensional vector spaces, and $H^*$ is the functor forgetting the grading. 
	
	Now, since $X_bullet (T)$-graded vector spaces is tensor generated by $1_mu$ where $mu$ are fundamental coweights, so an $R$-point of the Tannakian groups is given by maps $1_mu->R^times$, hence by the tensor-automorphism condition, are given by $Hom_Ab (X_bullet (T),R^times)$. And by definition, this is the functor of points of the dual torus. 
]

Now it suffices to reduce the case to $G=T$. To do this, we construct the categorical Satake transform 
$ CT:Sat_G->Sat_T $
which is a symmetric monoidal functor from the Satake category of $G$ to the one of its maximal torus $T$, which firstly fits in the following commutative diagram 
// https://q.uiver.app/#r=typst&q=WzAsMyxbMCwwLCJTYXRfRyJdLFsyLDAsIlNhdF9UIl0sWzEsMSwiVmVjdF8ob3ZlcmxpbmUoUVEpX2VsbCkiXSxbMCwxLCJDVCJdLFswLDIsIkheKiIsMl0sWzEsMiwiSF4qIl1d
#align(center, diagram({
	node((-1, 0), [$Sat_G$])
	node((1, 0), [$Sat_T$])
	node((0, 1), [$Vect_(overline(QQ)_ell)$])
	edge((-1, 0), (1, 0), [$CT$], label-side: left, "->")
	edge((-1, 0), (0, 1), [$H^*$], label-side: right, "->")
	edge((1, 0), (0, 1), [$H^*$], label-side: left, "->")
}))

#const[
	The main idea of constructing $CT$ is via parabolic induction. We fix a borel subgroup $i:B subset G$ and let $q:B->T$ denote the projection to the abstract Cartan subgroup. The maps induces maps on the affine Grassmannians 
	$ Gr_T overset(<-,q) Gr_B overset(->, i) Gr_G $
	Then, we have $Gr_T tilde.eq X_bullet (T)$, and for $lambda in X_bullet (T)$, we denote $S_lambda=i(q^(-1)(lambda))subset Gr_G$, which, by definition, can also be identified with $L U dot t^lambda$, where $U subset B$ is the unipotent subgroup. Moreover, we define 
	$ S_(<= lambda)=union.big_(lambda'<=lambda)S_(lambda') $

	To construct and investigate the properties of the parabolic inductions, we start with some topological (and finally, cohomological) properties of $S_lambda$. 
]

#prop[
	$S_(<=lambda)$ is closed with $S_lambda subset S_(<=lambda)$ an open dense subset. 
]
#proof[
	We first show that $S_(<=lambda)$ is closed. We consider its moduli description. Let $chi$ be a dominant integral weight, and $V_chi$ denote the highest weight representation of $G$, and $ell_chi$ denote its highest weight space. Then we have 
	$ S_(<=lambda)={(cal(E),beta)in Gr|beta^(-1)(ell_chi)subset t^(-(chi,lambda))(V_(chi,cal(E)))} $
	where $V_(chi,cal(E))$ is the associated bundle of $cal(E)$, namely, $cal(E)times^G V_chi$, which is a vector bundle over $D_k$. Then, these conditions can be translated to a polynomial equation by passing to matrices, so is a closed subscheme of $Gr_G$. 

	Then, for the density of $S_lambda subset S_(<=lambda)$, it actually follows from the construction of the curve in @Prop_Schubert_cell_closure_var. 
]

#lem[
	The set $S_(<lambda)$ is the intersection of $overline(S)_lambda$ with a hyperplane section of the bundle $cal(O)(1)$. 
]
#proof[
	Let $2rho^or$ denote the sum of positive roots of $G$. Then we choose some embedding $T subset B$, and consider the map 
	$ GG_m overset(->,2rho^or) T subset G subset L^+G $
	Then the $L^+G$ action on $Gr_G$ restricts to a $GG_m$-action on $Gr_G$ via the above inclusion. Notice that the fixed points of this action is given by $Gr_T$ by the Cartan decomposition, and we can identify the attractor of this action with $Gr_B$. 
]

#thm[
	We have an isomorphism of functors 
	$ H^*(-)eq plus.big_lambda H_c^*(S_lambda,-):Sat_G->Vect_(overline(QQ)_ell) $
]
#proof[

]