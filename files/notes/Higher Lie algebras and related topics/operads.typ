#import "import.typ": *

= Operads and Categorical Preliminaries

== Symmetric sequences 

#figure(image("assets/image-3.png"), caption: [Michael Ching, whose work mainly focuses on the theory of operads and Goodwillie calculus])

Following @Ching1, we sketch the theory of operads in terms of symmtric sequences. 

#def[
	For a category $cal(C)$, we define a symmetric sequence in $cal(C)$ to be a sequence of elements $c_i in cal(C)$ for $i>=1$, such that $c_i$ admits an $Sigma_i$-action, or equivalently a functor $F:Fin^tilde.eq->cal(C)$. This equivalence is given by $[i]mapsto c_i$, where $[i]$ is the set with $i$ elements. Here, we require $Fin^(tilde.eq)$ to be the category of non-empty finite sets with bijections. 
]

#const[
	Let $cal(C)$ be a pointed closed symmetric monoidal category. We define the composition product on $Fun(Fin^tilde.eq,cal(C))$ by 
	$ F compose G(A)=product.co_(A=product.co_(j in J)A_j)F(J)times.o (times.o.big_(j in J)G(A_j)) $
	This is a monoidal structure on $Fun(Fin^tilde.eq,cal(C))$, with tensor unit given by the unit symmetric sequence given by $I([1])=1_cal(C)$ and $I([n])=*$, where $*$ is the null object of $cal(C)$. 
]

#def[
	We define an operad in $cal(C)$ to be a non-unital monoid in $Fun(Fin^tilde.eq,cal(C))$. 

	Unwinding definitions, an operad is a symmetric sequence $P$ with structure maps for every $a in A$ an element of a finite set $compose_a:P(A)times.o P(B)->P((A-{a})union B)$, such that the following diagrams commute: 
	#block(width: 100%)[
		// https://q.uiver.app/#r=typst&q=WzAsNCxbMCwwLCJQKEEpdGltZXMubyBQKEIpdGltZXMubyBQKEMpIl0sWzEsMCwiUChBKXRpbWVzLm8gUCgoQi17Yn0pIHVuaW9uIEMpIl0sWzAsMSwiUCgoQS17YX0pdW5pb24gQil0aW1lcy5vIFAoQykiXSxbMSwxLCJQKChBLXthfSl1bmlvbiAoQi17Yn0pIHVuaW9uIEMpIl0sWzAsMV0sWzAsMl0sWzEsM10sWzIsM11d
		#align(center, diagram({
			node((-1, 0), [$P(A)times.o P(B)times.o P(C)$])
			node((0, 0), [$P(A)times.o P((B-{b}) union C)$])
			node((-1, 1), [$P((A-{a})union B)times.o P(C)$])
			node((0, 1), [$P((A-{a})union (B-{b}) union C)$])
			edge((-1, 0), (0, 0), "->")
			edge((-1, 0), (-1, 1), "->")
			edge((0, 0), (0, 1), "->")
			edge((-1, 1), (0, 1), "->")
		}))
	]
	#linebreak()
	#block(width: 100%)[
		// https://q.uiver.app/#r=typst&q=WzAsNSxbMCwwLCJQKEEpdGltZXMubyBQKEIpdGltZXMubyBQKEMpIl0sWzAsMSwiUChBKXRpbWVzLm8gUChDKXRpbWVzLm8gUChCKSJdLFsyLDAsIlAoKEEte2F9KXVuaW9uIEIpdGltZXMubyBQKEMpIl0sWzEsMSwiUCgoQS17YSd9dW5pb24gQyl0aW1lcy5vIFAoQikiXSxbMiwxLCJQKChBLXthLGEnfSl1bmlvbiBCIHVuaW9uIEMpIl0sWzAsMl0sWzAsMV0sWzEsM10sWzMsNF0sWzIsNF1d
		#align(center, diagram({
			node((-1, -1), [$P(A)times.o P(B)times.o P(C)$])
			node((-1, 0), [$P(A)times.o P(C)times.o P(B)$])
			node((1, -1), [$P((A-{a})union B)times.o P(C)$])
			node((0, 0), [$P((A-{a'}union C)times.o P(B)$])
			node((1, 0), [$P((A-{a,a'})union B union C)$])
			edge((-1, -1), (1, -1), "->")
			edge((-1, -1), (-1, 0), "->")
			edge((-1, 0), (0, 0), "->")
			edge((0, 0), (1, 0), "->")
			edge((1, -1), (1, 0), "->")
		}))
	]
	#linebreak()
/*	#block(width: 100%)[
		// https://q.uiver.app/#r=typst&q=WzAsNixbMCwwLCJQKEEpIl0sWzEsMSwiUCgoWzFdLXsxfSl1bmlvbiBBKSJdLFsxLDAsIlAoWzFdKXRpbWVzLm8gUChBKSJdLFsyLDAsIlAoQSkiXSxbMywwLCJQKEEpdGltZXMubyBQKFsxXSkiXSxbMywxLCJQKChBLXthfXVuaW9uIFsxXSkiXSxbMCwyXSxbMiwxXSxbMCwxLCJ0aWxkZS5lcSIsMl0sWzMsNF0sWzQsNV0sWzMsNSwidGlsZGUuZXEiLDJdXQ==
		#align(center, diagram({
			node((-2, 0), [$P(A)$])
			node((-1, 1), [$P(([1]-{1})union A)$])
			node((-1, 0), [$P([1])times.o P(A)$])
			node((0, 0), [$P(A)$])
			node((1, 0), [$P(A)times.o P([1])$])
			node((1, 1), [$P((A-{a}union [1])$])
			edge((-2, 0), (-1, 0), "->")
			edge((-1, 0), (-1, 1), "->")
			edge((-2, 0), (-1, 1), [$tilde.eq$], label-side: right, "->")
			edge((0, 0), (1, 0), "->")
			edge((1, 0), (1, 1), "->")
			edge((0, 0), (1, 1), [$tilde.eq$], label-side: right, "->")
		}))
	]*/
	We define a morphism of operads to be the obvious morphism of non-unital monoids in $Fun(Fin^tilde.eq, cal(C))$. 
]

#rem[
	The intuition for the above definition is the following: $P([n]) in cal(C)$ denotes the moduli object of $n$-ary operations. The above $P(A)times.o P(B)->P((A-{a})union B)$ denotes the process of first taking $B$ elements, and use an $B$-ary operation to make it 1 element, and finally plug it in the place $a$ along with the rest elements indexed by $A-{a}$.
]

#const[
	For an element $X in cal(C)$, we define its endomorphism operad by 
	$ cal(E)_X ([n])=Hom(X^(times.o n),X) $
	The $Hom$ functor above is the internal Hom functor. The $Sigma_n$-action on $cal(E)_X([n])$ is given by the permutation action on $X^(times.o n)$, and the structure maps are given by obvious compositions of morphisms. 
]

#def[
	We define an algebra over an operad $P$ in the category $cal(C)$ to be an object $A in cal(C)$ equipped with a map of operads $P->cal(E)_A$. Equivalently, this can be regarded as maps
	$ P([n])times.o times.o.big_(i in [n])A->A $
	satisfying appropriate naturality, associativity, and unital axioms. We define the category of algebras to be $Alg_P$. 
]

The above analysis is often written in the language of trees, where we regard an $n$-ary operation as a tree with only 1 root and $n$-leaves, as shown in the following example with $A=[2]$, $a=1$ and $B=[3]$: 

// https://q.uiver.app/#r=typst&q=WzAsNyxbMiwxLCJidWxsZXQiXSxbMSwyLCJidWxsZXQiXSxbMCwzXSxbMiwzXSxbNCwzXSxbMSwzXSxbMiwwXSxbMCw0LCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDIsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSwzLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsNSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDAsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=
#align(center, diagram({
	node((2, 0), [$bullet$])
	node((1, 1), [$bullet$])
	node((0, 2))
	node((2, 2))
	node((4, 2))
	node((1, 2))
	node((2, -1))
	edge((2, 0), (4, 2))
	edge((2, 0), (1, 1))
	edge((1, 1), (0, 2))
	edge((1, 1), (2, 2))
	edge((1, 1), (1, 2))
	edge((2, -1), (2, 0))
}))

