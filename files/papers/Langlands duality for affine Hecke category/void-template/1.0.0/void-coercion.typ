#let coerce = sym.triangle.r.small
// valid values: "coercion", "let", "where"
#let state-coercion-mode = state("state-coercion-mode", "coercion")

#set text(
  font: ("New Computer Modern"),
)

#let coercion-description = [
  The coercion notation is a notation from type theory that I want to adopt to denote mapping a value through a function canonically known in the background. When an unnamed canonical map $X -> Y$ is known in the background, while $x in X$, the notation: 
  $ x coerce Y  "or" x coerce_X Y$
  denotes the image of $x$ under the canonical map $X -> Y$. It roughly takes the niche of the notations: 
  - Let $phi$ be the canonical map $X -> Y$ in $phi(x)$. 
  - $phi(x)$ where $phi$ is the canonical map $X -> Y$. 

  Now obviously, we already have many ad hoc notations for describing a specific type of canonical map. For example: 
  - $[x]$ for a canonical map $A -> A\/frak(a)$; 
  - $x|_U$ for a canonical map $cal(F)(X) -> cal(F)(U)$; 
  - $x\/1$ for a canonical map $A -> S^(-1) A$. 
  However, not all types of canonical maps have a specific notation. Those more accurate notations should be preferred whenever possible and unambiguous. The coercion notation can be preferred when: 
  - Many unnamed canonical maps are chained together along with many named functions: For example, "$f (x coerce Y) coerce Z$" is clearer than "$psi(f(phi(x)))$ where $phi:X -> Y, psi:f(Y)->Z$ are canonical maps". 

  - There are multiple target type for a special notation. Consider when $S^(-1) A$ and $T^(-1) A$ are both in the background: 
    - $a\/1 = 0 in S^(-1) A$
    - $0 = a\/1 in S^(-1) A$
    - $a coerce S^(-1)A = 0$
  I'd say the last one is at least as good as the first one. The first one is closer to natural language in its statement ("$a$ is zero in the ring $S^(-1) A$") while the last one is closer to mathematical language (the image of $a$ in $S^(-1) A$ is zero). 

  - There are no standard accurate notation about a particular type of canonical maps, say canonical maps given by adjoint functors, maps known in the background as $X$ being a scheme over $S$, or $B$ being an $A$-algebra, unnamed arrows on a commutative diagram, and other uses here and there. 
    - $x coerce S = y coerce S$: "$x$ and $y$ lie above the same point of $S$"
]

#coercion-description
