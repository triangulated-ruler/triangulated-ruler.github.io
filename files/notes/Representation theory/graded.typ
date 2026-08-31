#import "import.typ": * 

= Mixed hodge modules

== Pure and mixed hodge structures 

=== Preliminaries on filtered objects

#def[
	We fix a category $cal(C)$. We define the category of filtered to be the category of functors $F:ZZ->cal(C)$ such that each morphism is injective. A filtration on an object $c in cal(C)$ is a functor $ZZ->#[Sub]_c$, the category of subobjects of $c$. 
	
	We define a morphism of filtered vector spaces to be $f:c->d$, such that $f(F_i c)subset F_i d$. We say the morphism is strictly compatible with the filtration if we have an exact sequence 
	$ 0-->gr ker f-->gr V-->gr W-->gr coker f-->0 $
	Equivalently, we must have $f(F_n c)=f(c)inter F_n d$. 

	We define a decreasing filtered object to be $ZZ^op->cal(C)$. We denote decreasing filtrations by $F^bullet c$, while increasing filtrations by $F_bullet c$. The translation between increasing filtered objects and decresing filtered objects is given by the convention $F^n c=F_(-n)c$. 
] <Def_fil_mor>

#const[
	Let $F_bullet c in Alg(Fil(cal(C)))$, then we define the Rees construction of $c$ to be the graded ring 
	$ tilde(c)=plus.o.big_(p in ZZ)F_p c lambda^p $
	which is a graded $bb(1)_cal(C)[lambda^(plus.minus 1)]$-algebra. 
]

#warn[
	For an Abelian category $cal(A)$, the category of filtered objects $Fil(cal(A))$ is generally not Abelian. This can be seen in the example in $Fil(Vect)_CC$: take $F^bullet V$ with $F^i V=CC$ for $i<0$ and $0$ for $i>=0$, and $F^bullet W$ with $F^i W=CC$ for $i<=0$ and $0$ for $i>0$. Then, $f:F^bullet V->F^bullet W$ corresponding to $id$ on the underlying space has trivial kernel and cokernel, but is not an isomorphism. 
	
	However, the above example is the only part where Abelianess fails. If we take the wide subcategory $Fil(cal(A))^str$ with morphisms strictly compatible with filtrations, we get an Abelian category. In fact by @Stacks 05SI, we have a morphism is strict iff its coimage coincide with the image, and other axioms for Abelian categories holds already for filtered objects by @Stacks 0122. 
]

=== Basic definitions 

#def[
	We define a pure hodge structure of weight $w$ to be a finite dimensional $CC$-vector space $cal(H)$ equipped with two decreasing filtrations $F'^bullet cal(H)$ and $F''^bullet cal(H)$, such that 
	$ F'^p cal(H)plus.o F''^(w-p+1)cal(H)=cal(H) $
	Equivalently, $cal(H)$ admit a bigraded direct sum decomposition 
	$ cal(H)=plus.o.big_(p in ZZ)cal(H)^(p,w-p) $
	The two definitions can be translated to the other version as follows: 
	$ cal(H)^(p,w-p)=F'^p cal(H)inter F''^(w-p)cal(H), #h(3em)F'^p cal(H)=plus.o.big_(q<=p)cal(H)^(p,w-p),F''^(w-p)cal(H)=plus.o.big_(q>=p)cal(H)^(p,w-p) $

	We define a morphism of Hodge structures to be a linear map between the underlying vector spaces compatible with both filtrations. We denote the category of Hodge structures pure of some weight to be $HS(CC)$, and the category of Hodge structures pure of weight $w$ to be $HS(CC,w)$. 
] <Def_pure_hdg_str>

#const[
	$HS(CC)$ admits a closed monoidal structure. For $cal(H)_1$ of weight $w_1$ and $cal(H)_2$ of weight $w_2$, we may define $cal(H)_1 times.o cal(H)_2$ to be the pure Hodge structure of weight $w_1+w_2$, with 
	$ (cal(H)_1 times.o cal(H)_2)^(k,w_1+w_2-k)=plus.o.big_(p)(cal(H)_1^(p,w_1-p)times.o cal(H)_2^(k-p,w_2-k+p)) $
	Then, for $cal(H)$ pure of weight $w$, we may define the dual $cal(H)^or$ pure of weight $-w$ by 
	$ (cal(H)^or)^(-k,-w+k)=(cal(H)^(k,w-k))^or $
	Thus, we have $Hom(cal(H)_1,cal(H)_2)=cal(H)_1^or times.o cal(H)_2$, which is pure of weight $w_2-w_1$. 

	Then, we define the complex conjugate of $cal(H)$ to be a Hodge structure of the same weight, with $overline(cal(H))^(k,w-k)=overline(cal(H)^(k,w-k))$. For the Hermitian dual, we define $cal(H)^*=overline(cal(H)^or)=overline(cal(H))^or$. 
]

#prop[
	$HS(CC,w)$ is a semisimple Abelian category. $HS(CC)$ is not Abelian. 
]
#proof[
	We prove a morphism in $HS(CC,w)$, compatible with both filtrations, is strictly compatible with both filtrations. Notice first that $f:cal(H)_1->cal(H)_2$ preserves the direct sum decomposition, namely $f(cal(H)_1^(p,w-p))subset cal(H)_2^(p,w-p)$. This is equivalent to the strict compatiblity. 
]

Hence, the above caveat shows that $HS(CC)$ is not the correct category to consider. Instead, we must pass to the Rees construction to give the correct definition. 



= Nori motives 