This idea is now known as the theory of dendroidal sets, developed by Moerdijk and Weiss (@Dendroidal1). We can view the effect of this theory to operads as simplicial sets to category theory. We then make the above idea more explicit. Here our definition of trees slightly differs from the most common convention for defining trees. 

#def[
	We define a tree $T$ to be a structure consisting of two sets $(V,E)$, where $V$ denote a set of vertices, $E$ denote an non-empty set of edges, a distinguished element $r in E$ called the root, and finally the following maps. 
	+	$I:E-{r}->V$, which we think of assigning an edge $e$ to the vertex which is the input of this edge. 
	+	$O:V->E$, which assigns a vertex to the edge which outputs to this vertex. 

	We define a leaf to be an edge in the complement of $O$, as depicted in the above picture (note there are no vertices below the leaf edges). An internal edge is an edge that is not a leaf. 

	We define the valence of a vertex $v$ to be the number of edges such that $I(e)=v$. 

	We define an external vertex to be a vertex with exactly one internal edge connected to it. We note in particular that the root is not an internal edge. 
]

We then define the category of trees and some useful subcategories. 

#def[
	We denote the category of trees by $Omega$. In this category, the object are trees, and the morphisms are generated by the following elementary morphisms: 
	+	(internal faces) For a tree $T$ and one of its internal edge $e$, there is a morphism $partial_e:T\/e->T$, where $T\/e$ is the tree obtained from removing $e$ and identifying its ends. We regard the new vertex as $I(e)$ rather than the other vertex $v$ with $O(v)=e$. 
	+	(external faces) For a tree $T$ and an external vertex, there is a morphism $partial_v:T\/v->T$, where $T\/v$ is the tree obtained from removing $v$ and the leaves attached to it. 
	+	(degeneracies) For a tree $T$ and an edge $e$, there is a morphism $sigma_e:sigma_e T->T$, where $sigma_e$ is obtained by splitting $e$ into two edges $e_1$, $e_2$, separated by a new vertex. 
]

#rem[
	In the definition of external faces, if we remove an external vertex connected to a root, we define the new tree to be the one obtained by removing the root and the leaves attached to the vertex, and leaving the previous internal edge as the new root. 
]

#def[
	We define an external (internal) face to be a composition of elementary external (internal) faces. We also call the source of an external face by a subtree. 
]

#def[
	We define a tree to be open if there is no vertices of valence 0, and reduced if there is no vertices of valence 1. We define the category $Omega_r^o$ to be the full subcategory of $Omega$ spanned by open and reduced trees. 

	We define the category $AA$ to be the wide subcategory of $Omega_r^o$ where the morphisms in $AA$ are compositions of isomorphisms and internal faces. We define the category $RR$ to be the wide subcategory of $Omega_r^o$ where the morphisms in $RR$ are the morphisms preserving the root edge. 

	In this section, we assume every tree to be open and reduced. 
]

Besides these, we have an additional operation on trees. 

#def[
	For trees $S$ and $R$ and a leaf $e$ of $S$, we denote $T=S compose_e R$ if $T$ is obtained as a tree by identifying the root edge of $R$ and $e$, called the grafting of $S$ and $R$ along $e$. 

	Note we can identify $S$ and $R$ as subtrees of $T$. $S$ is obtained by cutting off all external vertices below $e$, and $R$ is obtained by cutting off all external vertices not below $e$. 
]

This operation is important since it generates all trees from some basic examples. 

#def[
	We define the $n$-corolla tree $C_n$ by the tree with one root and $n$-leaves. 
]

#lem[
	All trees can be written as a iterated grafting of corolla trees. 
]
#proof[
	We first prove that in a tree $T$ that is not a corolla has an internal edge $e$ connected to an external vertex. To prove this, since $T$ is not a corolla, there is a leaf not adjacent to the root edge. Then $I(e)$ is the vertex we are searching for. 

	Then, we perform induction on the number of vertices of $T$. Notice by definition we have a tree with one vertex is always a corolla. Then, for a tree $T$ with $n$ vertices, we may cut $T$ along the internal edge $e$ that connects to an external vertex, so writing $T$ as a grafting of a tree with $n-1$ vertices and a corolla. This finishes the induction. 
]

#def[
	We define a preoperad in a pointed closed symmetric monoidal category $cal(C)$ to be a presheaf $P$ over $AA$ in $cal(C)$ equipped with a structure map 
	$ theta_(S compose_e T):P(S compose_e T)->P(S)times.o P(T) $ 
	It is called an operad if furthermore this structure map is an equivalence. 
]

#def[
	For a preoperad $P$ in a category $cal(C)$, we define ite prealgebra to be a presheaf $A:RR^op->cal(C)$, and for each morphism $alpha:S->T$ in $RR$, a structure morphism 
	$ tau^alpha:A(T)->P(S)times.o A(T\/S) $
	where $A(T\/S)=times.o.big_ell A(T_ell)$, where $ell$ runs over the leaves of $S$, and $T_ell$ is the subtree of $T$ consisting of everything below $alpha(ell)$. 

	If $P$ is an operad and the structure morphisms are all equivalences, then we define $A$ to be an algebra of $P$. 
]

Then we give a construction relating the two definitions. 

