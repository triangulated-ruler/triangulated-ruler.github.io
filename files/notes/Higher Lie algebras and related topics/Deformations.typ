#import "import.typ": *
= Lie Algebras and Deformations

In this chapter, we introduce the relation between Lie algebras and deformation problems. We work only with characteristic 0 fields $k$ in this section. 

== Maurer-Cartan equations

In this section, we follow @LieDef and introduce the formalism of associating an $LL_oo$-algebra to a deformation functor. 

We first introduce the language of deformation functors. 

#def[
	Let $Art_k$ denote the category of local Artinian $k$-algebras with residue field $k$. By definition, this category is closed under fiber products. 
]

#def[
	Consider $beta:B->A$ and $C->A$ morphisms in $Art_k$. Then for any functor $F:Art_k->Set$ we have an induced map $eta:F(B times_A C)->F(B)times_(F(A))F(C)$. 

	We say $F$ is a deformation functor if for $beta$ surjective we have $eta$ surjective, and for $A=k$ we have $eta$ an isomorphism. 

	For a natural transformation $F->G:Art_k->Set$ is called smooth if for any $B->A$ surjective, we have $F(B)->G(B)times_(G(A))F(A)$  surjective. We say $F$ is surjective if $F->0$ is surjective. 
]

#exam[
	Let $A$ be any Noetherian local $k$-algebra with residue field $k$. Then the Yoneda functor 
	$ h_A:Art->Set, B mapsto Hom_k (A,B) $ 
	is a deformation functor. 
]

#def[
	We define the tangent space of the deformation functor $F$ to be the set $F(k[epsilon]\/epsilon^2)$. 
]

#def[
	A small extension in $Art_k$ is a short exact sequence
	$ 0->M->B->A->0 $
	where $A,B in Art_k$, $M$ a finite dimensional $k$-vector space, and $im M subset B$ is annihilated by the maximal ideal $frak(m)_B$. 
]

#def[
	An obstruction theory for a functor $F:Art_k->Set$ with values in $V$ a $k$-vector space is the data for every small extension
	$ e:0->M->B->A->0 $
	an obstruction map $v_e:F(A)->V times.o M$, and natural under maps of small extensions. 
]

#rem[
	This map is called an obstruction theory because it obstructs an element in $F(A)$ from lifting to $F(B)$. Namely, we have $x in F(A)$ lifts to $F(B)$ implies $v_e (x)=0$. We say a obstruction theory to be complete if $v_e (x)=0$ implies the lift exists. 
]

We now give the way to construct from a DGLA a deformation functor. 

#let MC = math.op("MC")

#def[
	We define the Maurer-Cartan equation on $L$ to be 
	$ d x+[x,x]=0, x in L^1 $
	We define its set of solutions to be $MC(L)$. 
]

#let Defo = math.op("Def")

#const[
	Recall for nilpotent Lie algebras $N$, one may define its exponential Lie group $exp N$, given by the same underlying space as $N$ (recall that at least over $RR$, we have the exponential map for nilpotent Lie algebras a diffeomorphism to the Lie group), but equipped with the BCHD product. 

	We let $L$ be a DGLA, and construct the following functors: 
	+	We define $exp_L:Art_k->Grp$ by $exp_L (A)=exp(L^0 times.o frak(m)_A)$. Here, $L^0 times.o frak(m)_A$ has the Lie algebra structure given by $[l_1 times.o x_1,l_2 times.o x_2]=[l_1,l_2]times.o x_1 x_2$. This is nilpotent since $frak(m)_A$ is nilpotent for an Artinian ring. 
	+	We define $MC_L:Art_k->Set$ be given by $MC_L (A)=MC(L times.o frak(m)_A)$
	+	Notice that there is an action of $L^0$ on $L$ given by $[l,-]$. Hence, we have an action of the group $exp(L^0 times.o frak(m)_A)$ on the DGLA $L times.o frak(m)_A$, which is also functorial in $A$. Thus, the definition 
		$ Defo_L (A)=MC_L (A)\/exp_L (A) $
		is a well defined functor $Art_k->Set$. 
	The functors $MC_L$ and $Defo_L$ are both deformation functors. 
]

