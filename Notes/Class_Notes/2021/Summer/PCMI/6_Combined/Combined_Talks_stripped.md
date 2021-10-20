












# Preface

> (DZG): These are just some lists and resources I jotted down over the course of the week, relating to definitions to look up or topics/conjectures to read more about. I've included them as a vague "word cloud", perhaps as a useful way to get some high-level view of what ideas might show up.

> Also, a disclaimer: most of these notes were live-tex'd, and *almost certainly* contain errors or inaccuracies! Such errors are most likely my own, due either to hearing and typesetting incorrectly, or simply misunderstanding. For a *much* more accurate account of the details for these talks, I'd recommend reading each speaker's own lecture notes, which I've linked in each relevant section.

## Some general resources

-   [nLab's entry on motivic homotopy theory](https://ncatlab.org/nlab/show/motivic+homotopy+theory)
    -   [Covering families and Grothendieck topologies](https://ncatlab.org/nlab/show/Grothendieck+topology)
    -   [All of the actual lecture notes from the authors](https://www.ias.edu/pcmi/pcmi-2021-gss-lecture-notes-and-problem-sets)
-   [Source code and raw files for this project](https://dzackgarza.com/rawnotes/Class_Notes/2021/Summer/PCMI/)

## Definitions

-   \( K{\hbox{-}} \)theory
-   Milnor \( K{\hbox{-}} \)theory
-   Witt ring
-   Period and index
-   Symbols
-   Brauer group
-   Bloch's higher Chow groups
-   Mixed characteristic
-   Weil Cohomology theory
    -   Betti cohomology
    -   Rigid cohomology
    -   Motivic cohomology
    -   Étale cohomology
    -   Galois cohomology
-   Sites
    -   The smooth site
    -   The étale site
    -   The Nisnevich site
    -   Difference between big and small sites
-   Cartier divisors
-   Henselian schemes
-   Dévissage
-   Purity theorems
-   Fiber functor
-   Transfers
-   Torsors
-   Discretely valued fields
-   Cotangent complex
-   Symbols
    -   Cohomological symbol
    -   Tate symbol
    -   Galois symbol
-   Tate twist

## Results/Conjectures

-   What is \( {\mathsf{K}}_n({\mathbb{Z}}) \)?
-   Kummer-Vandiver conjecture
    -   For \( h_k \) the class number of the maximum real subfield \( K \) of the \( p \)th cyclotomic fields, \( p\notdivides h_k \).
-   Milnor conjecture (proved)
    -   Relates \( H_{ \mathsf{Gal}}  \) to to \(  {\mathsf{K}}^{\scriptstyle\mathrm{M}} /2 \) and quadratic forms.
-   Bloch-Kato conjecture, i.e. Norm-Residue isomorphism (proved?)
    -   There is an isomorphism induced by the norm-residue map
        \[
        h_n:  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _n(F) \to H^n(F; \mu_\ell{ {}^{ \scriptstyle\otimes_{}^{n} }  })
        .\]

    -   Generalized Milnor's conjecture to odd primes.

    -   Closely related to Beilinson-Lichtenbaum
-   Standard conjectures on algebraic cycles
-   Beilinson-Soulé conjecture
    -   Support in degrees \( d<0 \) for \( {\mathbb{Z}}_{ \mathrm{mot}} (j) \).
    -   Currently unknown
-   Gersten conjecture
    -   Support in degrees \( d\leq 2j \) for \( {\mathbb{Z}}_{ \mathrm{mot}} (j) \).
-   Beilinson-Lichtenbaum conjecture
    -   There is an isomorphism
        \[
        H^p_{ \mathrm{mot}} (X; {\mathbb{Z}}(q)) \xrightarrow{\sim} H^p_\text{ét}(X; {\mathbb{Z}}(1)) && p\leq q
        .\]
-   Vanishing and rigidity conjectures
-   Kummer--Vandiver conjecture
-   Tate conjecture
-   Kato conjecture
-   Bass' finite generation conjecture
    -   Morrow: for \( R \) a regular ring of finite type over \( {\mathbb{Z}} \), \( {\mathsf{K}}_n(R) \) is finitely generated.
    -   Wikipedia: the groups \( G_n(A) \) are finitely generated \( {\mathbb{Z}}{\hbox{-}} \)modules when \( A \) is finitely generated as an \( {\mathbb{Z}}{\hbox{-}} \)algebra, where \( G_n \) is the variant of the \( {\mathsf{K}}{\hbox{-}} \)theory construction where one takes finitely generated modules instead of projective modules.
    -   Generalizes Dirichlet's unit theorem: \( {\mathsf{K}}_1(R) \) is finitely-generated for \( {\mathcal{O}} \) the ring of integers of a number field \( K \).
-   Parshin's conjecture
    -   Vanishing of higher \( {\mathsf{K}}{\hbox{-}} \)groups for smooth varieties over finite fields.
-   Quillen-Lichtenbaum conjecture
-   Hilbert 90

## Generic Notes

-   \(  {\mathsf{K}}^{\scriptstyle\mathrm{M}}  \) has an explicit description and is easy to map out of. \( H_{ \mathrm{mot}}  \) is difficult in general, but usual \( {\mathsf{K}}{\hbox{-}} \)theory is filtered by \( H_{ \mathrm{mot}}  \) pieces.
-   Some motivations for \( {\mathsf{K}}{\hbox{-}} \)theory:
    -   Special values of \( L{\hbox{-}} \)functions
    -   \( {\mathsf{K}}_0 \):
        -   AG: Grothendieck-Riemann-Roch, intersection theory on algebraic varieties.
        -   NT: \( {\operatorname{Pic}}(R) \), the class group \( { \operatorname{Cl}} (R) \), class field theory
    -   Higher regulators
    -   Quadratic reciprocity
    -   Embeddings of number fields into \( {\mathbb{R}}, {\mathbb{C}} \).
    -   Whitehead torsion, used in surgery classification of manifolds and the Poincaré conjecture in \( \dim \geq 5 \).
    -   Sheaf cohomology of a \( {\mathsf{K}}{\hbox{-}} \)theory sheaf recovers Chow (Bloch's formula)
-   The Dennis trace relates \( {\mathsf{K}}\to {\operatorname{HH}} \), and \( {\operatorname{THH}} \) yields an intermediate step.

### Major Objects

-   \( H{\mathbb{Z}} \): motivic cohomology.
    -   Compare to \( H_{ \mathrm{mot}}  \)?
-   \( H\tilde {\mathbb{Z}} \): generalized motivic cohomology.
-   \( {\operatorname{CH}}^* \): Chow groups, algebraic codimension \( n \) cycles mod rational equivalence.
-   \( \tilde{{\operatorname{CH}}}^* \): Chow-Witt groups or oriented Chow, formal sums of codimension \( n \) subvarieties with coefficients in \( {\operatorname{GW}}(k) \) for \( k \) some field.
-   \( q_{\operatorname{hyp}}\coloneqq\left\langle{1}\right\rangle + \left\langle{-1}\right\rangle \), the hyperbolic form
-   \( {\operatorname{GW}}(k) \): the Grothendieck-Witt group of \( k \), group completion of the semiring of nondegenerate symmetric bilinear forms under orthogonal sum.
-   \( W(k) \): the Witt group of \( k \), \( GW(k)/{\mathbb{Z}}\left\langle{q_{\operatorname{hyp}}}\right\rangle \).

\( {\mathsf{K}}{\hbox{-}} \)theory:

-   \( {\mathsf{K}}_* \): \( {\mathsf{K}}{\hbox{-}} \)theory.
    -   \( {\mathsf{K}}_0(F) = {\mathbb{Z}} \), \( {\mathsf{K}}_1(F) = F^{\times} \).
    -   \( {\mathsf{K}}_0(R) = \mathop{\mathrm{Hom}}_{\mathsf{Top}}(\operatorname{Spec}R, {\mathbb{Z}}) \). If \( R \) is a domain, \( {\mathsf{K}}_0(R) = {\mathbb{Z}} \).
    -   \( {\mathsf{K}}_0({\mathcal{O}}) \in \operatorname{Ext} ({\mathbb{Z}}, { \operatorname{Cl}} ({\mathcal{O}})) \), \( {\mathsf{K}}_1({\mathcal{O}}) = {\mathcal{O}}^{\times} \).
    -   \( {\mathsf{K}}_1(R) = \operatorname{GL}(R) \).
    -   For finite fields:
        \[
        {\mathsf{K}}_n({\mathbb{F}}_q) = 
        \begin{cases}
        {\mathbb{Z}}& n=0 
        \\
        0 & n \text{ even}
        \\
        {\mathbb{Z}}/\left\langle{q^{ {n+1\over 2} - 1 }}\right\rangle & n \text{ odd}.
        \end{cases}
        \]
-   \( {\operatorname{KO}}_* \): Hermitian \( {\mathsf{K}}{\hbox{-}} \)theory.

```{=tex}
\todo[inline]{Include known computations of \({\mathsf{K}}{\hbox{-}}\)theory, $W(k), GW(k)$, etc.}
```
# Danny Krashen, Talk 1 (Monday, July 12)

## Intro

```{=tex}
\todo[inline]{Missed first 12m}
```
**Abstract**:

> A fundamental question in field arithmetic is how one can bound, in various senses, the complexity of algebraic objects such as algebras, quadratic forms, or cohomology classes. This question is intimately related to notions of essential dimension, symbol length, and also to the construction of generic splitting varieties. In these talks, I will describe some of the principal questions of this sort, and various methods by which they have been approached.

**References**:

-   <http://dkrashen.github.io/>

::: {.remark}
Fix a field \( k_0 \in \mathsf{Field} \), we'll consider extensions \( k\in\mathsf{Field}_{/ {k_0}}  \).
:::

## Galois Cohomology

::: {.definition title="Galois Cohomology"}
For \( M\in{\mathsf{G_k}{\hbox{-}}\mathsf{Mod}} \) for \( G_k \) the Galois group of \( k\in\mathsf{Field}_{/ {k_0}}  \), we can take invariants \( M^{G_k} \). The functor \( {-}^{G_k} \) is left-exact, so we define
\[
H^*_{ \operatorname{Gal}} (G_k; {-}) \coloneqq{\mathbb{R}}^*({-})^{G_k}
.\]
:::

::: {.remark}
Note that the tensor product on \( {\mathsf{G_k}{\hbox{-}}\mathsf{Mod}} \) induces a cup product on \( H^*_{ \mathsf{Gal}}  \). An important example of coefficients is \( M = \mu_\ell^{\otimes m} \), where \( \mu_\ell^{\otimes 0} \coloneqq{\mathbb{Z}}/n \). It is known that \( H_{ \mathsf{Gal}} ^*(G_k; \mu^{\otimes 0}) = {\mathbb{Z}}/n \).

We'll define *symbols*
\[
(a_1, \cdots, a_n) \coloneqq(a_1) \smile\cdots \smile(a_n) \in H_{ \mathsf{Gal}} ^*(k, \mu_\ell^{\otimes n})
,\]
which are in fact generators. To remember the \( \ell \), we write \( ({ {a}_1, {a}_2, \cdots, {a}_{n}})_\ell \).
:::

::: {.remark}
Galois cohomology is a special case of étale cohomology, where for \( M\in {\mathsf{G_k}{\hbox{-}}\mathsf{Mod}} \),
\[
H_{ \mathsf{Gal}} ^n(G_k; M) = H_\text{ét}^n(k; M) = H_\text{ét}^n(\operatorname{Spec}k; M)
.\]
Étale cohomology works for schemes other than just \( \operatorname{Spec}k \).
:::

## Milnor K-Theory

::: {.definition title="?"}
Given \( k\in \mathsf{Field} \), define
\[
 {\mathsf{K}}^{\scriptstyle\mathrm{M}} _*(k) \coloneqq\bigoplus _{i=1}^\infty  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _i(k)
\]
where

-   \(  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _0(k) = {\mathbb{Z}} \)
-   \(  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _1(k) = k^m \), written additively as elements \( \left\{{a}\right\} \) on the left-hand side, so \( \left\{{a}\right\} + \left\{{b}\right\} \coloneqq\left\{{ab}\right\} \).
-   It's generated by \(  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _1(k) \), with products written by concatenation:
    \[
    \left\{{a_1, \cdots, a_n}\right\} = \left\{{a_1}\right\} \left\{{a_2}\right\} \cdots \left\{{a_n}\right\}
    .\]
-   The only relations are \( \left\{{a, b}\right\} = 0 \) when \( a+b=1 \), motivated by
    \[
    (a, b)_\ell = 0 \in H^2_{ \operatorname{Gal}} (k; \mu_\ell^{\otimes 2})
    \iff a+b=1
    .\]
-   There is a map
    \[
     {\mathsf{K}}^{\scriptstyle\mathrm{M}} _0(k) &\to H_\text{ét}^*(k; \mu_\ell^{\otimes 0}) \\
    \left\{{a}\right\} &\mapsto (a)
    ,\]
    and the **Norm-Residue isomorphism** (formerly the **Bloch-Kato conjecture**) states that this is an isomorphism after modding out by \( \ell \), i.e. 
    \[
     {\mathsf{K}}^{\scriptstyle\mathrm{M}} _0(k)/\ell \xrightarrow{\sim} H_\text{ét}^*(k; \mu_\ell^{\otimes 0})
    .\]
:::

## Witt Ring

::: {.remark}
Assume \( \operatorname{ch}k \neq 2 \), so there is a correspondence between quadratic forms and symmetric bilinear forms given by polarization:
\[
\text{Quadratic forms} &\rightleftharpoons\text{Symmetric bilinear forms} \\
q_b(x) \coloneqq b(x,x) &\mapsfrom b(x, y) \\
q &\mapsto b_q(x,y) \coloneqq{1\over 2}\qty{q(x+y) - q(x) - q(y)}
.\]
So we'll identify these going forward and write \( q \) for an arbitrary symmetric bilinear form or a quadratic form. We say \( q \) is **nondegenerate** if there is an induced isomorphism:
\[
V &\xrightarrow{\sim} V {}^{ \vee }\\
v &\mapsto b_q(v, {-})
.\]

> Note that a symmetric bilinear form \( q \) on \( V \) can be regarded as an element of \( \operatorname{Sym}^2(V {}^{ \vee }) \).
:::

::: {.definition title="The Witt Ring"}
Let \( {\mathsf{QuadForm}}_{/ {k}}  \) be the category of **quadratic spaces**: pairs \( (V, q) \) with \( V\in \mathsf{VectSp}_{/ {k}}  \) a \( k{\hbox{-}} \)vector space and \( q\in \operatorname{Sym}^2(V {}^{ \vee }) \) representing a quadratic form on \( V \). The **Witt ring** is generated as a group by isomorphism representing a quadratic form on \( V \).
\[
W(k) = \frac{{\mathbb{Z}}\left\langle{\left\{{ [(V, q)] \in {\mathsf{QuadForm}}_{/ {k}}  }\right\} }\right\rangle}{
\left\langle{
q_{\operatorname{hyp}}, (q_1 + q_2) - (q_1 \perp q_2)
}\right\rangle 
}
\in {\mathsf{Ab}}{\mathsf{Grp}}
.\]
where the **hyperbolic form** is defined as \( q_{\operatorname{hyp}}(x, y) = xy \). The ring structure is given by the tensor product (a.k.a. Kronecker product of forms).
:::

::: {.remark}
Noting that Galois cohomology lives mod \( \ell \) for various \( \ell \), here \(  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _0(k) \) lives over \( {\mathbb{Z}} \). So Milnor K-theory relates all of the various mod \( \ell \) Galois cohomologies together.
:::

::: {.definition title="Fundamental ideals and Pfister Forms"}
The **fundamental ideal** \( I(k) {~\trianglelefteq~}W(k) \) is the ideal of even dimensional forms, and set \( I^n(k) \coloneqq(I(k))^n \). There is a map
\[
 {\mathsf{K}}^{\scriptstyle\mathrm{M}} _n(k) &\to I^n(k) / I^{n+1}(k) \\
\left\{{{ {a}_1, {a}_2, \cdots, {a}_{n}}}\right\} &\mapsto \left\langle{\left\langle{ { {a}_1, {a}_2, \cdots, {a}_{n}} }\right\rangle}\right\rangle
,\]
which follows from Gram-Schmidt: any form can be diagonalized \( q \cong \sum a_i x_i^2 \), which we can write as \( \left\langle{{ {a}_1, {a}_2, \cdots, {a}_{n}}}\right\rangle \). We can define the **\( n{\hbox{-}} \)fold Pfister forms**
\[
\left\langle{\left\langle{ a }\right\rangle}\right\rangle &\coloneqq\left\langle{\left\langle{1, -a}\right\rangle}\right\rangle \\
\left\langle{\left\langle{{ {a}_1, {a}_2, \cdots, {a}_{n}}}\right\rangle}\right\rangle &\coloneqq\prod_{i=1}^n \left\langle{\left\langle{ a_i }\right\rangle}\right\rangle
.\]
:::

::: {.remark}
The **Milnor conjecture** (proved by Voevodsky et al) states that the above map is an isomorphism after modding out by 2, so
\[
 {\mathsf{K}}^{\scriptstyle\mathrm{M}} _n(k)/2 \xrightarrow{\sim} I^n(k) / I^{n+1}(k)
.\]
Moreover, the LHS is isomorphic to \( H^n(k, \mu_2) \). There are interesting maps going the other way
\[
I^n(k) \to I^n(k) / I^{n+1}(k) \xrightarrow{\sim} H^n(k, \mu_2)
\]

Upshot: this is surjective -- any mod \( 2 \) cohomology class comes from a quadratic form, and thus we can reason about cohomology by reasoning about quadratic forms.
:::

## Motivic Cohomology

::: {.remark}
**Motivic cohomology** relates the various mod \( \ell \) cohomologies together much like \(  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _* \), but additionally relates different twists. In particular, it relates various \( H^i_\text{ét}(k; \mu_\ell^{\otimes j}) \), where Milnor K-theory interprets this "diagonally" when \( i=j \). This works by constructing **motivic complexes**
\[
{\mathbb{Z}}(m) \in \mathsf{Ch}( \underset{ \mathsf{pre} } {\mathsf{Sh} }{\mathsf{sm}}{\mathsf{Sch}}_{/ {k}} )
,\]
which are complexes of presheaves on smooth \( k{\hbox{-}} \)schemes, usually considered in the Zariski, étale, or Nisnevich topologies.
:::

::: {.remark}
**Zariski hypercohomology** is defined as
\[
{\mathbb{H}}^n(X; {\mathbb{Z}}(m)) = H^{n, m}(X; {\mathbb{Z}}) = H_{ \mathrm{mot}} ^n(X; {\mathbb{Z}}(m)) && \text{for } X\coloneqq\operatorname{Spec}k
.\]
These relate to Galois cohomology in the following ways:

-   There is a quasi-isomorphism \( \mu_\ell^{\otimes m} \xrightarrow{\sim_W} {\mathbb{Z}}/\ell(n) \) in the étale topology.
-   There is an isomorphism \( H^n_{\mathrm{zar}}(k, {\mathbb{Z}}(n)) \xrightarrow{\sim}  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _n(k) \).
-   Bloch-Kato identifies \( H_{\mathrm{zar}}^*(X; {\mathbb{Z}}/\ell(n)) \xrightarrow{\sim} H_\text{ét}^n(X; {\mathbb{Z}}/\ell(n)) \).
:::

## Dimension

::: {.remark}
There are a number of competing notions for the "dimension" of a field.
:::

::: {.definition title="Dimension of a field"}
If \( k \) is finitely generated over either a prime field or an algebraically closed field, we say
\[
\dim(k) 
=
\begin{cases}
[k: k_0]_{\mathrm{tr}}& k_0 = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu_0  
\\
[k: k_0]_{\mathrm{tr}}+1 & k_0 \text{ finite} \\
[k: k_0]_{\mathrm{tr}}+ 2 & k_0 = {\mathbb{Q}}.
\end{cases}
\]
:::

::: {.definition title="Cohomological dimension"}
We define its **cohomological dimension** \( \operatorname{cohdim}(k) \), which is at most \( n \) if \( H^n(G_k; M) = 0 \) for all \( m>n \) and \( M \) torsion,
\[
\operatorname{cohdim}(k) \coloneqq\min \left\{{n {~\mathrel{\Big|}~}\operatorname{cohdim}(k) \leq n}\right\}
.\]
Equivalently, \( \operatorname{cohdim}(k) = n \iff \) there exists a torsion \( M \) with \( H^n(G_k; M) \neq 0 \) and \( H^m(G_k; M) = 0 \) for all \( m>n \).
:::

::: {.remark}
\( \operatorname{cohdim}(k) = \dim(k) \) if \( k \) is finitely generated or a finite extension of \( k_0 = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu_0 \), or if \( k \) is finitely generated over \( {\mathbb{Q}} \) and has no real orderings. So if \( k \) has orderings, \( \operatorname{cohdim}(k) = \infty \).
:::

::: {.definition title="Diophantine Dimension"}
We say \( k \) is \( C_n \) if for \( d>0 \) and \( m>d^n \), then every homogeneous polynomials of degree \( d \) in \( m \) variables has a nontrivial root.
\[
\operatorname{ddim}(k) \coloneqq\min\left\{{n{~\mathrel{\Big|}~}k \text{ is } C_n}\right\}
.\]
:::

::: {.example title="?"}
If \( k \) is finitely generated or finite over \( k_0 = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu_0 \), then
\[
\operatorname{ddim}(k) = \dim(k) = \operatorname{cohdim}(k)
.\]
:::

::: {.definition title="$T_n\\dash$rank"}
We say \( k \) is \( T_n \) if for every \( { {d}_1, {d}_2, \cdots, {d}_{r}} > 0 \) and every system of polynomial equations \( f_1 = \cdots = f_r = 0 \) with \( \deg f_i = d_i \) in \( m \) variables, with \( m > \sum d_i^n \). Then the **\( T_n{\hbox{-}} \)rank** is defined as
\[
T_n{\hbox{-}}\operatorname{rank}(k) \coloneqq\min\left\{{n {~\mathrel{\Big|}~}k \text{ is } T_n}\right\}
.\]
:::

::: {.question}
Note that \( T_n\implies C_n \), so \( T_n{\hbox{-}}\operatorname{rank}(k) \geq \operatorname{ddim}(k) \), when are they equal? This is likely unknown.
:::

::: {.remark}
There is a famous example of a field \( k \) with \( \operatorname{cohdim}(k)=1 \) but \( \operatorname{ddim}(k) = \infty \).
:::

::: {.question}
Is it true that \( \operatorname{ddim}(k) \geq \operatorname{cohdim}(k) \)? Serre showed that this holds when \( \operatorname{cohdim} \) is replaced by \( \operatorname{cohdim}_2 \), the 2-primary part -- does this hold for all \( p \)? These are both open.

Why would one expect this to be true?
:::

::: {.remark}
A recent result: \( \operatorname{cohdim}_p \) grows at most linearly in \( \operatorname{ddim} \), with slope not 1 but rather \( \approx \log_2 p \). These questions say that if an equation has enough variables then there is a solution, but why should this be reflected in cohomology? To show this bound, one would want to show that given some \( \alpha \in H^*(k) \), there exists a polynomial \( f_\alpha \) where if \( f_\alpha \) has a root and \( \alpha = 0 \) in homology. In special cases, we were able to come up with such polynomials. When \( \alpha \) is a symbol, this is closely related to *norm varieties* which have a point iff \( \alpha \) is split. One might optimistically hope these are described as hypersurfaces, from which answers to the above would follow, but they turn out to not have such a concrete realization.
:::

## Structural Problems in Galois Cohomology

::: {.remark}
Here we'll describe the problems we need help with! Perhaps insight from motivic cohomology will lend insight to them. We'll write \( H^i(k) \coloneqq H^i(k; \mu_\ell^{\otimes j}) \).
:::

### Period-Index Problems

::: {.definition title="An extension splitting a cohomology class"}
If \( \alpha \in H^i(k) \), we say \( L_{/ {k}}  \) **splits** \( \alpha \) if
\[
{ \left.{{\alpha}} \right|_{{L}} } = 0\in H^i(L)
.\]
:::

::: {.definition title="?"}
We define the **index**
\[
\mathop{\mathrm{ind}}\alpha \coloneqq\gcd\left\{{[L:k] {~\mathrel{\Big|}~}L_{/ {k}}  \text{ finite and splits } \alpha}\right\}
.\]
and the **period** of \( \alpha \) as its (group-theoretic) order \( H^i(k) \). Note that \( \mathop{\mathrm{per}}\alpha \leq \ell \).
:::

::: {.remark}
One can show that \( \mathop{\mathrm{per}}\alpha \divides \mathop{\mathrm{ind}}\alpha \), and \( \mathop{\mathrm{ind}}\alpha \divides \qty{\mathop{\mathrm{per}}\alpha}^m \) for some \( m \).
:::

::: {.question}
For a fixed \( k \) and \( i, j, \ell \), which is the minimum \( m \) such that
\[
\mathop{\mathrm{ind}}\alpha \divides \qty{\mathop{\mathrm{per}}\alpha}^m
?\]
Alternatively, what is the minimum \( m \) such that \( \mathop{\mathrm{ind}}\alpha \divides \ell^m \)?
:::

::: {.conjecture}
If \( \operatorname{ddim}(k) = n \) (or \( \dim(k) = n \) since \( k \) is finitely generated) with \( \alpha \in H^2(k, \mu_\ell) \), then
\[
\mathop{\mathrm{ind}}\alpha \divides \qty{\mathop{\mathrm{per}}\alpha}^{n-1}
.\]
:::

::: {.remark}
Even in this case, no known bound is known for \( k = {\mathbb{Q}}(t) \), for any choice of \( \ell \). How complicated can the cohomology class be? The rough idea is that for \( H^i(k) \) with \( i \) near \( \dim k \), this should have a small index and if \( i=\dim k \) then \( \mathop{\mathrm{per}}k = \mathop{\mathrm{ind}}k \).
:::

::: {.remark}
We know \( \mathop{\mathrm{per}}= \mathop{\mathrm{ind}} \) for any number field for classes in \( H^2(\operatorname{Spec}k; \mu_N) \), with or without roots.
:::

### Symbol Length Problem

::: {.remark}
We know \( H^n(k, \mu_\ell^{\otimes n}) \) is generated by symbols \( ({ {a}_1, {a}_2, \cdots, {a}_{n}}) \). We can use symbol length to measure complexity, leading to the following:
:::

::: {.question}
Given \( k, n \), what is the minimal number \( m \) such that every \( \alpha\in H^n(k) \) is a sum of no more than \( m \) symbols. I.e. how easy is it to write \( \alpha \)?
:::

::: {.remark}
We'd like a bound in terms of \( \operatorname{ddim}(k) \) and \( \dim(k) \). One can construct fields needing arbitrarily long symbols, but perhaps for finite dimensional fields, one feels there should be a bound. Danny feels that there may not be such a bound once \( n\geq 4 \).
:::

::: {.remark}
What's known: for number fields (or global fields, i.e. a reasonable notion of dimension with \( \dim k = 2 \)) which lie over finitely generated or prime fields and have a primitive \( \ell \)th root of unity, we know every class in \( H^2 \) can be written as exactly one symbol.
:::

::: {.remark}
A result of Malgri (?): assuming we have roots of unity, if \( \ell = p^t \), then for \( H^2 \) one needs at most \( t(p^{\operatorname{ddim}(k)-1}-1) \) symbols. If \( \operatorname{ddim}(k)< \infty \) this yields a bound, and conjecturally this shouldn't depend on ???

For higher degree cohomology, we know almost nothing except for special cases of \( H^4 \) for "3-dimensional" \( p{\hbox{-}} \)adic curves.
:::

::: {.remark}
If one can bound the symbol length, one can uniformly write down a generic element in cohomology as a sum of at most \( n \) symbols. The inability to be able to write down a general form of a cohomology class for a given field is what makes this difficult -- they have "complexity" that isn't necessarily bounded in a known way.
:::

# Danny Krashen, Talk 2 (Tuesday, July 13)

## Setup

::: {.remark}
Fix a \( k_0\in\mathsf{Field} \).

**Outline**

-   Arithmetic problems: consider "complexity" of cohomology or algebraic structures (Witt group, symbol length, index of classes).

    -   Examples were \( \operatorname{ddim}, \operatorname{cohdim} \), the period-index problem, the period-symbol length problem, which we saw last time.

-   Algebraic structure problems: describe (algebraic) structural features of the class of all field extensions \( k \in\mathsf{Field}_{/ {k_0}}  \).

Today we'll describe a way to connect these using a notion of *essential dimension*. Computing this is difficult in general, but finding lower/upper bounds can be tractable. We'll get upper bounds from *canonical dimensions*, and lower bounds from cohomological invariants.
:::

## Symbol Length

::: {.remark}
For a particularly concrete problem, consider
\[
\alpha\in H^2(k; \mu_\ell) \subseteq H^2(k; {\mathbb{G}}_m)[\ell] \coloneqq\mathop{\mathrm{Br}}(k)[\ell]
,\]
i.e. this is a subgroup of the \( \ell{\hbox{-}} \)torsion of the **Brauer group**. Suppose we know
\[
\mathop{\mathrm{ind}}\alpha \coloneqq\gcd\left\{{[L:k] {~\mathrel{\Big|}~}\alpha_L = 0}\right\} = \min\left\{{[L:K] {~\mathrel{\Big|}~}\alpha_L = 0}\right\}
,\]
where the last equality holds in the special case of \( \mathop{\mathrm{Br}}(k) \). If \( k \) contains a primitive \( \ell \)th root of unity, we can identify \( \mu_\ell = {\mathbb{Z}}/\ell = \mu_\ell^{\otimes 2} \), and thus identify
\[
H^2(k; \mu_\ell) = H^2(k; \mu_\ell^{\otimes 2}) = K_2^M(k)/\ell
.\]
So we can write \( \alpha = \alpha_1 + \cdots + \alpha_r \) as a sum of symbols with \( \alpha_i = (b_i, c_i)_\ell \) with \( b_i, c_i\in k^{\times} \).
:::

::: {.question}
How big does \( n \) have to be?
:::

::: {.remark}
It follows from "the literature" (after stringing several results together) that there almost exists an absolute bounds depending only on \( \ell, n \) but not \( k \). However, we do not know what this bound actually is. There are some known cases:

-   \( \ell = n = 2, 3 \): \( r\leq 1 \), so only one symbol is needed.
-   \( \ell = n = 4 \): probably \( r\leq 4 \).
-   \( \ell = 2, n=4 \): \( r\leq 2 \), a classical results on central simple algebras.
-   \( \ell = 2, n=8: r\leq 4 \)
:::

::: {.remark}
It turns out that if \( k \) contains a field \( k_0 \) with \( \operatorname{ddim}k_0 < \infty \), one can produce an explicit bound. Given some \( \alpha \in H^2(k; \mu_\ell) \) we can find some \( k_0 \subseteq L \subseteq k \) with \( L \) finitely generated over \( k_0 \) and \( [L:k_0]_{\mathrm{tr}} \) depending only on the period \( \ell \) and index \( n \), such that \( \alpha \in \operatorname{im}\qty{H^2(L;\mu) \to H^2(k; \mu)} \).

::: {.slogan}
Central simple algebras of a given period and index have finite essential dimension.
:::

An important property is that
\[
\operatorname{ddim}L \leq \operatorname{ddim}k_0 + [L: k_0]_{\mathrm{tr}}
.\]
Recall that we can bound the symbol length in \( H^2(k; \mu_\ell) \) in terms of \( \operatorname{ddim}L \). The idea is that we can bound the transcendence degree in terms of \( \ell, n \). This bound can be made very explicit, although it's not tight: for \( \ell = 2, n=8 \), it's \( 2^{17 + \operatorname{ddim}k_0} -1 \). This is an improvement over \( k_0 = {\mathbb{Q}} \) though, where it's known there's a bound but it can't be written down. The lower bound is *very* low: it is hard to show a symbol can not be written with very few symbols.
:::

## Pfister Forms

::: {.remark}
Recall \( W(k) \), whose elements are isometry classes of nondegenerate quadratic forms with addition given by perpendicular sum and the Kronecker product. There is a hyperbolic form \( xy \), or \( x^2-y^2 \) in \( \operatorname{ch}k \neq 2 \), which we can write as \( \left\langle{1, -1}\right\rangle \), and a fundamental ideal of even-dimensional forms \( \left\langle{1, -a}\right\rangle = \left\langle{\left\langle{ a }\right\rangle}\right\rangle \). We write
\[
\left\langle{\left\langle{ { {a}_1, {a}_2, \cdots, {a}_{n}} }\right\rangle}\right\rangle \coloneqq\left\langle{\left\langle{ a_1 }\right\rangle}\right\rangle \left\langle{\left\langle{ a_2 }\right\rangle}\right\rangle\cdots \left\langle{\left\langle{ a_n }\right\rangle}\right\rangle\in I^n(k)
,\]
which in fact generate \( I^n(k) \).
:::

::: {.question}
Given \( q\in I^n(k) \) of dimension \( d \), we know we can write \( q \sim q_1 \perp \cdots \perp q_r \) where \( q_i \) are \( n{\hbox{-}} \)fold Pfister forms. How many are needed? Is this number even bounded?
:::

::: {.theorem title="(Vishik)"}
If \( d < 2^n + 2^{n-1} \) then \( r \) is bounded by some small number.
:::

::: {.remark}
For \( d\geq 2^n + 2^{n-1} \), it's not so clear, although it is bounded when \( n\geq 3 \). Why is \( n\leq 3 \) easy and \( n\geq 4 \) hard?
:::

::: {.remark}
Consider the following objects:

-   \( H^2(k; \mu) \)
-   \( \mathop{\mathrm{Br}}(k) \)
-   \( W(k) \)
-   \( I^n(k) \)
-   \( q\in I^n(k) \) with \( \dim q = d \)

These can all be viewed as functors \( \mathsf{Field}{_{/ {k_0}} }\to {\mathsf{Set}} \) taking field extensions to sets.
:::

::: {.definition title="Essential dimension of a functor"}
Given a functor \( f \) and \( \alpha \in F(k) \), define
\[
\operatorname{essdim}(\alpha) &= \min\left\{{[L:k_0]_{\mathrm{tr}}{~\mathrel{\Big|}~}\alpha\in \operatorname{im}(F(L) \to F(k)) }\right\}\\
\operatorname{essdim}(F) &= \min\left\{{\operatorname{essdim}(\alpha) {~\mathrel{\Big|}~}\alpha \in F(k) \,\,\forall k_{/ {k_0}} }\right\}
.\]
:::

::: {.definition title="Versal"}
Given a functor \( F: {\mathsf{Alg}}_{_{/ {k_0}} }\to {\mathsf{Set}} \), we say \( \alpha \in F(R) \) is **versal** if for every \( \beta \in F(K) \), for any \( k_{/ {k_0}}  \), there exists a morphism \( R\to k \) such that \( \beta \) is the image of \( \alpha \) under \( F(R)\to F(k) \).

![](figures/2021-07-13_13-54-39.png)
:::

::: {.observation}
If there exists a versal \( \alpha \in F(R) \) then \( \operatorname{krulldim}R \geq \operatorname{essdim}(F) \), so the essential dimension is bounded above by the Krull dimension.
:::

::: {.example title="?"}
Let \( F(k) \) be the set of quadratic forms of dimension \( n \) over \( k \), then \( \operatorname{essdim}F = n \). Every such \( q \) can be diagonalized to yields \( q \simeq \left\langle{{ {a}_1, {a}_2, \cdots, {a}_{n}}}\right\rangle \) which is defined over \( L \coloneqq k_0({ {a}_1, {a}_2, \cdots, {a}_{n}}) \). Alternatively,
\[
q = \left\langle{{ {x}_1, {x}_2, \cdots, {x}_{n}}}\right\rangle / k_0[x_1^{\pm 1}, x_2^{\pm 1}, \cdots, x_n^{\pm 1} ]
\]
is versal. Thus every such quadratic form comes from "specializing".

Considering now the fundamental ideals, the Milnor conjectures yield an isomorphism \( I^n/I^{n+1} \cong H^n(k; \mu_2) \), so there is a SES
\[
1 \to I^{n+1} \to I^n \xrightarrow{e_n} H^n(k; \mu_2) \to 1
.\]
Thus a quadratic form \( q \) of dimension \( d \) in \( I^{n+1} \) is equivalent to \( q\in I^{n} \) such that \( e_n(q) = 0 \).
:::

## Canonical Dimension

::: {.definition title="Canonical Dimension"}
This is a generalization of \( \operatorname{essdim} \). Letting \( k_{/ {k_0}}  \), suppose \( F: \mathsf{Field}_{/ {k}}  \to {\mathsf{Set}}_+ \) is a functor now from extensions of \( k \) (not \( k_0 \)) into pointed sets. For \( \alpha\in F(k) \), define a new functor
\[
\check{F}_\alpha(L) \coloneqq
\begin{cases}
\emptyset & \alpha_L \neq {\operatorname{pt}}
\\
\left\{{{\operatorname{pt}}}\right\}  & \alpha_L = {\operatorname{pt}},
\end{cases}
\]
and define the **canonical dimension**
\[
\operatorname{candim}(\alpha) = \operatorname{essdim}(\check{F}(\alpha))
.\]
:::

::: {.remark}
This measures how many parameters are needed to trivialize/split \( \alpha \). To have \( \operatorname{candim}(\alpha) \leq r \) means that if \( \alpha = {\operatorname{pt}} \) means the following: if \( \alpha_L = {\operatorname{pt}} \) then there exists an \( E \) with \( k \subseteq E \subseteq L \) with \( [E:k]_{\mathrm{tr}}\leq r \) such that \( \alpha_E = {\operatorname{pt}} \).
:::

::: {.definition title="Generic splitting scheme"}
Given \( F \) as above and \( \alpha\in F(k) \), we say an \( X\in {\mathsf{Sch}}_{/k} \) is a **generic splitting scheme** for \( \alpha \) if
\[
\alpha_L = 0 \iff X(L) \neq \emptyset
.\]
:::

::: {.remark}
So this encodes triviality of \( \alpha \) into polynomial equations.
:::

::: {.example title="?"}
If \( X \) is a generic splitting scheme for \( \alpha \) finite type over \( L \) implies \( \operatorname{candim}(\alpha) \leq \dim X \).
:::

## Splitting Schemes

::: {.question}
Does there exists a finite type generic splitting scheme for cohomology classes in \( H^i(k; \mu_\ell^{\otimes j}) \)?
:::

::: {.remark}
We do know this in special cases:

-   \( i=1 \): Yes, these are etale algebras, so finite schemes over \( k \).
-   \( i=2 \): Yes, Danny shows these exist for all twists.
    -   \( j=1 \): Classical, these are Severi-Brauer varieties.
-   For symbols, \( i=3,j=2,\ell \) a prime: see Merkurjev-Suslin
-   For symbols, \( i=4, j=3, \ell =3 \): see Albert algebras
-   For symbols, \( \ell \) prime: this can be done up to prime-to-\( \ell \) extensions, see [Rost's "Norm Varieties"](https://arxiv.org/abs/math/0304208). Related to Bloch-Kato conjecture.
-   For symbols, \( \ell=2 \): see Pfister quadrics.
:::

::: {.remark}
Upshot: if there exists generic splitting schemes for classes in \( H^i(k; \mu_2) \) for \( i\geq 3 \), one could bound Pfister numbers and thus \( \operatorname{essdim} \). Write \( {\mathcal{I}}_d^n(k) \) to be the set of quadratic forms of dimension \( d \) in \( I^n \), then \( \operatorname{essdim}({\mathcal{I}}_d^n) < \infty \) would imply that if \( q\in {\mathcal{I}}_d^n(k) \) for \( k\supseteq k_0 \) then \( q \) would be defined over some \( L_{/ {k_0}}  \) with \( [L: k_0]_{\mathrm{tr}}< \infty \).

If we knew that \( \operatorname{ddim}k_0 < \infty \), e.g. if \( k_0 \) contains a finite field, this yields a bound on \( \operatorname{ddim}L \) and thus on \( \operatorname{cohdim}L \). If there is a versal element in \( \alpha\in {\mathcal{I}}^n_d \), then \( \alpha \) needs some finite number \( m \) of Pfister forms to be written. Everything else is a specialization of \( \alpha \), so the length \( m \) will almost give an upper bound.
:::

::: {.warnings}
This may seem like a correct argument, but it is not! A problem arises where you may have denominators -- specialization can get worse, but only a finite number of times, which is how the actual argument goes.
:::

::: {.remark}
If you knew the essential dimensions were finite with some given bound, and some general period-index conjecture were known, these would give bounds on symbol length in \( H^i(L; \mu_2) \). There's an argument pushing things into higher powers of the fundamental ideal, thus higher degree cohomology, which disappear at some point and yield a bound. Motives enter the picture in terms of the tools used to attack these problems.
:::

# Phillippe Gille, Talk 1 (Monday, July 12)

## Intro

**Abstract**:

> We shall present the theory of G-torsors (or G-bundles) in algebraic geometry which includes for example vector bundles and quadratic bundles (Grothendieck-Serre, 1958). We focus on the case of an affine smooth connected curve firstly over an algebraically closed field k; we shall show that G-torsors are trivial for a semisimple k-group G. Secondly we will consider the case of a perfect field and discuss the important case of the affine line (Raghunathan-Ramanathan, 1984). This will be an opportunity to deal with étale cohomology and patching techniques.

**References:**

-   <http://math.univ-lyon1.fr/homes-www/gille/>

-   <http://math.univ-lyon1.fr/homes-www/gille/prenotes/gille_pcmi_part1.pdf>

-   V. Chernousov, P. Gille, A. Pianzola, Three-point Lie algebras and Grothendieck's dessins d'enfants. Math. Res. Lett. 23 (2016), 81--104.

-   J.S. Milne, Lectures on etale cohomology, <https://www.jmilne.org/math/CourseNotes/LEC.pdf>

-   M. S. Raghunathan, A. Ramanathan, Principal bundles on the affine line. Proc. Indian Acad. Sci. Math. Sci. 93 (1984), 137--145.

**Notation**:

-   \( {\mathsf{Bun}}_{G} \) is the category of \( G{\hbox{-}} \)bundles
    -   \( {\mathsf{Bun}}_{\operatorname{GL}_r({\mathbb{R}})} \) is the category of real vector bundles of rank \( r \).
    -   \( { {\mathsf{Bun}}_{\operatorname{GL}_r} } \) is the category of vector bundles of rank \( r \) over an unspecified field.
-   \( \mathsf{C}_{/ {R}}  \) is an overcategory/slice category of objects over a fixed object \( R \).
-   \( {\mathsf{Sch}}_{/ {S}}  \) is the category of schemes over a fixed scheme \( S \).
    -   \( {\mathsf{Aff}}{\mathsf{Sch}} \) is the category of affine schemes.
    -   \( {\mathsf{Sch}}_{/ {R}}  \) are the schemes over \( \operatorname{Spec}R \).
-   \( {\mathsf{sm}} \) denotes subcategories of smooth objects
-   \( R \left[ { \scriptstyle {\mathfrak{p}}^{-1}} \right] \) is the localization of \( R \) at \( {\mathfrak{p}} \).
-   \( {\mathsf{cAlg}} \) denotes commutative algebras.
-   An \( R{\hbox{-}} \)functor is an object in \( {\mathsf{Fun}}({\mathsf{Alg}}_{/ {R}} , {\mathsf{Set}}) \), which \( {\mathsf{Aff}}{\mathsf{Sch}} \) embeds into as representable \( R{\hbox{-}} \)functors.
    -   Todo: so any presheaf on \( R{\hbox{-}} \)algebras..?

## Serre-Swan and Vector Group Schemes

::: {.remark}
We'll be looking at ways to go from the world of differential geometry to algebraic geometry. Notably, in differential geometry we have notions of

-   Vector bundles
-   Principal \( G{\hbox{-}} \)bundles
-   Principal homogeneous spaces

Serre-Grothendieck gave algebro-geometric analogs of these in 1958, extending these notions to the setting of \( G{\hbox{-}} \)bundles over a scheme using the étale topology. Today we'll work over rings, or equivalently affine schemes, since most questions will be local. We'll in fact restrict to smooth affine curves over a field.
:::

::: {.remark}
Recall the Serre-Swan correspondence between projective finite modules of finite rank and smooth vector bundles: for \( X \) paracompact, there is an equivalence of categories induced by taking global sections:
\[
\underset{\operatorname{GL}_n({\mathbb{R}})}{ {\mathsf{sm}}{\mathsf{Bun}}_{/ {X}}  } &\rightleftharpoons\mathsf{C^\infty(X; {\mathbb{R}})}{\hbox{-}}\mathsf{Mod}^{{\mathrm{fg}}, \mathop{\mathrm{proj}}} \\
({\mathcal{E}}\to X) &\mapsto \Gamma(X; {\mathcal{E}})
.\]
We'll upgrade this to a statement about affine schemes.
:::

::: {.definition title="Vector Group Scheme"}
Let \( R \in \mathsf{CRing} \) be unital and \( M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \). Let \( V(M) \) denote the affine \( R{\hbox{-}} \)scheme \( V(M) \coloneqq\operatorname{Spec}\qty{\operatorname{Sym}^\bullet M} \), which represents
\[
S\mapsto \mathop{\mathrm{Hom}}_{{\mathsf{S}{\hbox{-}}\mathsf{Mod}}}(M\otimes_R S, S)
.\]
We call \( V(M) \) the **vector group scheme** of \( M \).
:::

::: {.remark}
Note that \( V({-}) \) commutes with arbitrary base change of rings.
:::

::: {.proposition title="Serre-Swan for Vector Group Schemes"}
\( V \) as a functor induces an antiequivalence of categories between \( {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) and vector group schemes:
\[
{\mathsf{R}{\hbox{-}}\mathsf{Mod}} &\rightleftharpoons{ \mathsf{Vect} }{\mathsf{Grp}}{\mathsf{Sch}}_{/ {R}}  \\
M &\mapsto V(M) \\
\Theta(R) &\mapsfrom R
.\]
:::

::: {.remark}
If \( M \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r<\infty} \), we can consider its dual \( M {}^{ \vee } \). Then \( \operatorname{Sym}^\bullet M \) is finitely presented, and \( S\to M\otimes_R S \) is represented by \( W(M) \coloneqq V(M {}^{ \vee }) \). Note that finite locally free is a necessary condition.
:::

## Vector Bundles over Affine Schemes

::: {.definition title="Vector bundle over an affine scheme"}
A **vector bundle of rank \( r \) over the affine scheme \( \operatorname{Spec}R \)** is an \( X\in {\mathsf{Sch}}_{/ {R}}  \) with a partition \( 1 = \sum_i f_i \) along with isomorphisms
\[
\varphi_i: V\qty{\qty{R \left[ { \scriptstyle f_i^{-1}} \right]}^r} \to X\underset{\scriptscriptstyle {R} }{\times} R \left[ { \scriptstyle f_i^{-1}} \right]
\]
where the transitions
\[
\varphi_i \varphi_j^{-1}: V\qty{\qty{R \left[ { \scriptstyle (f_i, f_j)^{-1}} \right]}^r} {\circlearrowleft}
\]
are linear automorphisms.
:::

::: {.theorem title="Swan-Serre"}
\( M\to V(M) \) induces an equivalence between the groupoid of locally free \( R{\hbox{-}} \)modules of rank \( r \) and the groupoid of vector bundles over \( \operatorname{Spec}R \) of rank \( r \).
\[
{\mathsf{Grpd}}\ni \hspace{4em}
{\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r} &\quad{\rightleftharpoons}\quad \underset{\operatorname{Spec}R}{{\mathsf{Bun}}^r} 
\hspace{4em}\in {\mathsf{Grpd}}
.\]
:::

::: {.example title="Tangent Bundles"}
Given a smooth[^1] map of affine schemes
\[
(X\to Y) \coloneqq(\operatorname{Spec}S\to \operatorname{Spec}R)
&&
r\coloneqq\operatorname{reldim}_{X/Y} \geq 1
,\]
take the tangent bundle, which is dimension \( r \):
\[
T_{X/Y} = V(\Omega_{S_{/ {R}} }^1) \in \underset{\operatorname{Spec}R}{\mathsf{Bun}}
.\]
:::

::: {.example title="Tangent bundle of the real sphere"}
Consider the real sphere
\[
Z \coloneqq\operatorname{Spec}{\mathbb{R}}[x,y,z] / \left\langle{x^2 + y^2 + z^2}\right\rangle
.\]
Its tangent bundle \( T_{Z/{\mathbb{R}}} \) is a nontrivial dimension 2 vector bundle, which is classical but can be proven algebraically. As a consequence, \( Z \) can not be equipped with the structure of a nontrivial algebraic group over \( {\mathbb{R}} \).
:::

## Linear Groups

::: {.remark}
For \( M \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r<\infty} \), consider
\[
\mathop{\mathrm{End}}_{{\mathsf{R}{\hbox{-}}\mathsf{Mod}}}(M) \xrightarrow{\sim}  M {}^{ \vee }\otimes_R M \in {\mathsf{Alg}}_{/ {R}}  \cap{\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r<\infty}
,\]
and so \( V(\mathop{\mathrm{End}}_{{\mathsf{R}{\hbox{-}}\mathsf{Mod}}}(M)) \) makes sense. Thus \( V \) is a functor
\[
V: \mathsf{Assoc}{\mathsf{Alg}}^{{\operatorname{unital}}} \to{ \mathsf{Vect} }{\mathsf{Grp}}{\mathsf{Sch}}_{/ {R}} 
.\]

Consider \( S\mapsto \mathop{\mathrm{Aut}}_S(M\otimes_R S) \), which is representable by
\[
W(\mathop{\mathrm{End}}_{{\mathsf{R}{\hbox{-}}\mathsf{Mod}}} M) \coloneqq\operatorname{GL}(M) = \operatorname{GL}_1(M)
.\]
Note that there are left and right actions
\[
W(M) \curvearrowleft\operatorname{GL}(M)\curvearrowright V(M) 
.\]

If \( R \) is Noetherian, then \( M \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r<\infty} \iff \operatorname{GL}(M) \) is representable. Taking \( M\coloneqq M^r \) recovers the usual \( \operatorname{GL}_n(R) \) for \( n\coloneqq\operatorname{rank}_R M \). Note that local freeness is necessary for representability by a group scheme here.
:::

::: {.remark}
Given \( M \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r<\infty} \) there is a partition \( 1 = \sum f_i \) and isomorphisms to free \( R{\hbox{-}} \)modules
\[
\varphi_i: R \left[ { \scriptstyle f_i^{-1}} \right]^r \to M\underset{\scriptscriptstyle {R} }{\times} R \left[ { \scriptstyle f_i^{-1}} \right]
&&
\varphi_i^{-1}\varphi_j \leadsto
g_{ij} \in \operatorname{GL}_r\qty{R \left[ { \scriptstyle (f_i, f_j)^{-1}} \right]}
.\]
These \( g_{ij} \) in fact satisfy a cocycle condition:
\[
g_{ij} g_{jk} = g_{ik} \in \operatorname{GL}_r(R \left[ { \scriptstyle f_i f_j f_k^{-1}} \right])
.\]
:::

::: {.definition title="Čech Nonabelian Cohomology"}
Take an affine cover
\[
{\mathcal{U}}\coloneqq\left\{{\operatorname{Spec}R \left[ { \scriptstyle f_i^{-1}} \right]}\right\}_{i\in I}\rightrightarrows\operatorname{Spec}R
\]
and define \( H^1({\mathcal{U}}_{/ {R}} ; \operatorname{GL}_r) \) to be 1-cocycles up to some notion of cohomological equivalence. This attaches a vector bundle \( V(M) \) of rank \( r \) a class \( \gamma(M) \in H^1({\mathcal{U}}_{/ {R}} ; \operatorname{GL}_r) \). Conversely, by Zariski gluing, for any such cocycle \( g_{ij} \) we can assign some \( V_g\in { { {\mathsf{Bun}}_{\operatorname{GL}_r} }}^r_{/ {R}}  \) with a trivializations satisfying \( \varphi_i \varphi_j^{-1}= g_{ij} \).

By taking a limit over all covers, we can define
\[
{\check{H}}^1_{\mathrm{zar}}(R; \operatorname{GL}_r) \coloneqq\displaystyle\colim_{{\mathcal{U}}} H^1({\mathcal{U}}_{/ {R}} ; \operatorname{GL}_r)
,\]
the Čech nonabelian cohomology of \( \operatorname{GL}_r \) with respect to the Zariski topology on \( \operatorname{Spec}R \).
:::

::: {.remark}
This classifies \( [V] \in {\mathsf{Bun}}_{/ {R}} ^{\cong, r} \) which are trivialized by \( {\mathcal{U}} \). So there are induced maps
\[
f: \operatorname{GL}_r \to \operatorname{GL}_s \quad\leadsto\quad f_*: V_r\in {\mathsf{Bun}}^r_{/ {R}}  \to V_s \in {\mathsf{Bun}}^s_{/ {R}} 
\]
which extend to functors
\[
f_*: {\mathsf{Bun}}_{/ {R}} ^r \to {\mathsf{Bun}}_{/ {R}} ^s
.\]
:::

::: {.slogan}
Nice constructions for vector bundles arise from morphisms of group schemes.
:::

## Classification of Modules over a Dedekind Ring

::: {.example title="Direct sums"}
Write \( n= \sum n_i \) to get a block map
\[
f: \prod_{i} \operatorname{GL}_{n_i} &\to \operatorname{GL}_n \\
(A_1, \cdots, A_\ell) &\mapsto A_1 \oplus \cdots \oplus A_\ell
.\]
In general, the diagonal map obtained by setting \( n_i=1 \) for all \( i \) yields \( {\mathbb{G}}_m^{\times r} \to \operatorname{GL}_r \) a decomposable vector bundle, i.e. a direct sum of rank 1 bundles.
:::

::: {.example title="Tensor products"}
Write \( n= \prod r_i \) to get a similar map, sometimes called the *Kronecker product*:
\[
f: \prod_{i} \operatorname{GL}_{r_i} &\to \operatorname{GL}_n \\
(A_1, \cdots, A_\ell) &\mapsto A_1 \otimes_R \cdots \otimes_R A_\ell
,\]
:::

::: {.example title="Determinant"}
We set \( \operatorname{det}(V) \coloneqq\operatorname{det}_*(V) \coloneqq\bigwedge\nolimits^r V \), the determinant bundle.
:::

::: {.remark}
The next result is a classical theorem in commutative algebra, and the goal is to give a geometric proof.
:::

::: {.theorem title="Classification of modules over a Dedekind ring"}
Let \( R \) be a Dedekind ring [^2] , then for any
\[
R\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r\geq 1} \implies R \cong R^{r-1} \oplus I && I = \operatorname{det}(R^{r-1} \oplus I) \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\times}, 
\]
where \( I \) is invertible and unique up to isomorphism. Thus vector bundles over \( R \) are decomposable and classified by their determinant.
:::

::: {.corollary title="Characterization of trivial modules"}
A locally free \( R{\hbox{-}} \)module \( M \) of rank \( r\geq 1 \) is trivial \( \iff \operatorname{det}M \) is trivial.
:::

::: {.proof title="of the classification theorem"}
We're given \( V(M) \) a vector bundle, which trivializes over an affine subset \( \operatorname{Spec}R \left[ { \scriptstyle f_i^{-1}} \right] \). Set
\[
\Sigma \coloneqq\operatorname{Spec}R / \operatorname{Spec}R \left[ { \scriptstyle f_i^{-1}} \right] = \left\{{{\mathfrak{p}}_i}\right\}_{i=1}^c && {\mathfrak{p}}_i \in \operatorname{mSpec}R
.\]
Let \( \widehat{R} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right] \) be the completion of the residue DVR and let \( \widehat{K} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right] \coloneqq K\otimes_R \widehat{R} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right] \) its fraction field. By Nakayama, \( M\otimes_R \widehat{R} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right] \) is free, so pick a trivialization. We can use this to produce a double coset:
\[
c_{\Sigma}\left(R; \operatorname{GL}_{r}\right)
\coloneqq
\operatorname{GL}_{r}\left(R_{f}\right) 
\backslash 
\quad \prod_{j=1}^c \operatorname{GL}_{r}
\left(
\widehat{K} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]
\right) 
\quad / 
\operatorname{GL}_{r}
\left(
\widehat{R}  \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]
\right)
.\]