#const[
	Let $P$ be a monoid in the category of symmetric sequence in $cal(C)$. We define its nerve to be the following presheaf on $AA$
	$ N P(T):=times.o.big_v P(i(v)) $
	where $i(v)$ denote the finite set of inputting edges to $v$. 

	We explicitly construct for a morphism $S->T$ a morphism $N P(T)->N P(S)$. Note that by definition, it suffices to construct the morphism for the case where we have $partial_e:S->T$ is an elementary internal face. In this case, since $e$ is an internal edge, suppose we have $e=O(v_0)$ and $I(e)=v_1$, we have the following map 
	$ N P(T)=times.o.big_(v eq.not v_0,v_1)P(i(v))times.o (P(i(v_0)) times.o P(i(v_1)))->times.o.big_(v eq.not v_1) P(i(v))times.o P(i(v'_1))=N P(S) $
	given by the identity on the first factor, and on the second factor given by the structure map given previously $compose_e:P(i(v_0))times.o P(i(v_1))->P(i(v'_1))$ (we note here that $i(v'_1)$ is by definition given by $i(v_0)union i(v_1)-{e}$). 
]

#thm[
	The second definition of operads is equivalent to the category of operads with $P([1])=1_(cal(C))$, where $1_(cal(C))$ is the tensor unit. 
]
#proof[
	We give an inverse to the above functor. We send an operad $P$ to the symmetric sequence ${P(C_n)}$, where the $Sigma_n$ action on $P(C_n)$ is given by the isomorphism $C_n->C_n$ permuting the $n$-leaves. Then, the required structure maps are exactly the structure maps given by grafting corolla trees. Then it is easy to verify that these two functors are inverses to each other on our given subcategories. 
]

#prop[
	For a symmetric sequence $P$ which is an operad and such that $P(1)=1_cal(C)$, the category of algebras of $P$ is equivalent to the category of algebras of $N P$. 
]
#proof[
	Again, the equivalence is given by restricting the presheaf to the corolla trees and extending the presheaf from the corolla trees to the whole category $RR$ via the isomorphism
	$ A(T)tilde.eq P(S)times.o A(T\/S) $
	We omit the details. 
]

With the basic work done, we present some basic examples of operads and their algebras. For simplicity, we temporarily work in operads and algebras in the category $Vect_k$. 

#exam[
	We define the operad $Comm$ to be the operad with $Comm([n])=k$ for all $n$. Then, for $A$ its algebra, by taking $[n]=2$ we obtain a map $Comm([2])times.o A^(times.o 2)->A$, which is also equivalent to a map $A times.o A->A$, which we can view as a multiplication map. Also note that under the $Sigma_2$-action, the space $Comm([2])$ stays invariant, which means that we have a commutativity condition: 
	// https://q.uiver.app/#r=typst&q=WzAsMyxbMCwwLCJBIHRpbWVzLm8gQSJdLFsxLDAsIkEiXSxbMCwxLCJBIHRpbWVzLm8gQSJdLFswLDFdLFsyLDFdLFswLDIsInRhdSIsMl1d
	#align(center, diagram({
		node((0, 0), [$A times.o A$])
		node((1, 0), [$A$])
		node((0, 1), [$A times.o A$])
		edge((0, 0), (1, 0), "->")
		edge((0, 1), (1, 0), "->")
		edge((0, 0), (0, 1), [$tau$], label-side: right, "->")
	}))
	where $tau$ denote the map swapping the two factors. 
	
	Likewise, the space $Comm([3])=k$ implies the associativity conditions, and $Comm([n])=k$ implies that there are no other relations. Hence, the algebras for the operad $Comm$ are the non-unital commutative $k$-algebras. 

	A more intuitive description of $Comm([n])$ to be the subspace of $k[x_1,dots.c,x_n]$ with each $x_i$ occuring exactly once, which is obviously one dimensional. 
]

#exam[
	We define the operad $Assoc$ to be the operad with $Assoc([n])$ be the subspace of $k chevron.l x_1,dots.c,x_n chevron.r$ (this is the free associative algebra on $n$ generators) spanned by elements that contain each $x_i$ exactly once, i.e., spanned by the elements ${x_1dots.c x_n,dots.c,x_n dots.c x_1}$. Explicitly, this is the standard $Sigma_n$-representation. Then, one can easily verify that the algebras of this operad are the non-unital associative algebras. 
]

#exam[
	We define the operead $Lie$ to be the operad with $Lie([n])$ be the subspace of $k chevron.l x_1,dots.c,x_n chevron.r$ spanned by iterated Lie brackets containing each element once, for example, an element of the form 
	$ [[dots.c[[x_1,x_2],x_3],dots.c],x_n] $
	This might seem complicated at first, but it is an $(n-1)!$-dimensional $Sigma_n$-representation $ind_(C_n)^(Sigma_n)(chi)$, where $chi$ is the representation of $C_n$ corresponding to a primitive $n$-th root of unity. By definition, the algebras of this operad are the Lie algebras. 
]

#rem[
	It is slightly unnatural to consider these non-unital versions of $Assoc$ and $Comm$ at first, but the point is that they differs not much from the unital versions. To obtain the unital version, it suffices to change $Assoc([0])$ and $Comm([0])$ to $k$ instead of $0$ (the nullary operations of operads are simply constants in the algebra, such that the unit in associative algebras). However, in our conventions, the data of an operad does not contain information of degree 0, so we may just adjust ourselves to this setting. 
]

Now we have basically finished the part on operads, but we still face a further possible generalization. We recall that in the above definition, we required $P([1])=1_(cal(C))$, but if we do not require this, our theory of operads would be slightly modified in to the theory of colored operads. Since our main focus, the $LL_oo$ operad is indeed single colored, we will not talk too much about this. We will only give the definition, the intuition and some examples, so as to be better prepared for the $oo$-operads in the next section. 

#def[
	Let $C$ be a set of colors (this is just a set with no structures). We define a colored operad $P$ in $cal(C)$ with color $C$ to be a family of objects in $cal(C)$ along with some structural maps, indexed by the following. Given any $n$ and colors $c_1,dots.c,c_n,c in C$, an object $P(c_1,dots.c,c_n;c)in cal(C)$, to be thought as the space of operations that takes in the colors $c_1,dots.c,c_n$ and spits out a color $c$. Then, we require the following structure maps 
	+	A unit $1_cal(C)->P(c;c)$ for each color $c$. 
	+	For each permutation $sigma in Sigma_n$, an isomorphism $sigma^*:P(c_1,dots.c,c_n;c)->P(c_(sigma(1)),dots.c,c_(sigma(n));c)$ permuting the factors. 
	+	For any sequence of colors $c_1,dots.c,c_n,c$ and any $n$-tuple of sequences $d_1^i,dots.c,d_(k_i)^i$, a composition map
		$ m:P(c_1,dots.c,c_n;c)times.o times.o.big_(i=1)^n P(d_1^i,dots.c,d_(k_i)^i;c_i)->P(d_1^1,dots.c,d_(k_1)^1,dots.c,d_1^n,dots.c,d_(k_n)^n;c) $
	We define a morphism of operads with color $C$ to be the obvious one commuting with the above structure maps. We do not talk of morphism of operads with different colors. 
]

#coro[
	By definition, a single colored operad (i.e., $C=[1]$ the singleton set) is just an operad previously defined. 
]

