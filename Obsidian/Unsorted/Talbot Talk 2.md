-   [Talbot Talk 2: Hiro](#talbot-talk-2-hiro)
    -   [Part 1](#part-1)
    -   [Part 2](#part-2)














# Talbot Talk 2: Hiro

## Part 1

-   Assign to a symplectic manifold a Fukaya category

    -   An $A_\infty$ category, slightly different than homotopy-theoretic notion
    -   A dg category
    -   A ${\mathbb{Z}}{\hbox{-}}$linear stable infty category

-   Replace with a functor ${\mathsf{Fuk}}$ that takes a category of symplectic manifolds to a stable infty-category over ${\mathbb{Z}}$

-   Analogies:

    -   The "take modules" functor $(\mathsf{Ring})^{\operatorname{op}}$ to stable infty cats over ${\mathbb{Z}}$, $R\mapsto {\mathsf{R}{\hbox{-}}\mathsf{Mod}}$
    -   ${\mathsf{Sch}}^{\operatorname{op}}$ to stable infty cats over ${\mathbb{Z}}$, $X\mapsto { \mathsf{D} }^b{\mathsf{Coh}}(X)$.

-   Recent conjecture: for certain $M$, make an ${\mathbb{S}}{\hbox{-}}$linear functor ${\mathsf{Fuk}}({-}, {\mathbb{S}})$ where ${\mathsf{Fuk}}(M, {\mathbb{S}})$ is a stable infty category

    -   Can get stable infty categories out of very geometric things: symplectic manifolds
    -   Hope to get an equivalence of categories between some infty category of symplectic manifolds and the infty category of stable infty categories

-   Morse theory recap

    -   Index: write $f$ locally as $\sum x_i^2 - \sum y_i^2$ and the number of negative components is the index of the critical point

-   Weinstein manifolds and sectors: special types of symplectic manifolds obtained from handle attachment (sectors: allowing boundaries)

    -   Allows some mild but controlled singularities making them non-manifolds
    -   Can construct interesting cosheaves of categories

-   Defining a symplectic manifold:

    -   $\omega^{\wedge 2}$ defines a volume form, or use $v\mapsto \omega(v, {-})$ is a non-degenerate 1-form, thinking of $\omega: TM \xrightarrow{\sim} T {}^{ \vee }M$.
    -   The latter definition is useful in derived geometry.
    -   $d\omega = 0$, a flatness condition.

-   The most important example: for $Q$ any smooth manifold, the total cotangent space $T {}^{ \vee }Q, dp \wedge dq)$ is symplectic.

    -   Locally write coordinates ${ {q}_1, {q}_2, \cdots, {q}_{n}}$, get ${ {dq}_1, {dq}_2, \cdots, {dq}_{n}}$, then $\sum p_i dq_i\in T {}^{ \vee }{\mathbb{R}}^n$. Take de Rham derivative to get $\sum dp_i \wedge dq_i \in \Omega^2({\mathbb{R}}^n)$.

-   Can make some symplectic manifolds out of Weinstein cells.

-   Taking a one form $\alpha = \omega({-}, X)$, it turns out $d\alpha = \omega$ so $\alpha$ is an antiderivative.

-   Fact: if $M$ is compact of dimension $d\geq 2$ then $M$ can not be Weinstein.

-   Some kind of "symplectic Pontryagin-Thom" theorem

-   Note: need to distinguish between actual boundaries and "boundaries at infinity"

## Part 2

-   Constructing the (wrapped) Fukaya category

-   A half-dimensional submanifold $L$ of a symplectic manifold is **Lagrangian** iff $\omega{ \left.{{}} \right|_{{L}} } = 0$.

    -   Ex: Any curve in $M$, since a two-form restricted to a one-manifold is trivial
    -   $Q \hookrightarrow T {}^{ \vee }Q$
    -   Any cotangent fiber $T_q {}^{ \vee }Q$

-   Almost complex structure used to define a differential equation

-   Informal definition of ${\mathsf{Fuk}}(M)$: it's like a DG category

    -   Objects are Lagrangians
    -   $\mathop{\mathrm{Hom}}(L_0, L_1)$ is like a chain complex: a graded abelian group $\bigoplus_{z\in L_2 \pitchfork L_1} {\mathbb{Z}}/2[d]$ for some shift $d$ with differential ${\partial}$ whose coefficients are given by counting holomorphic discs from $x$ to $y$.
    -   Composition is given by $y\otimes x\mapsto \sum ? z$ where the count is given by counting holomorphic discs mapping to the triangle $x,y,z$. Note: non-associative, need to consider discs filling in punctured $n{\hbox{-}}$gons for all $n$
    -   Can recover presentation of Stasheff associahedra.

-   There is an equivalence ${\mathsf{Fuk}}(M) \xrightarrow{\sim} {\mathsf{Fuk}}(M \times T {}^{ \vee }{\mathbb{R}}^N)$ where $L\mapsto L \times T_0 {}^{ \vee }{\mathbb{R}}^N$, take colim to replace $N$ with $\infty$.

-   Need to do **wrapping**, but we won't get into it.

-   In the category of Weinstein manifolds, a morphism is a codimension 0 embedding $j: M\hookrightarrow(N, X_N)$ where we convert $X_N$ to a one-form $\theta_N$ using $\omega$, such that $j^* \Theta_N = \Theta_M + df$ for $f$ some compactly supported function.

-   Theorem: the wrapped Fukaya category defines a functor from the category of Weinstein manifolds to $A_\infty{\hbox{-}}\mathsf{Cat}_{\mathbb{Z}}$ which factors through taking $M\times T {}^{ \vee }\times{\mathbb{R}}^N$.

    -   The target has an infinity category structure.

-   Ways to improve this to an ${\mathbb{S}}{\hbox{-}}$linear category:

    -   Reformulate ${\mathsf{Fuk}}(M)$ as the solution to a deformation problem. Very difficult!!
    -   From $M$ construct a stable $\infty{\hbox{-}}$category of Lagrangian cobordisms ${\mathsf{Lag}}(M)$ (already enriched in spectra). Conjecturally: ${\mathsf{Lag}}(M) \otimes_{\mathbb{S}}{H\mathbb{Z}}= {\mathsf{Fuk}}(M)$
    -   Microlocal special sheaves.

-   All three are conjecturally thought to work.

-   Question: can one symplectically construct certain $E_\infty$ maps, e.g. ${\mathbb{S}}, {\mathbb{S}}{ \left[ { \scriptstyle \frac{1}{p} } \right] }$.

    -   Yes, if we localize ${\mathsf{Wein}}$ in a certain way

-   There is a known class of maps $W$ where $M\to N$ induces ${\mathsf{Fuk}}(M) \xrightarrow{\sim} {\mathsf{Fuk}}(N)$.

-   Theorem: ${\mathsf{Wein}}{ \left[ { \scriptstyle \frac{1}{W} } \right] }$ is symmetric monoidal

    -   Can construct a symplectic manifold $D_p$ which is an $E_\infty$ algebra in ${\mathsf{Wein}}{ \left[ { \scriptstyle \frac{1}{W} } \right] }$ where ${\mathsf{Fuk}}(D_p)^\otimes\xrightarrow{\sim} \mathsf{{\mathbb{Z}}{ \left[ { \scriptstyle \frac{1}{p} } \right] }}{\hbox{-}}\mathsf{Mod}^\otimes$.

-   First case of a purely symplectic construction of an $E_\infty{\hbox{-}}$algebra!

    -   Which ones can we construct?

-   Conjecture: $\mathop{\mathrm{Hom}}_{{\mathsf{Wein}}{ \left[ { \scriptstyle \frac{1}{W} } \right] }}({\operatorname{pt}}, {\operatorname{pt}}) \simeq$ to the groupoid of finite spectra, or equivalently the space of functors from finite spectra to itself (since all are given by smash against a specific spectrum)

    -   Here ${\operatorname{pt}}\cong T {}^{ \vee }{\mathbb{R}}^{\infty}$.

-   A way to make "functors are bimodules" concrete in this category.
