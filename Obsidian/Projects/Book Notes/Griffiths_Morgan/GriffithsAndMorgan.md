---
date: Unknown
---

-   [Griffiths and Morgan](#griffiths-and-morgan)
    -   [Postnikov Towers](#postnikov-towers)














Griffiths and Morgan
====================

Overall purpose: want to relate $C^\infty$ forms on a manifold to AT invariants. One significant result: given a manifold $M$, the singular cohomology $H^*(M, {\mathbb{R}})$ is isomorphic to the cohomology of the differential graded algebra of $C^\infty$ forms, $H^*_{DR}(M)$.

> Is this de Rham cohomology..?

This DGA of smooth forms is actually enough to calculate all of the AT invariants, and can be used to build the Postnikov tower of $M$ ($\otimes{\mathbb{R}}$)

One construction is the localization of a CW complex at ${\mathbb{Q}}$, this removes torsion and divisibility phenomena. The effect on the Postnikov tower is just then tensoring with ${\mathbb{Q}}$.

Things that are homotopy equivalent to CW complexes:

-   Manifolds
-   Varieties
-   Loop spaces of CW complexes
-   Eilenberg-MacLane spaces? $K(\pi, n)$.

The Whitehead theorem holds for these: $X \xrightarrow{f} Y$ is an homotopy equivalence iff $\pi_*(X) \xrightarrow{f_*} \pi_*(Y)$ is an isomorphism.

Recall the weak topology for infinite CW complex: $U$ is open in $X$ iff $U \cap X^n$ is open for every $n$.

Theorem: Given any $X \xrightarrow{f} Y$, we can transform this into an inclusion up to homotopy equivalence. (Just replace $Y$ my the mapping cylinder of $f$, denoted $M_f \simeq Y$).

A fibration is anything that satisfies the homotopy lifting property. Examples:

-   Locally trivial fiber bundles
-   Vector bundles
-   Covering spaces

Path spaces are contractible and yield fibrations.

Homology can be defined with coefficients in any abelian group by tensoring the singular chain groups with $G$. That is, if we $H_*(X)$ obtained from

$\xrightarrow{{\partial}_{n+1}} C_n(X) \xrightarrow{{\partial}_n} C_{n-1}(X) \xrightarrow{{\partial}_{n-1}} C_{n-2}(X) \cdots \xrightarrow{{\partial}_1} C_0(X)$

then we can define $H_*(X; G)$ via

$\xrightarrow{{\partial}_{n+1}\otimes 1} C_n(X)\otimes G \xrightarrow{{\partial}_n\otimes 1} C_{n-1}(X) \otimes G \cdots \xrightarrow{{\partial}_1\otimes 1} C_0(X) \otimes G$

Note that homology has the structure of a graded group, while cohomology has the structure of a graded commutative ring.

Axioms of homology:

-   $X \xrightarrow{f} Y$ always induces a map on homology $H_*(X) \xrightarrow{f_*}H_*(Y)$
-   An orientation on $S^n$ induces an isomorphism $H_n(S^n) \cong {\mathbb{Z}}$; reversing orientation induces the map ${\mathbb{Z}}\xrightarrow{\phi}{\mathbb{Z}}: \phi(1) = -1$
-   $Y\subseteq X$ yields the definition of relative homology $H_*(X, Y)$, and Mayer Vietoris holds; i.e. there is a long exact sequence $\cdots H_n(Y) \to H_n(X) \to H_n(X, Y) \to H_{n-1}(Y) \cdots$
-   Excision: $U \subset Y \subset X$ and $\mkern 1.5mu\overline{\mkern-1.5muU\mkern-1.5mu}\mkern 1.5mu \subset Y^\circ$ implies $H_*(X-U, Y-U) \cong H_*(X,Y)$.

Any homology theory satisfying these properties is equivalent to singular homology.

Use notation $[X, Y]$ for homotopy classes of maps $X\to Y$, then $\pi_1(X) = [S^1, X]$ and we can define $\pi_n(X) = [S^n, X]$. Homotopy groups fail excision.

Whitehead theorem: for CW complexes, if $X \xrightarrow{f} Y$ induces $\pi_n(X) \xrightarrow{f_*} \pi_n(Y)$ and $f_*$ is an isomorphism (and $Y$ is connected), then $f$ is a homotopy equivalence. For spaces that aren't CW complexes, this may fail, and we say $f$ is a *weak homotopy equivalence* instead.

Hurewicz theorem: the bottom homology and homotopy groups are isomorphic, and homology below the bottom homology is zero.

General note: there are equivalent "relative versions" of most of these theorems.

**Spectral Sequence:** Page 45.

For any fibration $F \xrightarrow{} E \xrightarrow{\pi} B$, we get a LES in homotopy $\pi_n(F) \to\pi_n(E) \to\pi_n(B) \xrightarrow{{\partial}} \pi_{n-1}(F)$

Basic question: How are the cohomologies of $F,E,B$ related? An easy case is when $E=F\times B$, but even then $\pi_n(F\times B) \neq \pi_n(F) \oplus \pi_n(B)$. Need the Kunneth theorem, formula is more complicated.

For CW complexes and a fibration, the relationship is nice - look at the total space of the fibration. It is filtered by increasing $n$-skeleta, and we use the LES. More general filtrations need a spectral sequence.

*Note: use LES as trivial example of spectral sequence! Write out the pages, differentials, etc*

The spectral sequence relates the cohomology of *successive pairs* in the filtration to the cohomology of the total space.

**Theorem**: If $B$ is path-connected and $\pi_1(B, b_0)$ acts trivially on $H^*(F)$, then there are isomorphisms `
<span class="math display">
\begin{align*}
H^n(E^p, E^{p-1}) \cong \prod_{\text{$p$-cells in $B$}} H^n(\pi^{-1}e^p, \pi^{-1}{\partial}e^p) \\ \cong C^p(B; H^{n-p}(F))
\end{align*}
<span>`{=html} In other words, for any $k$, we can think of $H^*(E^p, E^{p-k})$ as a $k$-th approximation to $H^*(E^p)$.

(Should probably review results about polynomial and exterior algebras. And what does it mean for $\pi_1$ to act trivially on a fiber?)

**EXAMPLES OF COMPUTATION: Page 54**

-   Cohomology of ${\mathbb{CP}}^n$ using $S^1 \to S^{2n+1} \to{\mathbb{CP}}^n$
-   Cohomology of the infinite Grassmannian $\lim_n G(k, n)$

Postnikov Towers
----------------

A decomposition dual to cell decomposition, the atoms of the space are Eilenberg-Maclane spaces $K(\pi, n)$. (Note the spheres are atomic in homology, while the $K$ are atomic in homotopy.)

Gives a way of going back and forth between $X$ and $\pi_*(X)$: defined as a tower of spaces $X_0 \leftarrow X_1 \leftarrow \cdots$

-   $X_{i-1} \leftarrow X_i$ is a fibration
-   $\pi_k(X_n) = \mathbb{1}[k \leq n]\cdot\pi_k(X) + \mathbb{1}[k > n]\cdot 0$
    -   So all lower homotopy groups agree at the $n$-th spot
-   (Probably) $X_i \hookrightarrow X$

Unique up to homotopy, $X = \lim_n X_n$ (an inverse limit). Essentially constructs $X$ out of $K(\pi_n(X), n)$.

*Note: revisit and draw diagrams for Postnikov Towers*

Homotopy and homology commute with direct limits.

$(\cdot \otimes{\mathbb{Q}})$ is a right-exact functor, most results in this section are about how terms in exact sequences all become ${\mathbb{Q}}$-vector spaces. In particular, $H^*(X; {\mathbb{Q}}), H_*(X;{\mathbb{Q}})$ are.

Homotopy theory over ${\mathbb{Q}}$ is much easier than over ${\mathbb{Z}}$. Sample results: `
<span class="math display">
\begin{align*}
\pi_i(S^{2n-1}) \otimes {\mathbb{Q}}= \begin{cases}
{\mathbb{Q}}& i=2n-1 \\
0 & \text{otherwise}
\end{cases}
\end{align*}
<span>`{=html}

Then using the fact that $\pi_i(S^{2n-1})$ is always finitely generated, we can conclude `
<span class="math display">
\begin{align*}
\pi_i(S^{2n-1}) = \begin{cases}
{\mathbb{Z}}& i=2n-1 \\
\text{a finite group}  ~G & \text{otherwise}
\end{cases}
\end{align*}
<span>`{=html} This yields for even $n$: `
<span class="math display">
\begin{align*}
\pi_i(S^{n})  = \begin{cases}
{\mathbb{Z}}& i=n \\
{\mathbb{Z}}\oplus G & i=2n-1 \\
H & \text{otherwise}
\end{cases}
\end{align*}
<span>`{=html} for some finite groups $G,H$!

Can also obtain Bott Periodicity this way.
