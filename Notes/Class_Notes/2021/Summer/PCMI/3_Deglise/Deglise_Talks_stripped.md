












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