#const[
	For $C$ a set of colors $C={c_1,dots.c,c_m}$ and objects $A_(c_1),dots.c,A_(c_m) in cal(C)$, we define the colored endomorphism operad $cal(E)(A_(c_1),dots.c,A_(c_m))$ to be the colored operad with 
	$ cal(E)(c_1,dots.c,c_n;c)=Hom(A_(c_1) times.o dots.c times.o A_(c_n),A_c) $
	Again, the $Hom$ functor above is the internal Hom functor, and all the structure maps are given by identities, permutations of factors, and compositions. 
]

#def[
	For $P$ a colored operad in $cal(C)$ with colors $C$, we define an algebra of $P$ to be a family of objects indexed by $C$, say $A_(c_1),dots.c,A_(c_m)in cal(C)$, with a morphism of colored operads 
	$ P->cal(E)(A_(c_1),dots.c,A_(c_m)) $
]

#exam[
	We define the operad $Mod_Comm$ to be the colored operad with the set of colors $C={a,m}$. We define $P(c_1,dots.c,c_n;c)$ to be 
	+	If there are more than one $c_i=m$, $P(c_1,dots.c,c_n;c)=*$. 
	+	If exactly one $c_i=m$ and $c=a$, $P(c_1,dots.c,c_n;c)=*$. 
	+	If all $c_i=a$ and $c=m$, $P(c_1,dots.c,c_n;c)=*$
	+	If exactly one $c_i=m$ and $c=m$, $P(c_1,dots.c,c_n;c)=1_(cal(C))$. 
	+	If all $c_i=a$ and $c=a$, $P(c_1,dots.c,c_n;c)=1_(cal(C))$. 
	The algebras of this operad, as its name suggests, consists of a pair $(A,M)$ where $A$ is a commutative algebra and $M$ is an $A$-module, which is easily verified by definition. 
]

#exam[
	For any tree $T in Omega$, it is possible to define an colored operad freely generated by $T$, which we will abuse notation and denote it also by $T$. We define its colors to be the edges of $T$, and an operation $p in T(c_1,dots.c,c_n;c)$ is simply a subtree of $T$ with root $c$ and leaves $c_1,dots.c,c_n$, with composition of operations given by grafting of trees. 

	This example provides a fully faithful embedding $Omega inj Op$ of trees into the category of operads. 
]

#rem[
	In fact, for any colored operad $P$, one may define the module operad for $P$ given by $Mod_P$, whose algebra is pairs $(A,M)$ where $A$ is an $P$-algebra and $M$ is an $A$-module in a suitable sense. In particular, for $P$ a single colored operad, whose algebras $A$ resembles an object in $cal(C)$ with some operations defined on it, its module $M$ can really be thought as an object in $cal(C)$ with an $A$-action. This intuition can be found by inspecting the module operads for $Comm$, $Assoc$, and $Lie$. 
]

#rem[
	Just as operads, a colored operad encodes the information of different types of objects with possible interactions. We should see in the next section that for $oo$-operads, the space of colors could be much more exotic than merely being a set. 
]

== $oo$-categories and $oo$-operads

The above analysis applies to general 1-categories, but faces some problems in $oo$-categories. In this section we explain the method to generalize operads to $oo$-categories developed by Lurie, and the method of dendroidal sets developed by Moerdijk. For readers not familiar with $oo$-categories, you may temporarily think it as a $bold("Top")$-enriched category where the mapping spaces are introduced to remember the homotopical data of maps. 

#figure(image("assets/image-4.png"), caption: [Jacob Lurie, who set up the foundation of $oo$-category theory and now works on arithmetic geometry])

We first introduce Lurie's approach, as introduced in @HA. But before we really start, we must recall for the reader some basic concepts in the quasi-category model of $oo$-categories introduced by Lurie in his book Higher topos theory (@HTT). 

#def[
	We define the category of simplices $Delta$ to be the full subcategory of $Cat$ spanned by the totally ordered finite posets, i.e. categories of the form 
	$ Delta^n:={c_0->c_1->dots.c->c_n} $
	Explicitly, $Delta$ is the category with objects (possibly empty) finite totally ordered sets and morphisms the maps preserving the order. 

	We define a simplicial object in the category $cal(C)$ to be a presheaf $F:Delta^op->cal(C)$. In particular a simplicial set is a presheaf $S:Delta^op->Set$. We will define $F_n:=F(Delta^n)$
]

Our quasi-categories would be modeled over simplicial sets. 

#def[
	We define the following simplicial sets. 
	+	Let $Delta^n$ denote the presheaf represented by the object $Delta^n$. This object looks like the topological $n$-simplex. 
	+	Let $partial Delta^n subset Delta^n$ denote the subcomplex obtained by removing the $n$-simplex. This object looks like the topological $n$-simplex with its interior removed. 
	+	Let $Lambda^n_i subset Delta^n$ denote the subcomplex obtained by removing the $n$-simplex and the $(n-1)$-simplex facing the $i$-th vertex. This object looks like the horn in $Delta^n$ facing the $i$-th vertex, and the inclusion above is often denoted by the horn inclusion. 
]

#const[
	We consider the following two families of maps in $Delta$: 
	+	The face inclusions $d_i^n:Delta^(n-1)inj Delta^n$ whose image leaves only out $i in Delta^n$. 
	+	The degeneracy map $s_i^n:Delta^(n+1)surj Delta^n$ which is surjective and $s_i^n (i)=s_i^n (i+1)=i$. 
	Note all morphisms in $Delta$ are compositions of $d_i^n$'s and $s_i^n$'s. 
	We have the following automorphism $op:Delta->Delta$ given by identity on objects and sending $d_i^n$ to $d_(n-i)^n$ and sending $s_i^n$ to $s_(n-i)^n$. 
]

#def[
	We define the opposite of a simplicial set $X:Delta^op->Set$ by the following simplicial set obtained by precomposition
	$ X^op:Delta^op overset(->,(op)^op) Delta^op overset(->,X)Set $
]

#def[
	For a morphism $f:X->S$ of simplicial sets, we define it to be: 
	+	A left fibration if it has the lifting properties with respect to the inclusions $Lambda_i^n inj Delta^n$, $0<=i<n$. 
	+	A right fibration if it has the lifting properties for the inclusions $Lambda_i^n inj Delta^n$, $0<i<=n$. 
	+	An inner fibration if it has the lifting properties for the inclusions $Lambda_i^n inj Delta^n$, $0<i<n$. 
	+	A Kan fibration if it has the lifting properties for the inclusions $Lambda_i^n inj Delta^n$, $0<=i<=n$. 
	+	A trivial fibration if it has the lifting properties for the inclusions $partial Delta^n inj Delta^n$
]

To define more useful fibrations, we need the concept of slice simplicial sets. 

#rem[
	Recall for a 1-category $cal(C)$, we may define its slice over an object $x in cal(C)$ by defining $cal(C)_(\/x)$ to be the category with objects $y->x$ and morphism maps $y->z$ such that their structure maps to $x$ commute. The slice of simplicial sets generalizes this construction to defining $X_(\/f)$ for maps of simplicial sets $f:Y->X$. 
]