#const[
	We may construct for $MC_L$ and $Defo_L$ complete obstruction theories with values taken in $H^2(L)$. 

	Consider a small extension 
	$ e:0->M->B->A->0 $
	and let $x in MC_L (A)$. We define an obstruction $v_e (x) in H^2(L)times.o M=H^2(L times.o M)$ as follows. Firstly, take a lift $tilde(x) in L times.o frak(m)_B$ of $x$, and let 
	$ tilde(h)=d tilde(x)+1/2 [tilde(x),tilde(x)] in L^2 times.o frak(m)_B $
	But $tilde(h)$ actually lies in $L^2 times.o M$ since its image in $L^2 times.o frak(m)_A$ is 0. Moreover, we have 
	$ d tilde(h)=d^2 tilde(x)+[d tilde(x),tilde(x)]=[h,tilde(x)]-1/2[[tilde(x),tilde(x)],tilde(x)] $
	Then, the first term vanishes since $M dot.c frak(m)_B=0$, and the second term vanishes by the Jacobi identity. Thus $tilde(h)$ gives an element in $H^2(L times.o M)$. Moreover, it is easy to verify that the cohomology class $tilde(h)$ does not depend on the lift chosen. 

	Finally, this obstruction theory pushes forward to one on $Defo_L$. Moreover, the theory is complete for both deformation functors (which we will not prove here). 
]

As we will see in the following few examples, common deformation functors are controlled by Lie algebras. 

#exam[
	Take $k=CC$. Let $X$ be a complex manifold, and take $cal(U)={U_i}$ a Stein covering of $X$. Let $Theta_X$ denote its holomorphic tangent sheaf. Then, we obtain a semi-cosimplicial diagram of Lie algebras // https://q.uiver.app/#r=typst&q=WzAsMyxbMCwwLCJwcm9kdWN0X2kgVGhldGFfWCAoVV9pKSJdLFsxLDAsInByb2R1Y3RfKGksaikgVGhldGFfWCAoVV8oaSxqKSkiXSxbMiwwLCJkb3RzLmMiXSxbMCwxLCIiLDAseyJvZmZzZXQiOi0yfV0sWzAsMSwiIiwyLHsib2Zmc2V0IjoyfV0sWzEsMiwiZG90cy5jIl1d
	$ Theta_X (cal(U))=
	#align(center, diagram({
		node((-1, 0), [$product_i Theta_X (U_i)$])
		node((0, 0), [$product_(i,j) Theta_X (U_(i,j))$])
		node((1, 0), [$dots.c$])
		edge((-1, 0), (0, 0), shift: 0.1, "->")
		edge((-1, 0), (0, 0), shift: -0.1, "->")
		edge((0, 0), (1, 0), [$dots.c$], label-side: left, "->")
	})) 
	$
	here $U_(i,j)=U_i inter U_j$, and so on. Then, consider $Tot(Theta_X (cal(U)))$ be the totalization of the semi-cosimplicial diagram in the category of DGLAs. Then, we have $Defo_(Tot(Theta_X (cal(U))))$ a deformation functor. This functor admits the following geometric meaning: it sends an Artinian ring $A$ to the set of deformations of $X$ to $Spec A$, namely, a complex manifold $Y$ over $Spec A$ with the fiber over $frak(m)_A in Spec A$ given by $X$. 
]

#exam[
	We can do a bit more in the above example. Let $X$ be a complex manifold and $Z subset X$ be a closed submanifold. Then, we let $Theta_X (-log Z)$ be the kernel of the morphism of sheaves $Theta_X->cal(N)_(Z|X)$, where $cal(N)_(Z|X)$ is the normal sheaf given by $Hom_(cal(O)_X)(cal(I)_Z,cal(O)_X)$, and $cal(I)_Z$ is the ideal sheaf defining $Z$. We have again a semisimplicial diagram of Lie algebras 
	$ Theta_X (-log Z,cal(U))=#align(center, diagram({
		node((-1, 0), [$product_i Theta_X (-log Z,U_i)$])
		node((0, 0), [$product_(i,j) Theta_X (-log Z,U_(i,j))$])
		node((1, 0), [$dots.c$])
		edge((-1, 0), (0, 0), shift: 0.1, "->")
		edge((-1, 0), (0, 0), shift: -0.1, "->")
		edge((0, 0), (1, 0), [$dots.c$], label-side: left, "->")
	}))  $
	Then, we have $Defo_(Tot(Theta_X (-log Z,cal(U))))$ classifying the deformation of pairs $(X,Z)$ over an Artin ring $A$. 
]

