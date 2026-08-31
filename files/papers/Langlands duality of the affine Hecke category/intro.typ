#import "let_bindings.typ": *
#import "void-template/1.0.0/void-import.typ": *

= Introduction

== Historical remarks 

The whole story begins with the local Langlands correspondence. 

#conj("Local Langlands correspondence")[
	We fix a local field $K$ and a split reductive group $G$ over $K$. Then there exists a canonical finite-to-one map 
	$ mat("Irreducible smooth admissible"; #[representations of $G(K)$ over $CC$] ; delim: "{")-->mat("Frobenius semisimple Weil–"; #[Deligne representations $W_K->G^or (CC)$] ; delim: "{") $
]

This correspondence is very difficult, and is fully established only in the case of $GL_n$. However, one may restrict to unipotent monodromy, and the correspondence takes the following form 

#conj("Local Langlands correspondence with unipotent monodromy")[
	There exists a canonical finite-to-one map 
	$ mat("Representations of" G_k; "with a non-zero" I"-fixed vector"; delim: "{")-->mat("Representations of" W_K; "factoring through" W_K->>ZZ->G^or (CC); delim: "{") $
]

Then note that the tamely ramified representations with unipotent monodromy coincide with modules over the Hecke algebra $cal(H)(G(K),I)$. This is equivalently our affine Hecke algebra $cal(H)$ base changed to $CC$, $cal(H)times.o_(ZZ[v,v^(-1)])CC$. Deligne–Langlands conjectured the following. 

#conj("Deligne–Langlands")[
	Irreducible $cal(H)(G(K),I)$-representations are parametrized by $G^or$-conjugacy classes of triples $(s,N,rho)$, where $s in G^or$ is a semisimple element, $N in cal(N)^or$ is a nilpotent element in the dual Lie algebra such that $Ad(s)N=q N$, and $rho$ is a representation of $pi_0(Z_(G^or)(s,N))$. 
]

This is basically a translation of the local Langlands correspondence with unipotent monodromy. 

Then, Kazhdan–Lusztig proved the following geometric interpretation of the affine Hecke algebra. 

#thm([Kazhdan–Lusztig@DeligneLanglands])[
	We have the following equivalence of algebras 
	$ cal(H)=K^(G^or times GG_m)(St^or) $
	where $St^or$ is the dual Steinberg variety $St^or=tilde(cal(N))^or times_(cal(N)^or)tilde(cal(N))^or$ and $cal(H)$ is the affine Hecke algebra. 
]

Using this interpretation, they were able to establish the Deligne–Langlands conjecture. The construction is as follows: let $(s,N,rho)$ be a triple, and consider $K(cal(B)_N^s)$, where $cal(B)_N^s$ denotes the $s$-fixed locus in the Springer fiber over $N$. This is a module over $K^(G^or times GG_m)(St^or)$. Then $pi_0(Z_(G^or)(s,N))$ acts on this module, yielding a decomposition into isotypic components. Taking an irreducible quotient yields the desired $cal(H)$-module. This is how the tamely ramified, unipotent-monodromy case of the local Langlands correspondence for split reductive groups is solved. 

Then, Chriss–Ginzburg@CplxRepn refined Kazhdan–Lusztig's proof. A central feature of the refinement is that they used the following equivalence
$ cal(M)^(upright("asph"))=K^(G^or times GG_m)(tilde(cal(N))^or) $
and the fact that these are faithful modules over the corresponding algebras to establish the equivalence of algebras. 

At almost the same time, people discovered the $K$-theoretic interpretation of the Hecke algebra; see @Prop_Hecke_alg_eq_K_tensor, essentially first established by Kazhdan–Lusztig@SchPoinc. Thus, the above equivalence of algebras becomes an equivalence of $K$-groups, which suggests a categorification. This was done by Bezrukavnikov@AffHckAlgCat, although without the $GG_m$-action, in the following form. 
#thm("Bezrukavnikov")[
	There is a monoidal equivalence of categories 
	$ Phi_(I,I):D(I\\L G\/I)->D Coh^(G^or)(tilde(cal(N))^or times_(frak(g)^or)^L tilde(cal(N))^or) $
	where $tilde(cal(N))^or times_(frak(g)^or)^L tilde(cal(N))^or$ is a derived fiber product, and this $D Coh^(G^or)$ means its category of coherent sheaves (naturally in the derived sense). 
]

What's more, he proved the monodromic version of the above equivalence, namely 

#thm("Bezrukavnikov")[
	There is a monoidal equivalence of categories 
	$ Phi_(I_0,I_0):D_mon (I_0\\L G\/I_0)->D Coh^(G^or)(tilde(cal(N))^or times_(frak(g)^or)^L tilde(cal(N))^or) $
	where $D^mon$ denotes the category of unipotently monodromic sheaves. 
]