#def[
	For simplicial sets $S$ and $S'$, we define their join $S star S'$ to be the simplicial set 
	$ (S star S')(J)=product.co_(J=I union I',I<I')S(I)times S'(I') $
	where $I,I',J$ are finite totally ordered sets, and $I<I'$ means that for any $i in I$ and $i' in I'$, we have $i<i'$. 

	By definition, this operation is not symmetric. Also by definition, we have $Delta^n star Delta^m tilde.eq Delta^(n+m-1)$. 
]

#rem[
	This construction is analogous to the topological join functor, that is, for spaces $X$ and $Y$, we may define their join to be $X star Y:=X times I times Y\/(* times 0 times Y union X times 1 times *)$ (here $* times 0 times Y$ means gluing all points of the form $(x,0,y)$ and $(x,0,y')$, and the other side analogously). 
]

#def[
	For a simplicial set $K$, we define the left cone over $K$ by $K^lcone:=Delta^0 star K$. Dually the right cone over $K$ is defined to be $K^rcone:=K star Delta^0$. 
]

#lem[
	The functors $(-)star S:Set^(Delta^op)->Set^(Delta^op)_(S\/)$ and $S star (-):Set^(Delta^op)->Set^(Delta^op)_(S\/)$ commutes with colimits. 
]
#proof[
	Recall that limits and colimits in the presheaf category is pointwise. Thus the conclusion follows from the fact that in $Set$, colimits distribute over limits. 
]

#def[
	We define the slice operation to be the right adjoint of joins. Explicitly, for any map $p:K->S$ of simplicial sets, there is a simplicial set $S_(\/p)$ with the following universal property
	$ Hom_(Set^(Delta^op))(Y,S_(\/p))=Hom_(Set^(Delta^op)_(K\/))(Y star K,S) $
	Dually, we define $S_(p\/)$ to have the universal property 
	$ Hom_(Set^(Delta^op))(Y,S_(p\/))=Hom_(Set^(Delta^op)_(K\/))(K star Y,S) $
	These adjoints exists by the 1-categorical adjoint functor. 
]

#rem[
	Intuitionally, $S_(\/p)$ is the category of left cones in $S$ over $p$. This can be seen by taking $Y$ to be the singleton $Delta^0$, so we have 
	$ Hom_(Set^(Delta^op))(Delta^0,S_(\/p))=Hom_(Set^(Delta^op)_(K\/))(K^lcone,S) $
	and $S_(p\/)$ has the likewise intuition. 

	In fact, the above method give an explicit way of computing $S_(\/p)$ and $S_(p\/)$ by taking $Y$ to be the simplices. 
]

#def[
	Let $p:X->S$ be an inner fibration of simplicial sets. Let $f:x->y$ be an edge in $X$. We say $f$ is $p$-Cartesian if the induced map 
	$ X_(\/f)->X_(\/y)times_(S_(\/p(y)))S_(\/p(f)) $
	is a trivial Kan fibration. 

	Dually, we say $f$ is $p$-coCartesian if $f^op$ is $p^op$-Cartesian. 
]

#rem[
	Ignoring homotopical data, we can see $p$-Cartesian morphism admits the following universal property: given $x->y$ mapping by $p$ to $s->t$, suppose $z->y$ maps to $r->t$, if there is a map $r->s$ making the bottom triangle commute, then there is a map $z->x$ making the top triangle commutes mapping to $r->s$, as shown in the picture below
	// https://q.uiver.app/#r=typst&q=WzAsNixbMSwzLCJzIl0sWzMsMywidCJdLFsxLDEsIngiXSxbMywxLCJ5Il0sWzAsMCwieiJdLFswLDIsInIiXSxbMCwxXSxbMiwzXSxbMiwwLCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV0sWzMsMSwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dLFs0LDUsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbNCwzXSxbNSwxXSxbNSwwXSxbNCwyLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMTMsMTQsIiIsMSx7InNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH19XV0=
	#align(center, diagram({
		node((0, 1), [$s$])
		node((2, 1), [$t$])
		node((0, -1), [$x$])
		node((2, -1), [$y$])
		node((-1, -2), [$z$])
		node((-1, 0), [$r$])
		edge((0, 1), (2, 1), "->")
		edge((0, -1), (2, -1), "->")
		edge((0, -1), (0, 1), "|->")
		edge((2, -1), (2, 1), "|->")
		edge((-1, -2), (-1, 0), "|->")
		edge((-1, -2), (2, -1), "->")
		edge((-1, 0), (2, 1), "->")
		edge((-1, 0), (0, 1), "->")
		edge((-1, -2), (0, -1), "-->")
		edge((-0.5, 0), (-0.5, -1), "=>")
	}))
	Dually, a $p$-coCartesian morphism has the following depicted universal property: 
	// https://q.uiver.app/#r=typst&q=WzAsNixbMCwzLCJzIl0sWzIsMywidCJdLFswLDEsIngiXSxbMiwxLCJ5Il0sWzMsMiwiciJdLFszLDAsInoiXSxbMCwxXSxbMiwzXSxbMiwwLCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV0sWzMsMSwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dLFswLDRdLFs1LDQsIiIsMSx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbMSw0XSxbMiw1XSxbMyw1LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
	#align(center, diagram({
		node((0, 1), [$s$])
		node((2, 1), [$t$])
		node((0, -1), [$x$])
		node((2, -1), [$y$])
		node((3, 0), [$r$])
		node((3, -2), [$z$])
		edge((0, 1), (2, 1), "->")
		edge((0, -1), (2, -1), "->")
		edge((0, -1), (0, 1), "|->")
		edge((2, -1), (2, 1), "|->")
		edge((0, 1), (3, 0), "->")
		edge((3, -2), (3, 0), "|->")
		edge((2, 1), (3, 0), "->")
		edge((0, -1), (3, -2), "->")
		edge((2, -1), (3, -2), "-->")
		edge((2.5, 0), (2.5, -1), "=>")
	}))
]

#def[
	For a map $p:X->S$ of simplicial sets, we define it to be a Cartesian fibration if $p$ is an inner fibration, and for every edge $f:x->y$ of $S$, there is a $tilde(f):tilde(x)->tilde(y)$ mapping to $f$ and is $p$-Cartesian. We say $p$ is a coCartesian fibration if $p^op$ is a Cartesian fibration. 
]

#def[
	An $oo$-category is a simplicial set $K$ such that $K->*$ is an inner fibration. 
	
	A $oo$-groupoid is an $oo$-category where every morphism is invertible. 
]

#rem[
	The intuition of the definition above is that the objects of an $oo$-category $K$ are maps $Delta^0->K$, and the $n$-morphisms are maps $Delta^n->K$. In particular, the composition of morphisms are witnessed by $2$-morphisms, so by the lifting property given by the inner fibration condition, we may define the composition of two morphisms $g compose f$ by first regarding $g$ and $f$ as the two edges in the horn $Lambda_1^2$, and then use the filling condition to fill it to a map $Delta^2->K$, and define the composition to be the third map. 
]