In most circumstances, we only need the DGLAs to characterize deformations. However, we still need the concept of $LL_oo$-algebras in the theory of deformations to make the categorical properties better. For example, one may induce a natural $LL_oo$-structure on the mapping cones of DGLAs, but the DGLA structure needs more caution. 

#def[
	Let $L$ be an $LL_oo$-algebra. We define its Maurer-Cartan equation to be 
	$ sum_(n>0)1/n! ell_n (x,x,dots.c,x)=0,x in L^1 $
	The subset of Maurer-Cartan elements $MC(L)$ is a solution of the Maurer-Cartan equation, and we define $MC_L:Art_k->Set$ again by $A mapsto MC(L times.o A)$. 

	Again, the tangent space of this deformation functor is $Z^1(L)$, and $H^2(L)$ gives a complete obstruction theory for $MC_L$. 
]

#const[
	We now construct $Defo_L$ for an $LL_oo$-algebra $L$. Before we really start, we first discuss the notion of homotopy in $LL_oo$-algebras. 

	Recall that classically, for $f,g:X->Y$ maps of spaces, a homotopy between $f$ and $g$ is a map $h:X times [0,1]->Y$ such that $h(0)=f$ and $h(1)=g$. Here, in $LL_oo$-algebras, we have no obvious instance of the interval $[0,1]$. However, in this case, we have $k[t,d t]$, regarded as the sheaf of functions over $T AA^1$ as an $LL_oo$-algebra, serves as the avatar of the interval. To believe this, notice that we have two maps $L[t,d t]->L$ given by evaluating $t$ at respectively 0 and 1. 
	
	This time, we define for $x, y in MC_L (A)$ to be homotopy equivalent if there is an Maurer-Cartan element $xi in MC_(L[t,d t])(A)$ such that $xi(0)=x$ and $xi(1)=y$. We define $Defo_L:Art_k->Set$ to be the quotient of $MC_L$ under homotopy equivalences. 
]

At first glance, the definition of $MC_L$ for DGLAs and $LL_oo$-algebras coincide, but $Defo_L$ seems to differ much. But, we have the following theorem relating the two definitions. 

#lem[
	Let $L$ be a DGLA. Then for two elements $x_0,x_1 in MC_L (A)$, we have the two notions of equivalences coincide, that is, $x_1=exp(h)x_0$ iff $x_0$ and $x_1$ are homotopy equivalent. 
]
#proof[
	We prove this lemma informally. Suppose we have $x_0 = exp(h)x_1$ for some $h in L^0 times.o A$. Then, consider the element $x(t)=exp(t h)x_0 in MC_(L[t,d t])(A)$. This element clearly provides the homotopy between $x_0$ and $x_1$. Conversely, if there is some $xi in MC_(L[t,d t])(A)$ with $xi(0)=x_0$ and $xi(1)=x_1$, then there is some $h$ such that $xi(t)$ is indeed $exp(t h)x_0$, hence $h$ satisfies $exp(h)x_0=x_1$
]

Actually, the deformation functors arising from $LL_oo$-algebras comes from DGLAs, as shown in the following theorem. 

#thm(name: [@UnifyDef, Corollary 4.45, Theorem 4.55])[
	Every deformation functor arising from $LL_oo$-algebras regarded as an object in $D G_ZZ#[]upright("Sp")$ (this is some deformation category) comes from a DGLA. 
]

== Formal moduli problems 

We then presents the use of DGLAs in the deformation theory in spectral geometry (a version of derived algebraic geometry), following Part IV of Lurie's book @SAG. 