::: {.claim}
The following map is injective:
\[
\ker\qty{H^1(R; \operatorname{GL}_r) \to H^1\qty{R \left[ { \scriptstyle f^{-1}} \right]; \operatorname{GL}_r}} \to c_\Sigma(R; \operatorname{GL}_r)
,\]
although we'll only need that its kernel is trivial.
:::

We can assume \( \operatorname{det}V(M) \) is trivial to get
\[
g_i \in \ker \operatorname{det}_* \coloneqq\ker\qty{c_\Sigma(R; \operatorname{GL}_r) \to c_\Sigma(R; {\mathbb{G}}_m)}
.\]
Changing trivializations, we can assume \( g_i \in {\operatorname{SL}}_n(\widehat{K}_{{\mathfrak{p}}_i}) \), which is generated by elementary matrices. Using that \( R_f \subseteq \prod_i \widehat{K} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right] \) is dense, we get
\[
{\operatorname{SL}}_n\qty{\widehat{K} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]} \subseteq \prod_i {\operatorname{SL}}_n \qty{ \widehat{K} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]} \text{ is dense}
.\]
But since each \( {\operatorname{SL}}_n\qty{\widehat{R} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]} \) is clopen in \( {\operatorname{SL}}_n\qty{\widehat{K} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]} \), we obtain \( c_\Sigma(R; {\operatorname{SL}}_r) = 1 \) and injectivity allows us to conclude that \( V(M) \) is a trivial vector bundle.
:::

::: {.remark}
This is a "strong approximation" argument.
:::

## Replacing the Zariski Topology

::: {.definition title="Quadratic Forms"}
Given an \( M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \), a map \( q:M\to R \) is a **quadratic form** iff

-   \( q(\lambda x) = \lambda^2 q(x) \) for all \( \lambda\in R, x\in M \),
-   The associated form is symmetric and bilinear:
    \[
    b_q: M\otimes_R M &\to R \\
    (x, y) &\mapsto q(x+y) - q(x) -q(y)
    .\]

The form \( q \) is **regular** iff \( b_q \) induces an isomorphism \( M \xrightarrow{\sim} M {}^{ \vee } \).
:::

::: {.example title="The hyperbolic form"}
For \( V\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, \operatorname{rank}< \infty} \), the **hyperbolic form** is defined by
\[
q_{\operatorname{hyp}}: V \oplus V {}^{ \vee }&\to R \\
v \otimes\psi &\mapsto \psi(v)
.\]
:::

::: {.remark}
The definition of nonabelian cohomology will extend to arbitrary group schemes, but the Zariski topology is not fine enough. One reason to try extending this theory will be quadratic bundles. For a regular quadratic form \( (M, q) \) with \( M \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, \operatorname{rank}< \infty} \), we can draw an analogy with usual quadratic forms. So for any \( R{\hbox{-}} \)ring \( S \) we could define a subgroup scheme
\[
{\operatorname{O}}(q, M) \coloneqq\left\{{g \in \operatorname{GL}(M)(S) {~\mathrel{\Big|}~}q_S \circ g = q_S }\right\} \leq \operatorname{GL}(M)
\]
and similarly define \( H^1({\mathcal{U}}_{/ {R}} ; {\operatorname{O}}(q, M)) \) for any open cover \( {\mathcal{U}}\rightrightarrows R \).
:::

::: {.lemma title="?"}
\( H^1_{\mathrm{zar}}({\mathcal{U}}_{/ {R}} ; {\operatorname{O}}(q, M)) \) classifies isomorphism classes of regular quadratic forms \( (q', M') \) which are locally isomorphic over \( {\mathcal{U}} \) to \( (q, M) \).
:::

::: {.remark}
Upshot: not all regular quadratic forms over \( R \) of a fixed dimension \( r \) need be locally isomorphic, noting that this already fails for \( R\coloneqq{\mathbb{R}} \).
:::

::: {.remark}
Given a morphism of group schemes \( f:G\to H \), we would like control over \( H^1_{\mathrm{zar}}(R; G) \to H^1_{\mathrm{zar}}(R; H) \). Consider the Kummer map
\[
f_d: {\mathbb{G}}_m &\to {\mathbb{G}}_m \\
t &\mapsto t^d
.\]
This induces \( \times d \) on \( {\operatorname{Pic}}(R) \), and on \( {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\times} \) corresponds to \( M\to M^{\otimes d} \). We'd like to understand its kernel and image, which will generally involve higher \( H_\text{ét} \). Given
\[
[M] \in \ker ({\operatorname{Pic}}(R) \xrightarrow{\times d} {\operatorname{Pic}}(R))
,\]
there is a trivialization \( \theta: R\to M^{\otimes d} \). We'll define a group
\[
A_d(R) \coloneqq\left\{{ (M, \theta) {~\mathrel{\Big|}~}M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\times}, \theta \text{ a trivialization}}\right\}/\cong
,\]
which will correspond to something in \( H_\text{ét} \). There is an exact sequence

