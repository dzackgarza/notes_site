# 2021-08-06

![](attachments/20210704015029%201.png)

- Associate a Hermitian form $\omega \da {i\over 2}(h - \bar{h}) \in \Omega^{1, 1}(X)$.

- Can always get a canonical volume form $\vol_M \da \omega^n/n! \in \Omega^{n, n}(M)$, which in coordinates is $(i/2)^n \det h_{ab} dz^I \wedgeprod \bar{dz}^I$.

- $\omega$ may or may not be closed, i.e. $d\omega = 0$.
  If so, $\omega$ is Kähler (and incidentally symplectic).


## 12:37

> Some notes on the following paper: <http://www2.math.umd.edu/~wmg/SymplecticNature.pdf>

- Common symplectic forms arise as the imaginary part of a Kähler Hermitian metric.
- Moduli spaces that admit Kähler structures, associated to a single Riemann surface $X$?
  - The Jacobi variety (moduli space of degree 0 line bundles, so $\Pic^0(C)$ for $C$ an algebraic curve)
  - Teichmüller space
  - Moduli of stable vector bundles
  - $H^1(X; \RR)$?
- Complex structures of these over-spaces may vary as the complex structure of $X$ is deformed, but the symplectic structure is a topological invariant.
- **Goal**: unify all of these examples, interpret the resulting symplectic structure as arising from an intersection pairing on $X$.

- $S$ a closed oriented topological surface, $\pi \da \pi_1(S)$, $G$ a connected Lie group, $\Hom(\pi, G)$ the real-analytic variety of representations in the compact-open topology 
  - Note that if $G\in \Ab$ then 
  \[
\Hom(\pi, G)/G = \Hom(\pi, G) = H^1(\Sigma; G)\in \Ab
  ,\] 
  and is an algebraic variety if $G$ is an algebraic group.

- $H\da \Hom(\pi, G) \in \mods{G}$ where $G$ acts by composing with $\Inn(G)$.
  - In generality, $\Hom(\pi, g) \in \bimod{\Aut \pi}{G}$.
    Since $G$ acts by $\Inn(G)$, we get $H\in \bimod{\Out \pi}{G}$.
  - Can take $H \da \Hom(\pi, G)/G$ -- supposed to look like "outer" representations?
  - If $G\in \Ab$ then $H \cong H^1(S; G) \in \Ab$. 
  Under more general assumptions, $H$ admits a symplectic structure generalizing the Kähler forms on the spaces above.
- **Main result**: The Weil-Petersson Kähler form on $\mct_S$ extends to a symplectic structure on $\Hom(\pi, G)/G$ for $G = \PSL_2(\RR)$ and $\PSL_2(\CC)$.
  - Also a new proof that the WP metric on $\mct$ is Kähler, using periods of quadratic differentials.

- Fact: $\Out \pi \cong \pi_0 \Diff(S) = \MCG(S)$. 
  $\mct_S \in \pi_0 H$ is a connected component, and $\mct_S / \Out \pi$ is the moduli of complex structures on $S$.
- $H$ is singular: pick out simple points $H^-$ whose centralizers have minimal dimension, this is a possibly non-Hausdorff topological manifold? 

  > Why this condition of centralizers with minimum dimension?

  The singularities are at worst quadratic.
  A symplectic structure is any closed nondegenerate 2-form $\omega$ on $H^-$, then try to extend $\omega$ to all of $H$.
    Obstructions may live in $\T H$, the Zariski tangent space?
  - *How do you define differential forms away from smooth manifolds..?*

- There is a functor
\[
\correspond{
  (G, B), \text{ Lie groups with} \\
  \text{a symmetric bilinar form on }\lieg
}
&\mapstofrom
\correspond{
  \text{Symplectic $G\dash$ spaces} \\
  G \da \Out \pi
} \\
(G, B) &\mapsto (\Hom(\pi,G)/G, \omega^{(B)} )
,\]
where $\omega^{(B)}$ is a symplectic structure defined by $B$.

- For $G= U_n$, $H$ is the space of stable vector bundles.