We first define the general formalism for deformations. 

#def[
	We define a deformation context to be a pair $(cal(A),{E_alpha}_(alpha in T))$, where $cal(A)$ is a presentable $oo$-category and $E_alpha$ is a collection of objects in the category $Sp(cal(A)):=Sp times.o cal(A)$ (this is equivalently the category of spectrum objects in $cal(A)$). 
]

#let art = math.upright("art")

#def[
	We say a morphism $phi:A'->A$ in $cal(A)$ is elementary if there is some $alpha in T$ such that
	// https://q.uiver.app/#r=typst&q=WzAsNCxbMCwwLCJBIl0sWzAsMSwiQSciXSxbMSwxLCJPbWVnYV5vbyAoRV9hbHBoYSkiXSxbMSwwLCIqIl0sWzAsMSwicGhpIiwyXSxbMSwyXSxbMywyXSxbMCwzXV0=
	#align(center, diagram({
		node((0, 0), [$A$])
		node((0, 1), [$A'$])
		node((1, 1), [$Omega^oo (E_alpha)$])
		node((1, 0), [$*$])
		edge((0, 0), (0, 1), [$phi$], label-side: right, "->")
		edge((0, 1), (1, 1), "->")
		edge((1, 0), (1, 1), "->")
		edge((0, 0), (1, 0), "->")
	}))
	is a pullback diagram for some map $A'->Omega^oo (E_alpha)$ ($*$ is the final object of $cal(A)$). 

	We say a map $A'->A$ is small if it is a composition of finitely many elementary morphisms. We say $A$ is Artinian if $A->*$ is small. We let $cal(A)^art$ denote the subcategory of Artinian objects. 
]

#let Moduli = DefCatStr("Moduli")

#def[
	Let $(cal(A),{E_alpha})$ be a deformation context. We define a formal moduli problem to be a functor $X:cal(A)^art->Ani$ such that $X(*)$ is contractible, and satisfies the property of commuting with pullbacks $X(A times_B B')=X(A)times_(X(B))X(B')$ when $B'->B$ small. 

	We let $Moduli^cal(A)$ denote the full subcategory of $Fun(cal(A),Ani)$ spanned by the moduli problems. 
]

#const[
	There is a natural source formal moduli problems. Consider for any $A in cal(A)$ the functor $B mapsto Hom_cal(A)(A,B)$. This provides a functor $Spf:cal(A)^op->Moduli^cal(A)$, called the formal spectrum functor. 
]

Then, we consider the analogue of the tangent space of deformation functors. 

#def[
	Let $(cal(A),{E_alpha})$ be a deformation context, and $X:cal(A)^art->Ani$ be a formal moduli problem. For each $alpha$, we define the tangent space of $X$ at $alpha$ to be $Y(Omega^oo E_alpha) in Ani$. Moreover, this object lifts to $X(E_alpha) in Sp$, called the tangent complex of $X$ at $alpha$.
]

Tangent complices are useful since moduli problems are essentially determined by them. Namely, we have the theorem 

#thm[
	Let $u:X->Y in Moduli^cal(A)$ be a morphism of formal moduli problems. Then $u$ is an equivalence iff it induces an equivalence of tangent complices at each $alpha$. 
]
#proof[
	The idea is that the Artinian objects are "generated" by the $Omega^i E_alpha$'s. 
]

Now, we wish to identify the category $Moduli^cal(A)$ among one with a functor from $cal(A)^op$. This is done by the following definition. 