#def[
	We define $Ani$ to be the $oo$-category of topological spaces. 
]

We omit the fact here that all the above definitions works well with $oo$-categories instead of merely simplicial sets. 

For later use, we must present the following structure theorem for Cartesian fibrations (and coCartesian fibrations, of course). 

#thm(name: "Straightening and unstraightening")[
	We have the following equivalence of $oo$-categories 
	$ upright("Cart")(cal(C))tilde.eq Fun(cal(C)^op,Cat_oo) $
	where the left side denote the category of Cartesian fibrations over $cal(C)$. 
]

#def[
	We define $chevron.l n chevron.r in Fin_*$ to be the pointed set with $n$ elements and $1$ additional point. We define $chevron.l n chevron.r degree$ to be the subset of $n$-elements removing the distinguished point.  

	A morphism $f:chevron.l m chevron.r->chevron.l n chevron.r$ is inert if for each $i in chevron.l n chevron.r degree$, we have $f^(-1)(i)$ has exactly 1 element. 

	We denote $rho^i:chevron.l n chevron.r->chevron.l 1 chevron.r$ by the standard inert morphism by sending $i$ to $1$ and every other thing to the distinguished point. 

	We define a morphism $f:chevron.l m chevron.r->chevron.l n chevron.r$ to be active if $f^(-1)(*)=*$, where $*$ is the distinguished point. 
]

#def(name: [@HA, Definition 2.1.1.10])[
	An $oo$-operad is a functor $p:cal(O)^times.o->Fin_*$ of $oo$-categories which satisfies the following conditions. 
	+	For every inert morphism $f:chevron.l m chevron.r->chevron.l n chevron.r$ and every object $C in cal(O)^times.o_(chevron.l m chevron.r)$ (we denote this the fiber over $chevron.l m chevron.r$), there exists a $p$-coCartesian morphism $overline(f):C->C'$ in $cal(O)^times.o$ lifting $f$. In particular, $f$ induces a functor $f_!:cal(O)_(chevron.l m chevron.r)^times.o->cal(O)_(chevron.l n chevron.r)^times.o$. 
	+	Let $C in cal(O)_(chevron.l m chevron.r)^times.o$ and $C'in cal(O)_(chevron.l m chevron.r)^times.o$ be objects, let $f:chevron.l m chevron.r->chevron.l n chevron.r$ be a morphism in $Fin_*$, and let $Map_(cal(O)^times.o)^f (C,C')$ be the union of those connected components of $Map(cal(O)^times.o)$ which lie over $f in Hom_(Fin_*)(chevron.l m chevron.r,chevron.l n chevron.r)$. Choose $p$-coCartesian morphisms $C'->C'_i$ lying over the inert morphisms $rho^i:chevron.l n chevron.r->chevron.l 1 chevron.r$ for $1<=i<=n$. Then the induced maps 
		$ Map_(cal(O)^times.o)^f (C,C')->product_(1<=i<=n)Map_(cal(O)^times.o)^(rho^i compose f)(C,C'_i) $
		is a homotopy equivalence. 
	+	For every finite collection of objects $C_1,dots.c,C_n in cal(O)_(chevron.l 1 chevron.r)^times.o$, there exists an object $C in cal(O)_(chevron.l n chevron.r)^times.o$ and a collection of $p$-coCartesian morphisms $C->C_i$ covering $rho^i:chevron.l n chevron.r->chevron.l 1 chevron.r$. 

	We call $cal(O):=cal(O)^times.o_(chevron.l 1 chevron.r)$ the colors of this operad. 
]

#rem[
	We present the basic intuitions for these axioms. Firstly, as we have defined, $cal(O)$ serves as a generalization of colors of a colored operad. Then the three axioms ensures that for objects $C_1,dots.c,C_n in cal(O)$, they can be combined into "$C_1 times.o dots.c times.o C_n$", which lies over $chevron.l n chevron.r$, and every object over $chevron.l n chevron.r$ is of this form (explicitly $cal(O)^times.o_(chevron.l n chevron.r)tilde.eq cal(O)^n$). The second axiom furthermore ensures that for a map of objects $C->D=D_1 times.o dots.c times.o D_n$ for $D_j in cal(O)$, this map must look like a tensor product of maps $C->D_i$. 
]

#exam[
	The identity functor $Fin_*->Fin_*$ is clearly an $oo$-operad, which we denote by $Comm^times.o$. This is the $oo$-analogue of the previously defined $Comm$. 
]

In the $oo$-categorical setting, the definition of (symmetric) monoidal categories are much more difficult and subtle than in the classical case.  The problem This difficulty leads to the following extremely important observation of realizing a symmetric monoidal category as an $oo$-operad. We will explain more after the definition. 

#def[
	Let $p:cal(O)^times.o->Fin_*$ be an $oo$-operad. We define a morphism $f$ in $cal(O)^times.o$ to be inert if $p(f)$ is inert and $f$ is $p$-coCartesian. We define a morphism $f$ in $cal(O)^times.o$ to be active if $p(f)$ is active. 
]

#def[
	Let $p:cal(O)^times.o->Fin_*$ and $p':cal(O)'^times.o->Fin_*$ be $oo$-operads. An $oo$-operad map $f:cal(O)^times.o->cal(O)'^times.o$ is a map of simplicial sets such that $p=p'f$, and $f$ carries inert morphisms of $cal(O)^times.o$ to the inert morphisms of $cal(O)'^times.o$. 
	
	We denote $Alg_cal(O)(cal(O)')subset Fun_(Fin_*)(cal(O),cal(O)')$ to be the full subcategory spanned by the $oo$-operad maps. 
]

#def[
	We define a coCartesian fibration of operads to be a map of operads that is also a coCartesian fibration. 
]

#def[
	Let $cal(O)^times.o$ be an $oo$-operad. We define an $cal(O)^times.o$-monoidal $oo$-category to be a coCartesian fibration of $oo$-operads $cal(C)^times.o->cal(O)^times.o$. 
]

#def[
	We define a symmetric monoidal $oo$-category to be a $Comm^times.o$-monoidal $oo$-category. 
]

#rem[
	Let $cal(C)$ be a symmetric monoidal $oo$-cateegory. Then since $cal(C)->Fin_*$ is a coCartesian fibration, consider the map $chevron.l 0 chevron.r->chevron.l 1 chevron.r$ and the active map $chevron.l 2 chevron.r->chevron.l 1 chevron.r$. Since $cal(C)->Fin_*$ is a coCartesian map, by the straightening and unstraightening theorem they induce functors of categories $cal(C)^times.o_(chevron.l 2 chevron.r)tilde.eq cal(C)^2->cal(C)$ and $cal(C)^times.o_(chevron.l 0 chevron.r)tilde.eq Delta^0->cal(C)$, they may be respectively regarded as the tensor product and unit in $cal(C)$. 
]