- Use Fox calculus to write $\omega^{(B)}$ as an algebraic tensor in the algebraic coordinates on $H$ as an explicit 2-cycle no a surface.

- Can prove that the WP metric is Kähler by showing that the canonical Hermitian metric on the space of stable rank 2 vector bundles of Chern class zero is Kähler.

- $\Hom(\pi, G)$ equipped with the compact-open topology: the paper says $\phi_n \to \phi$ iff $\phi_n(g) \to \phi(g)$ for all $g$.
  This sounds like pointwise convergence, but maybe this already implies uniform convergence of $\phi_n$ somehow..?
  Assuming $G$ is compact maybe?

- Remarkable fact: points of $\Hom(\pi, G)$ where $G$ does not act locally freely are precisely the singular points.

- Algebraic coordinates: take $G^{\times 2k}$, where $\pi = \gens{A_i, B_i}_{i\leq k}/\gens{\prod [A_i, B_i]}$, then the relation $\prod [A_i, B_i] = 1$ is polynomial in the variables $A_i, B_i$.
So $H$ is an algebraic variety.

- The Zariski tangent space: $Z^1(\pi; \lieg_{\ad_f})$ for $f\in H$, where $\lieg = \Lie(G)$.
  Found by taking a path $f_t$, identified with a crossed morphism $\pi \to \lieg_{\ad_f}$ in $\mods{\pi}$.
  Write $f_t(x) = e^{t u(x) + O(t^2) } f(x)$, enforcing $f_t(xy) = f_t(x) f_t(y)$ yields a cocycle condition 
  \[
  u(xy) = u(x) + \ad_{f(x)} u(y)
  .\]


- Can expand to 
\[
f_t = \exp\qty{tu(x) + t^2 u_2(x) + O(t^3)} f(x)
,\]
and finding a 2nd order term $u_2$ reduces to solving an equation enforcing a similar homomorphism condition:
\[
u_{2}(x)-u_{2}(x y)+\operatorname{Ad} \phi(x) u_{2}(y)=\frac{1}{2}[u(x), \text { Ad } \phi(x) u(y)]
.\]
The first obstruction is the following product being nonzero:
\[
[\xi, \xi]: H^p(\pi; \lieg_{\ad_f}) \tensor H^q(\pi; \lieg_{\ad_f}) &\to H^2(\pi; \lieg_{\ad_f}) \\
x\tensor y &\mapsto {1\over 2}[ u(x), \ad_{f(x)}u(y)]?
.\]
  Get an infinite series of obstructions from coefficients in Taylor series for $f(x)\inv f_t(x)$, each taking values in $H^2(\pi; \lieg_{\ad_f})$.
  Here $\xi\in H^1(\pi, \lieg_{\ad_f})$ is tangent to a path.

- Can use Poincare duality to compute dimensions:
\[
\dim H^1(\pi; \lieg_{\ad_f}) = (2p-2) \dim G + 2\dim Z(f)
.\]

- Assume $G$ preserves a nondegenerate symmetric bilinear form $B$ on $\lieg$.
  Get a pairing
  \[
  H^1(\pi; \lieg_{\ad_f})
  \tensor
  H^1(\pi; \lieg_{\ad_f})
  &\to
  H^2(\pi; \RR) \cong \RR
  ,\]
  defined by cup product on $\pi$ and $B$ as coefficient product.
  Regarding $H^1$ as $\T H$, regard this as a 2-tensor $\omega^{(B)}$.
  Showing it is closed takes some work.

  - Idea: view $H^1$ as de Rham cohomology of $S$ with coefficients in a flat vector bundle.
  Take complex $A^*(S; V)$ as $V\dash$valued differential forms on $S$.
  These are maybe sections of the form $\globsec{\Omega^*_X \tensor V}$, so locally $\omega \tensor s$ where $\omega$ is an $n\dash$form and $s$ is a section of $V$.

  - de Rham theorem: $H^*(A^\bullet(S; V)) = H_\sing^*(S; V) = H_{\Grp}^*(\pi; V)$ with $S = K(\pi, 1)$.

  - Go to a larger space $\liea$ of all connections on a certain principal $G\dash$bundle: ?