#def[
	We define a weak deformation theory for a deformation context $(cal(A),{E_alpha})$ to be a functor $frak(D):cal(A)^op->cal(B)$ such that 
	+	$cal(B)$ is presentable. 
	+	$frak(D)$ has a right adjoint $frak(D)':cal(B)->cal(A)^op$. 
	+	There is a full subcategory $cal(B)_0 subset cal(B)$ such that for every $K in cal(B)_0$, the unit $K->frak(D)frak(D)' K$ is an equivalence. 
	Here, $cal(B)_0$ is moreover required to be contain certain objects and closed under the following constructions 
	+	The initial object of $cal(B)$ $emptyset$ is in $cal(B)_0$. 
	+	For every $alpha in T$ and every $n>=1$, there is an object $K_(alpha,n)in cal(B)_0$ such that $frak(D)'(K_(alpha,n))tilde.eq Omega^(oo-n)E_alpha$. 
	+	Consider the map $v_(alpha,n):K_(alpha,n)->emptyset$ given by applying $frak(D)$ to the basepoint $*->Omega^(oo-n)E_alpha$. Then, for a pushout square 
		// https://q.uiver.app/#r=typst&q=WzAsNCxbMCwwLCJLXyhhbHBoYSxuKSJdLFswLDEsImVtcHR5c2V0Il0sWzEsMCwiSyJdLFsxLDEsIksnIl0sWzAsMSwidl8oYWxwaGEsbikiLDJdLFswLDJdLFsyLDNdLFsxLDNdXQ==
		#align(center, diagram({
			node((0, 0), [$K_(alpha,n)$])
			node((0, 1), [$emptyset$])
			node((1, 0), [$K$])
			node((1, 1), [$K'$])
			edge((0, 0), (0, 1), [$v_(alpha,n)$], label-side: right, "->")
			edge((0, 0), (1, 0), "->")
			edge((1, 0), (1, 1), "->")
			edge((0, 1), (1, 1), "->")
		}))
		if $K in cal(B)_0$, so is $K'$. 
]

In particular, the category of formal moduli problem equipped with the formal spectrum functor gives a weak deformation theory. In fact, the formal moduli problem is the couniversal weak deformation theory, given by the following

#const[
	Let $frak(D):cal(A)^op->cal(B)$ denote a weak deformation theory. Then for each $B in cal(B)$, consider the composition 
	$ cal(A)^art inj cal(A) ->^(frak(D)^op)cal(B)^op->^(j_B)Ani $
	where $j_B:cal(B)^op->Ani$ is the Yoneda embedding of $B$. This gives a functor $Psi:cal(B)->Moduli^cal(A)$ such that $Psi compose frak(D)=Spf$. 
]

Thus, we may impose additional conditions on the functor $frak(D):cal(A)^op->cal(B)$, which would guarantee that the induced functor $Psi:cal(B)->Moduli^cal(A)$ is an equivalence of categories. This gives the definition of deformation theories. 

#def[
	We first let $e_alpha:cal(B)->Sp$ be given by sending an object $B in cal(B)$ to the pushforward of $E_alpha$ along $cal(A)->cal(B)^op->Ani$. 

	A weak deformation theory $frak(D):cal(A)^op->cal(B)$ is a deformation theory if the following additional condition is met: for each $alpha$, $e_alpha$ preserves filtered colimits and conservative. 
]

#thm(name: [@SAG, Theorem 12.3.3.5])[
	For any deformation theory $frak(D):cal(A)^op->cal(B)$, the functor $Psi:cal(B)->Moduli^cal(A)$ is an equivalence of categories. 
]

Now we apply the above formalism to our setting. 

#let aug = math.upright("aug")

#const[
	Let $kappa$ be an $EE_oo$-ring, and let $cal(A)=CAlg_kappa^aug$ be the category of augmented $EE_oo$-algebras over $kappa$. Then, we have $Sp(cal(A))tilde.eq Mod_kappa$, and let $E$ denote the object corresponding to $kappa$. $(cal(A),E)$ will be our deformation context. Note that this $E$ can be regarded as the spectrum object of $cal(A)$ with its $n$-th place the square-zero extension $kappa plus.o Sigma^n kappa$. 

	The Artinian objects in $cal(A)$ would then be objects $A$ such that $pi_n A=0$ for $n<0$ and $n>>0$, for each $n$, $pi_n A$ is finite dimensional, and $pi_0 A$ local. This is the derived analogue of an Artin local ring. 

	For $kappa=k$ a field, the moduli problems are the functors $X:cal(A)->Ani$ such that $X(k)=*$, and preserves pullbacks where $R_0->R_(01)<-R_1$ are surjective on $pi_0$. We denote the category of formal moduli problems shortly by $Moduli_kappa$ in this case. 
]