#def[
	Let $cal(O)'^times.o->cal(O)^times.o$ be a map of $oo$-operads, and $cal(C)^times.o->cal(O)^times.o$ be an $cal(O)^times.o$-monoidal category. We define the category of algebras $Alg_(cal(O)'\/cal(O))(cal(C))$ by the $oo$-operad maps $cal(O)'^times.o->cal(C)^times.o$ over $cal(O)^times.o$. 
]

#rem[
	This definition has the same intuition as algebras for classical operads, where we regard $cal(C)^times.o$ as some sort of endomorphism operad. 
]

Again, we present some examples of $oo$-operads. 

#exam[
	We may define the operad $EE_k^times.o$ as follows: 
	+	The objects of $EE_k^times.o$ are the objects $chevron.l n chevron.r$ as in $Fin_*$. 
	+	Given a pair of objects $chevron.l m chevron.r, chevron.l n chevron.r$, the space of morphisms between them are given by the following 
		$ Hom_(EE_k^times.o)(chevron.l m chevron.r,chevron.l n chevron.r)=product.co_(f:chevron.l m chevron.r->chevron.l n chevron.r)product_(1<=j<=n)upright("Rect")(square^k times f^(-1)(j),square^k) $
	where $square^k$ denotes the $k$-dimensional cube $[0,1]^k$, and $upright("Rect")$ denote a rectilinear embedding, which means an injective map $square^k times f^(-1)(j)->square^k$ that is "linear" in each square (i.e. mapping a square to a parallelogram). This is the $EE_k$ operad we have mentioned in the introduction, and is of fundamental importance in homotopy theory. You may believe this or not, but the algebras for this operad in suitably nice $oo$-categories (for example presentable ones) endowed with the Cartesian monoidal structure are precisely the groups commutative to the $k$-th level, which is another fancy term for $k$-th loopspaces. 

	For sharp readers who noticed that we haven't properly defined an $oo$-category in terms of a quasi-category, we can simply take a so called nerve of a topological category and obtain a quasi-category. 
]

We now turn to introduce an exotic (at least so when one first see it) example of $oo$-operad, which serves as a natural generalization to the above $EE_k^times.o$ operad. 

#exam[
	#let Top = [Top]
	Let $M$ be a topological manifold of dimension $k$. We define $cal(C)_M$ to be the $oo$-category with objects $RR^k$, $M$ and mapping spaces given by 
	$ Hom(RR^k,RR^k)=Emb(RR^k,RR^k),\ Hom(RR^k,M)=Emb(RR^k,M),\ Hom(M,M)=id_M,\ Hom(M,RR^n)=emptyset $
	We let $Top(k)$ denote the topological homeomorphisms $RR^k->RR^k$. By definition, we have an inclusion of categories $B0 Top(k) inj cal(C)_M$. Then, let $B_M$ denote the $oo$-groupoid 
	$ B_M=B0 Top(k)times_(cal(C)(M))cal(C)(M)_(\/M) $
	Note in particular we have $B_M tilde.eq M$ as animas. Then, note that we may upgrade the structure of $B0 Top(k)$ to an operad as follows: the objects of $B0 Top(k)$ are $chevron.l n chevron.r$, and the morphisms of $B0 Top(k)$over $alpha:chevron.l m chevron.r->chevron.l n chevron.r in Fin_*$ are given by 
	$ product_(1<=i<=n)Emb(RR^k times alpha^(-1)(i),RR^k) $
	Finally we let $EE_M^times.o=B0 Top(k)^times.o times_(B0 Top(k)^product.co)B_M^product.co$ (here $X^product.co$ is the free coCartesian operad generated by the anima $X$ viewed as an $oo$-groupoid, or an $oo$-category with every morphism invertible). 

	By definition, we may compute the color $EE_M=M$, which means that an algebra of $EE_M^times.o$ in some $oo$-category $cal(C)$ would first require a data of a map $M->cal(C)$, where again $M$ is regarded as an $oo$-groupoid. 
]

#exam[
	We define $EE_n^times.o=EE_(RR^n)^times.o$. Here, $RR^n$ is contractible, so an $EE_n^times.o$-algebra in $cal(C)$ is simply an object $x in cal(C)$ with some structural maps $x^(times.o i)->x$. In fact, as promised in the introduction, we have the following recognition principle. 
]

#thm(name: "recognition principle")[
	Let $cal(C)$ be an $oo$-topos, regarded as a symmetric monoidal $oo$-category via its Cartesian monoidal structure. Then, we have $Alg_(EE_n)(cal(C))tilde.eq cal(C)_(*,>=n)$, where $cal(C)_(*,>=n)$ is the subcategory of $cal(C)$ spanned by the pointed $n$-connective objects, and the functor $cal(C)_(*,>=n)->Alg_(EE_n)(cal(C))$ is given by the $n$-fold loop space $Omega^n:cal(C)_(*,>=n)->Alg_(EE_n)(cal(C))$. 
]

From now on, for simplicity, we will denote $Alg$ by $Alg_(EE_1)$ and $CAlg$ by $Alg_(EE_oo)$, called the associative algebras and commutative algebras. 

The description of general $EE_M^times.o$-algebras is extremely difficult, since it relies on the tangential structure of the manifold. Hence, for manifolds with trivial tangent bundle, the discription would be much easier. For example, the $E_(S^1)^times.o$-algebras can be identified with associative algebras equipped with an involution. We will not go deep into this. 

Then we sketch the theory of dendroidal sets. 

#rem[
	Briefly, recall that an $oo$-category (at least in our model, the quasi-categories) is essentially an simplicial set with some nice lifting properties ensuring the arrows in the simplicial set compose. This condition is not that important, since every simplicial set is homotopic equivalent (at least in a suitable sense) to a $oo$-category, so we temporarily ignore this condition. There is a more heuristic way of regarding a simplicial set as an $oo$-category. By definition, a simplicial set is a presheaf of sets over the category of simplices $Delta$. If we think $[n] in Delta$ as the poset
	$ 0->1->dots.c->n $
	By the Yoneda lemma, we may regard for a simplicial set $X$ the value taken at $[n]$, $X([n])$ or $X_n$, as the ways of $[n]$ mapping in to $X$, or more categorically, as the ways of how $n$ morphisms in $X$ compose modulo higher homotopy. Through this process, we realize that a simplicial set remembers the homotopical data of an $oo$-categories by recording the possible ways of how $n$ morphisms compose. 

	On the other hand, in classical category theory, we may change our perspective on the (colored) operads, and instead identifying them as the multicategories. Informally, a multicategory is a collection of objects, and for each set of objects ${X_1,dots.c,X_n}$ and an object $Y$, a set of "multilinear" maps $Hom({X_1,dots.c,X_n},Y)$, which, translating to the operadic language, is precisely our previously defined $P(X_1,dots.c,X_n;Y)$ where $X_i$ and $Y$ are colors of the operad. So, according to the above intuition for remebering homotopical data of composing morphisms, we should remember all possible ways these multimorphisms compose. This is where the theory of dendroidal sets set in. In a multicategory, we may simply regard $Hom({X_1,dots.c,X_n},Y)$ as the way of "mapping" a corolla tree $C_n$ into it, and so, all the ways multimorphisms compose would simply be recorded by way of "mapping" a general tree $T$ into a multicategory. This motivates completely the following definition of dendroidal sets. 
]