This can be regarded as the unipotently ramified version of the geometric Langlands program. Moreover, this result inspired Dhillon–Taylor for their work on the Betti setting. 

#thm([Dhillon–Taylor@TameLangBetti])[
	We have an equivalence of monoidal $oo$-categories 
	$ IndCoh_(G^or) (tilde(G)^or times_(G^or) tilde(G)^or)tilde.eq upright("Shv")_(upright("nilp"))(I_0\\L G\/I_0) $
]

== Main results

We let $k$ be the algebraic closure of a finite field of characteristic $p>0$, and assume that $G$ is a split reductive group over $k$. 

We aim to categorify the central step in proving the above conjecture, namely, 
$ cal(M)^(upright("asph"))=K^(G^or times GG_m)(tilde(cal(N))^or) $

so we follow Arkhipov–Bezrukavnikov@AB and Achar–Riche@CentralShvAR, and recall the proof of the following equivalence: 

#thm([Main theorem@AB], label-name: "Thm_main_Bez_Ark")[
	There is a monoidal equivalence of categories
	$ Phi:D Coh^(G^or)(tilde(cal(N))^or)tilde.eq D(attach(cal(P)_I, tl:f)) $
] 

although the version @Thm_3_Bez_Ark is considered the more fundamental one. 

The main technical difficulties of the paper@AB are the construction of certain sheaves that serve as generators for the right-hand-side category and a version of Tannakian formalism used to construct the functor and prove the equivalence. 

In the second part, we repeat the main result in the graded setting. Namely, we prove the following conjectural statement. 

#conj(label-name: "Thm_main_graded_vers")[
	There is a monoidal equivalence of categories 
	$ Phi_(IW,gr):D Coh^(G^or times GG_m)(tilde(cal(N))^or)tilde.eq D_(IW,gr)(Fl) $
	where $D_gr (Fl)$ is the category of graded sheaves introduced by Ho–Li@GrShv. 
]

In this paper, we will prove this conjecture, hence give a complete categorification of the equivalence $cal(M)^(upright("asph"))=K^(G^or times GG_m)(tilde(cal(N))^or)$. 

== Conventions

Involving derived categories: 
+	All derived categories (or homotopy categories) will mean bounded derived (homotopy) categories. 
+	We will not consider the stable $oo$-structures of most derived categories, with the exception that when we will define the category of graded sheaves. Instead, we will work with the underlying triangulated categories. 

Involving $ell$-adic sheaves: 
+	For $X$ a stack of finite type over $k$ or $FF_q$, We denote $D(X)$ by its bounded derived category of constructible $ell$-adic sheaves. 
+	As usual, we follow Zhu@AffGrsSat for the following convention. For ind-schemes such as the affine flag variety, we define its derived category of constructible $ell$-adic sheaves via taking the colimit, namely, for $X=colim X_i$ a presentation of an ind-scheme by its closed subschemes, we define 
	$ D(X)=colim D(X_i) $
+	If moreover in the previous setting, there is a pro-algebraic group $K$ acting on the ind-scheme $X$ with nice conditions, we can fix a presentation of $X=colim X_i$ such that $X_i$ is $K$-stable, and there is a finite type quotient $K->>K_i$ such that $K$ acts on $X_i$ through $K_i$. Then, we may define 
	$ D_K (X)=colim D_(K_i)(X_i) $
+	For any stack $X$ over $k$ with a model $X_0$ over $FF_q$, we abuse notation and write 
	$ D_mixed (X)subset D(X_0) $
	to be the category of sheaves of integral Frobenius weights. This category is equipped with a Frobenius weight structure, given by the natural Weil structure on complexes of sheaves over $X_0$. Likewise, for a morphism $f:X->Y$ coming from $f_0:X_0->Y_0$, we define $f^* adj f_*$ and $f_! adj f^!$ using the corresponding operations on $f_0$. This causes a slight ambiguity, but it will not affect the final result, since all constructions involving the mixed category are independent of the chosen model, in particular the definition of graded sheaves. In particular, we assume our reductive group $G$ has a split model over $FF_q$ for some $q$. 

Miscellaneous: 
+	$Sh(X)$ will denote any sheaf theory equipped with a nice enough six functor formalism, in particular in this paper, it will only mean the usual derived category of $ell$-adic sheaves, the graded $ell$-adic sheaves, or the mixed $ell$-adic sheaves. 
+	We will use cohomological $t$-indexing and homological weight indexing. 
+	Let $A$ be an $H$-equivariant ring. We define $Mod_(A,fr)^H$ to be the modules of the form $V times.o A^n$, where $V in Rep H$. Globally, let $X$ be an $H$-equivariant scheme. We define $Coh_fr^H (X)$ to be the coherent sheaves of the form $V times.o cal(O)_X$. 