The main goal is the following: 

#thm(name: [@SAG, Theorem 13.0.0.2])[
	Let $kappa$ be a field of characteristic 0. Then there is a $oo$-category of DGLAs over $kappa$ $Lie_kappa$, where we have a Koszul duality functor $frak(D):(CAlg_kappa^aug)^op->Lie_kappa$ which is a deformation theory. Hence, we have an equivalence of categories $Psi:Lie_kappa->Moduli_kappa$. 
]

To do this, we first define a $oo$-category structure on $Lie_kappa$. To do this, we need the language of model categories. We will not introduce model categories in this essay, and the readers may find references on their own. 

#let dg = math.upright("dg")

#const[
	We let $Lie_kappa^dg$ denote the model category with underlying category given by the DGLAs over $kappa$. We equip it with the model structure given by:
	+	The weak equivalences morphisms of DGLAs that is an quasi-isomorphism on the level of chain complexes. 
	+	The fibrations morphisms of DGLAs that are surjective termwise. 
	+	The cofibrations morphisms having the left lifting property with respect to the trivial fibrations. 
	It is difficult to verify that this is indeed a model structure, so we omit the proof. 

	Then, we let $Lie_kappa$ denote the underlying $oo$-category of $Lie_kappa^dg$, which is the universal $oo$-category with a functor from $Lie_kappa^dg$, such that $Fun(Lie_kappa,cal(C))$ is the full subcategory of $Fun(Lie_kappa^dg,cal(C))$ (viewed as functor from a 1-category to an $oo$-category) spanned by functors carrying weak equivalences to equivalences. This makes $Lie_kappa$ a presentable $oo$-category. 

	This model structure is comptible to the one on the chain complex of $kappa$-vector spaces, so the forgetful functor of model categories $Lie_kappa^dg->Mod_kappa^dg$ induces a forgetful functor of $oo$-categories $Lie_kappa->Mod_kappa$. This functor actually preserves sifted colimits.  
]

We now construct the Koszul duality functor, which is almost the same as the Grassmann algebra functor introduced at the end of the previous chapter. However, in the $oo$-categorical settings, we must do a little bit more for the sake of dealing with homotopies of maps in model categories. 

#let Cn = math.op("Cn")

#const[
	Let $frak(g)_*$ be a DGLA over $kappa$. We define the cone of $frak(g)$, $Cn_*(frak(g))$, to be the following DGLA. Firstly, we let $Cn_n (frak(g)_*)$ be given by $frak(g)_n plus.o frak(g)_(n-1)$. We denote the elements by $x+epsilon y$, where $x in frak(g)_n$, $y in frak(g)_(n-1)$. Then, the differential is given by $d(x+epsilon y)=d x+ y-epsilon d y$. Finally, the Lie bracket is given by 
	$ [x+epsilon y,x'+epsilon y']=[x,x']+epsilon([y,x']+(-1)^(deg x)[x,y']) $
	This is the mapping cone of the identity functor $frak(g)_*->frak(g)_*$, so is a contractible DGLA. 

	The intuition for this construction is writing a resolution of $kappa$ as a left $U(frak(g))$-module, as we will see in the next construction. 
]

#const[
	Notice that there is a universal enveloping algebra functor from the 1-category of DGLAs over $kappa$ to the 1-category of differential graded algebras over $kappa$, denoted by $U(frak(g))$. 

	Then, take $C_*(frak(g))$ to be the complex given by the tensor product $U(Cn_*(frak(g)))times.o_(U(frak(g)))kappa$. This is called the homological Chevalley-Eilenburg complex of $frak(g)$. This construction preserves quasi-isomorphisms of DGLAs, so induces a functor on the underlying $oo$-categories $C_*:Lie_kappa->Mod_kappa$. Moreover, since the initial DGLA 0 is send to $kappa$, $C_*$ can be further enhanced to a functor $(Mod_(kappa))_(kappa\/)$. 
]

#rem[
	In the above construction se see that $U(Cn_*(frak(g)))$ is a flat resolution of $kappa$, so computing the correct derived tensor product of chain complexes. 
]