```{=tex}
\begin{tikzcd}
    {R^{\times}/(R^{\times})^d} && {A_d(R)} && {{\operatorname{Pic}}(R)} && {{\operatorname{Pic}}(R)} \\
    a && {[R, {\theta_a: R\to R^{\otimes d}, x\mapsto ax} ]} \\
    && {[M, \theta]} && {[M]}
    \arrow["\varphi", from=1-1, to=1-3]
    \arrow["\mathop{\mathrm{Forget}}", from=1-3, to=1-5]
    \arrow["{\times d}", from=1-5, to=1-7]
    \arrow[maps to, from=2-1, to=2-3]
    \arrow[maps to, from=3-3, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMCwwLCJSXFx1bml0cy8oUlxcdW5pdHMpXmQiXSxbMiwwLCJBX2QoUikiXSxbNCwwLCJcXFBpYyhSKSJdLFs2LDAsIlxcUGljKFIpIl0sWzAsMSwiYSJdLFsyLDEsIltSLCB7XFx0aGV0YV9hOiBSXFx0byBSXntcXHRlbnNvciBkfSwgeFxcbWFwc3RvIGF4fSBdIl0sWzIsMiwiW00sIFxcdGhldGFdIl0sWzQsMiwiW01dIl0sWzAsMSwiXFxwaGkiXSxbMSwyLCJcXEZvcmdldCJdLFsyLDMsIlxcdGltZXMgZCJdLFs0LDUsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbNiw3LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV1d)
:::

::: {.remark}
Grothendieck-Serre's idea is to extend the notion of covers, first with étale covers, and later with flat covers which are simpler as a first approach.
:::

::: {.definition title="Flat Covers"}
A **flat (fppf) cover** of \( R \) is a finite collection \( \left\{{S_i}\right\} \) of \( R{\hbox{-}} \)rings where \( S_i \) is a flat finitely presented \( R{\hbox{-}} \)algebra and
\[
\operatorname{Spec}R = \displaystyle\bigcup_{i\in I} \operatorname{im}(\operatorname{Spec}S_i \to \operatorname{Spec}R)
.\]
:::

::: {.remark}
Setting \( S\coloneqq{\textstyle\coprod}S_i \), this says \( S \) is a faithfully flat finitely presented \( R{\hbox{-}} \)algebra. Note that the Zariski cover is a flat cover.
:::

::: {.remark}
For \( G\in{\mathsf{Grp}}{\mathsf{Sch}}_{/ {R}}  \), a 1-cocycle for \( G \) and \( S_{/ {R}}  \) is an element \( g\in G(S\otimes_R S) \) where
\[
q_{12}^*(g) g_{2,3}^*(g) = q_{1, 3}^* \in G(S^{\otimes_R 3})
.\]
We can use the finite presentation hypothesis to pass to a limit over all flat covers of \( \operatorname{Spec}R \) and define
\[
H^1_\mathrm{\operatorname{fppf}}(R; G)\coloneqq\colim H^1(S_{/ {R}} ; G)
.\]
.
:::

::: {.definition title="Torsors"}
A **right \( G{\hbox{-}} \)torsor** \( X\in {\mathsf{Sch}}_{/ {R}} \curvearrowleft G \), so \( X \) is a scheme over \( R \) with a right \( G{\hbox{-}} \)action, where

-   The following map is an isomorphism:
    \[
    X { \underset{\scriptscriptstyle {R} }{\times} } G &\xrightarrow{\sim} X{ \underset{\scriptscriptstyle {R} }{\times} } {\color{green} X} \\
    (x, g) &\mapsto (x, x\cdot g)
    .\]
    This says that \( G(T) \curvearrowright X(T) \) for all \( T\in \mathsf{Ring}_{/ {R}}  \).

-   There exists a flat cover \( \left\{{R_i{}_{/ {R}} }\right\}_i \rightrightarrows X \) with \( X(R_i)\neq 0 \).

    This says \( X \) is locally trivial in the flat topology.

Morphisms of torsors are \( G{\hbox{-}} \)equivariant maps of schemes, and condition 1 forces these to all be isomorphisms, so \( {\mathsf{Torsor}{\hbox{-}}\mathsf{G} }_{/ {R}}  \in {\mathsf{Grpd}} \).
:::

::: {.definition title="Split torsor"}
Setting \( X\coloneqq G \) with \( G\curvearrowright G \) by right-translation yields the **split torsor**.
:::

::: {.definition title="Trivial Torsor"}
If \( X(R) \neq \emptyset \), so \( X \) has an \( R{\hbox{-}} \)point, the point \( x\in X(R) \) defines an isomorphism
\[
G &\xrightarrow{\sim} X \\
g &\mapsto x\cdot g
.\]

In this case, we say that \( X \) is a **trivial torsor**.
:::

::: {.example title="?"}
\( G\in {\mathsf{G}{\hbox{-}}\mathsf{Torsor}}_{/ {R}}  \) is a trivial \( G{\hbox{-}} \)torsor.
:::

::: {.definition title="First fppf cohomology"}
The functor
\[
R\mapsto \mathop{\mathrm{Aut}}_{{\mathsf{Torsor}{\hbox{-}}\mathsf{G} }_{/ {R}} }(G)
.\]
of automorphisms of the trivial \( G{\hbox{-}} \)torsor \( G \) is representable by \( G \), acting by left translation. We formally define the **first fppf cohomology** to be isomorphism classes of \( G{\hbox{-}} \)torsors:
\[
H^1_\mathrm{\operatorname{fppf}}(R; G) \coloneqq{\mathsf{Torsor}{\hbox{-}}\mathsf{G} }^{\cong}_{/ {R}}  \text{ for the flat topology}
,\]
and for \( S\to R \in {\mathsf{Cov}}^\mathrm{flat}(R) \), we define the subset of \( G{\hbox{-}} \)torsors trivialized over \( S \) as
\[
H^1_\mathrm{\operatorname{fppf}}(S_{/ {R}} ; G) \subseteq H^1_\mathrm{\operatorname{fppf}}(R; G)
.\]
:::

::: {.definition title="Class map"}
There is a **class map**
\[
\gamma: H^1_\mathrm{\operatorname{fppf}}(S_{/ {R}} ; G) \to {\check{H}}^1_\mathrm{\operatorname{fppf}}(S_{/ {R}} ; G)
.\]
:::

```{=tex}
\todo[inline]{How do you construct the class map..?}
```
::: {.remark}
For \( X\in {\mathsf{G}{\hbox{-}}\mathsf{Torsor}}_{/ {R}}  \) with a trivialization
\[
\varphi: G{ \underset{\scriptscriptstyle {R} }{\times} } S \xrightarrow{\sim} X { \underset{\scriptscriptstyle {R} }{\times} } S
,\]
there are two trivializations over \( S^{\otimes_R 2} \):

```{=tex}
\begin{tikzcd}
    {G{ \underset{\scriptscriptstyle {R} }{\times} } S^{\otimes_R 2}} \\
    \\
    {G{ \underset{\scriptscriptstyle {R} }{\times} } S^{\otimes_R 2}} && {X{ \underset{\scriptscriptstyle {R} }{\times} } S^{\otimes_R 2}}
    \arrow["{\varphi \otimes 1}"', from=3-1, to=3-3]
    \arrow["{p_1^*(\varphi) }"', shift right=1, from=1-1, to=3-3]
    \arrow["{p_2^*(\varphi) = \varphi \otimes 1}", shift left=1, from=1-1, to=3-3]
    \arrow["{1\otimes\tau_{12}}"', from=1-1, to=3-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJHXFxmaWJlcnByb2R7Un0gU157XFx0ZW5zb3JfUiAyfSJdLFswLDIsIkdcXGZpYmVycHJvZHtSfSBTXntcXHRlbnNvcl9SIDJ9Il0sWzIsMiwiWFxcZmliZXJwcm9ke1J9IFMiXSxbMSwyLCJcXHZhcnBoaSBcXHRlbnNvciAxIiwyXSxbMCwyLCJwXzFeKihcXHZhcnBoaSkgIiwyLHsib2Zmc2V0IjoxfV0sWzAsMiwicF8yXiooXFx2YXJwaGkpID0gXFx2YXJwaGkgXFx0ZW5zb3IgMSIsMCx7Im9mZnNldCI6LTF9XSxbMCwxLCIxXFx0ZW5zb3IgXFx0YXVfezEyfSIsMl1d)

Thus \( p_1(\varphi)^{-1}\circ p_2(\varphi) \in \mathop{\mathrm{Aut}}_{{\mathsf{G}{\hbox{-}}\mathsf{Torsor}}}(G)_{/ {S^{\otimes_R 2} }}  \) is an automorphism of the trivial torsor, thus acts by left translation by some \( g \in G(S^{\otimes_R 2}) \). An argument shows that \( g \) is a 1-cocycle and that changing \( \varphi \) only changes \( g \) by a coboundary, so the class map is well-defined.
:::

::: {.definition title="Amitsur Resolution"}
If \( X\in {\mathsf{G}{\hbox{-}}\mathsf{Torsor}} \) has a trivialization \( \phi \), then over \( S^{\otimes_R 2} \) we have two trivializations:

Let \( T \) be a faithfully flat descent of \( R \), then the **Amitsur complex** is defined as
\[
0\to M\to M\otimes_R T \to M \otimes_R T^{\otimes_R 2} \to \cdots && \leadsto M \to M\otimes_R {\mathbb{T}}^\bullet(T)
,\]
where \( {\mathbb{T}} \) denotes the tensor algebra. This has a differential given by
\[
{{\partial}}(m \otimes\mathbf{t}) = \sum_{i} (-1)^i m \otimes\psi_i(\mathbf{t})
,\]
where \( \psi_i \) is the \( i \)th face map inserting a 1 between the \( i \) and \( i+1 \)st tensor factors.
:::

::: {.remark}
An important theorem is that the Amitsur complex is exact for each \( M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \), which for any \( X\in {\mathsf{Aff}}{\mathsf{Sch}}_{/ {R}}  \) allows an identification
\[
X(R) = \left\{{ x\in X(T) {~\mathrel{\Big|}~}p_1^*(x) = p_2^*(x) \in X\qty{ T^{\otimes_R 2} }  }\right\} 
.\]
:::

::: {.definition title="Descent data"}
For \( N\in {\mathsf{T}{\hbox{-}}\mathsf{Mod}} \), consider
\[
p_1^*(N) \coloneqq T\otimes_R M
,\quad
p_2^*(N) \coloneqq M\otimes_R T
 && 
 \in \mathsf{T^{\otimes_R 2}}{\hbox{-}}\mathsf{Mod}
.\]

A **descent datum** on \( N \) is an isomorphism
\[
\varphi: p_1^*(N) \xrightarrow{\sim} p_2^*(N) && \in \mathsf{T^{\otimes_R 2}}{\hbox{-}}\mathsf{Mod}
.\]
of \( T^{\otimes_R 2}{\hbox{-}} \)modules making the following diagram commute:

```{=tex}
\begin{tikzcd}
    {T^{\otimes_R 2} \otimes_R N} &&&& {N \otimes_R T^{\otimes_R 2}} \\
    \\
    \\
    && {T \otimes_R N \otimes_R T}
    \arrow["{\varphi_2 = (1\otimes\varphi)\circ \tau_{12}}", from=1-1, to=4-3]
    \arrow["{\varphi_3 = (\varphi\otimes 1) \circ \tau_{23}}"', from=1-1, to=1-5]
    \arrow["{\varphi_1 = 1\otimes\varphi}"', from=1-5, to=4-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJUXntcXHRlbnNvcl9SIDJ9IFxcdGVuc29yX1IgTiJdLFs0LDAsIk4gXFx0ZW5zb3JfUiBUXntcXHRlbnNvcl9SIDJ9Il0sWzIsMywiVCBcXHRlbnNvcl9SIE4gXFx0ZW5zb3JfUiBUIl0sWzAsMiwiXFx2YXJwaGlfMiA9ICgxXFx0ZW5zb3IgXFx2YXJwaGkpXFxjaXJjIFxcdGF1X3sxMn0iXSxbMCwxLCJcXHZhcnBoaV8zID0gKFxcdmFycGhpXFx0ZW5zb3IgMSkgXFxjaXJjIFxcdGF1X3syM30iLDJdLFsxLDIsIlxcdmFycGhpXzEgPSAxXFx0ZW5zb3IgXFx2YXJwaGkiLDJdXQ==)

Here \( \tau_{ij} \) is the map that swaps the \( i \) and \( j \)th tensor factors, so e.g. \( \varphi_3(t_1 \otimes t_2 \otimes n) \coloneqq\varphi(t_1\otimes n)\otimes t_2 \).

There is a category of \( T{\hbox{-}} \)modules with descent data, where objects are pairs \( (T, \varphi) \) and morphisms are clear, and I'll write this as \( {\mathsf{T}{\hbox{-}}\mathsf{Mod}}{\mathsf{Desc}} \). For \( M\in{\mathsf{R}{\hbox{-}}\mathsf{Mod}} \), there is a **canonical descent datum**
\[
{\mathrm{can}}_M: p_1^*(M\otimes_R T) \xrightarrow{\sim} p_2^*(M\otimes_R T)
.\]
:::

::: {.theorem title="(Grothendieck) Faithfully flat descent"}
There is a functor inducing an equivalence of categories:
\[
F: {\mathsf{R}{\hbox{-}}\mathsf{Mod}}&\rightleftharpoons{\mathsf{T}{\hbox{-}}\mathsf{Mod}}{\mathsf{Desc}}\\
M &\mapsto (M\otimes_R T, {\mathrm{can}}_M) \\
\left\{{ n\in N {~\mathrel{\Big|}~}n\otimes 1 = \varphi(1\otimes n) }\right\} 
&\mapsfrom
(N, \varphi) 
.\]
This induces an equivalence of categories
\[
{\mathsf{cAlg}}_{/ {R}} ^{{\operatorname{unital}}} &\rightleftharpoons{\mathsf{cAlg}}^{{\operatorname{unital}}}_{/ {T}} {\mathsf{Desc}}
.\]
:::

::: {.remark}
This theorem is a good reason to focus on the affine setting. Faithfully flat descent implies the following:
:::

::: {.theorem title="?"}
Let \( M \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r} \) then the functor
\[
\mathsf{S}{\hbox{-}}\mathsf{Mod} &\to {\mathsf{Set}}\\
S &\mapsto \mathop{\mathrm{Isom}}_{{\mathsf{S}{\hbox{-}}\mathsf{Mod}}}(S^r, M\otimes_R S)
\]
is representable by an object \( X^M \). This induces an equivalence of categories
\[
{\mathsf{Grpd}}\ni \hspace{4em} X^{({-})}: {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r} &\rightleftharpoons{\mathsf{\operatorname{GL}_r}{\hbox{-}}\mathsf{Torsor}}_{/ {R}}  \hspace{4em} \in {\mathsf{Grpd}}
.\]
:::

::: {.corollary title="Hilbert=Grothendieck 90"}
\[
H^1_{\mathrm{zar}}(R; \operatorname{GL}_r) \cong H^1_\mathrm{\operatorname{fppf}}(R; \operatorname{GL}_r)
.\]
:::

::: {.remark}
In particular, if \( R \) is local or semilocal, \( H^1_\mathrm{\operatorname{fppf}}(R; \operatorname{GL}_r) = 1 \). This also holds for \( R \) replaced by any \( B \in {\mathsf{Alg}}_{/ {R}} { {}^{ \operatorname{sep} } } \), e.g. a finite étale or Azumaya algebra.
:::

::: {.lemma title="The class map is injective"}
\[
H^1_\mathrm{\operatorname{fppf}}(S_{/ {R}} ; G)\hookrightarrow{\check{H}}^1_\mathrm{\operatorname{fppf}}(S_{/ {R}} ; G)
.\]
:::

::: {.remark}
By passing to the limit over flat covers, we get an isomorphism on \( H^1_\mathrm{\operatorname{fppf}}(R; G) \to {\check{H}}^1_\mathrm{\operatorname{fppf}}(R; G) \), and we can descend torsors under an affine scheme. The proof involves the following construction:
:::

::: {.definition title="Twisting"}
If \( Y \in G\curvearrowright{\mathsf{Aff}}{\mathsf{Sch}}_{/ {R}}  \) has a left \( G{\hbox{-}} \)action, then the action map
\[
G\underset{\scriptscriptstyle {R} }{\times} S^{\otimes_R 2}
\xrightarrow{\sim}
Y\underset{\scriptscriptstyle {R} }{\times} S^{\otimes_R 2}
\]
is an isomorphism that defines a descent datum. If \( G \) acts on itself by inner automorphism, \( G_g \) is called that twisted \( R{\hbox{-}} \)group scheme, which acts on \( Y_g \). So for any \( E\in {\mathsf{G}{\hbox{-}}\mathsf{Torsor}} \), we can define the **twists** \( { {}^{Y} E } \) and \( { {}^{G} E } \). In general, we can twist \( G{\hbox{-}} \)schemes equipped with an amply invertible \( G{\hbox{-}} \)linearized line bundle.
:::

::: {.theorem title="?"}
If \( G \) is affine, the class map \( \gamma \) is an isomorphism.
:::

# Phillippe Gille, Talk 2 (Tuesday, July 13)

## Intro

::: {.remark}
Let \( M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \). Reminders of notation

-   \( V(M) \coloneqq\operatorname{Spec}\operatorname{Sym}^\bullet M \) which represents
    \[
    S \mapsto \hom_{{\mathsf{(S)}{\hbox{-}}\mathsf{Mod}}}(M\otimes_R S, S)
    ,\]
    is the **vector group scheme** of \( M \).
-   \( W(M)\coloneqq V(M {}^{ \vee }) \) which represents \( M\otimes_R {-} \) (and doesn't seem to have a name).
-   For \( Y\in G{\hbox{-}}{\mathsf{Aff}}{\mathsf{Sch}}_{/R} \) (affine schemes with a left \( G{\hbox{-}} \)action), \( Y_g\in {\mathsf{Aff}}{\mathsf{Sch}}_{/R} \) is the **twist** of \( Y \) by the 1-cocycle \( g \) defined by the action map:
    \[
    g: 
    Y \underset{\scriptscriptstyle {R} }{\times} S^{\otimes_R 2} 
    \xrightarrow{\sim} 
    Y \underset{\scriptscriptstyle {R} }{\times} S^{\otimes_R 2} 
    .\]
    -   For any \( G{\hbox{-}} \)torsor \( E \) and any \( Y\in G{\hbox{-}}{\mathsf{Sch}} \) with an ample invertible \( G{\hbox{-}} \)linearized bundle[^3] , one can similarly define **twists** \( { {}^{E} Y } \).
-   For \( T \) a faithfully flat extension of \( R \), the **Amitsur resolution** is given by
    \[
    M\to M \otimes_R {\mathbb{T}}(T)^\bullet
    && \text{where }
    {\mathbb{T}}(V)^\bullet \coloneqq V \oplus V^{\otimes 2} \oplus \cdots
    .\]
    I.e., this resolves \( M \) by the tensor algebra (or free algebra) on \( T \).

We'll now discuss some important special cases of \( G{\hbox{-}} \)torsors. The following claim is in analogy to \( {\mathsf{Coh}}(X) \) for \( X\in {\mathsf{Aff}}{\mathsf{Sch}} \):
:::

::: {.fact title="Vector group schemes have trivial cohomology"}
If \( M\in {\mathsf{Fin}}{\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r<\infty} \), then \( {\check{H}}^1(R; W(M)) = 0 \) and every \( W(M){\hbox{-}} \)torsor is trivial.

The following are some important special cases:
:::

::: {.definition title="Finite Constant Group Scheme"}
For any \( \Gamma\in {\mathsf{Fin}}{\mathsf{Grp}} \), \( \Gamma_R \) is the **finite constant group scheme** attached to any \( \Gamma \), and is defined by
\[
\Gamma_R(S) \coloneqq\left\{{ f:\operatorname{Spec}S\to \Gamma {~\mathrel{\Big|}~}f\text{ is locally constant} }\right\} \in {\mathsf{Grp}}
.\]
:::

## Galois Covers

::: {.definition title="Galois Cover"}
A \( \Gamma_R{\hbox{-}} \)torsor of the form \( \operatorname{Spec}S\to \operatorname{Spec}R \) is equivalently a Galois \( \Gamma{\hbox{-}} \)algebra \( S \) and is referred to as a **Galois cover**.
:::

::: {.example title="?"}
A finite Galois extension \( L_{/ {k}}  \) with Galois group \( \Gamma \coloneqq{ \mathsf{Gal}} (L_{/ {k}} ) \) yields a Galois cover \( \operatorname{Spec}L\to \operatorname{Spec}k \).
:::

::: {.example title="?"}
Another nice case is when \( \Gamma \) is the automorphism group associated to some algebraic structure, i.e. when one has **forms**. For example, take \( \Gamma \coloneqq{\operatorname{O}}_{2n} = \mathop{\mathrm{Aut}}(q_{\operatorname{hyp}}) \) for the hyperbolic form \( q_{\operatorname{hyp}} \) on \( R^n \). Descent gives an equivalence of categories
\[
{\mathsf{Grpd}}\ni \left\{{\substack{ \text{Regular quadratic forms } q \\ \text{with } \operatorname{rank}q = 2n}}\right\} 
\rightleftharpoons
H^1_{\mathrm{\operatorname{fppf}}}(R; {\operatorname{O}}_{2n})
,\]
which uses that all forms appearing on the left-hand side are locally isomorphic to \( q_{\operatorname{hyp}} \) in the flat topology.
:::

::: {.example title="?"}
Take \( \Gamma \coloneqq S_n \) the symmetric group, so
\[
S_n(X) = \mathop{\mathrm{Aut}}_{\mathsf{Grp}}(X^{\times n}) && \forall S \in {\mathsf{Alg}}_{/R}
.\]

The same yoga shows there is a categorical equivalence
\[
S_n{\hbox{-}}\text{torsors} &\rightleftharpoons{\mathsf{Fin}}{\mathsf{Alg}}^{\text{ét}}_{/R}
,\]
where we use that every \( X\in {\mathsf{Fin}}{\mathsf{Alg}}^{\text{ét}} \) of degree \( n \) is locally isomorphism to \( R^n \). The inverse is given by descent.
:::

## Flat Quotients

::: {.definition title="Flat Quotient"}
For \( X, H\in {\mathsf{Grp}}{\mathsf{Sch}}_{/R} \), a map \( H\to X \) is a **flat quotient** of \( H \) by \( G \) iff

-   For each \( S\in {\mathsf{Alg}_{/R}} \) the map \( H(S)\to X(S) \) induces an injection \( H(S)/G(S)\hookrightarrow X(S) \), and
-   For each \( x\in X(S) \) there exists a flat cover \( S'\to S \) with \( x_{S'} \in \operatorname{im}(H(S') \to X(S')) \) (so \( f \) is *couvrant* en français).
:::

::: {.example title="of flat quotients"}
```{=tex}
\envlist
```
-   \( {\mathbb{G}}_m = \operatorname{GL}_r /_{{\operatorname{Flat}}}\, {\operatorname{SL}}_r \).
-   \( {\mathbb{G}}_m = {\mathbb{G}}_m /_{{\operatorname{Flat}}}\, \mu_d \).
:::

::: {.lemma title="?"}
Let \( X \) be the flat quotient of \( H \) by \( G \).

1.  \( H\to X \) is a \( G{\hbox{-}} \)torsor
2.  There is an exact sequence of pointed sets:
    \[
    1 \to G(R) \to H(R) \to X(R) \xrightarrow{\phi(x) = [f^{-1}(x)]} H_\mathrm{\operatorname{fppf}}^1(R; G) \to H_\mathrm{\operatorname{fppf}}^1(R; H) 
    ,\]
    where \( \phi \) is denoted the *characteristic map*, which arises naturally from base change.
:::

::: {.remark}
When \( G{~\trianglelefteq~}H \), then \( X\in {\mathsf{Grp}}{\mathsf{Sch}}_{/R} \), and
\[
\left\{{\substack{G{\hbox{-}}\text{torsors over }\operatorname{Spec}R }}\right\}
\rightleftharpoons
\left\{{\substack{(F, \phi) {~\mathrel{\Big|}~}F\in H{\hbox{-}}\text{torsors}, \\ \phi \text{ a local trivialization of } { {}^{F} X } }}\right\}
.\]
:::

::: {.example title="?"}
\( {\operatorname{SL}}_n{\hbox{-}} \)torsors are equivalent to \( (M, \theta) \) with \( M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r} \) and \( \theta: R \xrightarrow{\sim} \bigwedge\nolimits^r(M) \) is a trivialization of \( \operatorname{det}(M) \).
:::

::: {.example title="?"}
Using the Kummer exact sequence
\[
1 \to \mu_d \to {\mathbb{G}}_m \xrightarrow{\times d} {\mathbb{G}}_m \to 1
,\]
\( \mu_d{\hbox{-}} \)torsors are equivalent to pairs \( (M, \theta) \) with \( M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\times} \) and \( \theta: R \xrightarrow{\sim} M^{\otimes_R m} \) is a trivialization.
:::

::: {.definition title="étale morphism"}
An **étale morphism** of rings \( R\to S \) is a smooth morphism of \( \operatorname{reldim}= 0 \). Alternatively, \( S\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\operatorname{Flat}}} \) such that for every \( R{\hbox{-}} \)field \( F \), \( S\otimes_R F \in {\mathsf{Alg}}_{/F}^{\text{ét}} \), where étale algebras are finite and geometrically reduced.
:::

::: {.example title="?"}
-   Localization \( R\to R \left[ { \scriptstyle f^{-1}} \right] \) is étale.
-   If \( d^{-1}\in R \) then the Kummer morphism \( t\mapsto t^d \) is étale.
-   If \( d^{-1}\in R \) and \( r\in R^{\times} \), then \( R[x] /\left\langle{x^d-r}\right\rangle\in {\mathsf{Fin}}{\mathsf{Alg}}_{/R}^\text{ét} \).
:::

::: {.proposition title="?"}
For \( G \) affine smooth, there is an equivalence of torsors
\[
H^1_\text{ét}(R; G) \cong H^1_\mathrm{\operatorname{fppf}}(R;G)
.\]
:::

::: {.proof title="?"}
See notes. This uses that in the flat topology, smoothness is local.
:::

## Galois Cohomology

::: {.remark}
Galois descent is a special case of faithfully flat descent, and takes the form
\[
{\mathsf{R}{\hbox{-}}\mathsf{Mod}}\rightleftharpoons\left\{{\substack{(N, \rho) {~\mathrel{\Big|}~}N\in {\mathsf{S}{\hbox{-}}\mathsf{Mod}} \\ \phi \text{ a semilinear action } \Gamma\curvearrowright N }}\right\}
,\]
where **semilinear** means that
\[
\varphi(\sigma) (\lambda \cdot n) = \sigma(\lambda) \cdot \rho( \sigma)(n)
.\]
:::

::: {.definition title="Isotrivial torsors (very important!)"}
A torsor \( X \) over \( {\mathsf{Grp}}{\mathsf{Sch}}_{/R} \) is **isotrivial** if it is split (trivialized) by a finite Galois étale cover \( R'\to R \).
:::

::: {.remark}
These are the torsors that can be made explicit in Galois cohomology.
:::

::: {.example title="?"}
Let \( \operatorname{ch}k=0 \), then the ring of Laurent polynomials \( k{\left(\left( x \right)\right)  } \), this is isotrivial and a reductive group scheme. A special case is that of **loop torsors**, which are closely related to representation theory in \( {\mathsf{Alg}}{\mathsf{Grp}} \).
:::

::: {.remark}
The main topic is affine curves, and these are special cases of Dedekind rings. Let \( R \) be Dedekind with \( K\coloneqq\operatorname{ff}(R) \) and \( G\in {\mathsf{Aff}}{\mathsf{Grp}}{\mathsf{Sch}} \), then as in the proof for \( \operatorname{GL}_n \) yesterday we have an injective class map
\[
\ker(H^1_\mathrm{\operatorname{fppf}}\to H^1_\mathrm{\operatorname{fppf}}\times \cdots ) \to c_{\Sigma}(\cdots)
.\]
In particular, if \( c_\Sigma(R; G) =1 \), and in particular \( G(R \left[ { \scriptstyle f^{-1}} \right]) \) is dense in \( \prod \cdots \), the kernel appearing here is trivial.
:::

::: {.corollary title="?"}
If \( G \) is a semisimple simply connected [^4] and split in \( {\mathsf{Grp}}{\mathsf{Sch}}_{/R} \), then
\[
\ker \qty{ H^1(R;G) \to H^1\qty{R \left[ { \scriptstyle f^{-1}} \right]; G}} = 1
.\]
:::

::: {.remark}
This simplification comes from the injectivity of the following:
\[
H^1( \widehat{R} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]; G) \hookrightarrow H^1(\widehat{K}  \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]; R)
.\]

In the limit, this says that many torsors are actually trivial. We find that \( H^1_{\mathrm{zar}}(R; {\operatorname{SL}}_n) = 1 \) and \( H^1_{\mathrm{zar}}(R; E_8) = 1 \).
:::

## Curves Over an Algebraically Closed Field

::: {.theorem title="?"}
Let \( k = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \) and \( G \in {\mathsf{Alg}}{\mathsf{Grp}}_{_{/ {k}} } \) be semisimple and \( C \) a smooth connected curve. Then \( H^1_\mathrm{\operatorname{fppf}}(C; G) = 1 \).
:::

::: {.remark}
The main ingredient is Steinberg's theorem that \( H^1(K(C); G) = 1 \). A special case is \( \operatorname{PGL}_n \) and rephrases that central simple algebras over \( k(C) \) are matrix algebras (using Tsen's theorem). This also uses that \( {\operatorname{Pic}}(C) \) is divisible, which follows from the structure of \( {\operatorname{Pic}}(C^c) \) for \( C^c \) a smooth compactification.
:::

::: {.remark}
We have a degree map and moreover an exact sequence involving the Jacobian (an abelian variety):
\[
0 \to J_{C^c}(k) \to {\operatorname{Pic}}(C^c) \xrightarrow{\deg} {\mathbb{Z}}\to 0
.\]
If \( C \) is \( C^c \) minus finitely many points, \( {\operatorname{Pic}}(C^c)\twoheadrightarrow{\operatorname{Pic}}(C) \) induces \( J_{C^c}(k) \twoheadrightarrow{\operatorname{Pic}}(C) \). We'll sketch the proof first in the case \( G \) is simply connected. In this case, given \( \gamma\in H^1(C; G) \), and according to Steinberg's theorem there exists \( f\in k[C] \) with \( \gamma_{C^c} = ? \). In the general case, we can take a simply connected cover \( f: \tilde G\to G \), e.g. \( {\operatorname{SL}}_n\to \operatorname{PGL}_n \) or \( {\operatorname{Spin}}_n\to {\operatorname{SO}}_n \). Let \( \tilde T \) be its maximal torus, then \( T\coloneqq\tilde T/\ker f \) is a maximal torus in \( G \), so let \( B \subseteq G \) be a Borel containing \( T \).

::: {.claim}
\[
H^1(C; B) \twoheadrightarrow H^1(C; G)
.\]
:::

Letting \( E \) be a \( C{\hbox{-}} \)torsor under \( G \), then the idea is to introduce the twisted \( C{\hbox{-}} \)scheme \( Y\coloneqq E(G/B) \), a projective variety of flags. By Steinberg's theorem, \( Y(k(C)) \neq \emptyset \). Applying the valuative criterion of properness shows that \( Y \) has a \( C{\hbox{-}} \)point, so \( E(G) \) has a Borel subgroup scheme. By functoriality,
\[
[E] \in \operatorname{im}(H^1(C; B) \to H^1(C; G))
.\]

We thus have \( B = U\rtimes T \) where \( U \) admits a \( T{\hbox{-}} \)equivariant filtration with associated quotients isomorphic to copies of \( {\mathbb{G}}_a \), and we apply a dévissage argument. Since \( \tilde T\to T \) is an isogeny (finite kernel) and \( {\operatorname{Pic}}(C) \) is a divisible group, a commutative diagram shows surjectivity \( H^1(C; T)\twoheadrightarrow H^1(C; G) \) and thus the latter is trivial.

The reductive case is similar, letting \( S = G/DG \) be the coradial torus of \( G \) and showing \( H^1(C; G) \xrightarrow{\sim} H^1(C; S) \) generalizing the bijection from yesterday:
\[
H^1(C; \operatorname{GL}_r) \to H^1(C; {\mathbb{G}}_m) = {\operatorname{Pic}}(C)
.\]
:::

## Affine Line

::: {.theorem title="?"}
Let \( k \in \mathsf{Field} \) be not necessarily algebraically closed and \( G\in{\mathsf{Grp}}{\mathsf{Sch}}_{_{/ {k}} } \) reductive. We have a bijection
\[
H^1(k; G) \xrightarrow{\sim} \ker\qty{ H^1(k[t]; G) \to H^1(k_s[t]; G)}
.\]
If \( k \) is perfect or \( \operatorname{ch}k = p \) where \( p \) is "good" for \( G \), we have \( H^1(k_s[t]; G) = 1 \) and so \( H^1(k; G) = H^1(k[t]; G) \) and we say \( G{\hbox{-}} \)torsors over \( k[t] \) are **constant**.
:::

::: {.remark}
This doesn't hold for \( G = \operatorname{PGL}_p \) over \( k(t) \) with \( \operatorname{ch}k = p \) imperfect. Our next goal is to prove this theorem -- a common ingredient to all proofs is the following theorem on bundles over \( {\mathbb{P}}^1 \):
:::

::: {.theorem title="Grothendieck-Harder"}
For \( G \) a reductive \( k{\hbox{-}} \)group, let \( S \) be a maximal \( k{\hbox{-}} \)split torus of \( G \) and consider its constant associated Weyl group
\[
W_G(S) = N_G(S) / C_G(S)
.\]
Then there is a bijection
\[
H^1_{\mathrm{zar}}({\mathbb{P}}^1_{_{/ {k}} }; S)/W_G(S) \xrightarrow{\sim} \ker\qty{H^1({\mathbb{P}}^1_{_{/ {k}} }; G) \xrightarrow{\operatorname{ev}_0}  H^1(k; C)}
.\]
In particular if a \( G{\hbox{-}} \)torsor over \( k[t] \) is trivial at \( t=0 \) and extends to a \( G{\hbox{-}} \)torsor over \( {\mathbb{P}}^1_{_{/ {k}} } \), then it is trivial.
:::

::: {.remark}
Given a \( G{\hbox{-}} \)torsor over \( k[t] \), without loss of generality, we can assume \( X \) is trivial on \( t=0 \) -- the original method to extend \( X \) to \( {\mathbb{P}}^1 \) is to use Bruhat-Tits theory. The idea is to find an integer \( d\geq 1 \) where \( \gamma_{k[t^d]} \) extends to \( {\mathbb{P}}^1 \). The statement is local at \( \infty \), i.e. it's enough to find \( d \) where \( \gamma_{k((t^{-d}))} \) comes from \( H^1(\cdots) \).

The following map is surjective:
\[
H^1(k((t^{-1})); S)\to H^1(k((t^{-1})); G)
,\]
and we can write the absolute Galois group of \( k{\left(\left( t^{-1} \right)\right)  } \) as
\[
\lim_n \mu_n(k_s) \rtimes G(k_s{}_{/ {k}} ) = I \rtimes G(k_s {}_{/ {k}} )
.\]
A restriction of a cocycle to the inertia group is a group morphism, so factors through \( \mu_d(k_s) \) for some finite \( d \), which we can take to be the order of \( S(k_s) \). We have some \( \gamma \in H^1(k[t]; G) \) satisfying \( \gamma(0) = 1 \), and a trick is to introduce a new indeterminate \( u \) and to extend to \( F \coloneqq k(u) \).

The upshot is that
\[
\operatorname{ff}\qty{ k(u, t, (ut)^{1\over d}) }
\cong
k(t,x)
.\]
by a \( k(t){\hbox{-}} \)linear isomorphism. The kernel is trivial by a specialization argument, so \( \gamma \) is rationally trivial and extends to infinity.
:::

::: {.remark}
Noting that \( {\mathbb{A}}^1 = {\mathbb{P}}^1 \setminus\left\{{{\operatorname{pt}}}\right\} \), we have \( {\mathbb{G}}_m = {\mathbb{P}}^1\setminus\left\{{{\operatorname{pt}}_0, {\operatorname{pt}}_1}\right\} \), which is much more difficult.
:::

::: {.theorem title="?"}
Let \( G \) be a reductive \( k{\hbox{-}} \)group over \( \operatorname{ch}k = 0 \), then there is a bijection
\[
H^1(k[t, t^{-1}]; G) \xrightarrow{\sim} H^1(k{\left(\left( t \right)\right)  }; G)
.\]
:::

::: {.remark}
Surjectivity is easy, coming from reduction to a finite subgroup, and injectivity is hard. A crucial step is to show existence of a maximal torus for the relevant twisted group scheme, using again Bruhat-Tits theory and now *twin buildings*. So we have a good understanding of \( {\mathbb{G}}_m{\hbox{-}} \)torsors, and a next step would be understanding \( {\mathbb{P}}^n \) with more deleted points.
:::

# Frédéric Déglise, Talk 1 (Wednesday, July 14)

## Intro

**References:**

-   <http://deglise.perso.math.cnrs.fr/docs/2021/PCMI1.pdf>

-   [PCMI Notes 1](https://www.ias.edu/sites/default/files/Deglise%20Lecture%201.pdf)

-   [PCMI Notes 2](http://deglise.perso.math.cnrs.fr/docs/2021/PCMI2.pdf)

**Abstract**:

> Building on initial conjectures due to Beilinson, Voevodsky has initiated a rich variety of "motivic categories", the universal one being Morel-Voevodsky's homotopy category. This world, that is now called "motivic homotopy theory", has produced a wide range of results, settling older conjectures as well as opening new tracks to follow.
>
> This lecture series will aim at giving a survey of this world, from the pure motivic origin, through the functoriality developments and then to some of the exciting open questions.

::: {.remark}
Recall the Euler product expansion for the zeta function. General \( L{\hbox{-}} \)functions were studied around the 20s, followed by the Weil conjectures in the 40s, and then étale \( \ell{\hbox{-}} \)adic shaves by Grothendieck et al in the 60s. Letters from Grothendieck to Serre describe the notion of *weights* in relation to the Weil conjectures, and served as an impetus in the early 70s for *pure motives*.

A second line of study considered number fields and class number formulas, along with special values of \( L{\hbox{-}} \)functions, going back to Dirichlet. Lichtenbaum related special values to \( K{\hbox{-}} \)theory in the 70s, and this along with the theory of perverse sheaves in the early 80s led to the Beilinson conjecture and motivic complexes in the 90s.

As an aside, there is also a notion of \( p{\hbox{-}} \)adic \( L{\hbox{-}} \)functions and corresponding \( p{\hbox{-}} \)adic motives.
:::

::: {.remark}
An outline for today:

1.  Sheaves with transfers, which are modeled on étale homotopy sheaves

2.  Homotopy sheaves over perfect fields

3.  Motivic complexes
:::

::: {.remark}
There are three main notions for étale sheaves:

1.  Sheaves with transfers (see *algebraic cycles*),
2.  The (big) smooth Nisnevich site,
3.  \( {\mathbb{A}}^1{\hbox{-}} \)homotopy invariance.
:::

## Setting up sheaves with transfers

We'll fix \( S \) a regular Noetherian scheme.

### Finite Correspondences

::: {.definition title="Finite Correspondences"}
For \( X,Y\in {\mathsf{sm}}{\mathsf{Sch}}_{/ {S}}  \), a **finite correspondence** \( \alpha \) from \( X \) to \( Y \) is a formal sum
\[
\alpha = \sum_{i=1}^m m_i [Z_i]
&& \text{with }
Z_i \subseteq X \underset{\scriptscriptstyle {S} }{\times} Y \text{ closed, integral}
\]
with \( Z_i\to X \) finite and dominant over a connected component of \( X \), i.e. an algebraic cycle in the product. These form an abelian group denoted \( c(X, Y) \in {\mathsf{Ab}}{\mathsf{Grp}} \), and can be composed without imposing any equivalence relation on algebraic cycles.

We can thus define a closed symmetric monoidal (additive) category enriched over abelian groups, the **category of finite correspondences** over \( S \):
\[
\mathsf{C} &\coloneqq{\mathsf{Cor}}{\mathsf{Sch}}_{/ {S}}  \\
\mathrm{Ob}(\mathsf{C}) &\coloneqq{\operatorname{Ob}}({\mathsf{sm}}{\mathsf{Sch}}_{/ {S}} ) \\
\mathsf{C}(X, Y) &\coloneqq c(X, Y)
.\]
where the monoidal structure is the cartesian product over \( S \) on objects and on \( c(X, Y) \) is induced by the exterior product of algebraic cycles.
:::

::: {.remark}
Writing \( XYZ \coloneqq X { \underset{\scriptscriptstyle {S} }{\times} } Y { \underset{\scriptscriptstyle {S} }{\times} } Z \), we have smooth projection maps
\[
p: XYZ &\to XY \\
r: XYZ &\to XZ \\
q: XYZ &\to YZ 
.\]
Given cycles \( \alpha\in c(X, Y), \beta\in c(Y, Z) \), these pull back to \( XYZ \) and intersect properly, with their intersection product given by Serre's Tor formula.
:::

::: {.definition title="Graph"}
Let \( Y \xrightarrow{f} X\in {\mathsf{sm}}{\mathsf{Sch}}_{/ {S}}  \), and define the **graph of \( f \)** as the following pullback:

```{=tex}
\begin{tikzcd}
    {\Gamma_f} && {Y{ \underset{\scriptscriptstyle {S} }{\times} } X} \\
    \\
    X && {X{ \underset{\scriptscriptstyle {S} }{\times} } X}
    \arrow[from=1-1, to=3-1]
    \arrow[from=1-1, to=1-3]
    \arrow["\delta", from=3-1, to=3-3]
    \arrow["{f\times 1}", from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXEdhbW1hX2YiXSxbMiwwLCJZXFxmaWJlcnByb2R7U30gWCJdLFsyLDIsIlhcXGZpYmVycHJvZHtTfSBYIl0sWzAsMiwiWCJdLFswLDNdLFswLDFdLFszLDIsIlxcZGVsdGEiXSxbMSwyLCJmXFx0aW1lcyAxIl1d)

Here \( \delta \) is the diagonal immersion of \( X_{/ {S}}  \).
:::

::: {.remark}
Note that \( \Gamma_f \subseteq YX \) is a closed subscheme, and there is an associated algebraic cycle
\[
[\Gamma_f]_{XY} \in c(Y, X)
.\]
:::

::: {.definition title="Transpose"}
Letting \( {\varepsilon}: YX\to XY \) be the permutation of factors, \( {\varepsilon}_* [\Gamma_f] \in c(X, Y) \) is a finite correspondence denoted \( f^t \), the **transpose** of \( f \).
:::

::: {.remark}
Several of the operations from the six functor formalism appear here:

-   **Base change** can be defined for \( T \xrightarrow{f} S \) as
    \[
    f^*: {\mathsf{Cor}}{\mathsf{Sch}}_{/ {S}}  &\to {\mathsf{Cor}}{\mathsf{Sch}}_{/ {T}}  \\
    X & \mapsto X{ \underset{\scriptscriptstyle {S} }{\times} } T
    \]
    using *pullback* for finite correspondences.
-   **Forgetting the base** is given by
    \[
    p_\sharp: {\mathsf{Cor}}{\mathsf{Sch}}_{/ {S}}  &\to {\mathsf{Cor}}{\mathsf{Sch}}_{/ {T}}  \\
    Y_{/ {T}}  &\mapsto Y_{/ {S}} 
    \]
    using *direct images* for finite correspondences.

We now enlarge \( {\mathsf{Cor}}{\mathsf{Sch}}_{/ {S}}  \) to a larger abelian category. This uses the fact that the Yoneda embedding will be a fully faithful functor
\[
X\mapsto c({-}, X) \coloneqq{\mathbb{Z}}^{\mathrm{tr}}_{/ {S}} (X)
\]
landing in a cocomplete abelian category extending the 6 functors.
:::

### Presheaves with transfers

::: {.definition title="Presheaf with transfers"}
A **presheaf with transfers** \( {\mathcal{F}} \) over \( S \) is an additive functor
\[
{\mathcal{F}}: {\mathsf{Cor}}{\mathsf{Sch}}_{/ {S}} ^{\operatorname{op}}\to {\mathsf{Ab}}{\mathsf{Grp}}
.\]
We then define a **category of presheaves with transfers** over \( S \):
\[
\mathsf{C} &\coloneqq{\mathrm{tr}} \underset{ \mathsf{pre} } {\mathsf{Sh} }_{/ {S}}  \\
{\operatorname{Ob}}(\mathsf{C}) &\coloneqq\text{Presheaves with transfers } {\mathcal{F}}\\
\mathsf{C}({\mathcal{F}}, {\mathcal{G}}) &\coloneqq\text{Natural transformations } \eta: {\mathcal{F}}\to{\mathcal{G}}
.\]
:::

::: {.remark}
Let \( f\in {\mathsf{Cor}}{\mathsf{Sch}}_{/ {S}} (Y, X) \). Note that by contravariance of presheaves \( {\mathcal{F}} \) we always get maps
\[
{\mathcal{F}}(f) \in {\mathsf{Ab}}{\mathsf{Grp}}({\mathcal{F}}(X), {\mathcal{F}}(Y))
.\]
The data of a *transfer* is the additional following operation on \( {\mathcal{F}} \), yielding a "wrong way" map:
\[
f_* \coloneqq{\mathcal{F}}(f^t) \in {\mathsf{Ab}}{\mathsf{Grp}}( {\mathcal{F}}(Y), {\mathcal{F}}(X))
.\]
:::

::: {.example title="of presheaves with transfers"}
```{=tex}
\envlist
```
-   \( {\mathbb{G}}_m({-}): X_{/ {S}}  \to {\mathcal{O}}_X(X)^{\times} \) has transfers over \( S \).
-   For \( A\in {\mathsf{Ab}}{\mathsf{Var}}_{/ {k}}  \), the functor \( \mathop{\mathrm{Hom}}({-}, A) \) has transfers over \( k \).
-   \( H^n({-}) \) has transfers over \( S \) for any mixed Weil cohomology theory.
-   \( {\mathsf{K}}{\hbox{-}} \)theory does **not** form a presheaf with transfers. One instead needs *unramified* \( K{\hbox{-}} \)theory.
:::

### Nisnevich Sheaves

::: {.definition title="Nisnevich Topology"}
A **Nisnevich cover** of \( X\in {\mathsf{Sch}} \) is a family of étale morphisms \( \left\{{ W_i \xrightarrow{p_i} X }\right\}_{i\in I} \) where for \( x\in X \), \( p_i(w) = x \) for some \( w\in W_i \) inducing a trivial residual extension \( \kappa(w) / \kappa(x) \).
:::

::: {.lemma title="Characterization of Nisnevich sheaves"}
For \( {\mathcal{F}}: {\mathsf{sm}}{\mathsf{Sch}}_{/ {S}} ^{\operatorname{op}}\to {\mathsf{Ab}}{\mathsf{Grp}} \) any abelian presheaf, \( {\mathcal{F}} \) is a sheaf for the Nisnevich topology iff \( {\mathcal{F}}(\Delta) \) is a cartesian square for every distinguished square \( \Delta \) of the following form:

```{=tex}
\begin{tikzcd}
    W && V \\
    & \Delta \\
    U && X
    \arrow["q", from=1-1, to=1-3]
    \arrow["k"', from=1-1, to=3-1]
    \arrow["j"', from=3-1, to=3-3]
    \arrow["p", from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwwLCJXIl0sWzAsMiwiVSJdLFsyLDAsIlYiXSxbMiwyLCJYIl0sWzEsMSwiXFxEZWx0YSJdLFswLDIsInEiXSxbMCwxLCJrIiwyXSxbMSwzLCJqIiwyXSxbMiwzLCJwIl1d)

Here \( j \) is an open immersion, has reduced closed complement \( Z \), \( p \) is étale, and \( p^{-1}(Z) \xrightarrow{\sim} Z \).
:::

### Sheaves with transfers

::: {.definition title="Sheaf with transfers"}
There is a canonical embedding
\[
\gamma: {\mathsf{sm}}{\mathsf{Sch}}_{/ {S}}  &\to {\mathsf{Cor}}{\mathsf{Sch}}_{/ {S}}  \\
X &\mapsto X \\
(Y\to X) &\mapsto [\Gamma_f]_{XY} \in c(Y, X)
.\]
A **sheaf with transfers** is a presheaf \( {\mathcal{F}}\in {\mathrm{tr}} \underset{ \mathsf{pre} } {\mathsf{Sh} }_{/ {S}}  \) such that
\[
{\mathcal{F}}\circ \gamma: \in {\mathsf{Sh}}\qty{ {\mathsf{Sch}}^{{\mathrm{Nis}}}_{/ {S}} ,  {\mathsf{Ab}}{\mathsf{Grp}}}
,\]
i.e. the composition \( {\mathcal{F}}\circ \gamma \) is a sheaf on the Nisnevich site of schemes (a *Nisnevich sheaf*). These form a category denoted \( {\mathrm{tr}}{\mathsf{Sh}}_{/ {S}}  \), and there is an adjunction
\[
\adjunction {\mathop{\mathrm{Forget}}} {a^{\mathrm{tr}}} {{\mathrm{tr}}{\mathsf{Sh}}_{/ {S}}  } {{\mathrm{tr}} \underset{ \mathsf{pre} } {\mathsf{Sh} }_{/ {S}}  }
\]
where \( { \left.{{a^{\mathrm{tr}}({\mathcal{F}})}} \right|_{{{\mathsf{sm}}{\mathsf{Sch}}_{/ {S}} }} } =  \left( F\circ \gamma \right)^{\scriptscriptstyle \mathrm{sh}}  \).
:::

::: {.remark}
The smooth site on \( {\mathsf{Sch}}_{/ {S}}  \) is big in the following sense: to give a Nisnevich sheaf in this site is equivalent to an assignment
\[
{\mathsf{sm}}{\mathsf{Sch}}_{/ {S}}  &\to {\mathsf{Sh}}({\mathsf{sm}}{\mathsf{Sch}}_{/ {S}} , {\mathsf{Ab}}{\mathsf{Grp}}) \\
X &\mapsto {\mathcal{F}}_X \\
(Y\xrightarrow{f} X) &\mapsto (f^*({\mathcal{F}}_Y) \xrightarrow{\tau_f} {\mathcal{F}}_X) 
.\]
Noting that \( \tau_f \) is not generally an isomorphism, it somehow measures a defect of base change. In particular, \( {\mathsf{Sh}}({\mathsf{sm}}{\mathsf{Sch}}_{/ {S}} ) \) is a much bigger category than \( {\mathsf{Sh}}({\mathsf{Sch}}^{\mathrm{Nis}}_{/ {S}} ) \).
:::

::: {.example title="of sheaves with transfers"}
```{=tex}
\envlist
```
-   For \( X_{/ {S}}  \) smooth: \( {\mathbb{Z}}_s^{\mathrm{tr}}(X) \coloneqq c_S({-}, X) \).
-   \( {\mathbb{G}}_m({-}): X_{/ {S}}  \to {\mathcal{O}}_X(X)^{\times} \).
-   For \( A\in {\mathsf{Ab}}{\mathsf{Var}}_{/ {k}}  \), \( \mathop{\mathrm{Hom}}({-}, A) \).

As before, the last two examples don't form sheaves with transfers:

-   \( H^n({-}) \)
-   \( {\mathsf{K}}{\hbox{-}} \)theory
:::

::: {.remark}
We have \( f^*, p_\sharp, \otimes \) on \( {\mathsf{Cor}}{\mathsf{Sch}}_{/ {S}}  \), and these can be extended to sheaves:

-   \( f_*(F) \coloneqq F \circ f^* \), which yields a **base change/direct image** adjunction:
    \[
    \adjunction{f^*}{f_*}{{\mathrm{tr}}{\mathsf{Sh}}_{/ {S}} }{{\mathrm{tr}}{\mathsf{Sh}}_{/ {T}} }
    .\]

-   \( p:T\to S \) yields a **forget base/base change** adjunction:
    \[
    \adjunction{p_\sharp}{p^*}{{\mathrm{tr}}{\mathsf{Sh}}_{/ {T}} }{{\mathrm{tr}}{\mathsf{Sh}}_{/ {S}} }
    ,\]
    where for open immersions, \( p_\sharp \) is \( p_! \), the **exceptional direct image**

-   \( {}_{h}\otimes \) on \( {\mathrm{tr}}{\mathsf{Sh}}_{/ {S}}  \) yields a **closed symmetric monoidal structure**
    \[
    \adjunction{{-}\otimes^{\mathrm{tr}}{\mathcal{F}}}{\underline{\mathop{\mathrm{Hom}}}^{\mathrm{tr}}({\mathcal{F}}, {-})}{{\mathrm{tr}}{\mathsf{Sh}}_{/ {S}} }{{\mathrm{tr}}{\mathsf{Sh}}_{/ {S}} }
    ,\]
    where \( \underline{\mathop{\mathrm{Hom}}}^{\mathrm{tr}} \) is an internal hom.
:::

## Homotopy and Cohomology

### \( {\mathbb{A}}^1{\hbox{-}} \)invariance and Homotopic Morphisms {#mathbba1hbox-invariance-and-homotopic-morphisms}

::: {.definition title="$\\AA^1$invariance and homotopy sheaves"}
Let \( {\mathcal{F}}\in {\mathrm{tr}}{\mathsf{Sh}}(S) \) and let \( p:{\mathbb{A}}^1_{/ {X}} \to X \) be the canonical projection. We say \( {\mathcal{F}} \) is **\( {\mathbb{A}}^1{\hbox{-}} \)invariant** or a **homotopy sheaf** if for any \( X\in {\mathsf{sm}}{\mathsf{Sch}}_{/ {S}}  \), there is an induced isomorphism
\[
p^*: F(X) \xrightarrow{\sim} F({\mathbb{A}}^1_{/X})
.\]
These form a category denote \( {\mathsf{HI}}^{\mathrm{tr}}(S) \).
:::

::: {.definition title="Homotopic morphisms"}
Let \( \alpha, \beta \in {\mathsf{Cor}}{\mathsf{Sch}}_{/ {S}} (X, Y) \) be two morphisms. We then say **\( \alpha \) is homotopic to \( \beta \)** and write \( \alpha\sim\beta \) iff there exists a \( H \) satisfying the following:
\[
H &\in {\mathsf{Cor}}{\mathsf{Sch}}_{/ {S}} ({\mathbb{A}}^1\times X, Y) \\
\alpha &= H \circ s_0 \\
\beta &= H \circ s_1
,\]
where \( s_0, s_1 \) are the zero and unit sections of \( {\mathbb{A}}^{1}_{/X}\in \mathsf{Ring}{\mathsf{Sch}}_{/X} \). This yields an equivalence relation, and we set
\[
\pi_S(X, Y) \coloneqq{\mathsf{Cor}}{\mathsf{Sch}}_{/ {S}} (X, Y)/\sim
.\]
:::

::: {.example title="of $\\AA^1\\dash$invariant sheaves"}
The sheaves \( {\mathbb{G}}_m({-}) \) and \( \mathop{\mathrm{Hom}}({-}, A) \) are \( {\mathbb{A}}^1{\hbox{-}} \)invariant.
:::

::: {.theorem title="Suslin-Voevodsky"}
Let \( S\in {\mathsf{Aff}}{\mathsf{Sch}} \) be regular and \( C\in{\mathsf{Aff}}{\mathsf{Sch}}_{/ {S}}  \) an affine curve admitting a **good compactification** \( \tilde C \):

-   \( \tilde C_{/ {S}}  \) is proper and normal,
-   \( C\subseteq \tilde C \) is open/dense,
-   \( C_\infty \coloneqq\tilde C\setminus C \) admits an affine open neighborhood.

Then for any \( X\in {\mathsf{sm}}{\mathsf{Aff}}{\mathsf{Sch}}_{/ {S}}  \), there is a canonical isomorphism of groups:
\[
\pi_S(X, C) &\xrightarrow{\sim} {\operatorname{Pic}}(X { \underset{\scriptscriptstyle {S} }{\times} } \tilde C { \underset{\scriptscriptstyle {S} }{\times} } C_\infty) \\
\alpha &\mapsto [{\mathcal{O}}(\alpha)]
,\]
where \( {\mathcal{O}}(\alpha) \) is the line bundle associated to \( \alpha \), viewed as a Cartier divisor in \( X { \underset{\scriptscriptstyle {S} }{\times} } \tilde C \).
:::

### Cohomology of Perfect Fields

::: {.definition title="Fiber functors"}
Fix \( k \in \mathsf{Perf}\mathsf{Field} \), then a **function field** \( E \) over \( k \) is a separable finitely generated field extension \( E_{/ {k}}  \). One can define the **fiber** of a homotopy sheaf \( F \) at \( E_{/ {k}}  \) as a filtered colimit over smooth finitely generated sub \( k{\hbox{-}} \)algebras \( A \):
\[
F(E_{/ {k}} ) \coloneqq\colim_{A_{/ {k}}  \leq E_{/ {k}} } F(\operatorname{Spec}A)
.\]
This yields a **fiber functor**: it is exact and commutes with coproducts.
:::

::: {.remark}
We define the category \( {\mathsf{HI}}^{\mathrm{tr}}(S) \leq {\mathrm{tr}}{\mathsf{Sh}}(S) \) to be the category of all homotopy sheaves, which is (Grothendieck) abelian and bicomplete. The forgetful functor is exact, so there is an adjunction
\[
\adjunction
{h_0}
{\mathop{\mathrm{Forget}}}
{{\mathrm{tr}}{\mathsf{Sh}}_{/ {k}} }
{{\mathsf{HI}}^{\mathrm{tr}}_{/ {k}} }
.\]
:::

::: {.proposition title="Dévissage/purity"}
If \( F \) is a homotopy sheaf and \( Z \xrightarrow{i} X \) is a codimension 1 closed immersion in \( {\mathsf{sm}}{\mathsf{Sch}}_{/ {k}}  \) with \( j: X\setminus Z\to X \) an open immersion, then there is a SES of Nisnevich sheaves over \( X_{\mathrm{Nis}} \):
\[
0\to {\mathcal{F}}_X \to j_* {\mathcal{F}}_{X\setminus Z} \to i_* {\mathcal{F}}_{-1, Z} \to 0
.\]
:::

### Homotopy Invariance

::: {.theorem title="Main Theorem: homotopy invariance of homology"}
If \( k\in \mathsf{Perf}\mathsf{Field} \) and \( {\mathcal{F}}\in {\mathsf{HI}}^{\mathrm{tr}}_{/ {k}}  \), then for all \( m \) and all \( X \in {\mathsf{sm}}{\mathsf{Sch}}_{/ {k}}  \), there is an isomorphism
\[
p^*: H^n_{\mathrm{Nis}}(X; {\mathcal{F}}) \xrightarrow{\sim} H_{\mathrm{Nis}}^n({\mathbb{A}}^1_{/X}; {\mathcal{F}})
,\]
so the presheaf \( H^n_{\mathrm{Nis}}({-}, {\mathcal{F}}) \) is homotopy invariant.
:::

::: {.corollary title="Purity theorem"}
For \( Z\hookrightarrow X \) smooth closed of codimension \( m \), then
\[
H_Z^n(X; {\mathcal{F}}) \xrightarrow{\sim} H_{\mathrm{Nis}}^{n-m}(Z; {\mathcal{F}}_{-m})
.\]
Here the LHS is Nisnevich cohomology with support.
:::

::: {.corollary title="The Gersten resolution computes Nisnevich cohomology"}
For \( X \) smooth, \( {\mathcal{F}}_x \) is Cohen-Macaulay and there is a Cousin complex \( C^*(X; {\mathcal{F}}) \), also called the Gersten complex of \( {\mathcal{F}} \), and one can compute Nisnevich cohomology as
\[
H^n_{\mathrm{Nis}}(X; {\mathcal{F}}) \xrightarrow{\sim} H^n(C^*(X; {\mathcal{F}}))
.\]
:::

### Relation to Chow

::: {.theorem title="Nisnevich cohomology to Chow comparison"}
Write \( {\mathbb{S}}^{n} \coloneqq{\mathbb{G}}_m{ {}^{ \scriptstyle {}_{h} {\otimes_{}^{n}} }  } \), then for a function field \( E_{/ {k}}  \), there is an isomorphism of sheaves
\[
{\mathbb{S}}^n(E) \xrightarrow{\sim} \underline{ {\mathsf{K}}^{\scriptstyle\mathrm{M}} _n}(E) 
,\]
so this identifies with the \( n \)th unramified \( {\mathsf{K}}{\hbox{-}} \)theory of \( E \). Using the Gersten resolution of \( {\mathbb{S}}^{n} \), one obtains an isomorphism of groups
\[
H_{\mathrm{Nis}}^n(X; {\mathbb{S}}^n) \xrightarrow{\sim} 
{\operatorname{CH}}^n(X)
,\]
the Chow group of codimension \( n \) cycles modulo rational equivalence.
:::

# Frédéric Déglise, Talk 2 (Thursday, July 15)

## Intro

::: {.remark}
Recall the Beilinson conjectures (84/86), and Bloch's higher Chow groups (86). Today we'll discuss the \( {\mathbb{A}}^1{\hbox{-}} \)homotopy category \( {\mathsf{ho}_*^{\scriptstyle {\mathbb{A}}^1}} \) and the category of motives \( {\mathsf{DM}}_{/ {S}}  \). We'll be working \( {\mathsf{Top}}_* \), the infinity category of pointed spaces, and \( \mathbf{D} {{\mathsf{Ab}}}  \), the (infinity) derived category of abelian groups.
:::

## The homotopy category

::: {.definition title="The homotopy category"}
Consider infinity functors
\[
F: {\mathsf{sm}}{\mathsf{Sch}}^{\operatorname{op}}_{/ {S}} \to {\mathsf{Top}}_*
\]
and define
\[
F(X, Z) \coloneqq{\operatorname{hofib}}( F(X) \to F(X\setminus Z))
.\]
Then **the (pointed) \( {\mathbb{A}}^1 \) homotopy category of \( S \)**, denoted \( {\mathsf{ho}_*^{\scriptstyle {\mathbb{A}}^1}}_{/ {S}}  \), consists of such functors \( F \) that satisfy

-   **Excision**: for all \( (Y, T) \to (X, Z) \) excisive, there is a weak equivalence
    \[
    F(Y, T) \underset{\scriptscriptstyle W}{\rightarrow}F(X, Z)
    .\]

-   **Homotopy invariance**: The canonical projection \( {\mathbb{A}}^1_{/ {X}}  \) induces a weak equivalence
    \[
    F(X) \underset{\scriptscriptstyle W}{\rightarrow}F({\mathbb{A}}^1_{/ {X}} )
    .\]

This category admits a monoidal structure, which we'll denote by the smash product \( X\wedge Y \).
:::

::: {.remark}
The excision axiom can be replaced by the following condition: for distinguished squares \( \Delta \), the image \( F(\Delta) \) is homotopy cartesian:

```{=tex}
\begin{tikzcd}
    {W_+} && {V_+} \\
    & {} \\
    {U_+} && {X_+}
    \arrow[from=1-1, to=1-3]
    \arrow[from=3-1, to=3-3]
    \arrow[from=1-3, to=3-3]
    \arrow[from=1-1, to=3-1]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwwLCJXXysiXSxbMiwwLCJWXysiXSxbMCwyLCJVXysiXSxbMiwyLCJYXysiXSxbMSwxXSxbMCwxXSxbMiwzXSxbMSwzXSxbMCwyXSxbMCwzLCIiLDEseyJzdHlsZSI6eyJuYW1lIjoiY29ybmVyIn19XV0=)

We can similarly ask for (infinity additive) functors \( K:{\mathsf{sm}}{\mathsf{Sch}}^{\operatorname{op}}_{/ {S}} \to \mathbf{D} {{\mathsf{Ab}}}  \) satisfying these properties.
:::

::: {.remark}
We can use infinity categorical localization theory to build this category. For a scheme \( S \), view a *pointed space over \( S \)* as a presheaf valued in pointed simplicial sets, viewed as an infinity category. We can then construct
\[
{\mathsf{ho}_*^{\scriptstyle {\mathbb{A}}^1}}_{/ {S}}  &= 
 \underset{ \mathsf{pre} } {\mathsf{Sh} }({\mathsf{sm}}{\mathsf{Sch}}_{/ {S}} , \mathsf{sSet}_*) \left[ { \scriptstyle W^{-1}} \right] \coloneqq\mathsf{C} \left[ { \scriptstyle W^{-1}} \right] 
\\ \\
W &\coloneqq\left\{{
{\mathbb{Z}}_S^*({\mathbb{A}}^1_{/ {X}} ) \to {\mathbb{Z}}_S^*(X) {~\mathrel{\Big|}~}X\in {\operatorname{Ob}}(\mathsf{C})
}\right\}
.\]
:::

::: {.remark}
One can similarly do this for \( {\mathrm{tr}} \underset{ \mathsf{pre} } {\mathsf{Sh} }({\mathsf{Cor}}{\mathsf{Sch}}_{/ {S}}  , \mathbf{D} { {\mathsf{Ab}}}  ) = \mathbf{D} { {\mathrm{tr}} \underset{ \mathsf{pre} } {\mathsf{Sh} }_{/ {S}}  }  \). Effective motives \( {\mathsf{DM}}^{\mathsf{eff}}_{/ {S}}  \) can be constructed by replacing presheaves with \( \mathbf{D} {{\mathsf{Sh}}^{\mathrm{tr}}_{/ {S}} }  \) and localizing at \( {\mathbb{Z}}_S^{\mathrm{tr}}({\mathbb{A}}^1_{/ {X}} ) \to {\mathbb{Z}}_S^{{\mathrm{tr}}}(X) \).
:::

## \( {\mathbb{A}}^1{\hbox{-}} \)locality {#mathbba1hbox-locality}

::: {.definition title="$\\AA^1\\dash$local spaces"}
**\( {\mathbb{A}}^1{\hbox{-}} \)local spaces** are those \( S{\hbox{-}} \)spaces for which the realization induces a weak equivalence on mapping spaces:
\[
{\left\lvert {{\mathbb{A}}^1_{/ {X}}  } \right\rvert} _+ 
\to X_+ 
\leadsto 
\mathop{\mathrm{Hom}}(X_+, Y ) 
\underset{\scriptscriptstyle W}{\rightarrow}
\mathop{\mathrm{Hom}}(\qty{ {\mathbb{A}}^1_{/ {X}}  } _+, Y) \quad \forall Y\in {\operatorname{Ob}}(\mathsf{C})
.\]
:::

::: {.remark}
Fix \( k\in\mathsf{Perf}\mathsf{Field} \) and consider complexes of sheaves \( K \in\mathsf{Ch}\qty{ {\mathsf{Sh}}^{\mathrm{tr}}_{/ {S}}  }  \). We can define cohomology sheaves \( H^*(K) \) by taking kernels mod images in \(  \underset{ \mathsf{pre} } {\mathsf{Sh} }^{\mathrm{tr}}_{/ {S}}  \) and Nisnevich-sheafifying to get a sheaf
\[
\underline{H}^i(K) \coloneqq \left( H^i(K) \right)^{\scriptscriptstyle \mathrm{sh}}  \in {\mathsf{Sh}}^{\mathrm{tr}}_{/ {S}} 
.\]
This gives a way to take cohomology of complexes of sheaves with transfers.
:::

::: {.theorem title="Characterization of $\\AA^1\\dash$local complexes of sheaves"}
\( K \) is \( {\mathbb{A}}^1{\hbox{-}} \)local iff for all \( \underline{H^n}(K) \) is \( {\mathbb{A}}^1{\hbox{-}} \)local in \( {\mathsf{HI}}^{\mathrm{tr}}_{/ {k}}  \) for all \( n \)
:::

::: {.definition title="Suslin Complex"}
Define **standard cosimplicial scheme** as
\[
\Delta^n\coloneqq\operatorname{Spec}\qty{k[x_0, \cdots, x_n] \over \left\langle{ \sum x_i  }\right\rangle } \in {\mathsf{Sch}}_{/ {k}} 
\]
and for \( K\in \mathsf{Ch}\qty{ {\mathrm{tr}}{\mathsf{Sh}}_{/ {k}}  }  \) a complex of sheaves with transfers, the **Suslin singular complex** is the complex of sheaves defined as
\[
\underline{C_{*}^S}(K), && {\mathsf{\Gamma}\qty{X_{/ {S}} } } \coloneqq{ \operatorname{Tot} }^{\Pi}K(\Delta^\bullet { \underset{\scriptscriptstyle {k} }{\times} } X)
.\]
for \( X\in{ {\mathsf{sm}}{\mathsf{Sch}}}_{/ {S}}  \).
:::

::: {.corollary title="The Suslin complex is $\\AA^1\\dash$local"}
The Suslin singular complex \( \underline{C_*^S}(K) \) is \( {\mathbb{A}}^1{\hbox{-}} \)local, and the functor \( \underline{C_*^S}({-}) \) is an isomorphism in \( {\mathsf{DM}} \)?
:::

## Motives

::: {.definition title="Motives"}
The **homological motive** of a smooth scheme \( X\in{ {\mathsf{sm}}{\mathsf{Sch}}}_{/ {k}}  \) is
\[
M(X) \coloneqq C_*(S){\mathbb{Z}}^{\mathrm{tr}}_{/ {k}} (X)
.\]
:::

::: {.definition title="Tate twist"}
The **Tate twist** is defined as
\[
{\mathbb{Z}}(1) \coloneqq\operatorname{coker}\qty{ M\left\{{1}\right\} \to M({\mathbb{G}}_m)}[-1] 
.\]

```{=tex}
\todo[inline]{What is $\left\{{1}\right\}$? Maybe $\operatorname{Spec}k$...}
```
:::

::: {.example title="of identifying a Tate twist"}
\( {\mathbb{Z}}(1) = {\mathbb{G}}_m[-1]\in [0, 1] \) is supported in homotopy degree 0 and 1 (and in fact just in degree 1), and generally \( {\mathbb{Z}}(n) = {\mathbb{Z}}(1){ {}^{ \scriptstyle\otimes_{k}^{n} }  } \in (-\infty, n] \) is supported in degree at most \( n \).
:::

::: {.conjecture title="Reinforced Beilinson-Soulé"}
For all \( n>0 \), \( {\mathbb{Z}}(n) \in [1, n] \), so it is in fact only supported in positive degrees. Moreover, for \( E_{/ {k}} \in{\mathsf{fn}}\mathsf{Field} \),
\[
H^{i> n }\qty{ C_E(\Delta_E^*, {\mathbb{G}}_m^n)_{\mathbb{Q}}} = 0
.\]
By Bloch-Kato, the integral and rational cases are equivalent.
:::

## Motivic Cohomology

::: {.definition title="Motivic cohomology"}
For \( X\in{ {\mathsf{sm}}{\mathsf{Sch}}}_{/ {k}}  \), the **motivic cohomology** is given by
\[
H_{ \mathrm{mot}} ^{n, i}(X) \coloneqq H^n_{\mathrm{Nis}}(X; {\mathbb{Z}}(i))
.\]
The grading \( n \) is the **degree**, and \( i \) is the **twist**.
:::

::: {.remark}
Let \( {\mathbb{Z}}(m)\in \mathbf{D} {{\mathsf{Sh}}^{\mathrm{tr}}_{/ {k}} }  \), then for \( X\in {\mathsf{sm}}{\mathsf{Sch}}_{/ {k}}  \) we have
\[
H^{n, i}_M(X) = \mathop{\mathrm{Hom}}_{{\mathsf{DM}}^\mathsf{eff}}(M(X), {\mathbb{Z}}(i)[n] ) 
.\]
Taking the sheaf defined in top diagonal bidegree, this can be identified with unramified Milnor \( {\mathsf{K}}{\hbox{-}} \)theory:
\[
\operatorname{\mathcal{H}}^n({-}; {\mathbb{Z}}(n)) = \operatorname{\mathcal{K^M}}_n({-})
.\]
:::

## Stable Six Functors

::: {.remark}
Let \( X: { {\mathsf{sm}}{\mathsf{Sch}}}^{\operatorname{op}}_{/ {S}}  \to {\mathsf{Top}}_* \), which is a "space" in an infinity categorical sense, and consider \( f:T\to S \) a morphisms of schemes. We can form \( f^*: { {\mathsf{sm}}{\mathsf{Sch}}}_{/ {S}}  \to { {\mathsf{sm}}{\mathsf{Sch}}}_{/ {T}}  \) which induces an adjunction
\[
\adjunction {f^*} {f_*} 
{{\mathsf{ho}_*^{\scriptstyle {\mathbb{A}}^1}}_{/ {S}} }  
{{\mathsf{ho}_*^{\scriptstyle {\mathbb{A}}^1}}_{/ {T}} }
.\]
For \( p:T\to S \) smooth, we can define \( p_\sharp \) and \( p^* \) similarly, yielding
\[
\adjunction {p_\sharp} {p^*} 
{{\mathsf{ho}_*^{\scriptstyle {\mathbb{A}}^1}}_{/ {S}} }  
{{\mathsf{ho}_*^{\scriptstyle {\mathbb{A}}^1}}_{/ {T}} }
.\]
There is also a stable lift of the tensor product to a smash product \( {-}\wedge{-} \), yielding
\[
\adjunction {{-}\wedge{-}} {\underline{\mathop{\mathrm{Hom}}}({-}, {-})} 
{{\mathsf{ho}_*^{\scriptstyle {\mathbb{A}}^1}}_{/ {S}} }  
{{\mathsf{ho}_*^{\scriptstyle {\mathbb{A}}^1}}_{/ {S}} }
.\]

```{=tex}
\todo[inline]{Not precise, need to apply a space as an argument...?}
```
There are also formulas for things like \( f^*(K\wedge X_+) \), as well as (smooth) base change and projection.
:::

::: {.theorem title="Morel-Voevodsky Localization"}
Let \( i: Z\hookrightarrow S \) be closed and \( U\coloneqq S\setminus Z \) with \( j: U \underset{\scriptscriptstyle O}{\hookrightarrow}S \) an open immersion. Then for all \( X\in {\mathsf{ho}_*^{\scriptstyle {\mathbb{A}}^1}}_{/ {S}}  \), there is a homotopy cofiber sequence
\[
j_\sharp j^*(X) \to X\to i_* i^* X
,\]
where the maps are given by units/counits of the corresponding adjunctions.
:::

::: {.remark}
This can be restated as a geometric version of \( {\mathbb{A}}^1{\hbox{-}} \)homotopy equivalence: that there is a weak equivalence
\[
{X \over X \setminus(X{ \underset{\scriptscriptstyle {S} }{\times} } Z)} \underset{\scriptscriptstyle W}{\rightarrow}i_*((X_Z)_+)
.\]
We don't have the 6 functor formalism unstably.
:::

## Stabilization

::: {.remark}
One can take spheres in \( {\mathsf{ho}_*^{\scriptstyle {\mathbb{A}}^1}}_{/ {S}}  \) to be the pointed space
\[
({\mathbb{P}}^1, \infty ) \simeq S^1 \wedge({\mathbb{G}}_m, 1)
.\]
This yields a definition of loop spaces:
\[
{\Omega}_{{\mathbb{P}}^1}({-}) \coloneqq{\mathbf{R}}\underline{\mathop{\mathrm{Hom}}}({\mathbb{P}}^1, {-})
,\]
where one needs to derive this construction.
:::

::: {.definition title="Stable homotopy category"}
The **stable homotopy category \( {\mathsf{SH}}_{/ {S}}  \)** is defined as the limit
\[
\cdots 
\xrightarrow{{\Omega}_{{\mathbb{P}}^1}} {\mathsf{ho}_*^{\scriptstyle {\mathbb{A}}^1}}_{/ {S}} 
\xrightarrow{{\Omega}_{{\mathbb{P}}^1}} {\mathsf{ho}_*^{\scriptstyle {\mathbb{A}}^1}}_{/ {S}} 
\xrightarrow{{\Omega}_{{\mathbb{P}}^1}} {\mathsf{ho}_*^{\scriptstyle {\mathbb{A}}^1}}_{/ {S}} 
,\]
which is a construction that works for presentable monoidal infinity categories.
:::

::: {.remark}
This makes \( {\mathbb{P}}^1 \) a monoidally invertible object, and it turns out to invert \( {\mathbb{G}}_m \) and the classical sphere \( S^1 \). This is because if we define \( {\mathbb{S}}^{n, m} \coloneqq S^n \wedge{\mathbb{G}}_m^m \), we have
\[
{\mathbb{P}}^1 &\simeq{\mathbb{S}}^{1, 1} && \coloneqq S^1 \wedge{\mathbb{G}}_m \\
{\mathbb{A}}^n\setminus\left\{{0}\right\}&\simeq{\mathbb{S}}^{n-1, n} && \coloneqq S^n \wedge{\mathbb{G}}_m{ {}^{ \scriptstyle\otimes_{k}^{n} }  }
.\]
:::

::: {.remark}
A concrete model is given by sequences of objects, called **\( {\mathbb{P}}^1{\hbox{-}} \)spectra**. These are sequences of pointed spaces \( X\coloneqq(X_m) \) with \( {\mathbb{A}}^1{\hbox{-}} \)homotopy equivalences
\[
X_m \underset{\scriptscriptstyle W}{\rightarrow}{\Omega}_{{\mathbb{P}}^1}(X_{m+1})
.\]
This is somehow related to \( {\mathbb{P}}^1\wedge X_m \xrightarrow{\sigma_m} X_{m+1} \). \( {\mathsf{SH}}_{/ {S}}  \) satisfies the following universal property: it is the universal presentable monoidal infinity category receiving a functor
\[
{\Sigma}^\infty : {\mathsf{ho}_*^{\scriptstyle {\mathbb{A}}^1}}_{/ {S}}  \to {\mathsf{SH}}_{/ {S}} 
\]
such that \( {\mathbb{P}}^1\wedge({-}) \) is invertible. It turns out that the category \( {\mathsf{SH}}_{/ {S}}  \) admits a diagram relating it to all of the categories that have appeared thus far.
:::

::: {.theorem title="?-Voevodsky"}
For \( f:T\to S \) a morphism of schemes, separated of finite type, there is a triangulated adjunction
\[
\adjunction{f_!}{f^!}{{\mathsf{SH}}_{/ {S}} } {{\mathsf{SH}}_{/ {T}}  }
\]
such that

1.  \( f_! \) is compatible with composition.
2.  If \( f \) is proper then there is am isomorphism \( \eta: f_! \xrightarrow{\sim} f_* \).
3.  If \( f \) is smooth, then
    \[
    f_! = f_\sharp( \mathop{\mathrm{Th}}(T_f) \otimes({-}))
    \]
    where \( T_f \) is the tangent bundle and
    \[
    \mathop{\mathrm{Th}}(T_f) \coloneqq{\Sigma}^\infty(T_f/T_f {}^{ \vee })
    \]
    is its associated Thom space.

Moreover \( \mathop{\mathrm{Th}}(T_f) \) is tensor-invertible in \( {\mathsf{SH}}_{/ {S}}  \) with inverse \( \mathop{\mathrm{Th}}(-T_f) \).
:::

::: {.remark}
There is a base change formula, and \( p^* f_! \cong g_! q^* \) for cartesian squares:

```{=tex}
\begin{tikzcd}
    Y && T \\
    \\
    X && S
    \arrow["g", from=1-1, to=1-3]
    \arrow["f", from=3-1, to=3-3]
    \arrow["q"', from=1-1, to=3-1]
    \arrow["p", from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJZIl0sWzIsMCwiVCJdLFswLDIsIlgiXSxbMiwyLCJTIl0sWzAsMSwiZyJdLFsyLDMsImYiXSxbMCwyLCJxIiwyXSxbMSwzLCJwIl1d)

There is a projection formula
\[
f_!(C \otimes f^*(F)) \cong f_!(C) \otimes F
.\]
Moreover, \( {\mathsf{SH}}({-}) \) satisfies a generalized Beilinson formalism.
:::

## Rational Homotopy

::: {.remark}
\( {\mathsf{SH}}_{/ {S}}  \) is triangulated, and there are several ways to construct a triangulated rationalization \( {\mathsf{SH}}_{/ {S}}  \otimes{\mathbb{Q}} \). This decomposes as
\[
{\mathsf{SH}}_{/ {S}}  \otimes{\mathbb{Q}}\xrightarrow{\sim} \qty{{\mathsf{SH}}_{/ {S}} }_{{\mathbb{Q}}^+} \times \qty{{\mathsf{SH}}_{/ {S}} }_{{\mathbb{Q}}^-}
.\]

-   The plus part is characterized by the algebraic Hopf map \( \eta \) acting by zero, \( {\varepsilon}= -1 \)
-   The minus by \( \eta \) being invertible and \( {\varepsilon}= +1 \)

For \( S \) regular, the plus part is equivalent to \( \qty{ {\mathsf{DM}}_{/ {S}} }_{\mathbb{Q}} \). Writing \( S^0 \coloneqq S\otimes_{\mathbb{Z}}{\mathbb{Q}} \), the minus part is equivalent to the Witt sheaf \( \operatorname{\mathcal{W}}^{{\mathbb{Q}}}_{S^0} \), which is connected to quadratic forms. Reindexing and setting \( \tilde {\mathbb{S}}^{n, i} \coloneqq S^{n-i} \wedge{\mathbb{G}}_m{ {}^{ \scriptstyle\otimes_{k}^{i} }  } \), one can define cohomotopy groups
\[
\qty{\pi^{n, i}_{/ {S}} }_{\mathbb{Q}}
&\coloneqq
[ {\mathbb{S}}, S^{n-i} \wedge{\mathbb{G}}_m^i ]
_{\qty{{\mathsf{SH}}_{/ {S}} } _{\mathbb{Q}}} \\
& =[ {\mathbb{S}}, \tilde {\mathbb{S}}^{n, i}]
_{\qty{{\mathsf{SH}}_{/ {S}} } _{\mathbb{Q}}} \\
&= [\one, \one(s)[i] ] \\
& \xrightarrow{\sim} 
{\mathsf{gr}\,}_\gamma^i \qty{ (K_{2i-n}) _{/ {S}} }_{\mathbb{Q}}\oplus H^{n-i}_{\mathrm{Nis}}(S^0; \operatorname{\mathcal{W}} )
,\]
where \( {\mathsf{gr}\,} \) is a grading.

For \( E\in\mathsf{Field} \), this yields
\[
\pi^{n, i}(E)_{\mathbb{Q}}= H_{ \mathrm{mot}} (E)_{\mathbb{Q}}\oplus W(E)_{\mathbb{Q}}
.\]
:::

::: {.remark}
There is a Grothendieck-Verdier duality: for \( f:X\to S \) smooth finite type with \( S \) regular, then \( f^!(\one_S) \simeq\mathop{\mathrm{Th}}(Lf) \). If \( {\mathbb{E}} \) is a compact (constructible) object of \( {\mathsf{SH}}_{/ {S}}  \) the \( {\mathbb{E}} {}^{ \vee }= \underline{\mathop{\mathrm{Hom}}}({\mathbb{E}}, D_*) \) and there is an isomorphism \( {\mathbb{E}}\to ({\mathbb{E}} {}^{ \vee }) {}^{ \vee } \).
:::

# Kirsten Wickelgren, Talk 1 (Wednesday, July 14)

## Intro

**Abstract**:

> Morel and Voevodsky's \( {\mathbb{A}}^1 \) homotopy theory imports tools from algebraic topology into the study of schemes, or in other words, into the study of the solutions to polynomial equations. This theory produces greater understanding of arithmetic and geometric aspects these solutions. We will introduce some of this theory using as a guide questions such as "How many lines meet 4 lines in 3-space?"

**References/Background**:

-   Some algebraic topology or algebraic geometry, for example as described in Hatcher's and Hartshorne's books
-   [Lecture Notes 1](https://www.ias.edu/sites/default/files/L1%20-%20Intro%20to%20A1-homotopy%20theory%20using%20enumerative%20examples%20-%20Jul%2013%2C%202021_1.pdf)
-   [Lecture Notes 2](https://www.ias.edu/sites/default/files/L2%20-%20Intro%20to%20A1-homotopy%20using%20enumerative%20examples%20-%20Jul%2015%2C%202021.pdf)
-   [Exercises](https://www.ias.edu/sites/default/files/Pauli-Exercises_PCMI.pdf)

::: {.remark}
Enumerative geometry counts algebro-geometric objects over \( {\mathbb{C}} \). Example: how many lines meet 4 generic lines in \( {\mathbb{P}}^3 \)? The answer is 2, and our goal is to record this kind of arithmetic information about geometric objects over a field \( k \) whose intersections are fixed over \( \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \) but not necessarily \( k \) itself. Our main tool will be \( {\mathbb{A}}^1{\hbox{-}} \)homotopy theory, due to Morel-Voevodsky.
:::

## Classical Theory

::: {.remark}
First some classical homotopy theory. The sphere can be defined as
\[
S^n \coloneqq\left\{{{ {x}_1, {x}_2, \cdots, {x}_{n}} {~\mathrel{\Big|}~}\sum x_i^2 = 1}\right\} \simeq{\mathbb{P}}^n({\mathbb{R}}) / {\mathbb{P}}^{n-1}({\mathbb{R}})
,\]
and we have a degree map \( [S^n, S^n] \to {\mathbb{Z}} \). Given any \( f\in {\mathsf{Top}}(S^n, S^n) \) and \( p\in S^n \), we can write \( f^{-1}(p) = \left\{{{ {q}_1, {q}_2, \cdots, {q}_{N}}}\right\} \) and compute \( \deg f = \sum_{i=1}^N \deg_{q_i} f \) in terms of **local degrees**. Letting \( V \) be a ball containing \( p \), we have \( F^{-1}(V) \supseteq U \ni q_i \) another ball such that \( U \cap f^{-1}(p) = q_i \). Then \( U/{{\partial}}U \simeq S^n \simeq V/{{\partial}}V \), so we can define a map
\[
\mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu: {U \over U\setminus\left\{{q_i}\right\}} \to {V \over V\setminus\left\{{p}\right\}}
\]
and define \( \deg_{q_i} f \coloneqq\deg \mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu \).

Letting \( {\left[ {{ {x}_1, {x}_2, \cdots, {x}_{n}}} \right]} \) be oriented coordinates about \( q_i \) and \( {\left[ {{ {y}_1, {y}_2, \cdots, {y}_{n}}} \right]} \) about \( p \), then \( f = {\left[ {{ {f}_1, {f}_2, \cdots, {f}_{n}}} \right]}: {\mathbb{R}}^n\to {\mathbb{R}}^n \) and we can consider \( J_f \coloneqq\operatorname{det}\qty{{\partial}f_i \over {\partial}x_i} \). There is then a formula
\[
\deg_{q_i}(f) = 
\begin{cases}
+1 & J_f(q_i) > 0 
\\
-1 & J_f(q_i) < 0.
\end{cases}
,\]
and for all \( q_i \) we have \( \deg f = \# f^{-1}({\operatorname{pt}}) \), i.e. the number of solutions to the polynomial system \( \left\{{f_1 = f_2 = \cdots f_n = 0}\right\} \).
:::

::: {.example title="?"}
If \( f\in {\mathbb{C}}[x] \) of degree \( n \), we can regard \( f \) as a function \( f: {\mathbb{P}}^1({\mathbb{C}})\to {\mathbb{P}}^1({\mathbb{C}}) \) and by the fundamental theorem of algebra,
\[
\deg f = n = \# \left\{{f=0}\right\}
.\]
:::

::: {.remark}
We can similarly count solutions to \( f=0 \) when \( f \) is a section of a rank \( n \) vector bundle

```{=tex}
\begin{tikzcd}
V
\ar[d, "p"] 
\\
X 
\ar[u, bend left, dotted, "f"]
\end{tikzcd}
```
This count can be computed using the Euler class:
\[
e(V) = e(V, f) = \sum_{q_i\in \left\{{f=0}\right\}} \deg q_i f
.\]
:::

::: {.example title="?"}
Let \( X \coloneqq{\operatorname{Gr}}(1, 3)_{/{\mathbb{C}}} \), the Grassmannian parameterizing dimension 2 subspaces \( W \subseteq {\mathbb{C}}^4 \), or equivalently lines in \( {\mathbb{P}}W \subseteq {\mathbb{P}}({\mathbb{C}}^4) \cong {\mathbb{P}}^3({\mathbb{C}}) \), where \( {\mathbb{P}}W \) is defined as \( W\setminus\left\{{0}\right\} \) where \( \lambda w\sim w \) for any \( \lambda \in {\mathbb{C}}^{\times} \). The tautological is a rank 2 bundle:

```{=tex}
\begin{tikzcd}
S_{[{\mathbb{P}}W]} = W
  \ar[r] 
& 
S
  \ar[d] 
\\
& 
{\operatorname{Gr}}(1, 3)_{/ {{\mathbb{C}}}} 
\end{tikzcd}
```
Let \( L_1, \cdots, L_4 \) be four lines in \( {\mathbb{P}}^3 \), then \( \left\{{\text{lines intersecting all } L_i}\right\} = \left\{{f=0}\right\} \) where \( f \) is a section (depending on the \( L_i \)) of the bundle

```{=tex}
\begin{tikzcd}
{\mathcal{E}}\coloneqq\qty{\bigwedge\nolimits^2 S^*}^{\oplus 4}\
\ar[d] 
\\
{\operatorname{Gr}}(1, 3)
\end{tikzcd}
```
and the Euler number of this bundle counts the number of such intersections. In particular, \( e({\mathcal{E}}) \) is independent of the choice of lines and section, provided they're sufficiently generic (so the \( L_i \) do not pairwise intersect). Using the splitting principle and knowledge of \( H^*({\operatorname{Gr}}) \), one can compute \( e({\mathcal{E}}) = 2 \).
:::

## Over arbitrary fields: Grothendieck-Witt

::: {.remark}
We'd like to do this over arbitrary fields \( k \). Lannes and Morel defined degrees for rational maps \( f:{\mathbb{P}}^1 \to {\mathbb{P}}^1 \). Above we only remembered the sign of \( J_f \), and here we'll allow remembering more: \( \deg f \) will be valued in \( {\operatorname{GW}}(k) \). We can realize \( {\operatorname{GW}}(k) \) as the group completion of the semiring of nondegenerate symmetric bilinear forms under \( \perp, \otimes_k \), where we complete with respect to \( \perp \). It is related to the Witt group by
\[
W(K) { { \, \xrightarrow{\sim}\, }}{{\operatorname{GW}}(k) \over {\mathbb{Z}}\left\langle{q_{ {\operatorname{hyp}}} }\right\rangle } \coloneqq{{\operatorname{GW}}(k) \over {\mathbb{Z}} { \left[ {\left\langle{1}\right\rangle + \left\langle{-1}\right\rangle} \right] } }
.\]
There is a **rank map**
\[
\operatorname{rank}: {\operatorname{GW}}(k) &\to {\mathbb{Z}}\\
q: (V{ {}^{ \scriptstyle\otimes_{k}^{2} }  } \to K) &\mapsto \dim_k V
,\]
which can be realized by a pullback

```{=tex}
\begin{tikzcd}
    {{\operatorname{GW}}(k)} && {W(k)} & {} \\
    \\
    {\mathbb{Z}}&& {{\mathbb{Z}}/2}
    \arrow["\operatorname{rank}", from=1-3, to=3-3]
    \arrow["\operatorname{rank}", from=1-1, to=3-1]
    \arrow[from=3-1, to=3-3]
    \arrow[from=1-1, to=1-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwwLCJcXEdXKGspIl0sWzMsMF0sWzIsMCwiVyhrKSJdLFswLDIsIlxcWloiXSxbMiwyLCJcXFpaLzIiXSxbMiw0LCJcXHJhbmsiXSxbMCwzLCJcXHJhbmsiXSxbMyw0XSxbMCwyXSxbMCw0LCIiLDEseyJzdHlsZSI6eyJuYW1lIjoiY29ybmVyIn19XV0=)

We can also write \( {\operatorname{GW}}(k) \) in terms of generators \( \left\langle{a}\right\rangle \) where \( a\in k^{\times}/ (k^{\times})^{\times 2} \), where \( \left\langle{a}\right\rangle \) is associated to a bilinear form
\[
\left\langle{a}\right\rangle: k^{\times 2} &\to k \\
(x, y) &\mapsto axy
,\]
subject to relations

-   \( \left\langle{a}\right\rangle\left\langle{b}\right\rangle = \left\langle{ab}\right\rangle \)
-   \( \left\langle{u}\right\rangle + \left\langle{v}\right\rangle = \left\langle{uv(u+v)}\right\rangle + \left\langle{u+v}\right\rangle \)
-   \( \left\langle{u}\right\rangle + \left\langle{-u}\right\rangle = \left\langle{1}\right\rangle + \left\langle{-1}\right\rangle = q_{\operatorname{hyp}} \), which is the matrix
    \[
    q_{\operatorname{hyp}}= {
    \begin{bmatrix}
      {0} & {1} 
    \\
      {1} & {0}
    \end{bmatrix}
    }
    .\]
:::

::: {.example title="of known $\\GW$ groups"}
The **signature** is the difference between the numbers of positive and negative ones in the associated matrix, and one can show
\[
\operatorname{rank}: {\operatorname{GW}}({\mathbb{C}}) &{ { \, \xrightarrow{\sim}\, }}{\mathbb{Z}}\\ 
(\operatorname{rank}, \operatorname{sig}): {\operatorname{GW}}({\mathbb{R}}) &{ { \, \xrightarrow{\sim}\, }}{\mathbb{Z}}^{\times 2} \\
(\operatorname{rank}, {\operatorname{disc}}): {\operatorname{GW}}({\mathbb{F}}_q) &{ { \, \xrightarrow{\sim}\, }}{\mathbb{Z}}\times{\mathbb{F}}_q^{\times}/ ({\mathbb{F}}_q^{\times})^{\times 2}
\]
where the last is a situation where we can compute étale cohomology.
:::

::: {.example title="Springer's theorem"}
Let \( k\in \mathsf{Field} \) be complete and discretely valued with residue field \( \kappa \), e.g. \( k= { {\mathbb{Q}}_p } \) or \( {\mathbb{F}}_p{\left(\left( t \right)\right)  } \) with \( \kappa = {\mathbb{F}}_p \). Then if \( \operatorname{ch}k \neq 2 \),
\[
GW(k) { { \, \xrightarrow{\sim}\, }}W(k){ {}^{ \scriptscriptstyle\oplus^{2} }  }
.\]
:::

::: {.remark}
For \( E_{/ {k}}  \) a finite separable field extension, we'll have transfers
\[
\operatorname{Tr}_{E_{/ {k}} }: {\operatorname{GW}}(E) &\to {\operatorname{GW}}(k) \\
(V{ {}^{ \scriptstyle\otimes_{k}^{2} }  } \xrightarrow{\beta} E) &\mapsto (V{ {}^{ \scriptstyle\otimes_{k}^{2} }  } \xrightarrow{\beta} E \xrightarrow{\operatorname{Tr}_{E_{/k}}} k)
,\]
which coincide with classical transfers for field extensions.
:::

::: {.remark}
For Lannes/Morel's formula, given \( {\mathbb{P}}^1_{/ {k}}  \xrightarrow{f} {\mathbb{P}}^1_{/ {k}}  \) and \( p\in {\mathbb{P}}^1_{/ {k}}  \), we can write \( f^{-1}(p) = \left\{{{ {q}_1, {q}_2, \cdots, {q}_{N}}}\right\} \) and suppose \( J(q_i) = f'(q_i) \neq 0 \) for all \( i \). Then we remember the entire Jacobian and set
\[
\deg f \coloneqq\sum_{i=1}^N \operatorname{Tr}_{k(q_i)_{/ {k}} } \left\langle{J(q_i)}\right\rangle
,\]
which in fact doesn't depend on \( p \). Morel defines an \( {\mathbb{A}}^1{\hbox{-}} \)degree
\[
\deg^{{\mathbb{A}}^1}: [{\mathbb{P}}^n/{\mathbb{P}}^{n+1}, {\mathbb{P}}^n/{\mathbb{P}}^{n+1}]^{{\mathbb{A}}^1} \to {\operatorname{GW}}(k)
,\]
where we are taking unstable \( {\mathbb{A}}^1{\hbox{-}} \)homotopy classes of maps. Noting that an element of \( {\operatorname{GW}}({\mathbb{R}}) \) was determined by its rank and signature, we get a commutative diagram showing that \( \deg^{{\mathbb{A}}^1} \) is compatible with rank, signature, and the classical algebraic topological degree. There are other ways of computing this degree besides taking the above sum: Cazanave, [Brazelton-McKean-Pauli](https://arxiv.org/abs/2103.16614) give formulas in terms of Bézoutians.
:::

## Homotopy

::: {.remark}
Recall that
\[
X\wedge Y \coloneqq{ X\times Y \over (X\times{\operatorname{pt}}) \cup({\operatorname{pt}}\times Y)} && \in {\mathsf{Top}}_*
,\]
and \( S^n \wedge S^m \xrightarrow{\sim} S^{n+m} \) and \( (S^1){ {}^{ \scriptscriptstyle\wedge^{n} }  } \xrightarrow{\sim} S^n \), so we define
\[
{\Sigma}_{S^1} X \coloneqq S^1 \wedge X
.\]
In \( {\mathbb{A}}^1 \) homotopy theory we declare \( {\mathbb{A}}^1 \simeq{\operatorname{pt}} \).
:::

::: {.example title="?"}
We can take a pushout of the following form:

```{=tex}
\begin{tikzcd}
    & z && z \\
    z & {{\mathbb{G}}_m} && {{\mathbb{A}}^1\simeq{\operatorname{pt}}} \\
    \\
    {1/z} & {{\operatorname{pt}}\simeq{\mathbb{A}}^1} && { \therefore {\mathbb{P}}^1 \simeq{\Sigma}_{S^1} {\mathbb{G}}_m}
    \arrow[maps to, from=2-1, to=4-1]
    \arrow[from=2-2, to=4-2]
    \arrow[from=2-2, to=2-4]
    \arrow[maps to, from=1-2, to=1-4]
    \arrow[from=4-2, to=4-4]
    \arrow[from=2-4, to=4-4]
    \arrow["\lrcorner"{anchor=center, pos=0.125, rotate=180}, draw=none, from=4-4, to=2-2]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMSwxLCJcXEdHX20iXSxbMSwzLCJcXHB0IFxcaG9tb3RvcGljIFxcQUFeMSJdLFswLDEsInoiXSxbMCwzLCIxL3oiXSxbMywxLCJcXEFBXjFcXGhvbW90b3BpYyBcXHB0Il0sWzEsMCwieiJdLFszLDAsInoiXSxbMywzLCJcXFBQXjEgXFxob21vdG9waWMgXFxTdXNwZW5kX3tTXjF9IFxcR0dfbSJdLFsyLDMsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbMCwxXSxbMCw0XSxbNSw2LCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV0sWzEsN10sWzQsN10sWzcsMCwiIiwxLHsic3R5bGUiOnsibmFtZSI6ImNvcm5lciJ9fV1d)

Here the formalism of homotopy pushouts allows us to conclude that in an appropriate \( {\mathbb{A}}^1{\hbox{-}} \)homotopy category,
\[
{\Sigma}_{S^1} {\mathbb{G}}_m \coloneqq S^1\wedge{\mathbb{G}}_m \simeq{\mathbb{P}}^1
.\]
:::

::: {.remark title="on motivic spheres"}
We have
\[
{\mathbb{G}}_m \coloneqq\operatorname{Spec}k[z, 1/z] = {\mathbb{A}}^1\setminus\left\{{{\operatorname{pt}}}\right\}
.\]
By taking pushouts inductively we can realize
\[
{\mathbb{A}}^n\setminus\left\{{{\operatorname{pt}}}\right\} \simeq{\Sigma}_{S^1} ({\mathbb{A}}^1\setminus\left\{{{\operatorname{pt}}}\right\}) \wedge({\mathbb{A}}^n\setminus\left\{{{\operatorname{pt}}}\right\}) \simeq(S^1){ {}^{ \scriptscriptstyle\wedge^{n-1} }  } \wedge({\mathbb{G}}_m){ {}^{ \scriptscriptstyle\wedge^{n} }  }
.\]
:::

::: {.remark}
We can use this to write
\[
{\mathbb{P}}^n/{\mathbb{P}}^{n-1} 
&\simeq{{\mathbb{P}}^n \over {\mathbb{P}}^n\setminus\left\{{{\operatorname{pt}}}\right\} }\\
&\simeq{{\mathbb{A}}^n \over {\mathbb{A}}^n\setminus\left\{{{\operatorname{pt}}}\right\} }\\
&\simeq{{\operatorname{pt}}\over {\mathbb{A}}^n\setminus\left\{{{\operatorname{pt}}}\right\} }\\
&\simeq{\Sigma}_{S^1} \qty{ {\mathbb{A}}^n\setminus\left\{{{\operatorname{pt}}}\right\} } \\
&\simeq(S^1){ {}^{ \scriptscriptstyle\wedge^{n} }  } \wedge({\mathbb{G}}_m){ {}^{ \scriptscriptstyle\wedge^{n} }  }
.\]
:::

::: {.remark}
Stable homotopy shows that inverting \( {\Sigma} \) is useful, which we also do in the \( {\mathbb{A}}^1{\hbox{-}} \)setting by inverting \( {\Sigma}_{{\mathbb{P}}^1} ({-}) \coloneqq{\mathbb{P}}^1 \wedge({-}) \) to obtain a stable homotopy category \( {\mathsf{SH}}(k) \).
:::

::: {.theorem title="Morel, Hopkins-Morel"}
For \( k\in \mathsf{Field} \), stably we have
\[
[S^0, S^0] \xrightarrow{\sim} [{\mathbb{P}}^n/{\mathbb{P}}^{n-1}, {\mathbb{P}}^n/{\mathbb{P}}^{n-1}] \xrightarrow{\sim} {\operatorname{GW}}(k)
.\]
Moreover, there is a ring structure on homotopy classes which yields an isomorphism of rings into **Milnor-Witt \( K{\hbox{-}} \)theory**,
\[
\bigoplus_{n\in {\mathbb{Z}}} [ S^0, {\mathbb{G}}_m{ {}^{ \scriptscriptstyle\wedge^{n} }  }] \xrightarrow{\sim}  {\mathsf{K}}^{\scriptscriptstyle \mathrm{MW}} _*(k)
.\]
:::

::: {.remark}
\(  {\mathsf{K}}^{\scriptscriptstyle \mathrm{MW}} _* \) is a graded associative algebra with generators \( [u] \in  {\mathsf{K}}^{\scriptscriptstyle \mathrm{MW}} _1(k) \) for \( u\in k^{\times} \) and \( \eta \in  {\mathsf{K}}^{\scriptscriptstyle \mathrm{MW}} _{-1}(k) \), with relations

-   \( [u][1-u] = 0 \), the *Steinberg relations*,
-   \( [ab] = [a] + [b] + \eta[a][b] \),
-   \( [a]\eta = \eta[a] \),
-   \( \eta q_{\operatorname{hyp}}= 0 \) for \( q_{\operatorname{hyp}}\coloneqq\eta[-1] + 2 \)
:::

::: {.remark}
There is an isomorphism
\[
{\operatorname{GW}}(k) &\xrightarrow{\sim}  {\mathsf{K}}^{\scriptscriptstyle \mathrm{MW}} _0(k) \\
\left\langle{a}\right\rangle &\rightleftharpoons 1 + \eta[a] \\
q_{\operatorname{hyp}}\coloneqq\left\langle{1}\right\rangle + \left\langle{-1}\right\rangle &\rightleftharpoons 1 + 1 + \eta[-1]
.\]
:::

::: {.remark title="on the proof"}
\( [a] \) yields a map
\[
[a]: S^0 = (\operatorname{Spec}k)^{\coprod 2} &\to {\mathbb{G}}_m \\
p &\mapsto a
,\]
where \( p \) is the non-basepoint, and
\[
\eta: {\mathbb{A}}^2\setminus\left\{{{\operatorname{pt}}}\right\} &\to {\mathbb{P}}^1 \\
(x, y) &\mapsto [x: y]
.\]
On \( {\mathbb{C}}{\hbox{-}} \)points, \( {\mathbb{C}}^2\setminus\left\{{0}\right\}\simeq S^3 \) maps to \( {\mathbb{CP}}^1\simeq S^2 \) by the Hopf map, but on \( {\mathbb{R}}{\hbox{-}} \)points we get \( S^1 \xrightarrow{\deg = -2} S^1 \) implying that \( \eta \) is not nilpotent, which is a new fact.
:::

::: {.remark}
We can define
\[
X\vee Y = {X \times Y \over {\operatorname{pt}}_X \sim {\operatorname{pt}}_Y}
\]
and get maps
\[
X\vee Y \to X\times Y\to X\wedge Y
.\]
which yields
\[
{\Sigma}(X\times Y) \xrightarrow{\sim } {\Sigma}X \vee{\Sigma}Y \vee{\Sigma}(X\wedge Y)
.\]
:::

::: {.lemma title="?"}
In \( {\mathsf{SH}}(k) \),we get

```{=tex}
\begin{tikzcd}
    {{\mathbb{G}}_m{ {}^{ \scriptscriptstyle\times^{2} }  } } && {{\mathbb{G}}_m} \\
    \\
    { {{\mathbb{G}}_m{ {}^{ \scriptscriptstyle\wedge^{2} }  }} \vee{{\mathbb{G}}_m{ {}^{ \scriptscriptstyle\wedge^{2} }  }} } && {{\mathbb{G}}_m}
    \arrow["{\operatorname{mult}}", from=1-1, to=1-3]
    \arrow["{(1, 1, \eta)}", from=3-1, to=3-3]
    \arrow["\simeq", from=1-1, to=3-1]
    \arrow[equal, from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXEdHX21ee1xcdGltZXMgMn0iXSxbMCwyLCJcXEdHX21ee1xcd2VkZ2Vwcm9kIDJ9IFxcd2VkZ2Vwcm9kIFxcR0dfbV57XFxzbWFzaHByb2QgMn0iXSxbMiwyLCJcXEdHX20iXSxbMiwwLCJcXEdHX20iXSxbMCwzLCJcXG11bHQiXSxbMSwyLCIoMSwgMSwgXFxldGEpIl0sWzAsMSwiXFxzaW1lcSIsMV0sWzMsMiwiXFxzaW1lcSIsMV1d)
:::

::: {.lemma title="?"}
The map
\[
f: {\mathbb{P}}^1 &\to {\mathbb{P}}^1 \\
z &\mapsto az
\]
is equal to \( 1 + \eta[a] \) in \( {\mathsf{SH}}(k) \), since \( f = {\Sigma}g \) where
\[
g: {\mathbb{G}}_m &\to {\mathbb{G}}_m \\ 
z &\mapsto az
,\]
which is equal to
\[
{\Sigma}({\mathbb{G}}_m \times k \xrightarrow{1\times a} {\mathbb{G}}_m^{\times 2} \xrightarrow{{\operatorname{mult}}} {\mathbb{G}}_m)
.\]
:::

::: {.remark}
The lemma implies the relation \( [ab] = [a] + [b] + \eta[a][b] \), and it turns out there's an isomorphism to motivic homotopy groups of spheres:
\[
 {\mathsf{K}}^{\scriptscriptstyle \mathrm{MW}} _*(k) \xrightarrow{\sim} \bigoplus _{n\in {\mathbb{Z}}} [S^0, {\mathbb{G}}_m{ {}^{ \scriptscriptstyle\wedge^{n} }  }]
.\]
:::

## Big Problems

::: {.remark}
Notation: we'll write
\[ 
\bigoplus_{n\in {\mathbb{Z}}} \pi_{n, n} {\mathbb{S}}\coloneqq\bigoplus _{n\in {\mathbb{Z}}} [S^0, {\mathbb{G}}_m{ {}^{ \scriptscriptstyle\wedge^{n} }  } ]
\]
to be the zero line of the homotopy groups of spheres, and generally \( \bigoplus _n \pi_{n+r, n} {\mathbb{S}} \) for the \( r{\hbox{-}} \)line. Classical homotopy groups of spheres encode interesting geometric information, and we're finding that the corresponding motivic homotopy groups of spheres do as well. [Röndigs-Spitzweck-Østvær](https://arxiv.org/abs/1604.00365) compute the 1-line for \( \operatorname{ch}k\neq 2 \) in a 2019 Annals paper, and we have some information about the 2-line.
:::

::: {.question}
What is \( [{\mathbb{P}}^n/{\mathbb{P}}^{n-1}, {\mathbb{P}}^n/{\mathbb{P}}^{n-1}] \) for more general rings? [Bachmann-Østvær (2021)](https://arxiv.org/abs/2102.01618) do this over \( {\mathbb{Z}}{ \left[ { \scriptstyle \frac{1}{2} } \right] } \) and show
\[
\pi_{0,0}{\mathbb{S}}\otimes{ {\mathbb{Z}}_{\widehat{2}} } \xrightarrow{\sim} {\operatorname{GW}}({\mathbb{Z}}{ \left[ { \scriptstyle \frac{1}{2} } \right] })\otimes{ {\mathbb{Z}}_{\widehat{2}} }
.\]
:::

::: {.question}
What is \( \pi_{*, *}{\mathbb{S}} \) in general?
:::

::: {.question}
Is there a Freudenthal suspension theorem? I.e. which stable elements of \( \pi_{*, *} {\mathbb{S}} \) correspond to unstable groups?
:::

## Counting Things

::: {.remark}
Many people have used the \( {\mathbb{A}}^1{\hbox{-}} \)Euler class for interesting things! Let \( X\in {\mathsf{sm}}{\mathsf{Sch}}_{/ {k}}  \) with \( \dim X = d \) and let \( V\to X \in { { {\mathsf{Bun}}_{\operatorname{GL}_r} }}_{/ {X}}  \) be a vector bundle.
:::

::: {.definition title="Orientation of bundles"}
A bundle \( V\to X \) is **oriented** by the following data: \( (L, \phi) \) where \( L\to X \) is a line bundle and \( \phi \) is a trivialization
\[
\phi: \operatorname{det}V { { \, \xrightarrow{\sim}\, }}L^{\otimes 2}
.\]
It is **relatively oriented** when \( \mathop{\mathrm{Hom}}(\operatorname{det}TX, \operatorname{det}V) \) is oriented, where \( \operatorname{det}({-}) = \bigwedge\nolimits^{\text{top}}({-}) \).
:::

::: {.example title="?"}
For \( X = {\mathbb{P}}^n \) or \( {\operatorname{Gr}}(m, n) \) (parameterizing copies of \( {\mathbb{P}}^m \) in \( {\mathbb{P}}^n \)), then
\[
\omega_x = \operatorname{det}T^n X = {\mathcal{O}}(-n-1)
,\]
and \( X \) is orientable iff \( n \) is odd. For \( {\mathbb{P}}^1 \), \( {\mathcal{O}}(n) \) is relatively orientable iff \( n \) is even.
:::

## Euler Numbers

::: {.definition title="Euler Number in $\\GW(k)$"}
Suppose \( X\in { {\mathsf{sm}}{\mathsf{Sch}}}_{/ {k}}  \) is proper with \( \dim X = d \) and consider a vector bundle
```{=tex}
\begin{tikzcd}
\operatorname{GL}_d \curvearrowright F
  \ar[r] 
& 
V
  \ar[d] 
\\
& 
X 
\ar[u, "f", bend left, dotted]
\end{tikzcd}
```
Suppose

-   \( V \) is relatively oriented by \( (L, \phi) \), and \( f \) is a section with isolated zeros, so \( \left\{{f=0}\right\} \) consists of zeros of multiplicity 1, or equivalently
-   For all \( x\in \left\{{f = 0}\right\} \), the composite map
    \[
    Tf \coloneqq\qty{T_x X \to T_{f(x)} V \xrightarrow{\sim} T_x X \oplus V_x \xrightarrow{p_2} V_x} && f(x) \coloneqq(x, 0)
    \]
    has nonvanishing determinant.

Then the **Euler number of \( (V, \phi) \)** with respect to \( f \) is defined as
\[
n(V, \phi, f) \coloneqq\sum_{x \in \left\{{f = 0 }\right\} \subseteq X} \deg_x f
.\]
where \( \deg_x f \) can be computed by

-   Choosing local Nisnevich coordinates on \( X \) ,
-   Choosing local trivializations of \( V \) which are "compatible" with \( \phi \),

Then locally writing
\[
f: {\mathbb{A}}^d \to {\mathbb{A}}^d \implies J_f \coloneqq\operatorname{det}\qty{{\partial}f_i \over {\partial}x_j}
,\]
one has
\[
\text{For } J_f(x) \neq 0 \in \kappa(x), \quad
\deg_x f \coloneqq\operatorname{Tr}_{\kappa(x) _{/ {k}} } \left\langle{J_f(x)}\right\rangle
.\]
:::

::: {.remark}
Equivalently, \( T_x f\in \mathop{\mathrm{Hom}}(T_x X, V_x) \) and we can define
\[
J_f(x) \coloneqq\operatorname{det}T_x f \in \mathop{\mathrm{Hom}}(\operatorname{det}T_x X, \operatorname{det}V_x) { { \, \xrightarrow{\sim}\, }}L_x{ {}^{ \scriptstyle\otimes_{k}^{2} }  }
,\]
where the orientation provides the isomorphism. Picking any basis for \( L_x{ {}^{ \scriptstyle\otimes_{k}^{2} }  } \) yields a number which is well-defined in \( \kappa(x) / (\kappa(x)^{\times})^2 \) by choosing a trivialization of \( L_x \).
:::

::: {.question}
What happens if the zeros of \( f \) have multiplicity \( m_i > 1 \)? In the classical setting, we didn't say what happens when \( J_f(x) = 0 \). We'll answer this next time.
:::

::: {.question}
Why is the Euler number \( n(V, f) \) independent of the section \( f \)? Analogously, why is the number of intersections in the original problem 2, not depending on which specific lines were chosen?
:::

::: {.answer}
Sections with isolated zeros are often connected by 1-parameter \( {\mathbb{A}}^1{\hbox{-}} \)families of such sections, and \( {\operatorname{GW}}(k[x]) \xrightarrow{\sim} {\operatorname{GW}}(k) \), although this is hard to show.

Alternatively, the Euler number is a pushforward of an Euler class taking values in interesting cohomology theories, so \( n(V, f) = \pi_* e(V, f) \).
:::

# Kirsten Wickelgren, Talk 2 (Friday, July 16)

## Intro

::: {.remark}
Recall that we have a classical degree map
\[
\deg: [S^n, S^n] \to {\mathbb{Z}}
\]
which roughly counts preimages. Given \( f\in \mathop{\mathrm{Hom}}_{\mathsf{Top}}(S^n, S^n) \) and \( p\in S^n \), we write \( f^{-1}(p) = \left\{{ { {q}_1, {q}_2, \cdots, {q}_{N}} }\right\} \) and have a formula \( \deg f = \sum \deg_{q_i} f \) where the local degrees \( \deg_{q_i}f \) can be computed by picking orientation-compatible coordinates \( { \left\{{ {x}_1, {x}_2, \cdots, {x}_{n} }\right\} } \) near \( q_i \) and \( { \left\{{ {y}_1, {y}_2, \cdots, {y}_{n} }\right\} } \) near \( p \). In these coordinates we can form the Jacobian \( J_f \coloneqq\operatorname{det}{\frac{\partial f_i}{\partial x_j}\,} \) and write
\[
\deg_x f =
\begin{cases}
+1 & J(q_i) > 0 
\\
-1 & J(q_i) < 0.
\end{cases}
\]
:::

::: {.question}
What happens if the zeros of \( f \) are not of multiplicity 1, so \( J_f(q_i) = 0 \)?
:::

::: {.proposition title="Eisenbud–H.Levine–Khimshiashvili signature formula"}
Over \( k\coloneqq{\mathbb{R}} \), any quadratic form can be diagonalized to \( \operatorname{diag}(1,\cdots,1, -1,\cdots,-1) \), and there is a formula
\[
\deg_x f = \operatorname{sig}\omega^{{\mathrm{EKL}}}
\]
where \( \omega^{{\mathrm{EKL}}} \) is the isomorphism class of the bilinear form defined in the following way: for \( f = (f_1, \cdots, f_n) \), set
\[
Q \coloneqq{{\mathbb{R}}[x_1, \cdots, x_n]_0 \over \left\langle{{ {f}_1, {f}_2, \cdots, {f}_{n}} }\right\rangle }
\]
which is a finite dimensional local complete intersection. Since \( Q \) is Gorenstein[^5], there is an isomorphism \( \mathop{\mathrm{Hom}}_k(Q, k) \xrightarrow{\sim} Q \), which we can take to be the bilinear form.[^6]
:::

::: {.remark}
This form can be made very explicit: writing \( J_f = \operatorname{det}{\frac{\partial f_i}{\partial x_j}\,} \in Q \), choose a \( k{\hbox{-}} \)linear map \( \eta: Q\to k \) such that \( \eta(J_f) = \dim_k Q \) and set
\[
\omega^{{\mathrm{EKL}}} &\coloneqq\qty{ Q{ {}^{ \scriptstyle\otimes_{k}^{2} }  } \xrightarrow{{\operatorname{mult}}} Q \xrightarrow{\eta} k} \\ \\
\implies \omega^{{\mathrm{EKL}}}: Q{ {}^{ \scriptstyle\otimes_{}^{2} }  } &\to k \\
(g, h) &\mapsto \eta(gh)
.\]
It turns out that the isomorphism class of \( \omega^{{\mathrm{EKL}}} \) does not depend on the choice of \( \eta \).
:::

::: {.example title="?"}
Let \( f:{\mathbb{A}}^1\to {\mathbb{A}}^1 \) and \( f(z) = z^2 \) with \( q=0 \). Then
\[
Q = {k[x]_0 \over \left\langle{x^1}\right\rangle } \xrightarrow{\sim} {k[x]\over \left\langle{x^2}\right\rangle}
\]
and \( J_f = 2x \). We then get \( \omega^{{\mathrm{EKL}}} = {
\begin{bmatrix}
  {0} & {1} 
\\
  {1} & {0}
\end{bmatrix}
} \), which up to a change of basis is \( h \coloneqq{
\begin{bmatrix}
  {1} & {0} 
\\
  {0} & {-1}
\end{bmatrix}
} \).
:::

::: {.question}
Eisenbud notes that \( \omega^{\mathrm{EKL}} \) is defined over fields of arbitrary characteristic not equal to 2, does it have a topological interpretation?
:::

::: {.remark}
Yes! It comes from the \( {\mathbb{A}}^1{\hbox{-}} \)degree.
:::

::: {.theorem title="Kass-W."}
\( \omega^{{\mathrm{EKL}}} = \deg_q^{{\mathbb{A}}^1}f \) is the local degree in \( {\operatorname{GW}}(k) \) when \( \kappa(q) = k \). [Brazelton, Burklund, Mckean, Montoro, Opie](https://arxiv.org/pdf/1912.04788.pdf) handle the case when \( \kappa(q)/k \) is separable.
:::

## \( {\mathbb{A}}^1{\hbox{-}} \)Milnor numbers {#mathbba1hbox-milnor-numbers}

::: {.definition title="Node, hypersurface singularity"}
For \( \operatorname{ch}k\neq 2 \), the simplest type of singularity is a **node**, defined over \( \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \) as a point \( p\in X \) such that[^7]
\[
\widehat{{\mathcal{O}}_{X, p}}
\xrightarrow{\sim} 
{ \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu  { \left[ { { {x}_1, {x}_2, \cdots, {x}_{n}} } \right] }  \over \sum x_i^2 + \text{h.o.t.} }
,\]

A **hypersurface singularity** is a point \( p\in \left\{{f=0}\right\} \subseteq X \).
:::

::: {.definition title="Milnor number"}
Let \( k\coloneqq{\mathbb{C}} \). If you vary \( X \) in a family
\[
X_+ \coloneqq\left\{{f(x_1,\cdots, x_n) + \sum a_i x_i = t}\right\}
,\]
then the singularity \( p \) bifurcates into nodes. The number of nodes is given by the **Milnor number**, defined as \( M_p \), the number of nodes in the family \( X_+ \) for any sufficiently small \( \left\{{a_i}\right\} \). For \( R={\mathbb{C}} \), this is explicitly described as
\[
M_p \coloneqq\deg_p^{{\mathsf{Top}}}\operatorname{grad}f
.\]
:::

::: {.remark}
For other \( k \) with \( \operatorname{ch}k \neq 2 \), nodes come in different types: given a residue field \( L \) at a node \( p \), the tangent directions defined over some extension \( L[\sqrt a] \) for \( a\in L^{\times}/ (L^{\times}){ {}^{ \scriptscriptstyle\times^{2} }  } \).
:::

::: {.example title="?"}
Over \( k={\mathbb{R}} \), one has examples like

-   \( x_1^2 +x_2^2 = 0 \), yielding a non-split node and non-rational tangent directions

    ![](figures/2021-07-19_19-58-25.png)

-   \( x_1^2-x_2^2=0 \), yielding a split node and rational tangent directions

    ![](figures/2021-07-16_13-26-04.png)
:::

::: {.definition title="Type of a node"}
Let \( p \) be a node with
\[
\widehat{{\mathcal{O}}_{X, p}} { { \, \xrightarrow{\sim}\, }}{ L { \left[\left[ { { {x}_1, {x}_2, \cdots, {x}_{n}} } \right] \right] }  \over \sum a_i x_i^2 }, 
&& L \coloneqq\kappa(p)
.\]
The **type** \( p \) is defined as
\[
{\operatorname{type}}(p) \coloneqq\operatorname{Tr}_{L_{/ {k}} } \left\langle{2^n \prod_{i=1}^n a_i}\right\rangle \in {\operatorname{GW}}(k)
.\]
:::

::: {.definition title="$\\AA^1\\dash$Milnor numbers"}
The **\( {\mathbb{A}}^1{\hbox{-}} \)Milnor number** is defined as
\[
M_p \coloneqq\deg_p^{{\mathbb{A}}_1} \operatorname{grad}f = \sum_{p\in N} {\operatorname{type}}(p)
,\]
\( N \) is the set of nodes of \( f \) in a family for a generic \( \left\{{{ {a}_1, {a}_2, \cdots, {a}_{n}} }\right\} \).

> Note: the second equality is due to Kass-Wickelgren.
:::

::: {.example title="?"}
Let \( f(x,y)\coloneqq x^3-y^2 \) with \( \operatorname{ch}k\neq 2,3 \), then

-   \( p=(0, 0) \in \left\{{f=0}\right\} \),
-   \( \nabla f = (3x^2, -2y) \), and
    \[
    \deg^{{\mathbb{A}}^1} \nabla f 
    &= \deg^{{\mathbb{A}}^1} (x\mapsto 3x^2 ) \deg^{{\mathbb{A}}^1} (y\mapsto -2y) \\
    &= {
    \begin{bmatrix}
      {0} & {1/3} 
    \\
      {1/3} & {0}
    \end{bmatrix}
    } \left\langle{-2}\right\rangle \\
    &= \left\langle{1}\right\rangle + \left\langle{-1}\right\rangle \\
    &= q_{{\operatorname{hyp}}}
    ,\]
    which has rank 2 and thus \( M = 2 \). This yields a cusp.

The family \( y^2 = x^3 + ax + t \) for \( a\neq 0 \) yields a family:

![](figures/2021-07-16_13-33-13.png)

-   In the first term, the cusp bifurcates into 2 nodes, yields \( \operatorname{rank}M^{{\mathbb{A}}^1}(C) = M(C) \) for \( C \) the cusp curve
-   In the second, there are singular fibers when \( x^3+ax+t \) has double roots, which happens when the discriminant is zero, so this occurs iff \( -4a^3 -27b^2 =0 \).

This yields a bifurcation into two nodes, and for example,

-   Over \( {\mathbb{F}}_5 \): \( \left\langle{1}\right\rangle = \left\langle{-1}\right\rangle \), so this can not bifurcate into 1 split and 1 non-split rational node.
-   Over \( {\mathbb{F}}_7 \): \( \left\langle{1}\right\rangle \neq \left\langle{-1}\right\rangle \), so this can not bifurcate into 2 split or 2 non-split nodes.
:::

::: {.remark}
The classical Milnor number appears in conductor formulas and are related to the Euler characteristic \( \chi \) of the *Milnor fiber*. M. Levine-Lehalleur-Srinivas and R. Azouri have subtle quadratic enrichments to \( {\operatorname{GW}}(k) \).
:::

## \( {\mathbb{A}}^1{\hbox{-}} \)Euler characteristic \( \chi^{{\mathbb{A}}^1} \) {#mathbba1hbox-euler-characteristic-chimathbba1}

::: {.definition title="Relatively oriented bundles"}
For \( X\in {\mathsf{sm}}{\mathsf{Var}}^{\mathop{\mathrm{proj}}}_{/ {k}}  \), we saw last time that a vector bundle \( V\to X \) is **relatively oriented** by \( (L, \phi) \) where \( L\to X \) is a line bundle and
\[
\phi: L{ {}^{ \scriptstyle\otimes_{k}^{2} }  } \xrightarrow{\sim} \mathop{\mathrm{Hom}}(\operatorname{det}{\mathsf{T}}X, \operatorname{det}V)
.\]
:::

::: {.remark}
The tangent bundle \( {\mathsf{T}}X \) has a canonical relative orientation since
\[
\mathop{\mathrm{Hom}}(\operatorname{det}{\mathsf{T}}X, \operatorname{det}{\mathsf{T}}X) \xrightarrow{\sim} {\mathcal{O}}\xrightarrow{\sim} {\mathcal{O}}{ {}^{ \scriptstyle\otimes_{}^{2} }  }
\]
where \( {\mathcal{O}} \) is a trivial bundle of rank 1. It follows that we may define the Euler number of tangent bundle:
\[
\chi^{{\mathbb{A}}^1}(X) \coloneqq n({\mathsf{T}}X) \in {\operatorname{GW}}(k)
,\]
where \( n \) is the Euler number.
:::

::: {.theorem title="M. Levine"}
\( \chi^{{\mathbb{A}}^1}(X) \) is equal to the **categorical Euler characteristic**. The definition is omitted here, see [Levine's "Enumerative geometry with quadratic forms"](https://arxiv.org/abs/1703.03049).
:::

::: {.example title="M. Levine-Lehalleur-Srinivas"}
```{=tex}
\envlist
```
> See <https://arxiv.org/abs/2101.00482>.

Let \( X \subseteq {\mathbb{P}}^{n+1} \) for \( n \) even, written \( X \coloneqq\left\{{F=0}\right\} \) for \( f\in {\mathbb{R}}[x_0, \cdots, x_n]_{e} \) homogeneous of degree \( e \). Take
\[
\omega^{{\mathrm{EKL}}}: Q{ {}^{ \scriptstyle\otimes_{}^{2} }  }\to k && 
Q \coloneqq{k[x_0,\cdots, x_n] \over \left\langle{ {\frac{\partial f}{\partial x_0}\,}, \cdots, {\frac{\partial f}{\partial x_n}\,} }\right\rangle }
.\]

Define \( B_{\operatorname{Jac}} \) to be the restriction of \( \omega^{\mathrm{EKL}} \) to \( \bigoplus_{q=0}^n Q_{(q+1)e-n-2} \), then
\[
\chi^{{\mathbb{A}}^1}(X) = \left\langle{e}\right\rangle + \left\langle{-e}\right\rangle B_{\operatorname{Jac}} + {n\over 2}q_{{\operatorname{hyp}}}
.\]
:::

::: {.example title="Clebsch surface"}
Take the Clebsch surface
\[
C \coloneqq\left\{{ {\left[ {{ {x}_1, {x}_2, \cdots, {x}_{3}}} \right]} {~\mathrel{\Big|}~}\sum x_i^3 = \qty{\sum x_i}^3  }\right\} \subseteq {\mathbb{P}}^3_{/ {{\mathbb{Q}}}} 
.\]
Then \( \chi(C) = 9 \), and
\[
\chi^{{\mathbb{A}}^1}(C) = 2q_{{\operatorname{hyp}}} + \left\langle{-10}\right\rangle + \left\langle{-6}\right\rangle + \left\langle{-21}\right\rangle + \left\langle{-14}\right\rangle + \left\langle{-2}\right\rangle
,\]
which can be computed with Macaulay2!
:::

## Cohomology and the Euler Class

::: {.remark}
Note that we have a stable \( {\mathbb{A}}^1{\hbox{-}} \)homotopy category \( {\mathsf{SH}}(k) \), so we can take cohomology theories on \( X\in {\mathsf{sm}}{\mathsf{Sch}}_{/ {k}}  \):

-   \( H_{ \mathrm{mot}}  \) or \( H{\mathbb{Z}} \): motivic cohomology
-   \( \tilde H_{ \mathrm{mot}}  \) or \( H\tilde {\mathbb{Z}} \): extended motivic cohomology
-   \( {\mathsf{K}} \): \( {\mathsf{K}}{\hbox{-}} \)theory
-   \( {\operatorname{KO}} \): Hermitian \( {\mathsf{K}}{\hbox{-}} \)theory

It turns out that
\[
H^n(X) = \pi_{-n}\mathop{\mathrm{Hom}}_{{\mathsf{SH}}(k)}(X, H) = [X, {\Sigma}^n H]
,\]
and it's useful to allow twisting the second term by shifts.
:::

::: {.definition title="Twisted suspension"}
Letting \( V\to X \) be a vector bundle, we can define the **twisted suspension**
\[
H^V(X) \coloneqq[X, \mathop{\mathrm{Th}}(V) \wedge H]
&& \text{where } 
\mathop{\mathrm{Th}}(V) \coloneqq{V {}^{ \vee }\over V {}^{ \vee }\setminus\left\{{0}\right\}} = {{\mathbb{P}}(V {}^{ \vee }\oplus {\mathcal{O}}) \over {\mathbb{P}}(V {}^{ \vee })}
\]
where taking the dual is a condition needed for \( K{\hbox{-}} \)theory. This reduces to a usual suspension for the trivial bundle.
:::

::: {.example title="?"}
For \( V\coloneqq({\mathcal{O}}_X){ {}^{ \scriptscriptstyle\oplus^{n} }  } \) the trivial rank \( n \) bundle on \( X \), we have \( H^V = H^n \).
:::

::: {.example title="?"}
\[
H{\mathbb{Z}}^n(X) \cong H_{ \mathrm{mot}} ^{2n}(X; {\mathbb{Z}}(n)) \cong H^{2n, n}_{ \mathrm{mot}} (X) \cong {\operatorname{CH}}^n(X)
,\]
the Chow group of codimension \( n \) cycles modulo rational equivalence. These are the *geometric gradings*.
:::

::: {.example title="?"}
\( \tilde{H{\mathbb{Z}}}^n(X) \cong \tilde{{\operatorname{CH}}}^n(X) \) the **Chow-Witt group**, also called the **oriented Chow group**. Using the Gersten resolution, these can be expressed as formal sums of codimension \( n \) subvarieties with coefficients in \( {\operatorname{GW}}(k(Z)) \), where \( k(Z) \) are the rational functions of \( Z \), subject to some conditions, modulo equivalence.
:::

::: {.example title="?"}
\( {\mathsf{K}}^0(X) \) is the group completion of vector bundles on \( X \), and \( {\operatorname{KO}}^0(X) \) additionally remembers the data of a nondegenerate symmetric bilinear form. These are "representable" in a sense because they are related to Thom spectra.
:::

::: {.definition title="Cohomology with support"}
Let \( Z\hookrightarrow X \) be a closed subscheme, then define the **cohomology with support**
\[
H_Z^V(X) \coloneqq { \left[ { { X \over X\setminus Z}, \mathop{\mathrm{Th}}(V) \wedge H} \right] } _{{\mathsf{SH}}(k)}
.\]
:::

::: {.definition title="Euler class"}
For \( H \) a cohomology theory and \( {\mathbb{S}}|to H \) a ring? and a vector bundle \( V\to X \) with a section \( f \) (for example, the zero section), then the **Euler class**
\[
e^H(V, f) \in H_{\left\{{f=0}\right\}}^{V {}^{ \vee }}(X)
\]
is the class of the map
\[
{X\over X\setminus\left\{{f=0}\right\}} \xrightarrow{f} {V\over V\setminus\left\{{0}\right\}} \wedge H
.\]
:::

::: {.definition title="Euler Number"}
For \( f:X\to S \) is a **local closed immersion** (\( \mathrm{lci} \)) if it locally factors as \( U \xrightarrow{i} P \xrightarrow{p} S \) with \( p \) smooth and \( i \) a closed immersion determined by a *Koszul regular sequence* (so modding out doesn't yield a zero divisor, and the higher cohomology of the Koszul complex is zero).
:::

::: {.remark}
Some properties:

-   This has a well-behaved **cotangent complex** \( L_f \).

-   For a regular embedding, \( L_i \simeq N_u {}^{ \vee }P[1] \) is **conormal bundle**.[^8]

-   \( L_p \simeq\Omega_{P/S} \simeq{\mathsf{T}}_p {}^{ \vee } \).

-   \( L_{p_i} \) is determined by \( i^* L_p\to L_{p_i} \to L_i \),

-   There is a coherent Serre duality related to \( L_f \).

There is also a good notion of pushforward: let \( p:X\to S \) be proper [^9] and \( \mathrm{lci} \).

Then there is a **Becker-Gottlieb transfer**
\[
\operatorname{Tr}^{\text{BG}}: {\Sigma}_+^\infty S\to \mathop{\mathrm{Th}}(L_p)
,\]
and the cartoon is the following:

![](figures/2021-07-16_14-06-20.png)

Here we embed \( X\to S \) into the trivial bundle over \( S \) and take a neighborhood. Letting \( B \) be the trivial bundle over \( S \), then \( \mathop{\mathrm{Th}}(B) \cong \Sigma_+^\infty S \) and collapsing fiberwise quotients by the complement of the neighborhood:

![](figures/2021-07-16_14-08-44.png)

This yields \( p_*: H^{L_p}(X) \to H^0(S) \).
:::

## Oriented Cohomology Theories and Euler Numbers

::: {.remark}
```{=tex}
\envlist
```
-   \( H \) is \( \operatorname{GL}{\hbox{-}} \)oriented if \( H_Z^n(X) \xrightarrow{\sim} H_Z^V(X) \) with \( n\coloneqq\operatorname{rank}V \).

    An example is \( H{\mathbb{Z}}, {\mathsf{K}} \), but non examples are \( {H\tilde {\mathbb{Z}}}, {\operatorname{KO}} \).

-   \( H \) is \( {\operatorname{SL}}{\hbox{-}} \)oriented if

    -   \( H_Z^V(X) \xrightarrow{\sim} H_Z^{V'}(X) \),
    -   \( \operatorname{rank}V = \operatorname{rank}V' \) and
    -   \( \operatorname{det}V \xrightarrow{\sim} \operatorname{det}V' \otimes L{ {}^{ \scriptstyle\otimes_{}^{2} }  } \) for \( L\to X \) a line bundle.

    An example is \( H\tilde{{\mathbb{Z}}}, {\operatorname{KO}} \).
:::

::: {.remark}
For \( V\to X \) a relatively oriented vector bundle on \( X \xrightarrow{p} k \) with \( p \) smooth and proper, and \( H \) an \( {\operatorname{SL}}_c{\hbox{-}} \)oriented cohomology theory. Then
\[
H^{V {}^{ \vee }}(X) \xrightarrow{\sim} H^{{\mathsf{T}} {}^{ \vee }X}(X)
.\]
Letting \( f \) be any section of \( V \), e.g. the zero section, then

```{=tex}
\begin{tikzcd}
    {e^H(V, f) \in} & {H_{\left\{{f=0}\right\}}^{V {}^{ \vee }}(X)} &&& {H^{V {}^{ \vee }}(X)} \\
    & {X\to {X\over X\setminus\left\{{f=0}\right\}}} &&& {\mathop{\mathrm{Th}}(V) \wedge H} \\
    & {}
    \arrow["{z: \text{ forget support}}", from=1-2, to=1-5]
    \arrow[maps to, from=2-2, to=2-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMSwwLCJIX3tcXHRze2Y9MH19XntWXFxkdWFsfShYKSJdLFs0LDAsIkhee1ZcXGR1YWx9KFgpIl0sWzEsMl0sWzAsMCwiZV5IKFYsIGYpIFxcaW4iXSxbMSwxLCJYXFx0byB7WFxcb3ZlciBYXFxzbXRze2Y9MH19Il0sWzQsMSwiXFxUaChWKSBcXHNtYXNocHJvZCBIIl0sWzAsMSwiejogXFx0ZXh0eyBmb3JnZXQgc3VwcG9ydH0iXSxbNCw1LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV1d)

Letting \( f: X\to \mathop{\mathrm{Th}}(V) \wedge H \), any two sections \( f_1, f_2 \) of \( V \) are connected by copies of \( {\mathbb{A}}^1 \) in \( H^0(V) \), so
\[
e^H(V) \coloneqq z(e^H(V, f_1)) = z(e^H(V, f_2))
.\]
:::

::: {.definition title="Euler number"}
The **Euler number** \( n^H(V) \) of \( V \) in \( H^0(S) \) is
\[
n^H(V) \coloneqq p_* e^H(V)
.\]
:::

::: {.remark}
This agrees with
\[
n(V, f) = \sum_{x\in \left\{{f= 0 }\right\} \subseteq X} \deg_x f, && \deg_x f \in {\operatorname{GW}}(k)
,\]
for \( H = H\tilde{{\mathbb{Z}}}, {\operatorname{KO}} \) over \( S\coloneqq\operatorname{Spec}k \). Moreover, \( n(V, f) \) is independent of the choice of section.

> See [Déglise-Jin-Khan](https://arxiv.org/abs/1805.05920), [Bachmann-Wickelgren](https://arxiv.org/abs/2002.01848).
:::

## Arithmetic count of lines on a smooth cubic surface (joint with Jesse Kass)

::: {.definition title="Cubic surface"}
A **cubic surface** is given by \( X \subseteq {\mathbb{P}}^3 \) where \( X = \left\{{f=0}\right\} \) with \( f\in k[w,x,y,z]_3 \) homogeneous of degree 3.
:::

::: {.theorem title="Salmon-Cayley, 1849"}
Any smooth cubic surface over \( {\mathbb{C}} \) contains exactly 27 lines.
:::

::: {.example title="?"}
Consider the Fermat cubic:
\[
f(x,y,z,w) = x^2 + y^2 + z^2 + w^2
.\]
The lines are given by
\[ 
\left\{{ {\left[ {S, -S, T, -T} \right]}  {~\mathrel{\Big|}~}[S, T] \in {\mathbb{P}}^1({\mathbb{C}}) \subseteq X }\right\}
.\]
For \( \omega^3,\lambda^3 = 1 \), we can take
\[ 
\left\{{{\left[ {S, \lambda S, T, \omega T} \right]} {~\mathrel{\Big|}~}[S, T]\in {\mathbb{P}}^1({\mathbb{C}}) }\right\} 
.\]
Permuting the variables in \( {4\choose 2}/2 =3 \) ways, then there are \( 3\cdot 3 \cdot 3 = 27 \) total lines.
:::

::: {.proof title="?"}
Let \( {\operatorname{Gr}}(1, 3) \) be the Grassmannian parameterizing \( W \subseteq {\mathbb{C}}^4 \) with \( \dim W=2 \), or equivalently copies of \( {\mathbb{P}}^1 \) in \( {\mathbb{P}}^3 \). Take the tautological \( S\to {\operatorname{Gr}}(1, 3) \) whose fiber over \( [{\mathbb{P}}W] \) is \( W \) itself. Then \( \operatorname{Sym}^3 S {}^{ \vee }_{[{\mathbb{P}}W]} = \operatorname{Sym}^3(W {}^{ \vee }) \) are cubic polynomials in \( W \), and \( f \) determines a section \( \sigma_f \) of \( \operatorname{Sym}^3 S {}^{ \vee } \) given by
\[
\sigma_f([{\mathbb{P}}W) = { \left.{{f}} \right|_{{W}} }
,\]
which is zero iff the line \( {\mathbb{P}}W \) is contained in \( X \). So we've reduced to counting zeros of a section:
\[
n(V) = \sum_{\text{lines } L \subseteq X} \deg_L \sigma_f
.\]

::: {.fact}
For a smooth cubic surface, all zeroes of \( \sigma_f \) have multiplicity one.
:::

Over \( {\mathbb{C}} \), the classical differential topological degree is 1, so \( n(V) \) is the number of lines, and \( n(V) = 27 \).

Consider now the situation over \( {\mathbb{R}} \):

-   Schläfli (1861): Over \( {\mathbb{R}} \), there can only be \( 3, 7, 15 \), or \( 27 \) lines.
-   Segre (1942): These lines break into two classes: hyperbolic, or elliptic.

For \( L \subseteq X \) a real line, \( L \) gives an involution \( I:L\to L \) where \( I(p) \) is defined by consider \( T_p X \), which contains a line \( L \) along with a curve \( C \) of degree 2 since the total degree is 3:

![](figures/2021-07-16_14-28-57.png)

In particular, there is another point in the intersection of \( L \cap C \cap X \), so \( I(p) \) is defined as that point where \( T_{I(p)}X = T_pX \). If \( I \) yields a \( {\mathbb{C}}{\hbox{-}} \)conjugate pair, say \( L \) is elliptic, and otherwise if \( I \) yields two \( {\mathbb{R}}{\hbox{-}} \)point say \( L \) is hyperbolic. Taking a path \( p\to I(p) \), if the tangent space undergoes a full twist, this is the elliptic situation.
:::

::: {.theorem title="Segre + many authors in the 2010s"}
The number of hyperbolic lines minus the number of elliptic lines is exactly 3.
:::

::: {.question}
What about other fields, like \( k = {\mathbb{F}}_p, { {\mathbb{Q}}_p }, {\mathbb{Q}} \)?
:::

::: {.answer}
The above proof works in \( {\mathbb{A}}^1{\hbox{-}} \)homotopy theory. Letting \( X \subseteq X \subseteq {\mathbb{P}}^3_{/ {k}}  \) a cubic surface.
:::

::: {.definition title="Type of a line"}
The **type** of a line \( L \) is an element
\[
\left\langle{D}\right\rangle \in {\operatorname{GW}}(k(L)),
&&
D \in k(L)^{\times}/ (k(L)^{\times}){ {}^{ \scriptscriptstyle\times^{2} }  }
\]
such that the fixed points \(  \mathrm{Fix} (I) \) form a conjugate pair of points defined over \( k(L) { \left[ {\sqrt D} \right] }  \).
:::

::: {.theorem title="Kass-Wickelgren"}
let \( k\in \mathsf{Field}^{\operatorname{ch}\neq 2} \) and \( X \subseteq {\mathbb{P}}^3_{/ {k}}  \), then
\[
\sum_{\substack{\text{lines} \\ L \subseteq k(X) }} \operatorname{Tr}_{k(L) / k} {\operatorname{type}}(D) = 15\left\langle{1}\right\rangle + 12\left\langle{-1}\right\rangle \in {\operatorname{GW}}(k)
.\]
:::

# Matthew Morrow, Talk 1 (Thursday, July 15)

## Intro

**Abstract**:

> Motivic cohomology offers, at least in certain situations, a geometric refinement of algebraic K-theory or its variants (G-theory, KH-theory, étale K-theory, \( \cdots \)). We will overview some aspects of the subject, ranging from the original cycle complexes of Bloch, through Voevodsky's work over fields, to more recent p-adic developments in the arithmetic context where perfectoid and prismatic techniques appear.

**References/Background**:

-   Algebraic geometry, sheaf theory, cohomology.
    -   Comfort with derived techniques such as descent and the cotangent complex would be helpful.
    -   Casual familiarity with K-theory, cyclic homology, and their variants would be motivational.
    -   Infinity-categories and spectra will appear, though probably not in a very essential way.
-   [Lecture Notes](https://www.ias.edu/sites/default/files/Morrow%20lectures%201%2B2.pdf)

::: {.remark}
Some things we've already seen that will be useful:

-   Motivic complexes
-   Milnor \( {\mathsf{K}}{\hbox{-}} \)theory
-   Their relations to étale cohomology (e.g. Bloch-Kato)
-   \( {\mathbb{A}}^1{\hbox{-}} \)homotopy theory
-   Categorical aspects (e.g. presheaves with transfer)

These have typically been for \( {\mathsf{sm}}{\mathsf{Var}}_{/ {k}}  \). Our goals will be to study

-   Motivic cohomology as a tool to analyze algebraic \( {\mathsf{K}}{\hbox{-}} \)theory.
-   Recent progress in mixed characteristic, with fewer smoothness/regularity hypothesis
:::

## \( {\mathsf{K}}_0 \) and \( {\mathsf{K}}_1 \) {#mathsfk_0-and-mathsfk_1}

::: {.remark}
Some phenomena of \( {\mathsf{K}}{\hbox{-}} \)theory to keep in mind:

-   It encodes other invariants.
-   It breaks into "simpler" pieces that are motivic in nature.
:::

::: {.definition title="The Grothendieck group (Grothendieck, 50s)"}
Let \( R\in \mathsf{CRing} \), then define the **Grothendieck group** \( {\mathsf{K}}_0(R) \) as the free abelian group:
\[
{\mathsf{K}}_0(R) = {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\mathop{\mathrm{proj}}, {\mathrm{fg}}, \cong} / \sim
.\]
where \( [P] \sim [P'] + [P''] \) when there is a SES
\[
0 \to P' \to P \to P'' \to 0
.\]
:::

::: {.remark}
There is an equivalent description as a group completion:
\[
{\mathsf{K}}_0(R) = \qty{{\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\mathop{\mathrm{proj}}, {\mathrm{fg}}, \cong}, \oplus }^ {\operatorname{gp} } 
.\]

The same definitions work for any \( X\in{\mathsf{Sch}} \) by replacing \( {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\mathop{\mathrm{proj}}, {\mathrm{fg}}} \) with \( { { {\mathsf{Bun}}_{\operatorname{GL}_r} }}_{/ {X}}  \), the category of (algebraic) vector bundles over \( X \).
:::

::: {.example title="?"}
For \( F\in\mathsf{Field} \), the dimension induces an isomorphism:
\[
\dim_F: {\mathsf{K}}_0(F) &\to {\mathbb{Z}}\\
[P] &\mapsto \dim_F P
.\]
:::

::: {.example title="?"}
Let \( {\mathcal{O}}\in\mathsf{DedekindDom} \), e.g. the ring of integers in a number field, then any ideal \( I{~\trianglelefteq~}{\mathcal{O}} \) is a finite projective module and defines some \( [I] \in{\mathsf{K}}_0({\mathcal{O}}) \). There is a SES
\[
0 \to { \operatorname{Cl}} ({\mathcal{O}}) \xrightarrow{I \mapsto [I] - [{\mathcal{O}}] } {\mathsf{K}}_0({\mathcal{O}}) \xrightarrow{\operatorname{rank}_{\mathcal{O}}({-})} {\mathbb{Z}}\to 0
.\]
Thus \( {\mathsf{K}}_0({\mathcal{O}}) \) breaks up as \( { \operatorname{Cl}} ({\mathcal{O}}) \) and \( {\mathbb{Z}} \), where the class group is a classical invariant: isomorphism classes of nonzero ideals.
:::

::: {.example title="?"}
Let \( X\in{\mathsf{sm}}{\mathsf{Alg}}{\mathsf{Var}}^{{\mathrm{qproj}}}_{/ {k}}  \) over a field, and let \( Z\hookrightarrow X \) be an irreducible closed subvariety. We can resolve the structure sheaf \( {\mathcal{O}}_Z \) by vector bundles:
\[
0 \leftarrow{\mathcal{O}}_Z \leftarrow P_0 \leftarrow\cdots P_d \leftarrow 0
.\]
We can then define
\[
[Z] \coloneqq\sum_{i=0}^d (-1)^i [P_i] \in{\mathsf{K}}_0(X)
,\]
which turns out to be independent of the resolution picked. This yields a filtration:
\[
{\operatorname{Fil}}_j{\mathsf{K}}_0(X) \coloneqq\left\langle{[Z] {~\mathrel{\Big|}~}Z\hookrightarrow X \text{ irreducible closed, } \operatorname{codim}(Z) \leq j}\right\rangle \\ \\ 
\implies{\mathsf{K}}_0(X) \supseteq{\operatorname{Fil}}_d{\mathsf{K}}_0(X) \supseteq\cdots \supseteq{\operatorname{Fil}}_0{\mathsf{K}}_0(X) \supseteq 0
.\]
:::

::: {.theorem title="Part of Riemann-Roch"}
There is a well-defined surjective map
\[
{\operatorname{CH}}_j(X) \coloneqq\left\{{j{\hbox{-}}\text{dimensional cycles}}\right\} / \text{rational equivalence} &\to { {\operatorname{Fil}}_j{\mathsf{K}}_0(X) \over {\operatorname{Fil}}_{j-1}{\mathsf{K}}_0(X) } \\
Z &\mapsto [Z]
,\]
and the kernel is annihilated by \( (j-1)! \).
:::

::: {.slogan}
Up to small torsion, \( {\mathsf{K}}_0(X) \) breaks into Chow groups.
:::

::: {.definition title="Bass, 50s"}
Set
\[
{\mathsf{K}}_1(R)\coloneqq\operatorname{GL}(R)/E(R) \coloneqq\displaystyle\bigcup_{n\geq 1} \operatorname{GL}_n(R)/E_n(R)
\]
where we use the block inclusion
\[
\operatorname{GL}_n(R) &\hookrightarrow\operatorname{GL}_{n+1} \\
g &\mapsto {
\begin{bmatrix}
  {g} & {0} 
\\
  {0} & {1}
\end{bmatrix}
}
\]
and \( E_n(R) \subseteq \operatorname{GL}_n(R) \) is the subgroup of elementary row and column operations performed on \( I_n \).
:::

::: {.example title="?"}
There exists a determinant map
\[
\operatorname{det}: {\mathsf{K}}_1(R) &\to R^{\times}\\
g & \mapsto \operatorname{det}(g)
,\]
which has a right inverse \( r\mapsto \operatorname{diag}(r,1,1,\cdots,1) \).
:::

::: {.example title="?"}
For \( F\in\mathsf{Field} \), we have \( E_n(F) = {\operatorname{SL}}_n(F) \) by Gaussian elimination. Since every \( g\in{\operatorname{SL}}_n(F) \) satisfies \( \operatorname{det}(g) = 1 \), there is an isomorphism
\[
\operatorname{det}: {\mathsf{K}}_1(F) \xrightarrow{\sim} F^{\times}
.\]
:::

::: {.remark}
We can see a relation to étale cohomology here by using Kummer theory to identify
\[
{\mathsf{K}}_1(F) / m \xrightarrow{\sim} F^{\times}/m \xrightarrow{\text{Kummer}, \sim} H^1_{ \mathsf{Gal}} (F; \mu_m)
\]
for \( m \) prime to \( \operatorname{ch}F \), so this is an easy case of Bloch-Kato.
:::

::: {.example title="?"}
For \( {\mathcal{O}} \) the ring of integers in a number field, there is an isomorphism
\[
\operatorname{det}: {\mathsf{K}}_1({\mathcal{O}}) \xrightarrow{\sim} {\mathcal{O}}^{\times}
,\]
but this is now a deep theorem due to Bass-Milnor-Serre, Kazhdan.
:::

::: {.example title="?"}
Let \( D \coloneqq{\mathbb{R}}[x, y] / \left\langle{x^2 + y^2 - 1}\right\rangle \in\mathsf{DedekindDom} \), then there is a nonzero class
\[
{
\begin{bmatrix}
  {x} & {y} 
\\
  {-y} & {x}
\end{bmatrix}
} \in \ker \operatorname{det}
,\]
so the previous result for \( {\mathcal{O}} \) is not a general fact about Dedekind domains. It turns out that
\[
{\mathsf{K}}_1(D) \xrightarrow{\sim} D^{\times}\oplus {\mathcal{L}}
,\]
where \( {\mathcal{L}} \) encodes some information about loops which vanishes for number fields.
:::

## Higher Algebraic \( {\mathsf{K}}{\hbox{-}} \)theory {#higher-algebraic-mathsfkhbox-theory}

::: {.remark}
By the 60s, it became clear that \( {\mathsf{K}}_0, {\mathsf{K}}_1 \) should be the first graded pieces in some exceptional cohomology theory, and there should exist some \( {\mathsf{K}}_n(R) \) for all \( n\geq 0 \) (to be defined). Quillen's Fields was a result of proposing multiple definitions, including the following:
:::

::: {.definition title="The $\\K\\dash$theory spectrum (Quillen, 73)"}
Define a \( {\mathsf{K}}{\hbox{-}} \)theory space or spectrum (infinite loop space) by deriving the functor \( {\mathsf{K}}_0({-}) \):
\[
K(R) \coloneqq \mathsf{B}\mkern-3mu \operatorname{GL} (R){ {}^{+} }\times{\mathsf{K}}_0(R)
\]
where \( \pi_*  \mathsf{B}\mkern-3mu \operatorname{GL} (R) = \operatorname{GL}(R) \) for \( *=1 \). Quillen's plus construction forces \( \pi_* \) to be abelian without changing the homology, although this changes homotopy in higher degrees. We then define
\[
{\mathsf{K}}_n(R) \coloneqq\pi_n {\mathsf{K}}(R)
.\]
:::

::: {.remark}
This construction is good for the (hard!) hands-on calculations Quillen originally did, but a more modern point of view would be

-   Setting \( {\mathsf{K}}(R) \) to be the \( \infty{\hbox{-}} \)group completion of the \( {\mathbb{E}}_\infty \) space associated to the category \( {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\mathop{\mathrm{proj}}, \cong} \).
-   Regarding \( {\mathsf{K}}({-}) \) as the universal invariant of \( \mathsf{Stab}{ \underset{\infty}{ \mathsf{Cat}}  } \) taking exact sequences in \( {\operatorname{Stab}}{ \underset{\infty}{ \mathsf{Cat}}  } \) to cofibers sequences in the category of spectra \( {\mathsf{Sp}} \), in which case one defines
    \[
    {\mathsf{K}}(R) \coloneqq{\mathsf{K}}(\mathsf{Perf}\mathsf{Ch}\qty{ {\mathsf{R}{\hbox{-}}\mathsf{Mod}} }  ) 
    \]
    as \( {\mathsf{K}}({-}) \) of perfect complexes of \( R{\hbox{-}} \)modules.

Both constructions output groups \( {\mathsf{K}}_n(R) \) for \( n\geq 0 \).
:::

::: {.example title="Quillen, 73"}
The only complete calculation of \( K \) groups that we have is
\[
{\mathsf{K}}_n({\mathbb{F}}_q) = 
\begin{cases}
{\mathbb{Z}}& n=0 
\\
0 & n \text{ even}
\\
{\mathbb{Z}}/\left\langle{q^{ {n+1\over 2} - 1 }}\right\rangle & n \text{ odd}.
\end{cases}
\]
:::

::: {.example title="?"}
We know \( {\mathsf{K}} \) groups are hard because \( {\mathsf{K}}_{n>0}({\mathbb{Z}}) = 0 \iff \) the Vandiver conjecture holds, which is widely open.

```{=tex}
\todo[inline]{Check content of conjecture, maybe 4n?}
```
:::

::: {.conjecture}
If \( R \in {\mathsf{Alg}}_{/ {{\mathbb{Z}}}} ^{{\mathrm{ft}}, \mathrm{reg}} \) then \( {\mathsf{K}}_n(R) \) should be a finitely generated abelian group for all \( n \). This is widely open, but known when \( \dim R \leq 1 \).
:::

::: {.example title="?"}
For \( F\in\mathsf{Field} \) with \( \operatorname{ch}F \) prime to \( m\geq 1 \), ten
\[
\operatorname{TateSymb}: {\mathsf{K}}_2(F) / m \xrightarrow{\sim} H^2_{ \mathsf{Gal}} (F; \mu_m^{\otimes 2})
,\]
which is a specialization of Bloch-Kato due to Merkurjev-Suslin.
:::

::: {.example title="Lichtenbaum, Quillen 70s"}
Partially motivated by special values of zeta functions, for a number field \( F \) and \( m\geq 1 \), formulae for \( {\mathsf{K}}_n(F; {\mathbb{Z}}/m) \) were conjectured in terms of \( H_\text{ét} \).
:::

::: {.remark}
Here we're using **\( {\mathsf{K}}{\hbox{-}} \)theory with coefficients**, where one takes a spectrum and constructs a mod \( m \) version of it fitting into a SES
\[
0\to {\mathsf{K}}_n(F)/m \to {\mathsf{K}}_n(F; {\mathbb{Z}}/m) \to {\mathsf{K}}_{n-1}(F)[m] \to 0
.\]
However, it can be hard to reconstruct \( {\mathsf{K}}_n({-}) \) from \( {\mathsf{K}}_n({-}, {\mathbb{Z}}/m) \).
:::

## Arrival of Motivic Cohomology

::: {.question}
\( {\mathsf{K}}{\hbox{-}} \)theory admits a refinement in the form of motivic cohomology, which splits into simpler pieces such as étale cohomology. In what generality does this phenomenon occur?
:::

::: {.example title="?"}
This is always true in topology: given \( X\in {\mathsf{Top}} \), \( {\mathsf{K}}_0^{\mathsf{Top}} \) can be defined using complex vector bundles, and using suspension and Bott periodicity one can define \( {\mathsf{K}}_n^{\mathsf{Top}}(X) \) for all \( n \).
:::

::: {.theorem title="Atiyah-Hirzebruch"}
There is a spectral sequence which degenerates rationally:
\[
E_2^{i,j} = H_{\operatorname{Sing}}^{i-j}(X; {\mathbb{Z}}) \Rightarrow{\mathsf{K}}^{\mathsf{Top}}_{-i-j}(X)
.\]
:::

::: {.remark}
So up to small torsion, topological \( {\mathsf{K}}{\hbox{-}} \)theory breaks up into singular cohomology. Motivated by this, we have the following
:::

## Big Conjecture

::: {.conjecture title="Existence of motivic cohomology (Beilinson-Lichtenbaum, 80s)"}
For any \( X\in{\mathsf{sm}}{\mathsf{Var}}_{/ {k}}  \), there should exist **motivic complexes**
\[
{\mathbb{Z}}_{ \mathrm{mot}} (j)(X), && j\geq 0
\]
whose homology, the **weight \( j \) motivic cohomology of \( X \)**, has the following expected properties:

-   There is some analog of the Atiyah-Hirzebruch spectral sequence which degenerates rationally:
    \[
    E_2^{i, j} = H_{ \mathrm{mot}} ^{i-j}(X; {\mathbb{Z}}(-j)) \Rightarrow{\mathsf{K}}_{-i-j}(X)
    ,\]
    where \( H_{ \mathrm{mot}} ^*({-}) \) is taking kernels mod images for the complex \( {\mathbb{Z}}_{ \mathrm{mot}} (\bullet)(X) \) satisfying descent.

-   In low weights, we have

    -   \( {\mathbb{Z}}_{ \mathrm{mot}} (0)(X) = {\mathbb{Z}}^{\# \pi_0(X)}[0] \) in degree 0, supported in degree zero.
    -   \( {\mathbb{Z}}_{ \mathrm{mot}} (1)(X) = {\mathbb{R}}\Gamma_{\mathrm{zar}}(X; {\mathcal{O}}_X^{\times})[-1] \), supported in degrees 1 and 2 for a normal scheme after the right-shift.

-   Range of support: \( {\mathbb{Z}}_{ \mathrm{mot}} (j)(X) \) is supported in degrees \( 0,\cdots, 2j \), and in degrees \( \leq j \) if \( X=\operatorname{Spec}R \) for \( R \) a local ring.

-   Relation to Chow groups:
    \[
    H^{2j}_{ \mathrm{mot}} (X; {\mathbb{Z}}(j)) { { \, \xrightarrow{\sim}\, }}{\operatorname{CH}}^j(X)
    .\]

-   Relation to étale cohomology (Beilinson-Lichtenbaum conjecture): taking the complex mod \( m \) and taking homology yields
    \[
    H_{ \mathrm{mot}} ^i(X; {\mathbb{Z}}/m(j)) \xrightarrow{\sim} H^i_\text{ét}(X; \mu_m^{\otimes j})
    \]
    if \( m \) is prime to \( \operatorname{ch}k \) and \( i\leq j \).
:::

::: {.example title="?"}
Considering computing \( {\mathsf{K}}_n(F) \pmod m \) for \( m \) odd and for number fields \( F \), as predicted by Lichtenbaum-Quillen. The mod \( m \) AHSS is simple in this case, since \( \operatorname{cohdim}F \leq 2 \):

```{=tex}
\begin{tikzcd}
    \bullet & \bullet & \bullet & \bullet \\
    \bullet & \bullet & \bullet & {H_{ \mathsf{Gal}} ^0(F; {\mathbb{Z}}/m)} \\
    \bullet & \bullet & {H^0_{ \mathsf{Gal}} (F; \mu_m)} & {H_{ \mathsf{Gal}} ^1(F; \mu_m)} \\
    \bullet & {H^0_{ \mathsf{Gal}} (F; \mu_m^{\otimes 2})} & {H^1_{ \mathsf{Gal}} (F; \mu_m^{\otimes 2})} & {H_{ \mathsf{Gal}} ^2(F; \mu_m^{\otimes 2})} \\
    \vdots & \vdots & {H^2_{ \mathsf{Gal}} (F; \mu_m^{\otimes 3})} & \bullet \\
    \vdots & \vdots & \bullet & \vdots
    \arrow["\partial", from=4-2, to=5-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMjQsWzMsMSwiSF9cXEdhbF4wKEY7IFxcWlovbSkiXSxbMywyLCJIX1xcR2FsXjEoRjsgXFxtdV9tKSJdLFszLDMsIkhfXFxHYWxeMihGOyBcXG11X21ee1xcdGVuc29yIDJ9KSJdLFszLDUsIlxcdmRvdHMiXSxbMiwyLCJIXjBfXFxHYWwoRjsgXFxtdV9tKSJdLFsyLDMsIkheMV9cXEdhbChGOyBcXG11X21ee1xcdGVuc29yIDJ9KSJdLFsyLDQsIkheMl9cXEdhbChGOyBcXG11X21ee1xcdGVuc29yIDN9KSJdLFsxLDMsIkheMF9cXEdhbChGOyBcXG11X21ee1xcdGVuc29yIDJ9KSJdLFsxLDIsIlxcYnVsbGV0Il0sWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFsxLDAsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFszLDQsIlxcYnVsbGV0Il0sWzIsNSwiXFxidWxsZXQiXSxbMSw0LCJcXHZkb3RzIl0sWzEsNSwiXFx2ZG90cyJdLFswLDIsIlxcYnVsbGV0Il0sWzAsMSwiXFxidWxsZXQiXSxbMCwwLCJcXGJ1bGxldCJdLFswLDMsIlxcYnVsbGV0Il0sWzAsNCwiXFx2ZG90cyJdLFswLDUsIlxcdmRvdHMiXSxbNywxNCwiXFxwYXJ0aWFsIl1d)

The differentials are all zero, so we obtain
\[
{\mathsf{K}}_{2j-1}(F; {\mathbb{Z}}/m) \xrightarrow{\sim} H^1_{ \mathsf{Gal}} (F; \mu_m^{\otimes j})
\]
and
\[
0 \to H^2_{ \mathsf{Gal}} (F, \mu_m^{\otimes j+1}) \to {\mathsf{K}}_{2j}(F; {\mathbb{Z}}/m) \to H_{{ \mathsf{Gal}} }^0(F; \mu_m^{\otimes j})\to 0
.\]
:::

::: {.theorem title="Bloch, Levine, Friedlander, Rost, Suslin, Voevodsky, $\\cdots$"}
The above conjectures are true **except** for Beilinson-Soulé vanishing, i.e. the conjecture that \( {\mathbb{Z}}_{ \mathrm{mot}} (j)(X) \) is supported in positive degrees \( n\geq 0 \).
:::

::: {.remark}
Remarkably, one can write a definition somewhat easily which turns out to work in a fair amount of generality for schemes over a Dedekind domain.
:::

::: {.definition title="Higher Chow groups"}
For \( X\in {\mathsf{Var}}_{/ {k}}  \), let \( z^j(X, n) \) be the free abelian group of codimension \( j \) irreducible closed subschemes of \( X { \underset{\scriptscriptstyle {F} }{\times} } \Delta^n \) intersecting all faces properly, where
\[
\Delta^n = \operatorname{Spec}\qty{F[T_0, \cdots, T_n] \over \left\langle{\sum T_i - 1}\right\rangle} \cong {\mathbb{A}}^n_{/ {F}} 
,\]
which contains "faces" \( \Delta^m \) for \( m\leq n \), and *properly* means the intersections are of the expected codimension. Then **Bloch's complex of higher cycles** is the complex \( z^j(X, \bullet) \) where the boundary map is the alternating sum
\[
z^j(X, n) \ni {{\partial}}(Z) = \sum_{i=0}^n (-1)^i [Z \cap\mathrm{Face}_i(X\times \Delta^{n-1})]
,\]
**Bloch's higher Chow groups** are the cohomology of this complex:
\[
\mathsf{Ch}^j(X, n) \coloneqq H_n(z^j(X, \bullet))
,\]
and then the following complex has the expected properties:
\[
{\mathbb{Z}}_{ \mathrm{mot}} (j)(X) \coloneqq z^j(X, \bullet)[-2j]
\]
:::

::: {.remark}
Déglise's talks present the machinery one needs to go through to verify this!
:::

## Milnor \( {\mathsf{K}}{\hbox{-}} \)theory and Bloch-Kato {#milnor-mathsfkhbox-theory-and-bloch-kato}

::: {.remark}
How is motivic cohomology related to the Bloch-Kato conjecture? Recall from Danny's talks that for \( F\in\mathsf{Field} \) then one can form
\[
 {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F) = (F^{\times}){ {}^{ \scriptstyle\otimes_{F}^{j} }  } / \left\langle{\text{Steinberg relations}}\right\rangle
,\]
and for \( m\geq 1 \) prime to \( \operatorname{ch}F \) we can take Tate/Galois/cohomological symbols
\[
\operatorname{TateSymb}:  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F)/m \to H^j_{ \mathsf{Gal}} (F; \mu_m^{\otimes j})
.\]
where \( \mu_m^{\otimes j} \) is the \( j \)th Tate twist. Bloch-Kato conjectures that this is an isomorphism, and it is a theorem due to Rost-Voevodsky that the Tate symbol is an isomorphism. The following theorem says that a piece of \( H_{ \mathrm{mot}}  \) can be identified as something coming from \(  {\mathsf{K}}^{\scriptstyle\mathrm{M}}  \):
:::

::: {.theorem title="Nesterenko-Suslin, Totaro"}
For any \( F\in\mathsf{Field} \), for each \( j\geq 1 \) there is a natural isomorphism
\[
 {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F) \xrightarrow{\sim} H_{ \mathrm{mot}} ^j(F; {\mathbb{Z}}(j))
.\]
:::

::: {.remark}
Taking things mod \( m \) yields
\[
 {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F)/m \xrightarrow{\sim} H_{ \mathrm{mot}} ^j(F; {\mathbb{Z}}/m(j))
\xrightarrow{\sim, \text{BL}} H_\text{ét}^j(F; \mu_m^{\otimes j})
,\]
where the conjecture is that the obstruction term for the first isomorphism coming from \( H^{j+1} \) vanishes for local objects, and Beilinson-Lichtenbaum supplies the second isomorphism. The composite is the Bloch-Kato isomorphism, so Beilinson-Lichtenbaum \( \implies \) Bloch-Kato, and it turns out that the converse is essentially true as well. This is also intertwined with the Hilbert 90 conjecture.

Tomorrow: we'll discard coprime hypotheses, look at \( p{\hbox{-}} \)adic phenomena, and look at what happens étale locally.
:::

# Matthew Morrow, Talk 2 (Friday, July 16)

::: {.remark}
A review of yesterday:

-   \( {\mathsf{K}}{\hbox{-}} \)theory can be refined by motivic cohomology, i.e. it breaks into pieces. More precisely we have the Atiyah-Hirzebruch spectral sequence, and even better, the spectrum \( {\mathsf{K}}(X) \) has a motivic filtration with graded pieces \( {\mathbb{Z}}_{ \mathrm{mot}} (j)(X)[2j] \).

-   The \( {\mathbb{Z}}_{ \mathrm{mot}} (j)(X) \) correspond to algebraic cycles and étale cohomology mod \( m \), where \( m \) is prime to \( \operatorname{ch}k \), due to Beilinson-Lichtenbaum and Beilinson-Bloch.

Today we'll look at the classical mod \( p \) theory, and variations on a theme: e.g. replacing \( {\mathsf{K}}{\hbox{-}} \)theory with similar invariants, or weakening the hypotheses on \( X \). We'll also discuss recent progress in the case of étale \( {\mathsf{K}}{\hbox{-}} \)theory, particularly \( p{\hbox{-}} \)adically.
:::

## Mod \( p \) motivic cohomology in characteristic \( p \) {#mod-p-motivic-cohomology-in-characteristic-p}

::: {.remark}
For \( F\in\mathsf{Field} \) and \( m\geq 1 \) prime to \( \operatorname{ch}F \), the Atiyah-Hirzebruch spectral sequence mod \( m \) takes the following form:
\[
E_2^{i, j} = H_{ \mathrm{mot}} ^{i, j}(F, {\mathbb{Z}}/m(-j)) 
\overset{BL}{=}
\begin{cases}
 H^{i-j}_{ \mathsf{Gal}} (F; \mu_m^{\otimes j}) & i\leq 0  
\\
 0 & i>0 .
\end{cases}
.\]

Thus \( E_2 \) is supported in a quadrant four wedge:

![](figures/2021-07-16_11-12-08.png)

We know the axis:
\[
H^j(F; \mu_m^{\otimes j}) \xrightarrow{\sim}  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F)/m
.\]

What happens if \( m>p = \operatorname{ch}F \) for \( \operatorname{ch}F > 0 \)?
:::

::: {.theorem title="Izhbolidin (90), Bloch-Kato-Gabber (86), Geisser-Levine (2000)"}
Let \( F\in \mathsf{Field}^{\operatorname{ch}= p} \), then

-   \(  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F) \) and \( {\mathsf{K}}_j(F) \) are \( p{\hbox{-}} \)torsionfree.

-   \( {\mathsf{K}}_j(F)/p \xhookleftarrow{}  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F)/p \xhookrightarrow{\operatorname{dLog}} \Omega_F^j \)
:::

::: {.definition title="$\\dlog$"}
The \( \operatorname{dLog} \) map is defined as
\[
\operatorname{dLog}:  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F) / p &\to \Omega_f^j \\
\bigotimes_{i} \alpha_i &\mapsto \bigwedge\nolimits_i  {d \alpha_i \over \alpha_i}
,\]
and we write \( \Omega^j_{F, \log} \coloneqq\operatorname{im}\operatorname{dLog} \).
:::

::: {.remark}
So the above theorem is about showing the injectivity of \( \operatorname{dLog} \). What Geisser-Levine really prove is that
\[
{\mathbb{Z}}_{ \mathrm{mot}} (j)(F)/p \xrightarrow{\sim} \Omega_{F, \log}^j[-j]
.\]
Thus the mod \( p \) Atiyah-Hirzebruch spectral sequence, just motivic cohomology lives along the axis
\[
E_2^{i, j} = 
\begin{cases}
\Omega_{F, \log}^{-j}  &  i=0
\\
0 & \text{else }
\end{cases}
\Rightarrow{\mathsf{K}}_{i-j}(F; {\mathbb{Z}}/p)
\]
and \( {\mathsf{K}}_j(F)/p \xrightarrow{\sim} \Omega_{F, \log}^j \).
:::

::: {.remark}
So life is much nicer in \( p \) matching the characteristic! Some remarks:

-   The isomorphism remains true with \( F \) replaced any \( F\in {\mathsf{Alg}}_{/ {{\mathbb{F}}_p}} ^{\mathrm{reg}, {\mathsf{loc}}, \mathrm{Noeth}} \):
    \[
    {\mathsf{K}}_j(F)/p \xrightarrow{\sim} \Omega_{F, \log}^j
    .\]
-   The hard part of the theorem is showing that mod \( p \), there is a surjection \(  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F) \twoheadrightarrow{\mathsf{K}}_j(F) \). The proof goes through using \( z^j(F, \bullet) \) and the Atiyah-Hirzebruch spectral sequence, and seems to necessarily go through motivic cohomology.
:::

::: {.question}
Is there a direct proof? Or can one even just show that
\[
{\mathsf{K}}_j(F)/p = 0 \text{ for } j> [F: {\mathbb{F}}_p]_{\mathrm{tr}}
?\]
:::

::: {.conjecture title="Beilinson"}
This becomes an isomorphism after tensoring to \( {\mathbb{Q}} \), so
\[
 {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F) \otimes_{\mathbb{Z}}{\mathbb{Q}}\xrightarrow{\sim}  {\mathsf{K}}_j(F)\otimes_{\mathbb{Z}}{\mathbb{Q}}
.\]
This is known to be true for finite fields.
:::

::: {.conjecture}
\[
H_{ \mathrm{mot}} ^i(F; Z(j)) \text{ is torsion unless }i=j
.\]
This is wide open, and would follow from the following:
:::

::: {.conjecture title="Parshin"}
If \( X\in {\mathsf{sm}}{\mathsf{Var}}^{\mathop{\mathrm{proj}}}_{/ {k}}  \) over \( k \) a finite field, then
\[
H_{ \mathrm{mot}} ^i(X; Z(j)) \text{ is torsion unless } i=2j
.\]
:::

## Variants on a theme

::: {.question}
What things (other than \( {\mathsf{K}}{\hbox{-}} \)theory) can be motivically refined?
:::

### \( {\mathsf{G}}{\hbox{-}} \)theory {#mathsfghbox-theory}

::: {.remark}
Bloch's complex \( z^j(X, \bullet) \) makes sense for any \( X\in {\mathsf{Sch}} \), and for \( X \) finite type over \( R \) a field or a Dedekind domain. Its homology yields an Atiyah-Hirzebruch spectral sequence
\[
E_2^{i, j} = {\operatorname{CH}}^{-j}(X, -i-j) \Rightarrow{\mathsf{G}}_{-i-j}(X)
,\]
where \( {\mathsf{G}}{\hbox{-}} \)theory is the \( {\mathsf{K}}{\hbox{-}} \)theory of \( {\mathsf{Coh}}(X) \). See Levine's work.

Then \( z^j(X, \bullet) \) defines **motivic Borel-Moore homology**[^10] which refines \( {\mathsf{G}}{\hbox{-}} \)theory.
:::

### \(  {\mathsf{K}}^{\scriptscriptstyle \mathrm{H}} {\hbox{-}} \)theory {#mathsfkscriptscriptstyle-mathrmh-hbox-theory}

::: {.remark}
This is Weibel's "homotopy invariant \( {\mathsf{K}}{\hbox{-}} \)theory", obtained by forcing homotopy invariance in a universal way, which satisfies
\[
 {\mathsf{K}}^{\scriptscriptstyle \mathrm{H}} (R[T]) \xrightarrow{\sim}  {\mathsf{K}}^{\scriptscriptstyle \mathrm{H}} (R) && \forall R
.\]
One defines this as a simplicial spectrum
\[
 {\mathsf{K}}^{\scriptscriptstyle \mathrm{H}} (R) \coloneqq{ {\left\lvert {
q \mapsto {\mathsf{K}}\qty{R[T_0, \cdots, T_q] \over 1 - \sum_{i=0}^q T_i}
} \right\rvert} }
.\]
:::

::: {.remark}
One hopes that for (reasonable) schemes \( X \), there should exist an \( {\mathbb{A}}^1{\hbox{-}} \)invariant motivic cohomology such that

-   There is an Atiyah-Hirzebruch spectral sequence converging to \(  {\mathsf{K}}^{\scriptscriptstyle \mathrm{H}} _{i-j}(X) \).
-   Some Beilinson-Lichtenbaum properties.
-   Some relation to cycles.

For \( X \) Noetherian with \( \operatorname{krulldim}X<\infty \), the state-of-the-art is that stable homotopy machinery can produce an Atiyah-Hirzebruch spectral sequence using representability of \(  {\mathsf{K}}^{\scriptscriptstyle \mathrm{H}}  \) in \( {\mathsf{SH}}(X) \) along with the slice filtration.
:::

### Motivic cohomology with modulus

::: {.remark}
Let \( X\in{\mathsf{sm}}{\mathsf{Var}} \) and \( D\hookrightarrow X \) an effective (not necessarily reduced) Cartier divisor -- thought of where \( X\setminus D \) is an open which is compactified after adding \( D \). Then one constructs \( z^j\qty{ {X\vert D }, \bullet} \) which are complexes of cycles in "good position" with respect to the boundary \( D \).
:::

::: {.conjecture}
There is an Atiyah-Hirzebruch spectral sequence
\[
E_2^{i, j} = {\operatorname{CH}}^{j}\qty{ {X  \vert D }, (-i-j) } \Rightarrow{\mathsf{K}}_{-i-j}(X, D)
,\]
where the limiting term involves *relative \( K{\hbox{-}} \)groups*. So there is a motivic (i.e. cycle-theoretic) description of relative \( {\mathsf{K}}{\hbox{-}} \)theory.
:::

## Étale \( {\mathsf{K}}{\hbox{-}} \)theory {#étale-mathsfkhbox-theory}

::: {.remark}
\( {\mathsf{K}}{\hbox{-}} \)theory is simple étale-locally, at least away from the residue characteristic.
:::

::: {.theorem title="Gabber, Suslin"}
If \( A \in{\mathsf{loc}}\mathsf{Ring} \) is strictly Henselian with residue field \( k \) and \( m \geq 1 \) is prime to \( \operatorname{ch}k \), then
\[
{\mathsf{K}}_n(A; {\mathbb{Z}}/m) \xrightarrow{\sim} {\mathsf{K}}_n(k; {\mathbb{Z}}/m)
\xrightarrow{\sim} 
\begin{cases}
\mu_m(k)^{\otimes{n\over 2}} & n \text{ even}  
\\
0 & n \text{ odd}.
\end{cases}
\]
:::

::: {.remark}
The problem is that \( {\mathsf{K}}{\hbox{-}} \)theory does *not* satisfy étale descent!
\[
\text{For } B\in{ \mathsf{Gal}} \mathsf{Field}_{/ {A}} ^{\deg < \infty},
&&
K(B)^{h{ \mathsf{Gal}} \qty{B_{/ {A}} }} \not\cong K(A)
.\]

View \( {\mathsf{K}}{\hbox{-}} \)theory as a presheaf of spectra (in the sense of infinity sheaves), and define **étale \( {\mathsf{K}}{\hbox{-}} \)theory** \( K^\text{ét} \) to be the universal modification of \( {\mathsf{K}}{\hbox{-}} \)theory to satisfy étale descent. This was considered by Thomason, Soulé, Friedlander.
:::

::: {.remark}
Even better than \( {\mathsf{K}}^\text{ét} \) is Clausen's **Selmer \( {\mathsf{K}}{\hbox{-}} \)theory**, which does the right thing integrally. Up to subtle convergence issues, for any \( X\in {\mathsf{Sch}} \) and \( m \) prime to \( \operatorname{ch}X \) (the characteristic of the residue field) one gets an Atiyah-Hirzebruch spectral sequence
\[
E_2^{i, j} = H_\text{ét}^{i-j}(X; \mu_m^{\otimes-j}) \Rightarrow{\mathsf{K}}_{i-j}^{\text{ét}}(X; {\mathbb{Z}}/m)
.\]

Letting \( F \) be a field and \( m \) prime to \( \operatorname{ch}F \), the spectral sequence looks as follows:

```{=tex}
\begin{tikzcd}
    &&&&&& {} \\
    \\
    \\
    \\
    \bullet &&&&&& \textcolor{rgb,255:red,92;green,92;blue,214}{H^0_{ \mathsf{Gal}} (F; {\mathbb{Z}}/m)} & {H^1(F; {\mathbb{Z}}/m)} &&&&&&& \bullet \\
    &&&&& \textcolor{rgb,255:red,92;green,92;blue,214}{H^0(F; \mu_m^{\otimes 1})} & \textcolor{rgb,255:red,92;green,92;blue,214}{H^1_{ \mathsf{Gal}} (F; \mu_m^{})} & {H^2(F; \mu_m^{})} \\
    &&&& \textcolor{rgb,255:red,92;green,92;blue,214}{H^0(F; \mu_m^{\otimes 2})} & \textcolor{rgb,255:red,92;green,92;blue,214}{H^1(F; \mu_m^{\otimes 2})} & \textcolor{rgb,255:red,92;green,92;blue,214}{H^2_{ \mathsf{Gal}} (F; \mu_m^{\otimes 2})} & {H^3_{ \mathsf{Gal}} (F; \mu_m^{\otimes 2})} \\
    &&& {} &&& \vdots \\
    &&&&&& {} \\
    &&&&&& {}
    \arrow[color={rgb,255:red,135;green,135;blue,135}, dotted, from=5-1, to=5-15]
    \arrow[color={rgb,255:red,135;green,135;blue,135}, dotted, from=1-7, to=10-7]
    \arrow[dashed, no head, from=5-7, to=8-4]
    \arrow[dashed, no head, from=5-7, to=9-7]
    \arrow[from=6-6, to=7-8]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTYsWzYsNCwiSF4wX1xcR2FsKEY7IFxcWlovbSkiLFsyNDAsNjAsNjAsMV1dLFswLDQsIlxcYnVsbGV0Il0sWzE0LDQsIlxcYnVsbGV0Il0sWzYsMF0sWzYsOV0sWzYsNSwiSF4xX1xcR2FsKEY7IFxcbXVfbV57fSkiLFsyNDAsNjAsNjAsMV1dLFs2LDYsIkheMl9cXEdhbChGOyBcXG11X21ee1xcdGVuc29yIDJ9KSIsWzI0MCw2MCw2MCwxXV0sWzcsNCwiSF4xKEY7IFxcWlovbSkiXSxbNyw1LCJIXjIoRjsgXFxtdV9tXnt9KSJdLFs3LDYsIkheM19cXEdhbChGOyBcXG11X21ee1xcdGVuc29yIDJ9KSJdLFs1LDYsIkheMShGOyBcXG11X21ee1xcdGVuc29yIDJ9KSIsWzI0MCw2MCw2MCwxXV0sWzQsNiwiSF4wKEY7IFxcbXVfbV57XFx0ZW5zb3IgMn0pIixbMjQwLDYwLDYwLDFdXSxbNSw1LCJIXjAoRjsgXFxtdV9tXntcXHRlbnNvciAxfSkiLFsyNDAsNjAsNjAsMV1dLFszLDddLFs2LDhdLFs2LDcsIlxcdmRvdHMiXSxbMSwyLCIiLDAseyJjb2xvdXIiOlswLDAsNTNdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMyw0LCIiLDAseyJjb2xvdXIiOlswLDAsNTNdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMCwxMywiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMCwxNCwiIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTIsOV1d)

The whole thing converges to \( {\mathsf{K}}_{-i-j}^\text{ét}(F; {\mathbb{Z}}/m) \), and the sector conjecturally converges to \( {\mathsf{K}}_{-i-j}(F; {\mathbb{Z}}/m) \) by the Beilinson-Lichtenbaum conjecture.
:::

## Recent Progress

::: {.remark}
We now focus on

-   Étale \( {\mathsf{K}}{\hbox{-}} \)theory, \( {\mathsf{K}}^\text{ét} \)
-   mod \( p \) coefficients, even period
-   \( p{\hbox{-}} \)adically complete rings

The last is not a major restriction, since there is an arithmetic gluing square

```{=tex}
\begin{tikzcd}
    R && {R{ \left[ { \scriptstyle \frac{1}{p} } \right] }} \\
    \\
    {\widehat{R}} && {\widehat{R}{ \left[ { \scriptstyle \frac{1}{p} } \right] }}
    \arrow[from=1-1, to=3-1]
    \arrow[from=3-1, to=3-3]
    \arrow[from=1-3, to=3-3]
    \arrow[from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJSIl0sWzIsMCwiUlxcaW52ZXJ0e3B9Il0sWzIsMiwiXFxoYXR7Un1cXGludmVydHtwfSJdLFswLDIsIlxcaGF0e1J9Il0sWzAsM10sWzMsMl0sWzEsMl0sWzAsMV1d)

Here the bottom-left is the \( p{\hbox{-}} \)adic completion, and the right-hand side uses classical results when \( p \) is prime to all residue characteristic classes.
:::

::: {.theorem title="Bhatt-M-Scholze, Antieau-Matthew-M-Nikolaus, Lüders–M, Kelly-M"}
For any \( p{\hbox{-}} \)adically complete ring \( R \) (or in more generality, derived \( p{\hbox{-}} \)complete simplicial rings) one can associate a theory of **\( p{\hbox{-}} \)adic étale motivic cohomology** -- \( p{\hbox{-}} \)complete complexes \( {\mathbb{Z}}_p(j)(R) \) for \( j\geq 0 \) satisfying an analog of the Beilinson-Lichtenbaum conjectures:

1.  An Atiyah-Hirzebruch spectral sequence:
    \[
    E_2^{i, j} = H^{i-j}({\mathbb{Z}}_p(j)(R)) \Rightarrow{\mathsf{K}}_{-i-j}^\text{ét}(R; {\mathbb{Z}}){ {}_{ \widehat{p} } }
    .\]

2.  Known low weights:
    \[
    {\mathbb{Z}}_p(0)(R) &\xrightarrow{\sim} {\mathbb{R}}\Gamma_\text{ét}(R; {\mathbb{Z}}_p) \\
    {\mathbb{Z}}_p(1)(R) &\xrightarrow{\sim} { \overbrace{{\mathbb{R}}\Gamma_\text{ét}(R; {\mathbb{G}}_m)}^{\widehat{\hspace{4em}}}  }  [-1] 
    .\]

3.  Range of support: \( {\mathbb{Z}}_p(j)(R) \) is supported in degrees \( d\leq j+1 \), and even in degrees \( d\leq n+1 \) if the \( R{\hbox{-}} \)module \( \Omega_{R/pR}^1 \) is generated by \( n'<n \) elements. It is supported in non-negative degrees if \( R \) is **quasisyntomic**, which is a mild smoothness condition that holds in particular if \( R \) is regular.

4.  An analog of Nesterenko-Suslin: for \( R \in {\mathsf{loc}}\mathsf{Ring} \),
    \[
    { \widehat{{\mathsf{K}}}^{\scriptscriptstyle \mathrm{M}} _j(R)} \xrightarrow{\sim} H^j({\mathbb{Z}}_p(j)(R))
    ,\]
    where \(  \widehat{{\mathsf{K}}}^{\scriptscriptstyle \mathrm{M}}  \) is the "improved Milnor \( {\mathsf{K}}{\hbox{-}} \)theory" of Gabber-Kerz.

5.  Comparison to Geisser-Levine: if \( R \) is smooth over a perfect characteristic \( p \) field, then
    \[
    {\mathbb{Z}}_p(j)(R)/p \xrightarrow{\sim} {\mathbb{R}}\Gamma_\text{ét}(\operatorname{Spec}R; \Omega_{\log}^j)[-j]
    ,\]
    where \( [-j] \) is a right-shift.
:::

::: {.remark}
For simplicity, we'll write \( H^i(j) \coloneqq H^i( {\mathbb{Z}}_p(j)(R)) \). The spectral sequence looks like the following:

It converges to \( K^\text{ét}_{-i-j}(R;{\mathbb{Z}}/p) \). The 0-column is \( { \overbrace{ {\mathsf{K}}^{\scriptstyle\mathrm{M}} _{-j}(R)}^{\widehat{\hspace{4em}}}  } \), and we understand the 1-column: we have
\[
H^{j+1} \xrightarrow{\sim} \varprojlim_{r} \tilde v_r(j)(R)
.\]
where \( \tilde v_r(j)(R) \) are the mod \( p^r \) weight \( j \) Artin-Schreier obstruction. For example,
\[
\tilde v_1(j)(R) \coloneqq
\operatorname{coker}\qty{ 
1- C^{-1}: \Omega^j_{R/pR} \to {\Omega^j_{R/pR} \over {{\partial}}\Omega^{j-1}_{R/pR}}
}
= { R \over pR + \left\{{ a^p-a {~\mathrel{\Big|}~}a\in R }\right\} } 
.\]
These are weird terms that capture some class field theory and are related to the Tate and Kato conjectures.
:::

::: {.theorem title="(continued)"}
If \( R \) is local, then the 3rd quadrant of the above spectral sequence gives an Atiyah-Hirzebruch spectral sequence converging to \( {\mathsf{K}}_{-i-j}(R; {\mathbb{Z}}_p) \).
:::

::: {.remark}
So we get things describing étale \( {\mathsf{K}}{\hbox{-}} \)theory, and after discarding a little bit we get something describing usual \( {\mathsf{K}}{\hbox{-}} \)theory. Moreover, for any local \( p{\hbox{-}} \)adically complete ring \( R \), we have broken \( {\mathsf{K}}_*(R; { {\mathbb{Z}}_p }) \) into motivic pieces.
:::

::: {.example title="?"}
We same that for number fields, \( \operatorname{cohdim}\leq 2 \) yields a simple spectral sequence relating \( K \) groups to Galois cohomology. Consider now a truncated polynomial algebra \( A = k[T]/T^r \) for \( k\in\mathsf{Perf}\mathsf{Field}^{\operatorname{ch}= p} \) and let \( r\geq 1 \). Then by the general bounds given in the theorem, \( H^i(j) = 0 \) unless \( 0\leq i \leq 2 \), using that \( \Omega \) can be generated by one element. Slightly more work will show \( H^0, H^2 \) vanish unless \( i=j=0 \) (so higher weights vanish), since they're \( p{\hbox{-}} \)torsionfree and are killed by \( p \).

So the spectral sequence collapses:

```{=tex}
\begin{tikzcd}
    &&&&& {} & {} \\
    \\
    {} &&&&& \textcolor{rgb,255:red,214;green,92;blue,92}{H^0(0)} & {H^1(0)} & 0 & 0 &&& {} \\
    &&&& {H^0(1)} & \textcolor{rgb,255:red,214;green,92;blue,92}{H^1(1)} & {H^2(1)} & 0 & 0 \\
    &&& {H^0(2)} & \textcolor{rgb,255:red,214;green,92;blue,92}{H^1(2)} & {H^2(2)} & {H^3(2)} & 0 & 0 \\
    && \ddots & {H^1(3)} & {H^2(3)} & {H^3(3)} & {H^4(3)} & 0 & 0 \\
    &&& \vdots & \vdots & \vdots & \vdots \\
    &&&&& {} & {}
    \arrow[draw={rgb,255:red,214;green,92;blue,92}, dashed, from=4-5, to=5-7]
    \arrow[draw={rgb,255:red,153;green,153;blue,153}, dotted, no head, from=1-6, to=8-6]
    \arrow[draw={rgb,255:red,153;green,153;blue,153}, dotted, no head, from=3-1, to=3-12]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMzIsWzUsMiwiSF4wKDApIixbMCw2MCw2MCwxXV0sWzUsMywiSF4xKDEpIixbMCw2MCw2MCwxXV0sWzUsNCwiSF4yKDIpIl0sWzUsNSwiSF4zKDMpIl0sWzQsMywiSF4wKDEpIl0sWzQsNCwiSF4xKDIpIixbMCw2MCw2MCwxXV0sWzQsNSwiSF4yKDMpIl0sWzMsNCwiSF4wKDIpIl0sWzYsMiwiSF4xKDApIl0sWzcsMiwiMCJdLFs2LDMsIkheMigxKSJdLFs2LDQsIkheMygyKSJdLFs2LDUsIkheNCgzKSJdLFs3LDMsIjAiXSxbNyw0LCIwIl0sWzcsNSwiMCJdLFs4LDUsIjAiXSxbOCw0LCIwIl0sWzgsMywiMCJdLFs4LDIsIjAiXSxbNiwwXSxbNiw3XSxbMiw1LCJcXGRkb3RzIl0sWzMsNSwiSF4xKDMpIl0sWzMsNiwiXFx2ZG90cyJdLFs0LDYsIlxcdmRvdHMiXSxbNSw2LCJcXHZkb3RzIl0sWzYsNiwiXFx2ZG90cyJdLFs1LDBdLFs1LDddLFswLDJdLFsxMSwyXSxbNCwxMSwiIiwwLHsiY29sb3VyIjpbMCw2MCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyOCwyOSwiIiwwLHsiY29sb3VyIjpbMCwwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMzAsMzEsIiIsMCx7ImNvbG91ciI6WzAsMCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d)

So the Atiyah-Hirzebruch spectral sequence collapses to

\[
{\mathsf{K}}_n\qty{ { K[T] \over  \left\langle{T^r}\right\rangle }, \left\langle{T}\right\rangle}
=
\begin{cases}
 H^1\qty{{\mathbb{Z}}_p\qty{n+1\over 2}} (R) & n \text{ odd}  
\\
0 & n \text{ even}.
\end{cases}
.\]

When \( r=2 \), one can even valuation these nontrivial terms.
:::

::: {.question}
What is the motivic cohomology for regular schemes not over a field? We'd like to understand this in general.
:::

[^1]: Since we're in the flat and locally finitely presented case, it's sufficient that all fibers are smooth

[^2]: Noetherian domain where the localizations at maximal ideals are DVRs,

[^3]: This holds for example if \( Y \in {\mathsf{Aff}}{\mathsf{Sch}} \).

[^4]: Here "simply connected" is in the sense of semisimple algebraic groups or group schemes, and over \( {\mathbb{C}} \) coincides with the topological notion.

[^5]: The dualizing sheaf is locally free

[^6]: Even better, there is a distinguished isomorphism coming from a distinguished socle element (Scheja-Storch).

[^7]: Her \( {\mathcal{O}}_{X, p} \) is the stalk of the structure sheaf at \( p \), which is a local ring with a unique maximal ideal \( {\mathfrak{m}}_p \), and the LHS is completion at that ideal, so
    \[
    \widehat{{\mathcal{O}}_{X, p}} \coloneqq\qty{{\mathcal{O}}_{X, p}}{ {}_{ \widehat{{\mathfrak{m}}_p} } }
    .\]

[^8]: I.e. the dual of the normal bundle.

[^9]: Here **proper** means that the preimage of a compact set is compact.

[^10]: Note that this is homology and not cohomology!