#figure(image("assets/image-5.png"), caption: [Ieke Moerdijk, who made great contributions of the application of category theory to logics, and now works on the theory of dendroidal sets])

#def[
	We define the category of dendroidal sets to be the category of presheaves $pSh(Omega)$, where $Omega$ is the category of trees defined in the previous section. We no longer assume $T$ to be open and reduced now. 
]

#rem[
	The elementary morphisms introduced last section are precisely the analoges of the simplicial faces and degeneracies. 
]

#def[
	For a tree $T$ and an elmentary face $partial_x T$, we define the horn $Lambda^x_T$ to be the subdendroidal set of $T$ obtained by the union of all the faces except $x$. This is the analogue of the simplicial horn $Lambda^n_i subset Delta^n$. 
]

#def(name: [@Moerdijk1, Definition 6.1])[
	We define a dendroidal set $X$ to be an $oo$-operad if it satisfies the lifting conditions for all inner horns $Lambda^x_T subset T$ where $partial_x T$ is an inner face. 
]

#rem[
	Recall in the first section that we defined an operad to be a presheaf over certain trees subject to a certain grafting condition. Here, in the case of $oo$-operads, this condition is equivalent to the above inner lifting condition due to that the monoidal structure is the Cartesian one, so we may take advantage of this and translate the condition to the lifting condition. 
]

We may relate this definition to the previous definition of Lurie via the following theorem: 

#thm(name: [@Moerdijk3])[
	Recall that we have a fully faithful functor $F:Omega inj Op$. Then, the following dendroidal nerve functor is an equivalence of categories from the $oo$-operads in the sense of Lurie to the dendroidal $oo$-operads. 
	$ N_d (-)=Hom_(Op_((oo,1)))(F(-),-)in pSh(Omega) $
]

In fact, there are a lot more different (but equivalent) models for the category of $oo$-operads (for example, there is a suitable generalization of the category of symmetric sequences in $oo$-categories), but for simplicity, we will just present the two models above. 

#rem[
	By the grafting condition (or the above equivalent lifting condition), notice that the $oo$-operads again is equivalent to a subcategory of symmetric sequences. We will explain more in the next section. 
]

== Goodwillie calculus

The final categorical tool we will use in the construction of the $LL_oo$-operad is the Goodwillie calculus. In some sense, Goodwillie calculus is the free functor from the category of functors to the category of analytic functors. 

#figure(image("assets/image-6.png", width: 50%), caption: [Thomas Goodwillie, who invented calculus of functors and worked also on $K$-theory])

#def[
	Recall that $[n]$ is the set of $n$ elements. We let $cal(P)([n])$ denote the set of subsets of $[n]$, which is a poset with respect to the inclusion of subsets. This poset looks like an $n$-dimensional cube. We define an $n$-cube in a category $cal(C)$ to be a functor $cal(P)->cal(C)$. 
]

#const[
	Let $X:cal(P)([n])->cal(C)$ be an $n$-cube in $cal(C)$. We define its total fiber 
	$ tfib X=fib(X(nothing)->lim_(S in cal(P)([n])\ S eq.not nothing)X(S)) $
	Dually, we define its total cofiber
	$ tcofib X=cofib(colim_(S in cal(P)([n])\ S eq.not [n])X(S)->X([n])) $
]

#prop[
	Let $X:cal(P)([n])->cal(C)$ be a cube. We let $Y:cal(P)([n-1])->cal(C)$ denote the cube obtained by $Y(T)=fib(X(T)->X(T union n))$. Then, we have $tfib X=tfib Y$. 

	Dually, let $Y:cal(P)([n-1])->cal(C)$ denote the cube obtained by $Y(T)=cofib(X(T)->X(T union n))$. Then, we have $tcofib X=tcofib Y$
]

#coro[
	Let $S in cal(P)([n])$ be a subset, and let $T=[n]-S$. Then for any $n$-cube $X:cal(P)([n])->cal(C)$, let $Y$ be the $S$-cube obtained by for $S' subset S$, 
	$ Y(S')=tfib_(T'subset T) X(S' union T') $
	we have $tfib X=tfib Y$. The dual statement holds for total cofibers. 
]

#def[
	We say a cube of spaces $X:cal(P)([n])->Ani$ to be Cartesian if its total fiber is the point. We say it is $k$-Cartesian if the total fiber is $k$-connected. 

	We say a cube of spaces to be coCartesian if its total cofiber is the point. We say it is $k$-coCartesian if the total cofiber is $k$-connected. 

	We say a cube of spaces to be strongly coCartesian if all its 2-faces are coCartesian squares. 
]

#def[
	For a functor $F:Ani_*->Ani_*$, we say $F$ satisfies $E_n (c,kappa)$ if for any strongly coCartesian $(n+1)$-cube $X$ with $X(emptyset)->X(i)$ $kappa$-connective, we have $F(X)$ a $c$-Cartesian cube. 

	We say $F$ is $n$-excisive if it satisfies $E_n (c,kappa)$ for all $c$ and $kappa$. 
]

#coro[
	By definition, every $n$-excisive functor is $(n+1)$-excisive. 
]

#def[
	We say a functor $F$ is $rho$-analytic if there is some $q$ such that $F$ satisfies the property $E_n (n rho-q,rho+1)$ for all $n$. 
]

#exam[
	By the Blakers-Messay theorem, we have the identity functor $1$-analytic. 
]

#thm(name: [@Goodwillie1])[
	Let $F$ be a $rho$-analytic functor. Then, there are $n$-excisive functors $P_n F$ equipped with comparison maps $F->P_n F$. This is the couniversal $n$-excisive functor equipped with a natural transformation from $F$. 
	
	Moreover, we have the following convergence result: If a space $X$ is $(rho+1)$-connected, then the connectivity of the map $F(X)->P_n F(X)$ converges to $oo$ when $n$ goes to $oo$. That is, the sequence of functors 
	$ P_0 F<- P_1 F<-dots.c $
	converges for sufficiently connective spaces. 
]

We make some more definitions that will help in our later computations. 

#def[
	We say a functor $F$ is $n$-homogeneous if it is $n$-excisive and $P_(n-1)F=*$. 
]

#thm(name: [@Goodwillie1])[
	All $n$-homogeneous functors are of the form 
	$ Omega^oo (C times.o (Sigma^oo (-))^(times.o n))_(h Sigma_n) $
	where $C$ is a spectrum with $Sigma_n$-action, and $(-)_(h Sigma_n)$ is the homotopy quotient functor. 
]

#def[
	Let $F$ be a functor either of spaces or spectra. We let 
	$ D_n F=fib(P_n F->P_(n-1)F) $
	We define the $n$-th derivative of $F$, $partial_n F$, to be the spectrum $C$ with $Sigma_n$-action corresponding to $D_n F$ as in the above theorem. 
]