#lem[
	$C_*:Lie_kappa->(Mod_kappa)_(kappa\/)$ preserves colimits. 
]
#proof[
	Omitted. 
]

#const[
	We let $C^*(frak(g))$ denote the linear dual of $C_*(frak(g))$. This is called the cohomological Chevalley-Eilenberg complex. We may identify $lambda in C^m(frak(g))$ with the dual space of the degree $n$ part of $Sym^*_kappa (frak(g)[1])$. As a consequence of the previous construction, we have $C^*$ upgrades to a functor of $oo$-categories
	$ C^*:Lie_kappa->(CAlg_kappa^op)_(kappa\/)tilde.eq(CAlg_kappa^aug)^op $
	which preserves colimits. 

	Hence, by the adjoint functor theorem, $C^*$ has a right adjoint $frak(D):(CAlg_kappa^aug)^op->Lie_kappa$, which we must prove to be a deformation theory for the deformation context $(CAlg_kappa^aug, E)$. 
]

#prop[
	Let $frak(g)_*$ be a DGLA over $kappa$. Then if for every $n$ we have $frak(g)_n$ finite dimensional and $frak(g)_n$ is trivial for $n<=0$, then the unit map $u:frak(g)_*->frak(D)C^*(frak(g))$ is an equivalence in $Lie_kappa$. 
]
#proof[
	This is essentially the Koszul duality we are dealing with in the previous chapter, so we omit the complete proof of this proposition. 
]

#coro[
	$frak(D):(CAlg_kappa^aug)^op->Lie_kappa$ is a weak deformation theory. 
]
#proof[
	The first two properties is already done, so we consider the third. Consider the subcategory $cal(C)subset Lie_kappa$ spanned by the objects $frak(g)_*$ that satisfy the following conditions. 
	+	$frak(g)_*$ is cofibrant. 
	+	There is a finitely generated subspace $V_n subset frak(g)_n$, trivial on non-negative degrees, such that $V_*$ generates $frak(g)_*$ as a graded Lie algebra. 
	The only thing left to verify is the existence of objects $K_n$ (in our setting the $T$ indexing ${E_alpha}_(alpha in T)$ is the set with one element), and the closed-under-pushout property. To show $kappa plus.o Sigma^n kappa in CAlg_kappa^aug$ is equivalent to some $C^*(frak(g))$, notice that we may take $frak(g)$ to be the DGLA freely generated by $kappa[-n-1]$. The closed-under-pushout property involves model categorical facts, so we omit the proof. 
]

#thm[
	The functor $frak(D):(CAlg_kappa^aug)^op->Lie_kappa$ is a deformation theory. 
]
#proof[
	By the previous corollary, notice that the functor $e:Lie_kappa->Sp$ is given by $Sigma O$, where $O$ is the forgetful functor $Lie_kappa inj Mod_kappa inj Sp$, and $Sigma$ is the suspension. This is because $frak(D)(E)$ is the spectrum object ${F(kappa[-n-1])}$ ($F$ denotes the free functor $Mod_kappa->Lie_kappa$). So the conservativity and commutativity with colimits follows. 
]

Now we have proven the main theorem. What's more, the above arguments actually applies to $EE_n$-algebras! 

#const[
	Let $kappa$ be a field (not necessarily of characteristic 0). We let $Alg_kappa^((n))$ denote the $EE_n$-algebras in $Mod_kappa$, and $Alg_kappa^((n),aug)$ denote the augmented $EE_n$-algebras. Again, we may define a deformation context $(Alg_kappa^((n),aug),E)$, where $E$ is likewise defined as in the previous case. We denote the category of formal moduli problems $Moduli_kappa^((n))$. 
]

#thm(name: [@SAG, Theorem 15.0.0.9])[
	The Koszul duality functor 
	$ frak(D):(Alg_kappa^((n),aug))^op->Alg_kappa^((n),aug) $
	is a deformation theory, so $Psi:Alg_kappa^((n),aug)->Moduli_kappa^((n))$ is an equivalence of categories. 
]

This more or less sketches the importance of Koszul duality in deformation theory. 