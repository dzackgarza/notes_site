












# Wednesday, August 18: Sheaves

::: {.remark}
We'll be covering Hartshorne, chapter 2:

-   Sections 1-5: Fundamental, sheaves, schemes, morphisms, constant sheaves.

-   Sections 6-9: Divisors, linear systems of differentials, nonsingular varieties.

Note that most of the important material of this book is contained in the exercises!
:::

::: {.remark}
Recall that a **topological space** \( X \) is collection of *open* sets \( {\mathcal{U}}= \left\{{U_i \subseteq X}\right\} \) which is closed under arbitrary unions and finite intersections, where \( X, \emptyset\in {\mathcal{U}} \).
:::

::: {.definition title="Presheaf"}
A **presheaf of abelian groups** \( {\mathcal{F}} \) on \( X \) a topological space is an assignment to every open \( U \subseteq X \) an abelian group \( {\mathcal{F}}(U) \) and restriction morphisms \( \rho_{UV}: {\mathcal{F}}(U) \to {\mathcal{F}}(V) \) for every inclusion \( V \subseteq U \) satisfying

-   \( {\mathcal{F}}(\emptyset) = 0 \)
-   \( \rho_{UU}: {\mathcal{F}}(U) \to {\mathcal{F}}(U) \) is \( \operatorname{id}_{{\mathcal{F}}(U)} \).
-   If \( W \subseteq V \subseteq U \) are opens, then
    \[
    \rho_{UW} = \rho_{VW} \circ \rho_{UV}
    .\]

We'll write \( {\mathcal{F}}(U) \) to be the **sections of \( {\mathcal{F}} \) over \( U \)**, also notated \( {{\Gamma}\qty{U; {\mathcal{F}}} } \) and write the restrictions as \( { \left.{{s}} \right|_{{v}} } = \rho_{UV}(s) \) for \( V \subseteq U \).
:::

::: {.example title="Presheaf of continuous functions"}
Let \( X \coloneqq{\mathbb{R}} \) with the standard topology and take \( {\mathcal{F}}= C^0({-}; {\mathbb{R}}) \) (continuous real-valued functions) as the associated presheaf. So for \( U \subset {\mathbb{R}} \) open, the sections are \( {\mathcal{F}}(U) \coloneqq\left\{{f: U\to {\mathbb{R}}\text{ continuous}}\right\} \).

For restriction maps, given \( U \subseteq V \) take the actual restriction of functions \( C^0(V; {\mathbb{R}}) \to C^0(U; {\mathbb{R}}) \). One needs to check the 3 conditions, but we can declare \( C^0(\emptyset; {\mathbb{R}}) = \left\{{0}\right\} = 0 \), and the others follow right away.
:::

::: {.example title="Constant presheaves"}
The **constant presheaf** associated to \( A\in {\mathsf{Ab}} \) on \( X\in {\mathsf{Top}} \) is denote \( F = \underline{A} \), where
\[
\underline{A}(U) \coloneqq
\begin{cases}
A &  U \neq \emptyset
\\
0 & U = \emptyset.
\end{cases}
\]
and
\[
\rho_{UV} \coloneqq
\begin{cases}
\operatorname{id}_A & V \neq \emptyset 
\\
0 & V=\emptyset .
\end{cases}
.\]
:::

::: {.warnings}
The constant sheaf is not the sheaf of constant functions! Instead these are *locally* constant functions.
:::

::: {.remark}
Let \( {\mathsf{Open}}_{/ {X}}  \) denote the category of open sets of \( X \), defined

-   \( {\operatorname{Ob}}({\mathsf{Open}}_{/ {X}} ) \coloneqq\left\{{U_i}\right\} \), so each object is an open set.
-   \( {\mathsf{Open}}_{/ {X}} (U, V) \) is empty when \( V\not\subset U \) and is the singleton inclusion \( \left\{{\iota: U\hookrightarrow V}\right\} \) otherwise.
:::

::: {.example title="Of $\\Open\\slice{X}$ "}
Take \( X\coloneqq\left\{{p, q}\right\} \) with the discrete topology to obtain a category with 4 objects:

```{=tex}
\begin{tikzcd}
    & {\left\{{p, q}\right\}} \\
    {\left\{{p}\right\}} && {\left\{{q}\right\}} \\
    & \emptyset
    \arrow[from=3-2, to=1-2]
    \arrow[from=3-2, to=2-1]
    \arrow[from=3-2, to=2-3]
    \arrow[from=2-1, to=1-2]
    \arrow[from=2-3, to=1-2]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMSwwLCJcXHRze3AsIHF9Il0sWzAsMSwiXFx0c3twfSJdLFsyLDEsIlxcdHN7cX0iXSxbMSwyLCJcXGVtcHR5c2V0Il0sWzMsMF0sWzMsMV0sWzMsMl0sWzEsMF0sWzIsMF1d)

Similarly, the indiscrete topology yields \( \emptyset \to \left\{{p, q}\right\} \), a category with two objects.
:::

::: {.remark}
Then a presheaf is a contravariant functor \( {\mathcal{F}}: {\mathsf{Open}}_{/ {X}}  \to {\mathsf{Ab}} \) which sends the cofinal/initial object \( \left\{{\emptyset}\right\} \in {\mathsf{Open}}_{/ {X}}  \) to the final/terminal object \( 0 \in {\mathsf{Ab}} \). More generally, we can replace \( {\mathsf{Ab}} \) with any category \( \mathsf{C} \) admitting a final object:

-   \( \mathsf{C} \coloneqq\mathsf{CRing} \) the category of commutative rings, which we'll use to define schemes.
-   \( \mathsf{C} = {\mathsf{Grp}} \), the full category of (potentially nonabelian) groups.
-   \( \mathsf{C} \coloneqq{\mathsf{Top}} \), arbitrary topological spaces.
:::

::: {.example title="of presheaves"}
Let \( X\in {\mathsf{Var}}_{/ {k}}  \) a variety over \( k\in \mathsf{Field} \) equipped with the Zariski topology, so the opens are complements of vanishing loci. Given \( U \subseteq X \), define a presheaf of regular functions \( {\mathcal{F}}\coloneqq{\mathcal{O}} \) where

-   \( {\mathcal{O}}(U) \) are the regular functions \( f:U\to k \), i.e. functions on \( U \) which are locally expressible as a ratio \( f = g/h \) with \( g, h\in k[x_1, \cdots, x_{n}] \).

-   Restrictions are restrictions of functions.

Taking \( X = {\mathbb{A}}^1_{/ {k}}  \), the Zariski topology is the cofinite topology, so every open \( U \) is the complement of a finite set and \( U = \left\{{t_1, \cdots, t_m}\right\}^c \). Then \( {\mathcal{O}}(U) = \left\{{\phi: U\to k}\right\} \) which is locally a fraction, and it turns out that these are all globally fractions and thus
\[
{\mathcal{O}}(U) 
= \left\{{ {f \over g} {~\mathrel{\Big|}~}f,g\in k[t], g(t) \neq 0 \,\,\, \forall t\in U}\right\}
= \left\{{{ f \over  \prod (t-t_i)^{m_i}} {~\mathrel{\Big|}~}f\in k[t] }\right\}
= k[t] \left[ { \scriptstyle { {S}^{-1}}  } \right]
,\]
where \( S = \left\langle{\prod t-t_i}\right\rangle \) is the multiplicative set generated by the factors.

This gives an abelian group since we can take least common denominators, and we have restrictions.
:::

::: {.warnings}
Note that there are two similar notations for localization which mean different things! For a multiplicative set \( S \), the ring \( R \left[ { \scriptstyle { {S}^{-1}}  } \right] \) literally means localizing at that set. For \( {\mathfrak{p}}\in \operatorname{Spec}R \), the ring \( R \left[ { \scriptstyle { {{\mathfrak{p}}}^{-1}}  } \right] \) means localizing at the multiplicative set \( S \coloneqq{\mathfrak{p}}^c \).
:::

# Friday, August 20

::: {.definition title="Sheaf"}
Recall the definition of a presheaf, and the main 3 properties:

1.  \( F( \emptyset) = 0 \),

2.  \( \rho_{UU} = \operatorname{id}_{{\mathcal{F}}(U)} \)

3.  For all \( W \subseteq V \subseteq U \), a cocycle condition:
    \[
    \rho_{UW} = \rho_{VW} \circ \rho_{UV}
    .\]
    Write \( s_i \in {\mathcal{F}}(U_i) \) to be a section.

    A presheaf is a **sheaf** if it additionally satisfies

4.  When restrictions are compatible on overlaps, so
    \[
    { \left.{{s_i}} \right|_{{U_i \cap U_j}} } = { \left.{{s_j}} \right|_{{U_i \cap U_j}} }
    ,\]
    there exists a uniquely glued section \( {\mathcal{F}}(\cup U_i) \) such that \( { \left.{{s}} \right|_{{U_i}} } = s_i \) for all \( i \).
:::

::: {.example title="?"}
Take \( C^0({-}; {\mathbb{R}}) \) the sheaf of continuous real-valued functions on a topological space. For \( f_i: U_i \to {\mathbb{R}} \) agreeing on overlaps, there is a continuous function \( f: \cup U_i\to {\mathbb{R}} \) restricting to \( f_i \) on each \( U_i \) by just defining \( f(x) = f_i(x) \) for \( x\in U_i \), which is well-defined by agreement of the \( f_i \) on overlaps.
:::

::: {.example title="?"}
Let \( X \) be a topological space and \( A\in \mathsf{CRing} \), then take the constant sheaf \( \underline{A} \) which maps to \( A \) iff \( U\neq \emptyset \) and 0 otherwise. This is not a sheaf, taking \( X = {\mathbb{R}} \) and \( A = {\mathbb{Z}}/2 \). Let \( U_1 = (0, 1) \) and \( U_2 = (2, 3) \) and take \( s_1 = 0 \) on \( U_1 \) and \( s_2 = 1 \) on \( U_2 \). Using that \( U_1 \cap U_2 = \emptyset \), so they trivially agree on overlaps, but there is no constant function on \( U_1 \cup U_2 \) restricting to 1 on \( U_2 \) and 0 on \( U_1 \)
:::

::: {.definition title="Locally constant sheaves"}
The **(locally) constant sheaf** \( \underline{A} \) on any \( X\in {\mathsf{Top}} \) is defined as
\[
\underline{A}(U) \coloneqq\left\{{ f: U\to A {~\mathrel{\Big|}~}f \text{ is locally constant} }\right\}
.\]
:::

::: {.remark}
As a general principle, this is a sheaf since this property can be verified locally.
:::

::: {.example title="?"}
Let \( C^0_{\mathrm{bd}} \) be the presheaf of bounded continuous functions on \( S^1 \). This is not a sheaf, but one needs to go to infinitely many sets: take the image of \( [{1\over n}, {1\over n+1}] \) with (say) \( f_n(x) = n \) for each \( n \). Then each \( f_n \) is bounded (it's just constant), but the full collection is unbounded, so these can not glue to a bounded function.
:::

::: {.definition title="Stalks"}
Let \( {\mathcal{F}}\in  \underset{ \mathsf{pre} } {\mathsf{Sh} }(X) \) and \( p\in X \), then the **stalk** of \( {\mathcal{F}} \) at \( p \) is defined as
\[
{\mathcal{F}}_p(U) \coloneqq\lim_{U\ni p} \coloneqq\left\{{(s, U) {~\mathrel{\Big|}~}U\ni p \text{ open}, \, s\in {\mathcal{F}}(U)}\right\}/\sim
,\]
where \( (s, U) \sim (t ,V) \) iff there exists a \( W \ni p \) with \( W \subset U \cap V \) with \( { \left.{{s}} \right|_{{W}} } = { \left.{{t}} \right|_{{W}} } \). An equivalence class \( [(s, U)] \in {\mathcal{F}}_p \) is referred to as a **germ**.
:::

::: {.example title="?"}
Let \( C^\omega({-}; {\mathbb{R}}) \) be the sheaf of analytic functions, i.e. those locally expressible as convergent power series. This is a sheaf because this condition can be checked locally. What is the stalk \( C_0^\omega \) at zero? An example of a function in this germ is \( [(f(x) = {1\over 1-x}, (-1, 1)) \). A first guess is \( {\mathbb{R}} { \left[ {t} \right] }  \), but the claim is that this won't work.

Note that there is an injective map \( C_0^\omega \hookrightarrow{\mathbb{R}} { \left[ {t} \right] }  \) because \( f, g \) have analytic power series expansions at zero, and if these expressions are equal then \( { \left.{{f}} \right|_{{I}} } = { \left.{{g}} \right|_{{I}} } \) for some \( I \) containing zero. This map won't be surjective because there are power series with a non-positive radius of convergence, for example taking \( f(t) \coloneqq\sum_{k=0}^\infty {kt}^k \) which only converges at \( t=0 \). So the answer is that \( C_0^\omega \leq {\mathbb{R}} { \left[ {t} \right] }  \) is the subring of power series with positive radius of convergence.
:::

::: {.definition title="Local ring of the structure sheaf, $\\OO_p$"}
Let \( X \in {\mathsf{Alg}}{\mathsf{Var}} \) and \( {\mathcal{O}} \) its sheaf of regular functions. For \( p\in X \), the stalk \( {\mathcal{O}}_p \) is the **local ring** of \( X \) at \( p \).
:::

::: {.example title="?"}
For \( X \coloneqq{\mathbb{A}}^1_{/ {k}}  \) for \( k=\mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \), the opens are cofinite sets and \( {\mathcal{O}}(U) = \left\{{f/g {~\mathrel{\Big|}~}f, g\in k[t]}\right\} \). Consider the stalk \( {\mathcal{O}}_p \). Applying the definition, we have
\[
{\mathcal{O}}_p \coloneqq\left\{{(f/g, U) {~\mathrel{\Big|}~}p\in U,\, g\neq 0 \text { on } U}\right\} / \sim
.\]
Given any \( g\in k[t] \) with \( g(p) \neq 0 \), there is a Zariski open set \( U = V(g)^c = D_g \), the distinguished open associated to \( g \), where \( g\neq 0 \) on \( U \) by definition. Thus \( p\in U \), and so any \( f/g\in \operatorname{ff}{k[t]} \) with \( p\neq 0 \) defines an element \( (f/g, D_g) \in {\mathcal{O}}_p \). Concretely:
\[
{ \left.{{f/g}} \right|_{{W}} } = { \left.{{f/g}} \right|_{{W'}} } \implies f/g = f'/g' \in \operatorname{ff}{k[t]} = k(t)
,\]
and \( fg' = f'g \) on the cofinite set \( W \), making them equal as polynomials. We can thus write
\[
{\mathcal{O}}_p = \left\{{f/g \in k(t) {~\mathrel{\Big|}~}g(p) \neq 0}\right\} = k[t] \left[ { \scriptstyle { {\left\langle{t-p}\right\rangle}^{-1}}  } \right], \quad \left\langle{t-p}\right\rangle\in \operatorname{mSpec}k[t]
,\]
recalling that \( k[t] \left[ { \scriptstyle { {{\mathfrak{p}}}^{-1}}  } \right] = \left\{{f/g {~\mathrel{\Big|}~}g\not\in {\mathfrak{p}}}\right\} \).

Note that for \( X\in {\mathsf{Aff}}{\mathsf{Var}} \), so \( X = V(f_i) = V(I) \) for \( I \) reduced, we have the coordinate ring \( k[X] = k[x_1, \cdots, x_{n}]/I = R \), then \( {\mathcal{O}}_p = R \left[ { \scriptstyle { {{\mathfrak{m}}_p}^{-1}}  } \right] \) where \( {\mathfrak{m}}_p \coloneqq\left\{{f\in R {~\mathrel{\Big|}~}f(p) = 0}\right\} \).
:::

::: {.warnings}
This doesn't quite hold for non-algebraically closed fields. Take \( f(x) x^p-x \in {\mathbb{F}}_p[x] \), then \( f(x) \equiv 0 \) since every element in \( {\mathbb{F}}_p \) is a root.
:::

::: {.remark}
Next time: morphisms of sheaves/presheaves, and isomorphisms can be checked on stalks for sheaves.
:::

# Monday, August 23

::: {.remark}
Recall that the **stalk** of a presheaf \( {\mathcal{F}} \) at \( p \) is defined as
\[
{\mathcal{F}}_p \coloneqq\colim_{U\ni p} {\mathcal{F}}(U) = \left\{{ (s, U) {~\mathrel{\Big|}~}s\in {\mathcal{F}}(U) }\right\}_{/ {\sim}} 
.\]
:::

::: {.definition title="Morphisms of presheaves"}
Let \( {\mathcal{F}}, {\mathcal{G}}\in  \underset{ \mathsf{pre} } {\mathsf{Sh} }(X) \), then a **morphism** \( \phi: {\mathcal{F}}\to {\mathcal{G}} \) is a collection \( \left\{{\phi(U): {\mathcal{F}}(U) \to {\mathcal{G}}(U)}\right\} \) of morphisms of abelian groups for all \( U\in {\mathsf{Open}}(X) \) such that for all \( V \subset U \), the following diagram commutes:

```{=tex}
\begin{tikzcd}
    {{\mathcal{F}}(U)} && {{\mathcal{G}}(U)} \\
    \\
    {{\mathcal{F}}(V)} && {{\mathcal{G}}(V)}
    \arrow["{\phi(U)}", from=1-1, to=1-3]
    \arrow["{\phi(V)}", from=3-1, to=3-3]
    \arrow["{\operatorname{res}(UV)}"{description}, from=1-1, to=3-1]
    \arrow["{\operatorname{res}'(UV)}"{description}, from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXG1jZihVKSJdLFswLDIsIlxcbWNmKFYpIl0sWzIsMCwiXFxtY2coVSkiXSxbMiwyLCJcXG1jZyhWKSJdLFswLDIsIlxccGhpKFUpIl0sWzEsMywiXFxwaGkoVikiXSxbMCwxLCJcXHJlcyhVVikiLDFdLFsyLDMsIlxccmVzJyhVVikiLDFdXQ==)

An **isomorphism** is a morphism with a two-sided inverse.
:::

::: {.remark}
Note that if we regard a sheaf as a contravariant functor, a morphism is then just a natural transformation.
:::

::: {.remark}
A morphism \( \phi: {\mathcal{F}}\to {\mathcal{G}} \) defines a morphisms on stalks \( \phi_p: {\mathcal{F}}_p \to {\mathcal{G}}_p \).
:::

::: {.example title="of a nontrivial morphism of sheaves"}
Let \( X \coloneqq{\mathbb{C}}^{\times} \) with the classical topology, making it into a real manifold, and take \( C^0({-}; {\mathbb{C}}) \in {\mathsf{Sh}}(X, {\mathsf{Ab}}) \) be the sheaf of continuous functions and let \( C^0({-}; {\mathbb{C}})^{\times} \) the sheaf of of nowhere zero continuous continuous functions. Note that this is a sheaf of abelian groups since the operations are defined pointwise. There is then a morphism
\[
\exp({-}): C^0({-}; {\mathbb{C}}) &\to C^0({-}; {\mathbb{C}})^{\times}\\
f &\mapsto e^f && \text{ on open sets } U\subseteq X
.\]

Since exponentiating and restricting are operations done pointwise, the required square commutes, yielding a morphism of sheaves.
:::

::: {.definition title="(co)kernel and image sheaves"}
Let \( \phi: {\mathcal{F}}\to {\mathcal{G}} \) be morphisms of presheaves, then define the presheaves
\[
\ker(\phi)(U) &\coloneqq\ker(\phi(U)) \\
\operatorname{coker}^{{\mathsf{pre}}}(\phi)(U) &\coloneqq{\mathcal{G}}(U) / \phi({\mathcal{F}}(U))\\ 
\operatorname{im}(\phi)(U) &\coloneqq\operatorname{im}(\phi(U)) \\
.\]
:::

::: {.warnings}
If \( {\mathcal{F}}, {\mathcal{G}}\in {\mathsf{Sh}}(X) \), then for a morphism \( \phi: {\mathcal{F}}\to {\mathcal{G}} \), the image and cokernel presheaves need not be sheaves!
:::

::: {.example title="?"}
Consider \( \ker \exp \) where \( \exp: C^0({-}; {\mathbb{C}})\to C^0({-}; {\mathbb{C}})^{\times}\in {\mathsf{Sh}}({\mathbb{C}}^{\times}) \). One can check that \( \ker \exp = 2\pi i \underline{{\mathbb{Z}}}(U) \), and so the kernel is actually a sheaf.

We also have \( \operatorname{coker}^{{\mathsf{pre}}} \exp(U) \coloneqq C^0(U; {\mathbb{C}})/ \exp(C^0(U;{\mathbb{C}})^{\times}) \). On opens, \( \operatorname{coker}^{{\mathsf{pre}}} \exp(U) = \left\{{1}\right\} \iff \) every nonvanishing continuous function \( g \) on \( U \) has a continuous logarithm, i.e. \( g = e^f \) for some \( f \). Examples of opens with this property include any contractible (or even just simply connected) open set in \( {\mathbb{C}}^{\times} \). Consider \( U\coloneqq{\mathbb{C}}^{\times} \) and \( z\in C^0({\mathbb{C}}^{\times}; {\mathbb{C}})^{\times} \), which is a nonvanishing function. Then the equivalence class \( [z] \in \operatorname{coker}^{{\mathsf{pre}}} \exp({\mathbb{C}}^{\times}) \) is nontrivial, since \( z\neq e^f \) for any \( f\in C^0({\mathbb{C}}^{\times}; {\mathbb{C}}) \), since any attempted definition of \( \log(z) \) will have monodromy.

on the other hand we can cover \( {\mathbb{C}}^{\times} \) by contractible opens \( \left\{{U_i}\right\}_{i\in I} \) where \( { \left.{{[z]}} \right|_{{U_i}} } = 1 \in \operatorname{coker}^{{\mathsf{pre}}} \exp (U_i) \) and similarly \( { \left.{{1}} \right|_{{\operatorname{id}}} } = 1 \in \operatorname{coker}^{{\mathsf{pre}}} \exp(U_i) \), showing that the cokernel fails the unique gluing axiom and is not a sheaf.
:::

::: {.definition title="Sheafification"}
Given any \( {\mathcal{F}}\in  \underset{ \mathsf{pre} } {\mathsf{Sh} }(X) \) there exists an \( {\mathcal{F}}^+ \in {\mathsf{Sh}}(X) \) and a morphism of presheaves \( \theta: {\mathcal{F}}\to {\mathcal{F}}^+ \) such that for any \( {\mathcal{G}}\in {\mathsf{Sh}}(X) \) with a morphism \( \phi: {\mathcal{F}}\to {\mathcal{G}} \) there exists a unique \( \psi: {\mathcal{F}}^+ \to {\mathcal{G}} \) making the following diagram commute:

```{=tex}
\begin{tikzcd}
    {\mathcal{F}}&& {\mathcal{G}}\\
    \\
    && {{\mathcal{F}}^+}
    \arrow["\theta"', from=1-1, to=3-3]
    \arrow["\phi", from=1-1, to=1-3]
    \arrow["{\exists! \psi}"', from=3-3, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJcXG1jZiJdLFsyLDIsIlxcbWNmXisiXSxbMiwwLCJcXG1jZyJdLFswLDEsIlxcdGhldGEiLDJdLFswLDIsIlxccGhpIl0sWzEsMiwiXFxleGlzdHMhIFxccHNpIiwyXV0=)

The sheaf \( {\mathcal{F}}^+ \in {\mathsf{Sh}}(X) \) is called the **sheafification** of \( {\mathcal{F}} \). This is an example of an adjunction of functors:
\[
\mathop{\mathrm{Hom}}_{ \underset{ \mathsf{pre} } {\mathsf{Sh} }(X)}({\mathcal{F}}, {\mathcal{G}}^{\mathsf{pre}}) \cong \mathop{\mathrm{Hom}}_{{\mathsf{Sh}}(X)}({\mathcal{F}}^+, {\mathcal{G}})
,\]
where we use the forgetful functor \( {\mathcal{G}}\to {\mathcal{G}}^{\mathsf{pre}} \). This yields an adjoint pair
\[
\adjunction{a}{b}{c}{d}
.\]
:::

::: {.proof title="of existence of sheafification"}
We construct it directly as \( {\mathcal{F}}^+ \coloneqq\left\{{s:U \to {\textstyle\coprod}_{p\in U} {\mathcal{F}}_p }\right\} \) such that

1.  \( s(p) \in {\mathcal{F}}_p \),
2.  The germs are compatible locally, so for all \( p\in U \) there is a \( V\supseteq p \) such that for some \( t\in {\mathcal{F}}(V) \), \( s(p) = t_p \) for all \( p \) in \( V \).

::: {.slogan}
Collections of germs that are locally compatible.
:::

So about any point, there should be an actual function specializing to all germs in an open set.
:::

::: {.remark}
The point will be that \( \operatorname{coker}\exp \) will be zero as a sheaf, since it'll be zero on a sufficiently small set.
:::

# Wednesday, August 25

::: {.remark}
Recall the definition of sheafification: let \( {\mathcal{F}}\in  \underset{ \mathsf{pre} } {\mathsf{Sh} }(X; {\mathsf{Ab}}{\mathsf{Grp}}) \). Construct a sheaf \( {\mathcal{F}}^+\in {\mathsf{Sh}}(X, {\mathsf{Ab}}{\mathsf{Grp}}) \) and a morphism \( \theta: {\mathcal{F}}\to {\mathcal{F}}^+ \) of presheaves satisfying the appropriate universal property:

```{=tex}
\begin{tikzcd}
    {{\mathcal{F}}^+} \\
    \\
    {\mathcal{F}}&& {\mathcal{G}}\\
    \\
    {}
    \arrow["\psi", from=3-1, to=3-3]
    \arrow["\theta", from=3-1, to=1-1]
    \arrow["{\exists \tilde \psi}", dashed, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwyLCJcXG1jZiJdLFswLDRdLFswLDAsIlxcbWNmXisiXSxbMiwyLCJcXG1jZyJdLFswLDMsIlxccHNpIl0sWzAsMiwiXFx0aGV0YSJdLFsyLDMsIlxcZXhpc3RzIFxcdGlsZGUgXFxwc2kiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=)

So any presheaf morphism to a sheaf factors through the sheafification uniquely (via \( \theta \)). Note that this is a instance of a general free/forgetful adjunction.

We can construct it as
\[
{\mathcal{F}}^+(U) \coloneqq\left\{{s:U\to {\textstyle\coprod}_{p\in U} {\mathcal{F}}_p,\quad s(p) \in {\mathcal{F}}_p, \cdots}\right\}
.\]
where the addition condition is that for all \( q\in U \) there exists a \( V\nu q \) and \( t\in {\mathcal{F}}(V) \) such that \( t_p = s(p) \) for all \( p\in V \). Note that \( \theta \) is defined by \( \theta(U)(s) = \left\{{s:p\to s_p}\right\} \), the function assigning points to germs with respect to the section \( s \). Idea: this is like replacing an analytic function on an interval with the function sending a point \( p \) to its power series expansion at \( p \).
:::

::: {.example title="?"}
Recall \( \exp: C^0 \to (C^0)^{\times} \) on \( {\mathbb{C}}^{\times} \), then \( \operatorname{coker}^{\mathsf{pre}}(\exp)(U) = \left\{{1}\right\} \) on contractible \( U \), using that one can choose a logarithm on such a set. However \( \operatorname{coker}^{\mathsf{pre}}(\exp)({\mathbb{C}}^{\times}) \neq \left\{{1}\right\} \) since \( [z]\in (C^0)^{\times}({\mathbb{C}}^{\times})/\exp(C^0({\mathbb{C}}^{\times})) \).
:::

::: {.remark}
Letting \( \phi: {\mathcal{F}}\to {\mathcal{G}} \) be a morphisms of sheaves, then we defined \( \operatorname{coker}(\phi) \coloneqq(\operatorname{coker}^{\mathsf{pre}}(\phi))^+ \) and \( \operatorname{im}(\phi) \coloneqq(\operatorname{im}^{\mathsf{pre}}(\phi))^+ \). Then
\[
\operatorname{coker}^{\mathsf{pre}}(\exp) &\to \operatorname{coker}(\exp) \\
s\in {\mathcal{F}}(U) &\mapsto s(p) = s_p
.\]
The claim is that \( [z]_p = 1 \) for all \( p\in {\mathbb{C}}^{\times} \), since we can replace \( [([z], {\mathbb{C}}^{\times})] \) with \( ([z]_U, U) \) for \( U \) contractible.
:::

::: {.example title="?"}
A useful example to think about: \( X = \left\{{p, q}\right\} \) with

-   \( {\mathcal{F}}(p) = A \)
-   \( {\mathcal{F}}(q) = B \)
-   \( {\mathcal{F}}(X) = 0 \)

Then local sections don't glue to a global section, so this isn't a sheaf, but it is a presheaf. The sheafification satisfies \( {\mathcal{F}}^+(X) = A\times B \).
:::

## Subsheaves

::: {.definition title="Subsheaves, injectivity, surjectivity"}
\( {\mathcal{F}}' \) is a **subsheaf** of \( {\mathcal{F}} \) if

-   \( {\mathcal{F}}'(U) \leq {\mathcal{F}}(U) \) for all \( U \),
-   \( \mathop{\mathrm{Res}}'(U, V) = { \left.{{ \mathop{\mathrm{Res}}(U, V) }} \right|_{{{\mathcal{F}}'(U)}} } \).

\( \phi: {\mathcal{F}}\to {\mathcal{G}} \) is **injective** iff \( \ker \phi = 0 \), **surjective** if \( \operatorname{im}(\phi) = {\mathcal{G}} \) or \( \operatorname{coker}\phi = 0 \).
:::

::: {.exercise title="?"}
Check that \( \ker \phi \) already satisfies the sheaf property.
:::

::: {.definition title="Exact sequences of sheaves"}
Let \( \cdots \to {\mathcal{F}}^{i-1} \xrightarrow{\phi^{i-1}} {\mathcal{F}}^i \xrightarrow{\phi^i} {\mathcal{F}}^{i+1}\to \cdots \) be a sequence of morphisms in \( {\mathsf{Sh}}(X) \), this is **exact** iff \( \ker \phi^i = \operatorname{im}\phi^{i-1} \).
:::

::: {.lemma title="?"}
\( \ker \phi \) is a sheaf.
:::

::: {.proof title="?"}
By definition, \( \ker(\phi)(U) \coloneqq\ker \qty{ \phi(U): {\mathcal{F}}(U) \to {\mathcal{G}}(U) } \), satisfying part (a) in the definition of presheaves. We can define restrictions \( { \left.{{\mathop{\mathrm{Res}}(U, V)}} \right|_{{\ker(\phi)(U)}} } \subseteq \ker(\phi)(V) \). Use the commutative diagram for the morphism \( \phi: {\mathcal{F}}\to {\mathcal{G}} \).

Now checking gluing: Let \( s_i \in \ker(\phi)(U_i) \) such that \( \mathop{\mathrm{Res}}(s_i, U_i \cap U_j) = \mathop{\mathrm{Res}}(s_j, U_i \cap U_j) \) for all \( i, j \). This holds by viewing \( s_i \in {\mathcal{F}}(U_i) \), so \( \exists ! s\in {\mathcal{F}}(\displaystyle\bigcup_i U_i) \) such that \( \mathop{\mathrm{Res}}(s, U_i) = s_i \). We want to show \( s\in \ker(\phi)\qty{\displaystyle\bigcup U_i} \), so consider
\[
t\coloneqq\phi\qty{ \displaystyle\bigcup_i U_i}(s) \in {\mathcal{G}}\qty{\displaystyle\bigcup U_i}
,\]
which is zero. Now
\[
\mathop{\mathrm{Res}}(t, U_i) = \phi(U_i)(\mathop{\mathrm{Res}}(s, U_i)) = \phi(U_i)(s_i) = 0
\]
by assumption, using the commutative diagram. By unique gluing for \( {\mathcal{G}} \), we have \( t=0 \), since \( 0 \) is also a section restricting to \( 0 \) everywhere.
:::

::: {.definition title="Quotients"}
For \( {\mathcal{F}}' \leq {\mathcal{F}} \) a subsheaf, define the **quotient** \( {\mathcal{F}}/{\mathcal{F}}' \coloneqq(({\mathcal{F}}/{\mathcal{F}}')^{\mathsf{pre}})^+ \) where
\[
({\mathcal{F}}/{\mathcal{F}}')^{\mathsf{pre}}(U) \coloneqq{\mathcal{F}}(U)/ {\mathcal{F}}'(U)
.\]
:::

# Friday, August 27

::: {.theorem title="Sheaf isomorphism iff isomorphism on stalks"}
Let \( \phi:{\mathcal{F}}\to{\mathcal{G}} \) be a morphism in \( {\mathsf{Sh}}(X) \), then \( \phi \) is an isomorphism iff \( \phi_p: {\mathcal{F}}_p \to{\mathcal{G}}_p \) is an isomorphism for all \( p\in X \).
:::

::: {.proof title="$\\implies$"}
Suppose \( \phi \) is an isomorphism, so there exists a \( \psi: {\mathcal{G}}\to {\mathcal{F}} \) which is a two-sided inverse for \( \phi \). Then \( \psi_p \) is a two-sided inverse to \( \phi_p \), making it an isomorphism. This follows directly from the formula:
\[
\phi_p: {\mathcal{F}}_p &\to {\mathcal{G}}_p \\
(s, U) & \mapsto (\phi(U)(s), U)
.\]
:::

::: {.proof title="$\\impliedby$"}
It suffices to show \( \phi(U): {\mathcal{F}}(U) \to {\mathcal{G}}(U) \) is an isomorphism for all \( U \). This is because we could define \( \psi(U):{\mathcal{G}}(U) \to {\mathcal{F}}(U) \) and set \( \phi^{-1}(U) \coloneqq\psi(U) \), then reversing the arrows in the diagram for a sheaf morphism again yields a commutative diagram.

::: {.claim}
\( \phi(U) \) is injective.
:::

For \( s\in {\mathcal{F}}(U) \), we want to show \( \phi(U)(s) = 0 \) implies \( s=0 \). Consider the germs \( (s, U) \in {\mathcal{F}}_p \) for \( p\in U \), we have \( \phi_p(s, U) = (0, U) = 0\in {\mathcal{F}}_p \). So \( S_p = 0 \) for all \( p\in U \). Since we have a germ, there exists \( V_p \ni p \) open such that \( { \left.{{s}} \right|_{{V_p}} } = 0 \). Noting that \( \left\{{V_p {~\mathrel{\Big|}~}p\in U}\right\}\rightrightarrows U \), by unique gluing we get an \( s \) where \( { \left.{{s}} \right|_{{V_p}} } = 0 \) for all \( V_p \), so \( s\equiv 0 \) on \( U \).

::: {.claim}
\( \phi(U) \) is surjective.
:::

Let \( t\in {\mathcal{G}}(U) \), and consider germs \( t_p\in {\mathcal{G}}_p \). There exists a unique \( s_p\in {\mathcal{F}}_p \) with \( \phi_p(s_p) = t_p \), since \( \phi_p \) is an isomorphism of stalks by assumption. Use that \( s_p \) is a germ to get an equivalence class \( (s_p, V) \) where \( V \subseteq U \). We have \( \phi(V)(s(p), V) \sim (t, U) \), noting that \( s \) depends on \( p \). Having equivalent germs means there exists a \( W(p) \subseteq V \) with \( p\in W \) with \( \phi(W(p)) \qty{{ \left.{{s(p)}} \right|_{{W}} }} = { \left.{{t}} \right|_{{W(p)}} } \). We want to glue these \( \left\{{ { \left.{{s(p)}} \right|_{{W(p)}} } {~\mathrel{\Big|}~}p\in U }\right\} \) together. It suffices to show they agree on intersections. Taking \( p, q\in U \), both \( { \left.{{s(p)}} \right|_{{W(p) \cap W(q)}} } \) and \( { \left.{{s(q)}} \right|_{{W(p) \cap W(q)}} } \) map to \( { \left.{{t}} \right|_{{W(p) \cap W(q)}} } \) under \( \phi(W(p) \cap W(q) ) \). Injectivity will force these to be equal, so \( \exists ! s \in {\mathcal{F}}(U) \) with \( { \left.{{s}} \right|_{{W(p)}} } = s(p) \). We want to now show that \( \phi(U)(s) = t \). Using commutativity of the square, we have \( \phi(U)(s) { \left.{{}} \right|_{{W(p)}} } = \phi(W(p)) \qty{{ \left.{{s}} \right|_{{W(p)}} } } \). This equals \( \phi(W(p))(s(p)) = { \left.{{t}} \right|_{{W(p)}} } \). Therefore \( \phi(U)(s) \) and \( t \) restrict to sections \( \left\{{w(p) {~\mathrel{\Big|}~}p\in U}\right\} \). Using unique gluing for \( {\mathcal{G}} \) we get \( \phi(U)(s) = t \).
:::

::: {.remark}
Note: we only needed to check overlaps because of exactness of the following sequence:
\[
0 \to{\mathcal{F}}(U) \to \prod_{i\in I} {\mathcal{F}}(U_i) \to \prod_{i<j} {\mathcal{F}}(U_{ij}) \to \cdots
.\]
:::

::: {.definition title="?"}
Let \( f\in {\mathsf{Top}}(X, Y) \), let \( {\mathcal{F}}\in {\mathsf{Sh}}(X) \) and define the **pushforward sheaf** \( f_* {\mathcal{F}}\in {\mathsf{Sh}}(Y) \) by
\[
f_*{\mathcal{F}}(V) \coloneqq{\mathcal{F}}( f^{-1}(V))
.\]

The **inverse image** sheaf is define as
\[
(f^{-1}{\mathcal{F}})(U) = \lim_{V\ni f(U) \text{ open}} F(V)
.\]
:::

::: {.remark}
The inverse image sheaf generalizes stalks, recovering \( {\mathcal{F}}_p \) when \( f(U) = p \). Note that \( f(U) \) need not be open, unless \( f \) is an open map. In this case \( f^{-1}{\mathcal{F}}(f(U)) \).
:::

::: {.warnings}
\( f^* \) is not the pullback!
:::

::: {.exercise title="?"}
Show that \( f_* {\mathcal{F}} \) makes sense precisely because \( f \) is continuous. Check that \( f_* {\mathcal{F}} \) satisfies the sheaf axioms. Use that the set of opens of the form \( f^{-1}(V) \) are e.g. closed under intersections, and thus inherit all of the sheaf axioms from \( {\mathcal{F}} \)\>
:::

# Monday, August 30

::: {.remark}
Let \( R \) be a commutative unital ring in which \( 0\neq 1 \) unless \( R=0 \). The goal is to define a space \( X \) such that \( R \) is the ring of functions on \( X \), imitating the correspondence between \( X \) a manifold and \( C^0(X; {\mathbb{R}}) \). Recall that an ideal \( {\mathfrak{p}}\in \operatorname{Id}(R) \) is **prime** iff \( {\mathfrak{p}}\subset A \) is a proper subset and \( fg\in {\mathfrak{p}}\implies f\in {\mathfrak{p}} \) or \( g\in {\mathfrak{p}} \).
:::

::: {.definition title="Spectrum of a ring"}
For \( A \) a ring, \( \operatorname{Spec}(A) \) is the set of prime ideals. Topologize this by setting the closed sets to be of the form \( V(I) = \left\{{ {\mathfrak{p}}\in \operatorname{Spec}(A) {~\mathrel{\Big|}~}{\mathfrak{p}}\supseteq I }\right\} \).
:::

::: {.remark}
Ideals are "contagious" under multiplication, so prime ideals have reverse contagion! It remains to prove that \( \operatorname{Spec}(A) \) forms a topological space.
:::

::: {.example title="?"}
For \( A \) a field, \( \operatorname{Spec}(A) = \left\{{\left\langle{0}\right\rangle}\right\} \), since any other nonzero element would be a unit and put 1 in the ideal.
:::

::: {.example title="?"}
For \( k \) an algebraically closed field, \( \operatorname{Spec}k[t] = \left\{{ \left\langle{0}\right\rangle, \left\langle{t-a}\right\rangle {~\mathrel{\Big|}~}a\in A}\right\} \). This is a PID, so every ideal is of the form \( I = \left\langle{f}\right\rangle \), so
\[
V(\left\langle{f}\right\rangle)
= 
\begin{cases}
\operatorname{Spec}k[t] & f=0 
\\
\left\langle{x-a_1, \cdots, a-a_k}\right\rangle & f = \prod_{i=1}^k (x-a_i)
\end{cases}
.\]

Note that this is not the cofinite topology, since \( f=0 \) is a generic point.
:::

# Wednesday, September 01

::: {.example title="?"}
Let \( k = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \) be algebraically closed, then
\[
\operatorname{Spec}k[x] = \left\{{ \left\langle{x-a}\right\rangle {~\mathrel{\Big|}~}a\in k}\right\}\cup\left\langle{0}\right\rangle
.\]
Similarly,
\[
\operatorname{Spec}k[x, y] = \left\{{ \left\langle{x-a, y-b}\right\rangle {~\mathrel{\Big|}~}a,b\in k}\right\} \cup\left\{{\left\langle{f}\right\rangle {~\mathrel{\Big|}~}f \text{ irreducible}}\right\} \cup\left\langle{0}\right\rangle
.\]
Note that both have non-closed, generic points.
:::

::: {.example title="?"}
Consider \( X \coloneqq\operatorname{Spec}{ {\mathbb{Z}}_p } \) and \( Y\coloneqq\operatorname{Spec}{\mathbb{C}} { \left[ {t} \right] }  \), then \( \operatorname{Spec}(X) = \left\{{\left\langle{p}\right\rangle, \left\langle{0}\right\rangle}\right\} \) and \( \operatorname{Spec}(Y) = \left\{{ \left\langle{t}\right\rangle, \left\langle{0}\right\rangle }\right\} \). Both are two point spaces, with open points \( \left\langle{0}\right\rangle \) and closed points \( \left\langle{p}\right\rangle \) and \( \left\langle{f}\right\rangle \) respectively. This spaces are homeomorphic, and later we'll see that we can distinguish them as ringed spaces.
:::

::: {.proposition title="Prime spectra of rings"}
Let \( A\in\mathsf{CRing} \), then \( \operatorname{Spec}A \) with the closed sets declared to be those of the form \( V(I) = \left\{{p \in \operatorname{Spec}(A) {~\mathrel{\Big|}~}p\supseteq I}\right\} \).
:::

::: {.lemma title="?"}
\( V(IJ) = V(I) \cup V(J) \), so if a prime ideal \( p \) contains \( IJ \) then \( p\supseteq I \) or \( p\supseteq J \).
:::

::: {.proof title="?"}
\( \impliedby \): If \( I \subseteq P \) or \( J \subseteq P \), then \( IJ \subseteq I \) and \( IJ \subseteq J \), so \( IJ \subset p \).

\( \implies \): Suppose \( IJ \subset p \) but \( J \not\subset p \), so pick \( j\in J \setminus p \). Then for all \( i\in I \), we have \( ij\in IJ \subseteq p \), forcing \( i\in p \).
:::

::: {.lemma title="?"}
An arbitrary intersection satisfies \( \displaystyle\bigcap_i V(I_i) = V(\sum_i I_i) \).
:::

::: {.proof title="?"}
\( \implies \): For \( p\in \operatorname{Spec}(A) \), we want to show that \( p \supseteq\sum I_i \) iff \( p \supseteq I_i \) for all \( i \), so \( I_i \subseteq \sum I_i \subset P \).

\( \impliedby \): Ideals are additive groups, regardless of whether or not they're prime!
:::

::: {.proof title="of proposition"}
```{=tex}
\envlist
```
-   \( \emptyset \) is closed, since \( \emptyset = V(A) \)
-   \( X \) is closed, since \( X = V(0) \) and \( O \) is contained in every prime ideal.
-   Closure under finite unions: by induction, it's enough to show that \( V(I) \cup V(J) \) is closed. This follows from the 1st lemma above.
-   Closure under arbitrary unions: this follows from the 2nd lemma.
:::

::: {.proposition title="?"}
\( V(I) = V(\sqrt I) \). The proof is simple: prime ideals are radical.
:::

::: {.example title="?"}
Note that \( \operatorname{Spec}{\mathbb{Z}}= \left\{{ \left\langle{p}\right\rangle, \left\langle{0}\right\rangle {~\mathrel{\Big|}~}p \text{ is prime}}\right\} \). Note that maximal ideals are always closed points, and \( \left\langle{0}\right\rangle \) is not a closed point. This is homeomorphic to, say \( \operatorname{Spec}\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Q}}\mkern-1.5mu}\mkern 1.5mu[t] \).
:::

::: {.definition title="?"}
Suppose \( p \subseteq A \) is a prime ideal, then the **localization** of \( A \) at \( p \), \( A \left[ { \scriptstyle { {(p^c)}^{-1}}  } \right] \) (or \( A_p \)) is defined as
\[
A \left[ { \scriptstyle { {(p^c)}^{-1}}  } \right] \coloneqq\left\{{ a/f {~\mathrel{\Big|}~}f\not\in p}\right\}_{/ {\sim }} && {a\over f}\sim {b\over g}\iff \exists \, h\in A \text{ s.t. } h(ag-bf)=0
.\]
This makes the elements of \( p^c \) invertible, and is a local ring with residue field \( \kappa = \operatorname{ff}(A/p) \) and maximal ideal \( pA_p \). Ideals of \( A_p \) biject with ideals of \( A \) contained in \( p \).
:::

::: {.remark}
Idea: \( A_p \) should look like germs of functions at the point \( p \). Note that localizing at the ideal \( p \) is like deleting \( { \operatorname{cl}} _X(V(p)) \), which is also useful. We now want to construct a sheaf \( {\mathcal{O}}= {\mathcal{O}}_{\operatorname{Spec}A} \) which has stalks \( A_p \). We'll construct something that's obviously a sheaf, at the cost of needing to work hard to prove things about it!
:::

::: {.definition title="Structure sheaf"}
For \( U\in \operatorname{Spec}(A) \) open, so \( U = V(I)^c \), define the **structure sheaf of \( X \)** as the sheaf given
\[
{\mathcal{O}}(U) \coloneqq\left\{{ s:U \to \displaystyle\coprod{p\in U} A_p {~\mathrel{\Big|}~}s(p) \in A_p, \text{ and } s \text{ is locally a fraction}}\right\}
.\]
Here *locally a fraction* means that for all \( p\in U \) there is an open \( p\in V \subseteq U \) and elements \( a, f\in A \) such that

1.  \( f\not\in Q \) for any \( Q\in V \) and
2.  \( s(Q) = a/f \) for all \( Q \in V \).

Restriction is defined for \( V \subseteq U \) as honest function restriction on \( {\mathcal{O}}(U) \to {\mathcal{O}}(V) \).
:::

::: {.remark}
Note that this is sheafifying the presheaf \( U = D_f \mapsto A_f \).
:::

::: {.example title="?"}
Let \( k \in \mathsf{Field} \), then \( X\coloneqq\operatorname{Spec}(k) = \left\{{\left\langle{0}\right\rangle}\right\} \) and \( {\mathcal{O}}_X \) is determined by
\[
{{\Gamma}\qty{X; {\mathcal{O}}_X} } = \left\{{s: \operatorname{Spec}k \to k {~\mathrel{\Big|}~}\cdots}\right\} = k
,\]
since the conditions are vacuous here.
:::

::: {.example title="?"}
Let \( X = \operatorname{Spec}{\mathbb{C}} { \left[ {t} \right] }  = \left\{{ \left\langle{0}\right\rangle, \left\langle{1}\right\rangle}\right\} \) and \( {\mathcal{O}}_X(X) = {\mathbb{C}} { \left[ {t} \right] }  \) and \( {\mathcal{O}}_X(\left\langle{0}\right\rangle) = {\mathbb{C}} { \left( {t} \right) }  \).
:::

# Friday, September 03

::: {.remark}
Last time: we defined \( \operatorname{Spec}A \) as a topological space and \( {\mathcal{O}}_{\operatorname{Spec}A} \), a sheaf of rings on \( \operatorname{Spec}A \) which evidently satisfied the gluing condition:
\[
{\mathcal{O}}_{\operatorname{Spec}A}(U) \coloneqq\left\{{s: U\to \displaystyle\coprod_{p\in U} A \left[ { \scriptstyle { {p}^{-1}}  } \right] {~\mathrel{\Big|}~}s(p) \in A \left[ { \scriptstyle { {p}^{-1}}  } \right] \forall p,\,\, s \text{ is locally a fraction}}\right\}
.\]
:::

::: {.example title="?"}
Set \( X\coloneqq{\mathbb{A}}^1_{/ {k}}  \coloneqq\operatorname{Spec}k[t] \) for \( k=\mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \). Take a point \( \left\langle{t}\right\rangle = \left\langle{t-0}\right\rangle \in \operatorname{Spec}k[t] \) corresponding to 0, then \( {\mathcal{O}}_{X}(X\setminus\left\{{0}\right\}) = k[t, t^{-1}] \), i.e. functions of the form \( f/t^k \) for any \( k \). Generally for \( p = \left\langle{t-a_i}\right\rangle \) we get \( s_p \in k[t] \left[ { \scriptstyle { {\left\{{t-a_i}\right\}}^{-1}}  } \right] \). Note that for \( p = \left\langle{0}\right\rangle \), we get \( s_p \in k(t) \).
:::

::: {.claim}
\( s \) is determined by \( s_{\left\langle{0}\right\rangle} \), so there is an injective map
\[
{\mathcal{O}}(k[t]\setminus\left\{{0}\right\}) &\to k(t) \\
s &\mapsto s_{\left\langle{0}\right\rangle}
.\]
:::

::: {.proof title="?"}
Note that \( \left\langle{0}\right\rangle \) is in every open set, so locally near \( p \) there exists a \( P\in V \) and \( a,f \) with \( f\not\in Q \) for all \( Q \) and \( s_Q = a/f \) for all \( Q\in V \). Since \( \left\langle{0}\right\rangle \in V \), we have \( s_{\left\langle{0}\right\rangle} = a/f \in k(t) \) and \( s_p = a/f\in A_p \). Since \( A_p \subseteq k(t) \), we get \( s_p = s_{\left\langle{0}\right\rangle} \) under this inclusion.
:::

::: {.claim}
\( {\mathcal{O}}(\operatorname{Spec}k[t]\setminus\left\{{0}\right\}) = k[t, t^{-1}] \).
:::

::: {.proof title="?"}
We showed that the LHS is a subset of \( k(t) \), so which subsets can be written as things that are locally fractions on the complement of zero.

\( \supseteq \): This can clearly be done in \( k[t, t^{-1}] \) since every element is locally the fraction \( f/t^k \).

\( \subseteq \): Suppose \( f/g \) with \( f,g \) coprime (this is a PID!) with a pole away from zero, so \( g\in Q \) for some \( Q\neq \left\langle{0}\right\rangle \). But then \( f/g \) isn't in \( A_Q \).
:::

::: {.remark}
Note that \( X \coloneqq\operatorname{mSpec}k[t] \subseteq X' \coloneqq\operatorname{Spec}k[t] \) as the set of closed points, and restricting \( {\mathcal{O}}_{X'} \) to \( X \) yields the sheaf of regular functions. Having the extra generic point was useful!
:::

::: {.exercise title="?"}
Show that the maximal ideals in \( \operatorname{mSpec}A \) correspond precisely to closed points.
:::

::: {.example title="?"}
Of a function that is locally but not globally a fraction. Take \( A \coloneqq k[x,y,z,w]/\left\langle{xy-zw}\right\rangle \), which is the cone over a smooth quadric surface and \( X\coloneqq\operatorname{Spec}A \). Then take \( U = \operatorname{Spec}(A) \setminus V(y, w) = V(y)^c \cap V(w)^c \) and consider the section
\[
s(p) \coloneqq
\begin{cases}
x/w & p\in V(w)^c 
\\
z/y & p\in V(y)^c.
\end{cases}
\]

For \( p\in U \), it makes sense to consider \( x/w \) and \( z/y \). Are they equal? The answer is yes because \( xy-zw = 0 \). Check that this can't be a global fraction, which is a consequence of this random open set not being the complement of localizing at a prime ideal.
:::

::: {.definition title="?"}
Given \( f\in A \), the **distinguished open** \( D(f) \) corresponding to \( f \) is defined as
\[
D(f) = V(\left\langle{f}\right\rangle)^c \coloneqq\left\{{p\in \operatorname{Spec}(A) {~\mathrel{\Big|}~}f\in p}\right\}^c = \left\{{p\in \operatorname{Spec}A {~\mathrel{\Big|}~}f\not\in p}\right\}
,\]

i.e. the points of \( \operatorname{Spec}(A) \) where \( f \) doesn't vanish.
:::

::: {.remark}
The sets \( \left\{{D(f) {~\mathrel{\Big|}~}f\in A}\right\} \) for a basis for the topology on \( \operatorname{Spec}(A) \). This follows from writing \( V(I)^c = \displaystyle\bigcup_{f\in I} D(f) \).
:::

::: {.theorem title="Hartshorne Prop 2.2"}
Let \( A\in \mathsf{CRing} \) be unital with \( 1\neq 0 \) unless \( A=0 \) and consider \( (\operatorname{Spec}A, {\mathcal{O}}) \). Then

a.  For any \( p\in \operatorname{Spec}A \), the stalk \( {\mathcal{O}}_p \cong A \left[ { \scriptstyle { {p}^{-1}}  } \right] \).
b.  For any \( f\in A \), \( {\mathcal{O}}(D(f)) = A \left[ { \scriptstyle { {f}^{-1}}  } \right] \).
c.  Taking \( f=1 \), \( \Gamma(\operatorname{Spec}A, {\mathcal{O}}) = A \).
:::

::: {.remark}
Note that (b) gives the values of \( {\mathcal{O}} \) on a basis of opens, which determines the sheaf.
:::

::: {.proof title="of a"}
Define a map
\[
f_p: {\mathcal{O}}_p &\to A_p \\
(U, s) &\mapsto s(p)
.\]
This is well-defined since \( p\in W \) for any \( W \subseteq U \cap V \) for equivalent germs \( (U, s) \sim (V, t) \).

Surjectivity: given \( x=a/g \in A_p \), we want \( (U, s)\in {\mathcal{O}}_p \) such that \( f_p(U, s) = a/g \), so just take \( U = D(g) \) and \( s=a/g \) (which makes sense!) and evidently maps to \( a/g \).

Injectivity: supposing \( f_p(U, s) = 0 \) in \( A_p \), we want \( (U, s) = 0 \). If \( s(p) = 0 \), then there exists some \( h\in P \) with \( h\cdot s(p) = 0 \). Since \( s(p) \) is locally a fraction, we can find \( p\in V \subseteq U \) with \( s=a/g \) on \( V \) with \( g\neq 0 \) on \( V \), so consider \( V \cap D(h) \). The claim is that \( s \) is 0 here, which follows from \( h\cdot (a/g) = 0 \).
:::

# Wednesday, September 08

::: {.remark}
Recall that we defined a first version of *affine schemes*, namely pairs \( (\operatorname{Spec}A, {\mathcal{O}}_A) \) where for \( U \subseteq \operatorname{Spec}A \) open we have \( s\in {\mathcal{O}}(U) \) locally represented by \( { \left.{{s}} \right|_{{V}} } = a/f \) for \( V \subseteq U \) where \( a, f\in A \) and \( V(f) \cap V = \emptyset \), so \( f \) doesn't vanish on \( V \). Note that the \( D(f) \) form a topological basis for \( \operatorname{Spec}A \), and the gluing condition is difficult, i.e. \( {\mathcal{O}}(U) \) may be hard to compute. We proved that \( OO_{{\mathfrak{p}}} = A \left[ { \scriptstyle { {{\mathfrak{p}}}^{-1}}  } \right] \) last time, and today we're showing

-   \( {\mathcal{O}}(D(f)) = A \left[ { \scriptstyle { {f}^{-1}}  } \right] \),
-   \( {{\Gamma}\qty{(} }\operatorname{Spec}A, {\mathcal{O}}) \cong A \).
:::

::: {.proof title="of b and c"}
\( b\implies c \): Take \( f=1\in A \), then \( {\mathcal{O}}(\operatorname{Spec}A) = {\mathcal{O}}(D(1)) = A \) using (b), so the only hard part is showing (b).

To prove (b), by definition of \( {\mathcal{O}} \) there is a ring morphism
\[
\psi: A \left[ { \scriptstyle { {f}^{-1}}  } \right] &\to {\mathcal{O}}(D(f)) \\
{a\over f^n} &\mapsto {a\over f^n}
.\]

Note that this is just a careful statement, since the morphisms on stalks \( \psi_{{\mathfrak{p}}}: A \left[ { \scriptstyle { {f}^{-1}}  } \right] \to A \left[ { \scriptstyle { {{\mathfrak{p}}}^{-1}}  } \right] \) by not be injective in general.

::: {.claim}
\( \psi \) is bijective.
:::

::: {.proof title="of injectivity"}
Suppose \( \psi(s) = 0 \), we then want to show \( s=0 \). Write \( s = a/f^n \), then for all \( {\mathfrak{p}}\in D(f) \) we know \( a/f^n = 0 \in A \left[ { \scriptstyle { {{\mathfrak{p}}}^{-1}}  } \right] \). So for each \( {\mathfrak{p}} \) there is some \( h_{{\mathfrak{p}}} \not\in{\mathfrak{p}} \) where
\[
h_{{\mathfrak{p}}}(a\cdot 1 - f^n\cdot 0) = 0 && \text{in } A
\]
in \( A \). Consider the ideal \( {\mathfrak{a}}\coloneqq\operatorname{Ann}(a) \coloneqq\left\{{b\in A {~\mathrel{\Big|}~}ab=0 \in A}\right\} \ni h_{{\mathfrak{p}}} \). So take the closed subset \( V({\mathfrak{a}}) \), which does not contain \( {\mathfrak{p}} \) since \( {\mathfrak{a}}\not\subseteq{\mathfrak{p}} \). Now iterating over all \( {\mathfrak{p}}\in D(f) \), we get \( V({\mathfrak{a}}) \cap D(f) = \emptyset \). So \( V({\mathfrak{a}}) \subseteq V(f) = D(f)^c \), thus \( f\in \sqrt{{\mathfrak{a}}} \) and \( f^m a = 0 \) for some \( m \). Then \( f^m(a\cdot 1 - f^n\cdot 0) = 0 \) in \( A \), so \( a/f^n = 0 \) in \( A \left[ { \scriptstyle { {f}^{-1}}  } \right] \).
:::

::: {.proof title="of surjectivity"}
**Step 1**: Expressing \( s\in {\mathcal{O}}(D(f)) \) nicely locally.

By definition of \( {\mathcal{O}}_{D(f)} \), there exist \( V_i \) with \( { \left.{{s}} \right|_{{V_i}} } = a_i/g_i \) for \( a_i, g_i\in A \). We'd like \( g_i = h_i^{m_i} \) for some \( m_i \), so \( g \) is a power of \( h_i \), but this may not be true a priori. Fix \( V_i = D(h_i) \), then \( a_i / g_i\in {\mathcal{O}}(D(h_i)) \) implies that \( g_i\not\in {\mathfrak{p}} \) for any \( {\mathfrak{p}}\in D(h_i) \). This implies that \( D(h_i) \subseteq D(g_i) \), and taking complements yields \( V(h_i) \supseteq V(g_i) \), and \( h_i \in \sqrt{\left\langle{g_i}\right\rangle} \) and \( h_i^{n} = g_i \). Writing \( g_i = h_i^n/c \) we have \( a_i/g_i = ca_i / h_i^n \). Note that \( D(h_i) = D(h_i^n) \). Now replace \( a_i \) with \( ca_i \) and \( g_i \) with \( h_i \) to get
\[
{ \left.{{s}} \right|_{{D(h_i)}} } = a_i / h_i
.\]

**Step 2**: Quasicompactness of \( D(f) \).

Note that \( \left\{{D(h_i)}\right\}_{i\in I} \rightrightarrows D(f) \), so take a finite subcover \( \left\{{D(h_i)}\right\}_{i\leq m} \).

Proof of quasicompactness: since \( D(f) \supseteq\displaystyle\bigcup_{i\in I} D(h_i) \), we get
\[
V(f) \subseteq \displaystyle\bigcap_{i\in I} V(h_i) = V\qty{ \sum h_i}
.\]
So \( f^u \in \sum h_i \), and up to reordering we can conclude \( f^u = \sum_{i\leq m} b_i h_i \) for some \( b_i \in A \). Then \( D(f) \subseteq \displaystyle\bigcup_{i\leq m} D(h_i) \).

::: {.remark}
Since we can write \( \operatorname{Spec}A = D(1) \), it is quasicompact.
:::

**Step 3**: Showing surjectivity.

Next time.
:::
:::

# Friday, September 10

## Sections and Stalks of \( {\mathcal{O}}_{\operatorname{Spec}A} \) as Localizations {#sections-and-stalks-of-mathcalo_operatornamespeca-as-localizations}

::: {.remark}
Last time: any affine scheme is quasicompact, so for each ring \( A \) and an open cover \( {\mathcal{U}}\rightrightarrows D(f) \) then there is a finite subcover \( \left\{{D(h_i)}\right\}\rightrightarrows D(f) \). We were looking at proposition: for the ringed space \( (\operatorname{Spec}A, {\mathcal{O}}_A) \),

-   \( {\mathcal{O}}_{\mathfrak{p}}\cong A \left[ { \scriptstyle { {{\mathfrak{p}}}^{-1}}  } \right] \) for all \( {\mathfrak{p}}\in \operatorname{Spec}A \),
-   \( {\mathcal{O}}(d(f))\cong A \left[ { \scriptstyle { {f}^{-1}}  } \right] \) for all \( f\in A \),
-   \( {{\Gamma}\qty{\operatorname{Spec}A; {\mathcal{O}}_A} } \cong A \).

Note that \( {\mathcal{O}}_A \) is uniquely characterized by these properties.
:::

::: {.remark}
We can write \( D(1) = \operatorname{Spec}A \) and write \( \left\{{ D(h_i) }\right\} \rightrightarrows\operatorname{Spec}A \) to obtain \( 1^n = \sum b_i h_i \). This is analogous to a partition of unity, where \( b_i h_i \) vanishes on \( D(h_i)^c = V(h_i) \)
:::

::: {.proof title="of 2.2b"}
Let \( \psi:A \left[ { \scriptstyle { {f}^{-1}}  } \right] \hookrightarrow{\mathcal{O}}(D(f)) \) where we just take restrictions of functions. We know this is injective, and we want to show surjectivity.

**Step 1**: Let \( s\in {\mathcal{O}}(D(f)) \). For each open \( D(h_i) \), write \( { \left.{{s}} \right|_{{D(h_i)}} } = a_i /h_i \) for some \( a_i \in A \).

**Step 2**: By quasicompactness, write \( f^n = \sum_{1 \leq i\leq m} b_i h_i \).

**Step 3**: Glue the \( a_i/h_i \) into an element \( a/f \) of \( A \left[ { \scriptstyle { {f}^{-1}}  } \right] \).

*Part 1*: For any \( 1\leq i\neq j\leq m \), \( D(h_i h_j) = D(h_i) \cap D(h_j) \). Note that \( a_i/h_i = a_j/h_j \) in \( {\mathcal{O}}(D(h_i h_j)) \), and these are elements of \( A \left[ { \scriptstyle { {h_i h_j}^{-1}}  } \right] \) since \( a_i /h_i = a_ih_j/h_i h_j \). Using injectivity of \( \psi \) for \( h_i h_j \), we get an equality \( a_i/h_i = a_j/h_j \) in \( A_{h_i h_j} \). Then for \( \ell \) large enough, \( (h_i h_j)^\ell( a_i h_j - a_j h_i) = 0 \in A \). Regrouping yields \( h_j^{n+1}(h_i^n a_i) - h_i^{n+1}(h_j a_j) = 0 \), so
\[
{a_i h_i^n \over h_i ^{n+1}} = {a_j h_j^r \over h_j^{n+1}} \coloneqq{\tilde a_i \over \tilde h_i} = {\tilde a_j \over \tilde h_j}
,\]
noting that \( D(\tilde h_i) = D(\tilde h_i) \) since \( \tilde h_i \) is a power of \( h_i \).

Now use POU gluing to write \( f^n = \sum_i \tilde b_i \tilde h_i \) and \( a \coloneqq\sum \tilde a_i \tilde h_i\in A \) be a global function on \( D(f) \). Then (claim) \( a_j/f^n = \tilde a_j/\tilde h_j \) on \( D(\tilde h_j) \). We can rewrite
\[
\tilde h_j a = \sum_i \tilde b_i \tilde a_i \tilde h_j = \sum_i \tilde b_i \tilde a_j \tilde h_i
.\]
But then \( a/f^n = { \left.{{s}} \right|_{{D(\tilde h_i)}} } \), so \( s= a/f^n \).
:::

::: {.example title="?"}
Consider \( {\mathbb{P}}^1_{/ {k}}  \) as a scheme -- we know the space, and the claim is that we can glue sheaves of affines to obtain a structure sheaf for it. Cover \( {\mathbb{P}}^1 \) by \( U_0 = {\mathbb{P}}^1\setminus\left\{{\infty}\right\} \cong {\mathbb{A}}^1 \) and \( U_1 = {\mathbb{P}}^1\setminus\left\{{0}\right\} \cong {\mathbb{A}}^1 \). The gluing data is the following:

```{=tex}
\begin{tikzcd}
    && {{\mathbb{P}}^1_{/ {k}} } \\
    \\
    {{\mathbb{A}}^1} & {U_0} && {U_1\cong {\mathbb{A}}^1} & {{\mathbb{A}}^1} \\
    \\
    & {{\mathbb{A}}^1\setminus\left\{{0}\right\}} & {U_0 \cap U_1 \cong D(t) \subseteq {\mathbb{A}}^1} & {{\mathbb{A}}^1\setminus\left\{{0}\right\}}
    \arrow["{\phi_0}", hook, from=3-2, to=1-3]
    \arrow["{\phi_1}"', hook', from=3-4, to=1-3]
    \arrow[hook', from=5-3, to=3-2]
    \arrow[hook, from=5-3, to=3-4]
    \arrow[hook, two heads, from=5-3, to=5-4]
    \arrow[hook, two heads, from=5-3, to=5-2]
    \arrow[hook, from=5-2, to=3-1]
    \arrow[hook', two heads, from=3-1, to=3-2]
    \arrow[hook, from=5-4, to=3-5]
    \arrow[hook', two heads, from=3-5, to=3-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMiwwLCJcXFBQXjFcXHNsaWNlIGsiXSxbMSwyLCJVXzAiXSxbMywyLCJVXzFcXGNvbmcgXFxBQV4xIl0sWzIsNCwiVV8wIFxcaW50ZXJzZWN0IFVfMSBcXGNvbmcgRCh0KSBcXHN1YnNldGVxIFxcQUFeMSJdLFsxLDQsIlxcQUFeMVxcc216Il0sWzMsNCwiXFxBQV4xXFxzbXoiXSxbMCwyLCJcXEFBXjEiXSxbNCwyLCJcXEFBXjEiXSxbMSwwLCJcXHBoaV8wIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMiwwLCJcXHBoaV8xIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJib3R0b20ifX19XSxbMywxLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6ImJvdHRvbSJ9fX1dLFszLDIsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzMsNSwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifSwiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzMsNCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifSwiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzQsNiwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbNiwxLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6ImJvdHRvbSJ9LCJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbNSw3LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFs3LDIsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoiYm90dG9tIn0sImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dXQ==)

Here the transition maps are
\[
\phi_1 \circ \phi_0^{-1}: \phi_0( U_0 \cap U_1) &\to \phi_1(U_0 \cap U_1) \\
t &\mapsto t^{-1}
.\]
What is the map on sheaves? We need a map \( { \left.{{{\mathcal{O}}}} \right|_{{U_0\setminus\left\{{0}\right\}}} } { { \, \xrightarrow{\sim}\, }}{ \left.{{{\mathcal{O}}}} \right|_{{U_1 \setminus\left\{{\infty}\right\}}} } \).
:::

::: {.definition title="Ringed Space"}
A **ringed space** \( (X, {\mathcal{O}}_X) \in {\mathsf{Top}}\times {\mathsf{Sh}}(X, \mathsf{Ring}) \) as a topological space with a sheaf of rings. A morphism is a pair \( (f, f^\#) \in C^0(X, Y) \times \in \mathop{\mathrm{Mor}}_{\mathsf{Sh}}({\mathcal{O}}_Y, f_* {\mathcal{O}}_X) \).
:::

::: {.example title="?"}
The scheme \( (\operatorname{Spec}A, {\mathcal{O}}_{\operatorname{Spec}A}) \) is a ringed space.
:::

::: {.example title="?"}
Consider \( {\mathbb{R}} \) in the Euclidean topology, then \( ({\mathbb{R}}, C^0({-}, {\mathbb{R}})) \) with the sheaf of continuous functions is a ringed space. Then consider the morphism given by projection onto the first coordinate of \( {\mathbb{R}}^2 \):
\[
(\pi, \pi^\#): ({\mathbb{R}}^2, C^0({-}, {\mathbb{R}})) &\to ({\mathbb{R}}, C^{\infty }({-}, {\mathbb{R}})) \\
(x, y) &\mapsto x
.\]
For \( \pi^\# \), we can consider \( \pi_* C^0({-}, {\mathbb{R}})(U) \coloneqq C^0(\pi^{-1}(U)) = C^0(U\times {\mathbb{R}}) \), so
\[
\pi^\#: C^\infty(U, {\mathbb{R}}) &\to C^0(U\times {\mathbb{R}}) \\
f &\mapsto f\circ \pi
,\]
which is a well-defined map of rings since smooth functions are continuous.
:::

::: {.warnings}
Not every scheme is built out of affine opens!
:::

# Monday, September 13

## Affine Schemes

::: {.definition title="Restricted sheaves"}
Let \( (X, {\mathcal{O}}_X) \in \mathsf{RingSp} \) and \( U \subseteq X \) be open, then for \( V \subseteq U \) open, define the restricted sheaf \( {\mathcal{O}}_{X}{ \left.{{}} \right|_{{V}} }(V) \coloneqq{\mathcal{O}}_X(V) \).
:::

::: {.warnings}
\[
{\mathsf{Sh}}_{/ {X}}  \ni{ \left.{{{\mathcal{O}}_X}} \right|_{{U}} }\neq {\mathcal{O}}_X(U) \in \mathsf{Ring}
.\]
:::

::: {.remark}
Recall the definition of a ringed space \( (X, {\mathcal{O}}_X) \). The quintessential example: \( X \) a smooth manifold and \( {\mathcal{O}}_X \coloneqq C^{\infty}({-}; {\mathbb{R}}) \) the sheaf of smooth functions. For defining morphisms, consider a map \( f:X\to Y \), then an alternative way of defining \( f \) to be smooth is that there is a pullback
\[
f^*: C^0(V, {\mathbb{R}}) &\to C^0(U, {\mathbb{R}}) \\
g &\mapsto g \circ f
\]
for \( U \subseteq X, V \subseteq Y \), and that \( f^* \) in fact restricts to \( f^*: C^\infty(V; {\mathbb{R}}) \to C^\infty(U; {\mathbb{R}}) \), i.e. preserving smooth functions.
:::

::: {.definition title="Morphisms of ringed spaces"}
A morphism of ringed spaces is a pair
\[
(M, {\mathcal{O}}_M) \xrightarrow{(\varphi, \varphi^\#)} (N, {\mathcal{O}}_N)
.\]
where \( \varphi \in C^0(M, N) \) and \( \varphi^\# \in \mathop{\mathrm{Mor}}_{{\mathsf{Sh}}_{/ {N}} }({\mathcal{O}}_N, \varphi_* {\mathcal{O}}_M) \).

This is an **isomorphism** of ringed spaces if

1.  \( \varphi \) is a homeomorphism, and
2.  \( \varphi^\# \) is an isomorphism of sheaves.
:::

::: {.remark}
In the running example,
\[
\varphi^\#(U): {\mathcal{O}}_N(U) \to \varphi_* {\mathcal{O}}_M(M) = {\mathcal{O}}_M(\varphi^{-1}(U))
.\]
This implies that maps of ringed spaced here induce smooth maps, and so there is an embedding \( {\mathsf{sm}}{\mathsf{Mfd}}_{/ {{\mathbb{R}}}}  \hookrightarrow\mathsf{RingSp} \).
:::

::: {.remark}
We'll try to set up schemes the same way one sets up smooth manifolds. A topological manifold is a space locally homeomorphic to \( {\mathbb{R}}^n \), and a smooth manifold is one in which it's locally isomorphic as a ringed space to \( ({\mathbb{R}}^n, C^\infty({-}; {\mathbb{R}})) \) with its sheaf of smooth functions.
:::

::: {.definition title="Smooth manifolds, alternative definition"}
A **smooth manifold** is a ringed space \( (M, {\mathcal{O}}_M) \) that is locally isomorphic to \( ({\mathbb{R}}^d, C^\infty({-}; {\mathbb{R}})) \), i.e. there is an open cover \( {\mathcal{U}}\rightrightarrows M \) such that
\[
(U_i, { \left.{{{\mathcal{O}}_M}} \right|_{{U_i}} }) \cong ({\mathbb{R}}^n, C^{\infty}({-}; {\mathbb{R}}))
.\]
:::

::: {.example title="?"}
An example of a morphism of ringed spaces that is not an isomorphism: take \( ({\mathbb{R}}, C^0) \to ({\mathbb{R}}, C^\infty) \) given by \( (\operatorname{id}, \operatorname{id}^\#) \) where \( \operatorname{id}^\#: C^\infty \to \operatorname{id}_* C^0 \) is given by \( \operatorname{id}^\#(U): C^\infty(U) \to C^0(U) \) is the inclusion of continuous functions into smooth functions.
:::

::: {.remark}
We'll define schemes similarly: build from simpler pieces, namely an open cover with isomorphisms to affine schemes. A major difference is that there may not exist a *unique* isomorphism type among all of the local charts, i.e. the affine scheme can vary across the cover.
:::

::: {.remark}
Recall that for \( A \) a ring we defined \( (\operatorname{Spec}A, {\mathcal{O}}_{\operatorname{Spec}A}) \), where \( \operatorname{Spec}A \coloneqq\left\{{\text{Prime ideals } {\mathfrak{p}}{~\trianglelefteq~}A}\right\} \), equipped with the Zariski topology generated by closed sets \( V(I) \coloneqq\left\{{{\mathfrak{p}}{~\trianglelefteq~}A {~\mathrel{\Big|}~}I\supseteq{\mathfrak{p}}}\right\} \). We then defined
\[
{\mathcal{O}}_{\operatorname{Spec}A}(U) \coloneqq\left\{{s: U\to \displaystyle\coprod_{{\mathfrak{p}}\in U} A \left[ { \scriptstyle { {{\mathfrak{p}}}^{-1}}  } \right]
{~\mathrel{\Big|}~}
s({\mathfrak{p}}) \in A \left[ { \scriptstyle { {{\mathfrak{p}}}^{-1}}  } \right], \, s\text{ locally a fraction}
}\right\}
.\]
We saw that

1.  We can identify stalks: \( {\mathcal{O}}_{\operatorname{Spec}A, {\mathfrak{p}}} = A \left[ { \scriptstyle { {{\mathfrak{p}}}^{-1}}  } \right] \)
2.  We can identify sections on distinguished opens:
    \[
    {\mathcal{O}}_{\operatorname{Spec}A}(D_f) = A \left[ { \scriptstyle { {f}^{-1}}  } \right] = \left\{{a/f^k {~\mathrel{\Big|}~}a\in A, k\in {\mathbb{Z}}_{\geq 0}}\right\}
    ,\]
    where \( D_f \coloneqq V(f)^c = \left\{{{\mathfrak{p}}\in \operatorname{Spec}A {~\mathrel{\Big|}~}f\not\in {\mathfrak{p}}}\right\} \).

As a corollary, we get \( {\mathcal{O}}_{\operatorname{Spec}A}(\operatorname{Spec}A) = A \), noting \( \operatorname{Spec}A = d_1 \) and \( A \left[ { \scriptstyle { {1}^{-1}}  } \right] = A \). Thus we can recover the ring \( A \) from the ringed space \( (X, {\mathcal{O}}_X) \coloneqq(\operatorname{Spec}A, {\mathcal{O}}_{\operatorname{Spec}A}) \) by taking global sections, i.e. \( {{\Gamma}\qty{\operatorname{Spec}A; {\mathcal{O}}_{\operatorname{Spec}A}} } = A \).
:::

## Affine Varieties

::: {.remark}
Let \( k = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \) and set \( {\mathbb{A}}^n_{/ {k}}  = k^n \) whose regular functions are given by \( k[x_1, \cdots, x_{n}] \), regarded as maps to \( k \).
:::

::: {.definition title="Affine variety"}
An affine variety is any set of the form
\[
X \coloneqq V(f_1,\cdots, f_n) = \left\{{p\in {\mathbb{A}}^n_{/ {k}}  {~\mathrel{\Big|}~}f_1(p) = \cdots = f_m(p) = 0}\right\}
\]
for \( f_i \in k[x_1, \cdots, x_{n}] \),
:::

::: {.remark}
Writing \( I = \left\langle{f_1,\cdots, f_m}\right\rangle \), we have \( X = V(\sqrt I) \). Letting \( I(S) = \left\{{f\in k[x_1, \cdots, x_{n}]{~\mathrel{\Big|}~}{ \left.{{f}} \right|_{{S}} } = 0}\right\} \), then by the Nullstellensatz, \( IV(I) = \sqrt{I} \). This gives a bijection between affine varieties in \( {\mathbb{A}}^n_{/ {k}}  \) and radical ideals \( I {~\trianglelefteq~}k[x_1, \cdots, x_{n}] \).
:::

::: {.definition title="Coordinate rings of affine varieties"}
The **coordinate ring** of an affine variety \( X \) is \( k[X] \coloneqq k[x_1, \cdots, x_{n}]/I(X) \), regarded as polynomial functions on \( X \).
:::

::: {.remark}
We quotient here because if the difference of functions is in \( I(X) \), these functions are equal when restricted to \( X \). For example, \( y=x \) in \( k[x, y]/ \left\langle{x-y}\right\rangle \), which are different functions where for \( X\coloneqq\Delta \), we have \( { \left.{{x}} \right|_{{\Delta}} } = { \left.{{y}} \right|_{{\Delta}} } \).
:::

::: {.remark}
As an application of the Nullstellensatz, there is a correspondence

\[
\adjunction{I({-})}{V({-})}{\left\{{\text{Points } p\in X}\right\}}{\operatorname{mSpec}k[X]}
\]
:::

::: {.remark}
Why is an affine variety \( X \) an example of an affine scheme \( \operatorname{Spec}k[X] \)? These don't have the same underlying topological space:
\[
\tau(X) &\coloneqq\left\{{V(I) \coloneqq\left\{{p\in X {~\mathrel{\Big|}~}f_i(p) = 0 \,\, \forall f_i \in I}\right\} {~\mathrel{\Big|}~}I{~\trianglelefteq~}k[X]}\right\} \\
\tau(\operatorname{mSpec}k[X]) &\coloneqq\left\{{ V(I) \coloneqq\left\{{ {\mathfrak{m}}\in \operatorname{mSpec}k[X] {~\mathrel{\Big|}~}{\mathfrak{m}}\supseteq I}\right\} {~\mathrel{\Big|}~}I{~\trianglelefteq~}k[X] }\right\}
.\]

However, they are closely related:
\[
{ \left.{{\tau(\operatorname{mSpec}k[X])}} \right|_{{\operatorname{Spec}k[X]}} } = \tau(X_{\mathrm{zar}})
,\]
i.e. the space \( \operatorname{Spec}k[X] \) with the restricted topology from \( \operatorname{mSpec}k[X] \) is homeomorphic to \( X \) with the Zariski topology. I.e. restricting to *closed points* recovers regular functions on \( X \).
:::

::: {.warnings}
Defining things that are locally isomorphic to schemes would work for objects but not morphisms!
:::

# Wednesday, September 15

::: {.remark}
Last time: for \( {\mathsf{Aff}}{\mathsf{Var}} \) we considered \( X = V(I) \subseteq {\mathbb{A}}^n_{/ {k}}  \), and for \( {\mathsf{Aff}}{\mathsf{Sch}} \) we considered \( \operatorname{Spec}k[X] \) where \( k[X] \coloneqq k[x_1, \cdots, x_{n}]/ I(X) \). Both had the Zariski topology, and \( X = \operatorname{mSpec}k[X] \subseteq \operatorname{Spec}k[X] \). We had structure sheaves \( {\mathcal{O}}_{\operatorname{Spec}k[X]} \), and for \( X \), we have \( U' \coloneqq U \cap\operatorname{mSpec}k[X] \). On \( \operatorname{mSpec}k[X] \), we have the notion of a regular function, and \( {\mathcal{O}}_X(U') = {\mathcal{O}}_{\operatorname{Spec}k[X]}(U') \). The previous setup only worked for rings finitely generated over a field, whereas for schemes, we can take things like \( \operatorname{Spec}{\mathbb{Z}} \), so they're much more versatile (e.g. for number theory).
:::

::: {.example title="?"}
Compare \( {\mathbb{A}}^2_{/ {k}}  \in {\mathsf{Aff}}{\mathsf{Var}} \) to \( \operatorname{Spec}k[x, y] \). Note that \( \left\langle{0}\right\rangle \in \operatorname{Spec}k[x, y] \), and taking its closure yields
\[
{ \operatorname{cl}} (\left\langle{0}\right\rangle) 
&= \displaystyle\bigcap_{V(I)\supseteq\left\langle{0}\right\rangle } V(I) \\
&= \displaystyle\bigcap_{V(I)\ni 0 } V(I) \\
&= V(0) \\
&= \operatorname{Spec}k[x, y]
,\]
so \( 0 \) is a dense point!

```{=tex}
\begin{tikzpicture}
\fontsize{20pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-09-15_18-17.pdf_tex} };
\end{tikzpicture}
```
But there are prime ideals of height \( >1 \). For example, any irreducible subvariety of \( {\mathbb{A}}^2 \) yields a generic point.

```{=tex}
\todo[inline]{Krull's dimension theorem?}
```
:::

::: {.exercise title="?"}
Try to draw \( \operatorname{Spec}{\mathbb{Z}} \) and \( \operatorname{Spec}{\mathbb{Z}}[t] \).
:::

::: {.remark}
We'll now try a naive definition of schemes, which we'll find won't quite work.
:::

::: {.definition title="A wrong definition of a scheme!"}
A **scheme** is a ringed space \( (X, {\mathcal{O}}_X) \) which is locally an affine scheme, i.e. there exists an open cover \( {\mathcal{U}}\rightrightarrows X \) such that there is a collection of rings \( A_i \) with
\[
(U_i, { \left.{{{\mathcal{O}}_{X}}} \right|_{{U_i}} } ) { { \, \xrightarrow{\sim}\, }}(\operatorname{Spec}A_i, {\mathcal{O}}_{\operatorname{Spec}A_i})
.\]
:::

::: {.remark}
This produces the right objects, but not the correct morphisms. This is a subtle issue! With this definition, a morphism of schemes would be a morphism of ringed spaces \( (f, f^\#) \) with \( f\in {\mathsf{Top}}(X, Y) \) and \( f^\# \in {\mathsf{Sh}}_{/ {Y}} ({\mathcal{O}}_Y, f_* {\mathcal{O}}_X) \), where \( f^\# \) is supposed to capture "pullback of functions". The issue: \( f^\# \) may not notice that \( p \xrightarrow{f} f(p) \)! In particular, it may not preserve the fact that \( f(p) = 0 \).

```{=tex}
\begin{tikzpicture}
\fontsize{42pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-09-15_11-49.pdf_tex} };
\end{tikzpicture}
```
Hartshorne exercises for how this issue can actually arise.
:::

::: {.remark}
Let \( (f, f^\#) \) be a map of ringed spaces, then there is an induced map
\[
f_p^\#: {\mathcal{O}}_{Y, f(p)} &\to {\mathcal{O}}_{X, p} \\
(U, s) &\mapsto (f^{-1}(U), f^\#(U)(s))
.\]
:::

::: {.definition title="Locally ringed space"}
A **locally ringed space** \( (X, {\mathcal{O}}_X) \) is a ringed space for which the stalks \( {\mathcal{O}}_{X, p} \in \mathsf{Loc}\mathsf{Ring} \) are local rings, i.e. there exists a unique maximal ideal.
:::

::: {.example title="of a locally ringed space"}
For \( (X, {\mathcal{O}}_X) \coloneqq(\operatorname{Spec}A, {\mathcal{O}}_{\operatorname{Spec}A}) \), we saw that \( {\mathcal{O}}_{X, p} = A \left[ { \scriptstyle { {p}^{-1}}  } \right] \), which is local.
:::

::: {.definition title="Morphisms of locally ringed spaces"}
A **morphism of locally ringed spaces** is a morphism of ringed spaces
\[
(f, F^\#): (X, {\mathcal{O}}_X) \to (Y, {\mathcal{O}}_Y)
\]
such that \( f^\#_p: {\mathcal{O}}_{Y, f(p)} \to {\mathcal{O}}_{X, p} \) is a homomorphism of local rings, i.e. \( f^\#({\mathfrak{m}}_{f(p)}) \subseteq {\mathfrak{m}}_p \).

> Here we should also require that \( f^\# \neq 0 \).
:::

::: {.remark}
Morally: this extra condition enforces that pulling back functions vanishing at \( f(p) \) yields functions which vanish at \( p \).
:::

::: {.remark}
Alternatively one could require that \( (f^\#)^{-1}({\mathfrak{m}}_p) = {\mathfrak{m}}_{f(p)} \), and (claim) this is equivalent to the above definition. Use that \( (f^\#)^{-1}({\mathfrak{m}}_p) \) is a prime ideal containing \( {\mathfrak{m}}_p \).
:::

::: {.example title="of a locally ringed space"}
Take \( (X, {\mathcal{O}}_X) \coloneqq({\mathbb{R}}, C^0({-}; {\mathbb{R}})) \). Why this is in \( \mathsf{Loc}\mathsf{RingSp} \): write a stalk as
\[
C_p^0 = \left\{{(f, I) {~\mathrel{\Big|}~}I\ni p \text{ an interval}, f\in {\mathsf{Top}}(I, {\mathbb{R}})}\right\}_{/ {\sim}} 
.\]
Why is this local? Take \( {\mathfrak{m}}_p \coloneqq\left\{{(f, I) {~\mathrel{\Big|}~}f(p) = 0}\right\} \), which is maximal since \( C_p^0/{\mathfrak{m}}\cong {\mathbb{R}} \) is a field. Then \( {\mathfrak{m}}_p^c = \left\{{(f, I) {~\mathrel{\Big|}~}f(p) \neq 0}\right\} \), and any continuous function that isn't zero at \( p \) is nonzero in some neighborhood \( J \supseteq I \), so \( { \left.{{f}} \right|_{{J}} }\neq 0 \) anywhere. Then \( (f, I) \sim ({ \left.{{f}} \right|_{{J}} }, J) \), which is invertible in the ring, so any element in the complement is a unit.
:::

::: {.example title="?"}
Consider
\[
({\mathbb{R}}, C^0({-}; {\mathbb{R}})) \xrightarrow{(f, f^\#)} ({\mathbb{R}}, C^\infty({-}; {\mathbb{R}}))
.\]
Take \( f = \operatorname{id} \) and the inclusion
\[
f^\# : C^\infty({-}; {\mathbb{R}})\hookrightarrow\operatorname{id}_* C^0({-}; {\mathbb{R}}) = C^0({-}; {\mathbb{R}})
.\]
Then
\[
f_p^\#: C_p^\infty({-}; {\mathbb{R}}) \to C_p^0({-}; {\mathbb{R}})
.\]
satisfies \( f_p^\#({\mathfrak{m}}^\infty_{\operatorname{id}(p)}) = {\mathfrak{m}}^0_p \). We also have \( (f_p^\#)^{-1}({\mathfrak{m}}_p^0) = {\mathfrak{m}}_p^\infty \), since the germs are just equal.
:::

::: {.definition title="Scheme"}
A **scheme** \( (X, {\mathcal{O}}_X) \) is a locally ringed space which is locally isomorphic to \( (\operatorname{Spec}A, {\mathcal{O}}_{\operatorname{Spec}A}) \) in \( \mathsf{Loc}\mathsf{RingSp} \). A **morphism of schemes** is a morphism in \( \mathsf{Loc}\mathsf{RingSp} \).
:::

::: {.remark}
Note that we can restrict to opens, since this doesn't change the stalks.
:::

::: {.remark}
As a proof of concept that this is a good notion, we'll see that there's a fully faithful contravariant functor \( \operatorname{Spec}: \mathsf{CRing}\to {\mathsf{Sch}} \), so
\[
\operatorname{Spec}(\mathop{\mathrm{Mor}}_\mathsf{Ring}(B, A)) = \mathop{\mathrm{Mor}}_{\mathsf{Sch}}( \operatorname{Spec}A, \operatorname{Spec}B)
.\]
:::

# Friday, September 17

::: {.remark}
Recall from last time: a *locally ringed space* \( (X, {\mathcal{O}}_X) \) is a ringed space (so \( X\in {\mathsf{Top}}, {\mathcal{O}}_X \in {\mathsf{Sh}}(X, \mathsf{Ring})) \) such that the stalks \( {\mathcal{O}}_{X, p} \in \mathsf{Loc}\mathsf{Ring} \) for all points \( p\in X \). Some examples:

-   \( (M, {\mathcal{O}}_M) \) with \( M \) a manifold and \( {\mathcal{O}}_M \) any sheaf of reasonable functions,
-   \( (\operatorname{Spec}A, {\mathcal{O}}_{\operatorname{Spec}A}) \)

We defined a scheme as a locally ringed space which is locally isomorphic in \( \mathsf{Loc}\mathsf{RingSp} \) to \( (\operatorname{Spec}A, {\mathcal{O}}_{\operatorname{Spec}A}) \). Recall that **locally** meant there exists an open cover \( {\mathcal{U}} \) with the property holding for every element in the cover. Note that most "local" conditions from commutative algebra (that can be checked at all localizations) will correspond to properties that hold on *all* open covers.

> There are generally two ways to define properties of schemes: either it holds for every affine open cover, or there exists an affine open cover.
:::

::: {.proposition title="?"}
```{=tex}
\envlist
```
a.  If \( A\in \mathsf{Ring} \), then \( (\operatorname{Spec}A, {\mathcal{O}}_{\operatorname{Spec}A})\in \mathsf{Loc}\mathsf{RingSp} \).
b.  If \( f\in \mathsf{CRing}(A, B) \) is a ring morphism, it induces a morphism \( (f, f^\#) \in \mathsf{Loc}\mathsf{RingSp}(\operatorname{Spec}B, \operatorname{Spec}A) \).
c.  Moreover, every \( (f, f^\#) \in \mathsf{Loc}\mathsf{RingSp}(\operatorname{Spec}B, \operatorname{Spec}A) \) is induced by some \( f\in {\mathsf{Top}}(A, B) \).
:::

::: {.remark}
Note that morphisms in \( \mathsf{RingSp} \) don't necessarily restrict to morphisms in \( \mathsf{Loc}\mathsf{RingSp} \), i.e. this is not a full subcategory, since morphisms of rings need not be morphisms of local rings (i.e. those preserving the maximal ideal).
:::

::: {.proof title="of (a) and (b)"}
Part (a): This follows from the theorem last week that \( {\mathcal{O}}_{\operatorname{Spec}A, p} = A \left[ { \scriptstyle { {p}^{-1}}  } \right] \).

Part(b): There's only ever one thing to do! Define the set-theoretic map
\[
f: \operatorname{Spec}B \to \operatorname{Spec}A \\
p &\mapsto \phi^{-1}(p)
.\]
Why this is also continuous: we'll show preimages preserve closed sets. We can write
\[
f^{-1}(V(I)) 
&= f^{-1}\qty{\left\{{Q {~\mathrel{\Big|}~}Q \supseteq I}\right\}} \\
&= \left\{{{\mathfrak{p}}{~\mathrel{\Big|}~}\phi^{-1}({\mathfrak{p}}) \supseteq I}\right\} \\
&= \left\{{{\mathfrak{p}}{~\mathrel{\Big|}~}{\mathfrak{p}}\supseteq I}\right\} \\
&= V(\left\langle{ \phi(I)}\right\rangle )
,\]
using that \( f^{-1}(Q) \coloneqq\left\{{{\mathfrak{p}}{~\mathrel{\Big|}~}\phi^{-1}({\mathfrak{p}}) = Q}\right\} \).

Now localize to get \( \phi_p: A \left[ { \scriptstyle { {\phi^{-1}(p)}^{-1}}  } \right]\to B \left[ { \scriptstyle { {p}^{-1}}  } \right] \). We now need a sheaf map:
\[
f^\#: {\mathcal{O}}_{\operatorname{Spec}A} \to f_* {\mathcal{O}}_{\operatorname{Spec}B}
,\]
i.e. an assignment \( f^\#(V): {\mathcal{O}}_{\operatorname{Spec}A}(V) \to {\mathcal{O}}_{\operatorname{Spec}B}(f^{-1}(V)) \) for all \( V \subseteq \operatorname{Spec}A \) open. We can write
\[
{\mathcal{O}}_{\operatorname{Spec}A}(V) \coloneqq\left\{{ s \in {\mathsf{Top}}(V, \prod_{p\in V} A \left[ { \scriptstyle { {p}^{-1}}  } \right] ) {~\mathrel{\Big|}~}s(p)\in A \left[ { \scriptstyle { {p}^{-1}}  } \right], s \text{ locally a fraction} }\right\}
&\longrightarrow
{\mathcal{O}}_{\operatorname{Spec}B}(f^{-1}V) \coloneqq\left\{{ t \in {\mathsf{Top}}(f^{-1}(V) , \prod_{q\in f^{-1}(V) } B \left[ { \scriptstyle { {q}^{-1}}  } \right] ) {~\mathrel{\Big|}~}t(q)\in B \left[ { \scriptstyle { {q}^{-1}}  } \right], t \text{ locally a fraction} }\right\} \\
(s_p)_{p\in V} &\mapsto (p_q(s_p))_{q\in f^{-1}(V)}
.\]
But then \( q\in f^{-1}(p) \) for some \( p\in V \) iff \( p\in \phi^{-1}(q) \). So using the map on stalks gives a map on sections, and it preserves the property of locally being a fraction, so this yields a morphism of sheaves of rings, and it remains to check that it's a local morphism.

> Note that you can get this by composing \( f^{-1}(V) \xrightarrow{f} V \xrightarrow{s} \prod A \left[ { \scriptstyle { {p}^{-1}}  } \right] \xrightarrow{\prod \phi_p} \prod B \left[ { \scriptstyle { {\phi(p)}^{-1}}  } \right] \).

We now claim \( f^\# \) is a local homeomorphism. This is clear: we can write \( f^\#_p: A \left[ { \scriptstyle { {f(p)}^{-1}}  } \right] \to B \left[ { \scriptstyle { {p}^{-1}}  } \right] \), and \( f_p^\# = \phi_p \) by construction, which is a local morphism of rings. So \( f^\# \) is a morphism in \( \mathsf{Loc}\mathsf{RingSp} \).
:::

::: {.proof title="of (c)"}
Let \( (f, f^\#): (\operatorname{Spec}B, {\mathcal{O}}_{\operatorname{Spec}B} ) \to (\operatorname{Spec}A, {\mathcal{O}}_{\operatorname{Spec}A}) \) be a morphism in \( \mathsf{Loc}\mathsf{RingSp} \). Goal: define \( \phi \in \mathsf{CRing}(A, B) \), inducing \( (f, f^\#) \) in the sense of part (b). Note that by definition, \( f^\#(\operatorname{Spec}A): {\mathcal{O}}_{\operatorname{Spec}A}(\operatorname{Spec}A) \to {\mathcal{O}}_{\operatorname{Spec}B}(\operatorname{Spec}B) \). By the previous theorem, global sections recovers rings on affines, so \( f^\#(\operatorname{Spec}A): A\to B \).

::: {.claim}
\( \phi^{-1}(p) = f(p) \).
:::

For any \( p\in \operatorname{Spec}B \), we can localize \( f^\# \) to obtain a local ring morphism
\[
f^\#_p: {\mathcal{O}}_{\operatorname{Spec}A, f(p)} \to {\mathcal{O}}_{\operatorname{Spec}B, p}
.\]
We also have a commutative diagram

```{=tex}
\begin{tikzcd}
    A && B \\
    \\
    {A \left[ { \scriptstyle { {f(p)}^{-1}}  } \right]} && {B \left[ { \scriptstyle { {p}^{-1}}  } \right]}
    \arrow["{f^\#(\operatorname{Spec}A) = \phi}", from=1-1, to=1-3]
    \arrow["{f^\#(\operatorname{Spec}A)_p = \phi_p}"', from=3-1, to=3-3]
    \arrow["{\text{localize}}"{description}, from=1-1, to=3-1]
    \arrow["{\text{localize}}"{description}, from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJBIl0sWzIsMCwiQiJdLFswLDIsIkFcXGxvY2FsaXple2YocCl9Il0sWzIsMiwiQlxcbG9jYWxpemV7cH0iXSxbMCwxLCJmXlxcIyhcXHNwZWMgQSkgPSBcXHBoaSJdLFsyLDMsImZeXFwjKFxcc3BlYyBBKV9wID0gXFxwaGlfcCIsMl0sWzAsMiwiXFx0ZXh0e2xvY2FsaXplfSIsMV0sWzEsMywiXFx0ZXh0e2xvY2FsaXplfSIsMV1d)

Now we use locality in a key way to conclude \( \phi^{-1}(p) = f(p) \) by commutativity: check that \( (f^\#_p)^{-1}({\mathfrak{m}}_p) = {\mathfrak{m}}_{f(p)} \xrightarrow{{\mathsf{loc}}^{-1}} f(p) \), and \( {\mathsf{loc}}^{-1}({\mathfrak{m}}_p) = p \xrightarrow{\phi} \phi(p) \).
:::

# Monday, September 20

::: {.remark}
Last time: we proved the following:
:::

::: {.proposition title="?"}
```{=tex}
\envlist
```
a.  If \( A\in \mathsf{Ring} \), then \( (\operatorname{Spec}A, {\mathcal{O}}_{\operatorname{Spec}A})\in \mathsf{Loc}\mathsf{RingSp} \).
b.  If \( f\in \mathsf{CRing}(A, B) \) is a ring morphism, it induces a morphism \( (f, f^\#) \in \mathsf{Loc}\mathsf{RingSp}(\operatorname{Spec}B, \operatorname{Spec}A) \).
c.  Moreover, every \( (f, f^\#) \in \mathsf{Loc}\mathsf{RingSp}(\operatorname{Spec}B, \operatorname{Spec}A) \) is induced by some \( f\in {\mathsf{Top}}(A, B) \).
:::

::: {.remark}
Recall that a *scheme* \( (X, {\mathcal{O}}_X) \) is a LRS which is locally isomorphic to some affine scheme \( (\operatorname{Spec}A, {\mathcal{O}}_{\operatorname{Spec}A}) \):

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-09-20_11-35.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.definition title="Complete Ring"}
A ring \( R \) is **complete** with respect to \( I{~\trianglelefteq~}R \) if \( R = \invlim_{\leftarrow} R/I^k \). Elements can be written as sequence \( (a_k)_{k\geq 0} \) such that \( a_k \equiv a_{k-1} \operatorname{mod}I^{k-1} \).
:::

::: {.example title="?"}
A non-example: let \( R = {\mathbb{C}}\dagger{t} \) and \( I = \left\langle{t}\right\rangle \), then set

-   \( a_0 = 1 \),
-   \( a_1 = 1 + t \),
-   \( a_2 = 1 + t + t^2 \),
-   \( a_3 = 1 + t + t^2 + t^3 \)

This is an element in \( \colim_n R/I^n \), but is not realized by any polynomial, since any polynomial is annihilated by quotienting by a large enough power of \( t \). Note that \( {\mathbb{C}} { \left[ {t} \right] }  = {\mathbb{C}} { \left[ {[} \right] } t] { {}^{ \widehat{\left\langle{t}\right\rangle} } } \).
:::

::: {.example title="?"}
Part (c) of the proposition would be false if we considered all ringed spaces. Let \( R \in \mathsf{DVR} \), so \( R \) is local with a principal maximal idea, or equivalently equipped with a valuation \( v: R\setminus\left\{{0}\right\}\to {\mathbb{Z}}_{\geq 0} \) satisfying

-   \( v(x+y) = v(x) + v(y) \)
-   \( v(x+y) \geq \min{v(x), v(y)} \)

Then \( v^{-1}({\mathbb{Z}}_{\geq 0}) \) is the maximal ideal. Here we'll additionally require that \( R \) is **complete** with respect to its maximal ideal \( {\mathfrak{m}} \).

An example is \( R = {\mathbb{C}} { \left[ {t} \right] }  \), with \( v \) the \( t{\hbox{-}} \)adic valuation. Another is \( R = { {\mathbb{Z}}_p }= {\mathbb{Z}}{ {}^{ \widehat{p} } } \), the completion of \( {\mathbb{Z}} \) at the prime \( p \), given by elements \( a_n\cdots a_0 \) with \( a_i \in \left\{{0, \cdots, p-1}\right\} \). This has maximal ideal \( {\mathfrak{m}}= p{ {\mathbb{Z}}_p } \).
:::

::: {.example title="A morphisms of ringed spaces that isn't a morphism of locally ringed spaces"}
Let \( K = \operatorname{ff}(R) \) be the fraction field of \( R \), then
\[
\operatorname{ff}({\mathbb{C}} { \left[ {t} \right] } ) = {\mathbb{C}} { \left( {t} \right) }  = \left\{{\sum_{k\geq -N} a_k t^k {~\mathrel{\Big|}~}N\in {\mathbb{Z}}_{\geq 0} }\right\}
.\]
Also \( \operatorname{ff}({ {\mathbb{Z}}_p }) = { {\mathbb{Q}}_p } \), and these are both examples of complete DVRs.

Consider \( (\operatorname{Spec}R, {\mathcal{O}}_{\operatorname{Spec}R}) \) and \( (\operatorname{Spec}K, {\mathcal{O}}_{\operatorname{Spec}K}) \). Then \( X_1\coloneqq\operatorname{Spec}R = \left\{{ \left\langle{0}\right\rangle, {\mathfrak{m}}}\right\} \), and the closed sets are \( \emptyset, X_1, V({\mathfrak{m}}) = \left\{{{\mathfrak{m}}}\right\} \). For \( X_2\coloneqq\operatorname{Spec}K = \left\{{\left\langle{0}\right\rangle}\right\} \), there is one points since it's a field. Use that \( \iota: R \hookrightarrow K \), so define a morphism that does not come from a ring morphism \( R\to K \):
\[
(f, f^\#): (\operatorname{Spec}K, {\mathcal{O}}_{\operatorname{Spec}K}) &\to (\operatorname{Spec}R, {\mathcal{O}}_{\operatorname{Spec}R}) \\
\\
\\
f: \operatorname{Spec}K &\to \operatorname{Spec}R\\
0 &\mapsto {\mathfrak{m}}
\\
\\
f^\#: {\mathcal{O}}_{\operatorname{Spec}R} &\to f_* {\mathcal{O}}_{\operatorname{Spec}K} \\
\emptyset &\mapsto 0 \\
\operatorname{Spec}R & \mapsto R \\
\left\{{\left\langle{0}\right\rangle}\right\} &\mapsto K
.\]
using that \( f^{-1}(\left\langle{0}\right\rangle) = \left\langle{m}\right\rangle \) and we can realize the last assignment as a distinguished open mapping to its stalk/localization. Then check
\[
f_* {\mathcal{O}}_{\operatorname{Spec}K}(\emptyset) &= 0
f_* {\mathcal{O}}_{\operatorname{Spec}K}(\operatorname{Spec}R) &= K \\
f_* {\mathcal{O}}_{\operatorname{Spec}K}(\left\{{\left\langle{0}\right\rangle}\right\}) &= {\mathcal{O}}_{\operatorname{Spec}K}(f^{-1}(\left\langle{0}\right\rangle)) = {\mathcal{O}}_{\operatorname{Spec}K}(\emptyset) = 0 \\
.\]
This would induces a commutative diagram, showing this is a morphism of ringed spaces:

```{=tex}
\begin{tikzcd}
    R && K \\
    \\
    K && 0 \\
    \\
    0 && 0
    \arrow["{f^\#(X)}", from=1-1, to=1-3]
    \arrow["{f^\#(\left\{{\left\langle{0}\right\rangle}\right\})}", from=3-1, to=3-3]
    \arrow[from=1-1, to=3-1]
    \arrow[from=1-3, to=3-3]
    \arrow[from=3-3, to=5-3]
    \arrow[from=3-1, to=5-1]
    \arrow["{f^\#(\emptyset)}", from=5-1, to=5-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJSIl0sWzIsMCwiSyJdLFswLDIsIksiXSxbMiwyLCIwIl0sWzAsNCwiMCJdLFsyLDQsIjAiXSxbMCwxLCJmXlxcIyhYKSJdLFsyLDMsImZeXFwjKFxcdHN7XFxnZW5zIDB9KSJdLFswLDJdLFsxLDNdLFszLDVdLFsyLDRdLFs0LDUsImZeXFwjKFxcZW1wdHlzZXQpIl1d)

::: {.question}
Is this a morphism of *locally* ringed spaces?
:::

The answer is **no**, since the induced morphism on stalks won't be morphisms of *local* rings. We can check
\[
f^\#_{\left\langle{0}\right\rangle}: {\mathcal{O}}_{\operatorname{Spec}R, {\mathfrak{m}}} &\to {\mathcal{O}}_{\operatorname{Spec}K, \left\langle{0}\right\rangle} \\
f^\#_{\left\langle{0}\right\rangle}: R = R \left[ { \scriptstyle { {{\mathfrak{m}}}^{-1}}  } \right] &\to K \left[ { \scriptstyle { {\left\langle{0}\right\rangle}^{-1}}  } \right] = K
,\]
and \( (f^\#_{\left\langle{0}\right\rangle})^{-1}(\left\langle{0}\right\rangle) = \left\langle{0}\right\rangle \neq {\mathfrak{m}} \), which is not the maximal ideal of \( R \).

On the other hand, using part (b) of the proposition, any \( \phi\in \mathsf{Ring}(R, K) \) induces a morphism \( \tilde \phi: \mathsf{Loc}\mathsf{RingSp}(\operatorname{Spec}K, \operatorname{Spec}R) \). So \( (f, f^\#) \) is not induced by any such ring map \( \phi \).
:::

::: {.remark}
So the functor
\[
\mathsf{Ring}&\to \mathsf{RingSp}\\
A &\mapsto (\operatorname{Spec}A, {\mathcal{O}}_{\operatorname{Spec}A})
\]
is not fully faithful, but restricting the essential image to \( \mathsf{Loc}\mathsf{RingSp} \).
:::

::: {.remark}
Consider the heuristic \( \operatorname{Spec}{\mathbb{C}} { \left[ {t} \right] }  \sim {\mathbb{D}}\subseteq {\mathbb{C}} \) and \( \operatorname{Spec}{\mathbb{C}} { \left( {t} \right) }  \sim {\mathbb{D}}\setminus\left\{{0}\right\} \).
:::

# Wednesday, September 22

::: {.remark}
Today: how to build more schemes by gluing known ones together. Let \( (X_1, {\mathcal{O}}_{X_1}) \) and \( (X_2, {\mathcal{O}}_{X_2}) \in {\mathsf{Sch}} \), i.e. locally ringed spaces locally isomorphic to \( (\operatorname{Spec}R, {\mathcal{O}}_{\operatorname{Spec}R}) \). Let \( U_i \subseteq X_i \), and suppose we're given an isomorphism in \( \mathsf{Loc}\mathsf{RingSp} \):
\[
\phi: 
(U_1, { \left.{{{\mathcal{O}}_{X_1}}} \right|_{{U_1}} }) \to 
(U_2, { \left.{{{\mathcal{O}}_{X_2}}} \right|_{{U_2}} }) 
.\]

```{=tex}
\begin{tikzpicture}
\fontsize{42pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-09-22_11-41.pdf_tex} };
\end{tikzpicture}
```
Define a locally ringed space as follows: set \( X = X_1 {\textstyle\coprod}X_2/ x\sim \phi(x) \), and define
\[
{\mathcal{O}}_X(U) \coloneqq
\left\{{ 
s_1 \in {\mathcal{O}}_{X_1}(X_1 \cap U), s_2\in {\mathcal{O}}_{X_2}(X_2 \cap U) {~\mathrel{\Big|}~}{ \left.{{s_1}} \right|_{{U_1 \cap U}} } = \phi^\#(U_2 \cap U)\qty{ { \left.{{s_2}} \right|_{{U_2 \cap U}} } }
}\right\} 
.\]
:::

::: {.example title="?"}
Consider \( I \coloneqq(0, 1) \subseteq {\mathbb{R}} \) and take \( X_1 = X_2 \coloneqq(I, C^\infty({-}; {\mathbb{R}})) \). Using these to cover the circle, we can obtain \( (S^1, C^\infty({-}; {\mathbb{R}})) \), using smooth functions that agree on the overlap (here a disjoint union of smaller intervals).
:::

::: {.example title="A non-affine scheme"}
Let \( X_1 = X_2 \coloneqq{\mathbb{A}}^1_{/ {k}}  \coloneqq\operatorname{Spec}k[x] \), and set \( U_1 \subseteq X_1 \coloneqq D(x) \). Then take the clear isomorphism
\[
(U_1, {\mathcal{O}}_{X_1}{ \left.{{}} \right|_{{U_1}} }) \xrightarrow{\operatorname{id}} 
(U_2, {\mathcal{O}}_{X_2}{ \left.{{}} \right|_{{U_2}} })
,\]
since they're the same open subset of the same affine variety. Gluing yields the following:

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-09-22_11-56.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.exercise title="?"}
Prove this is not an affine scheme. Use that regular functions are determined by their values on a Zariski open.
:::

::: {.claim}
For \( X = \operatorname{Spec}R \), recall that \( D(f) \coloneqq\left\{{ p\in \operatorname{Spec}R {~\mathrel{\Big|}~}p\not\ni f}\right\} \). Then \( (D(f), { \left.{{ {\mathcal{O}}_X }} \right|_{{D(f)}} }) \) is an affine scheme.
:::

::: {.proof title="?"}
Consider \( R \left[ { \scriptstyle { {f}^{-1}}  } \right] \coloneqq\left\{{r/f^k {~\mathrel{\Big|}~}r\in R, k\geq 0}\right\}/\sim \). There's a map \( R\to R \left[ { \scriptstyle { {f}^{-1}}  } \right] \) which induces a map \( \operatorname{Spec}R \left[ { \scriptstyle { {f}^{-1}}  } \right] \to \operatorname{Spec}R \), and we claim it's the inclusion of \( D(f) \).

::: {.claim}
\( \operatorname{Spec}R \left[ { \scriptstyle { {f}^{-1}}  } \right] = D(f) \) as spaces.
:::

This uses that primes in the localization are primes in \( R \) not intersecting the inverted set. So \( \operatorname{Spec}R \left[ { \scriptstyle { {f}^{-1}}  } \right] = \left\{{p\in \operatorname{Spec}R {~\mathrel{\Big|}~}p \cap\left\langle{f}\right\rangle = \emptyset}\right\} \), then use that \( p \cap\left\{{f^k}\right\} = \emptyset \iff f\not\in p \), since prime ideals are radical. We now want to show \( {\mathcal{O}}_{\operatorname{Spec}R \left[ { \scriptstyle { {f}^{-1}}  } \right]} = { \left.{{{\mathcal{O}}_{\operatorname{Spec}R}}} \right|_{{D(f)}} } \). Check that
\[
{\mathcal{O}}_{\operatorname{Spec}R \left[ { \scriptstyle { {f}^{-1}}  } \right]} = \left\{{s:U\to \displaystyle\coprod_{p\in U} (R \left[ { \scriptstyle { {f}^{-1}}  } \right]) \left[ { \scriptstyle { {p}^{-1}}  } \right]}\right\}
\]
and
\[
{ \left.{{{\mathcal{O}}_{\operatorname{Spec}R}}} \right|_{{D(f)}} }(U) = \left\{{s: U \to \displaystyle\coprod_{p\in U} R \left[ { \scriptstyle { {p}^{-1}}  } \right]}\right\}
,\]
but \( (R_f)_p = R_p \) since \( f\not \in p \). This uses that \( (R \left[ { \scriptstyle { {S_1}^{-1}}  } \right]) \left[ { \scriptstyle { {S_2}^{-1}}  } \right] = R \left[ { \scriptstyle { {S_2}^{-1}}  } \right] \) when \( S_1 \subseteq S_2 \). The first are functions of the form \( (a/f^k)/(b/f^\ell) = f^\ell a/f^k b \), so anything locally a fraction in \( R_f \) is locally a fraction in \( R \).
:::

::: {.example title="?"}
Let \( X_1 = {\mathbb{A}}^1_{/ {k}}  \) with \( U_1 \coloneqq D(x) \subseteq X_2 \) and \( X_2 = {\mathbb{A}}^1_{/ {k}}  \) with \( U_2 = D(y) \). Then
\[
(U_1, {\mathcal{O}}_{X_1}{ \left.{{}} \right|_{{U_1}} }) \cong (k[x, x^{-1}], {\mathcal{O}}_{\operatorname{Spec}k[x, x^{-1}]}) 
\xrightarrow{(\phi, \phi^\#)} 
(U_2, {\mathcal{O}}_{X_2}{ \left.{{}} \right|_{{U_2}} }) \cong (k[y, y^{-1}], {\mathcal{O}}_{\operatorname{Spec}k[y, y^{-1}]})
.\]

Then \( (\phi, \phi^\#) \) is an isomorphism in \( \mathsf{Loc}\mathsf{RingSp} \) is given by a unique isomorphism
\[
\iota: k[x, x^{-1}] &\to k[y, y^{-1}] \\
y &\mapsto x \\
y^{-1}&\mapsto x^{-1}
.\]
Note that there is another isomorphism:
\[
\iota': k[x, x^{-1}] &\to k[y, y^{-1}] \\
y &\mapsto x^{-1}\\
y^{-1}&\mapsto x
.\]
So glue instead by the morphism \( (\phi, \phi^\#) \) induced by \( \iota' \). We'll then define **projective space** as
\[
{\mathbb{P}}^1_{/ {k}}  \coloneqq{\mathbb{A}}^1_{/ {k}}  \displaystyle\coprod_{(\phi, \phi^\#)} {\mathbb{A}}^1_{/ {k}} 
.\]
Note that this works over any ring!

What does this do to closed points? The closed points of \( \operatorname{Spec}k[x, x^{-1}] \) are \( \left\{{(x-c) {~\mathrel{\Big|}~}c\neq 0}\right\} \) if \( k=\mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \), which corresponded to the closed points \( c\in {\mathbb{A}}^1_{/ {k}}  \) as a variety. Under \( x\mapsto y^{-1} \), we have \( (x-c)\mapsto (y^{-1}- c) = (y-c^{-1}) \), thus the variety point \( c \) gets sent to \( c^{-1} \).

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-09-22_12-21.pdf_tex} };
\end{tikzpicture}
```
:::

# Projective Varieties (Tuesday, September 28)

## Projective Space

::: {.definition title="Affine space"}
Let \( R \) be a ring, then the **affine space of dimension \( n \) over \( R \)** is defined as
\[
{\mathbb{A}}^n_{/ {R}}  \coloneqq(\operatorname{Spec}S, {\mathcal{O}}_{\operatorname{Spec}S}) && S \coloneqq R[{ {x}_1, {x}_2, \cdots, {x}_{n}}]
.\]
:::

::: {.definition title="Slice schemes"}
Let \( S\in {\mathsf{Sch}} \), then \( X\in {\mathsf{Sch}}_{/ {S}}  \) is a **scheme over \( S \)** iff \( X \) is a scheme equipped with a morphism of schemes \( X\to S \). These form a category where morphisms \( \phi \) are commuting triangles:

```{=tex}
\begin{tikzcd}
X 
  \ar[rd, "f_X"]
  \ar[rr, "\phi"] 
& 
& 
Y
  \ar[ld, "f_Y"] 
\\
& 
S 
& 
\end{tikzcd}
```
:::

::: {.remark}
Since \( {\mathbb{Z}}\in \mathsf{CRing} \) is initial, there exists a unique ring morphism \( {\mathbb{Z}}\to {\mathbb{R}} \) for any \( R\in \mathsf{CRing} \). Similarly, \( \operatorname{Spec}{\mathbb{Z}}\in{\mathsf{Sch}} \) is final, so there exist unique morphisms \( \operatorname{Spec}R\to \operatorname{Spec}{\mathbb{Z}} \) for every \( R \), and thus \( {\mathsf{Sch}}_{/ {\operatorname{Spec}{\mathbb{Z}}}}  \cong {\mathsf{Sch}} \) just recovers the category of schemes.
:::

::: {.remark}
Recall that if \( k = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \in \mathsf{Field} \) is algebraically closed, then \( {\mathbb{P}}^n_{/ {k}}  \coloneqq{\mathbb{A}}^{n+1}_{/ {k}}  \setminus\left\{{0}\right\}/\sim \) where \( \mathbf{x}\sim \lambda \mathbf{x} \) for every \( \lambda \in k^{\times} \), or equivalently \( {\operatorname{Gr}}_k(k^{n+1}) \), the space of lines through the origin in \( k^{n+1} \) (regarded as a vector space). Let \( f\in k[x_1, \cdots, x_{n}]_d^{ { \mathrm{homog} } } \) be homogeneous of degree \( d \), so \( f(\lambda \mathbf{x}) = \lambda^d f(\mathbf{x}) \). Then its vanishing locus in projective space is well-defined:
\[
V_p(f) \coloneqq\left\{{ \mathbf{x} = {\left[ {x_0: \cdots : x_n} \right]} \subseteq {\mathbb{P}}^n_{/ {k}}  {~\mathrel{\Big|}~}f(\mathbf{x}) = 0 }\right\}\subseteq {\mathbb{P}}^n_{/ {k}} 
.\]
:::

## Graded Rings and Homogeneous Ideals

::: {.definition title="Graded rings"}
A ring \( R\in \mathsf{CRing} \) is **graded** if it admits a decomposition as an abelian group \( R + \bigoplus _{d\geq 0} S_d \), where \( S_d \) are the degree \( d \) pieces satisfying \( S_a + S_b \subseteq S_{a+b} \).
:::

::: {.remark}
Note that \( S_d \in {\mathsf{S_0}{\hbox{-}}\mathsf{Mod}} \) for any \( S \in {\mathsf{gr}\,}\mathsf{CRing} \) and any degree \( d \).
:::

::: {.example title="?"}
\( R\coloneqq k[x_1, \cdots, x_{n}]^ { \mathrm{homog} }  \) is graded by monomial degree:
\[
1 + (x_0) + (x_0^2 +x_1^2) \in R_0 + R_1 + R_2
.\]
:::

::: {.definition title="Homogeneous Ideals"}
Let \( S\in {\mathsf{gr}\,}\mathsf{CRing} \) be a graded ring, then an ideal \( I {~\trianglelefteq~}S \) is **homogeneous** if

1.  \( I \) is generated by homogeneous elements, and
2.  For all \( f\in I \), all homogeneous pieces \( f_i \in S_i \) such that \( f = \sum_{i\leq d} f_d \) lie in \( I \).
:::

::: {.example title="?"}
If \( f \coloneqq 1 + x_0 + x_0^2 + x_1^2 \in I \) is an element in a homogeneous ideal, then \( 1, x_0, x_0^2 + x_1\in I \) as well.
:::

::: {.remark}
If \( I{~\trianglelefteq~}k[x_1, \cdots, x_{n}] \) is a homogeneous ideal, say \( I = \left\langle{{ {f}_1, {f}_2, \cdots, {f}_{m}}}\right\rangle \) with each \( f_i \) homogeneous of uniform degree \( d \), then \( V_p(I) \) is a well-defined projective variety.
:::

::: {.example title="?"}
```{=tex}
\envlist
```
-   Take \( V_p(y^2 - (x^3 + axz^2 + bz^3)) \) for \( a, b\in k \) and \( 4a^3-27b^2 \neq 0 \). This defines an elliptic curve.

-   \( {\mathbb{P}}^n_{/ {k}}  = V_p(0) \).
:::

::: {.definition title="Irrelevant Ideal"}
We define \( S_+ \coloneqq\bigoplus _{d\geq 1} S_d \) to be the **irrelevant ideal**.
:::

## Projective Nullstellensatz

::: {.remark}
We again define the Zariski topology on \( X = V_p(I) \) whose closed sets are of the form \( V_p(J) \) for \( J \subseteq (k[x_1, \cdots, x_{n}]/I)^{ { \mathrm{homog} } } \)
:::

::: {.theorem title="Projective Nullstellensatz"}
Let \( k[X] \coloneqq k[x_1, \cdots, x_{n}]/I \) be the projective coordinate ring of \( X \subset {\mathbb{P}}^n_{/ {k}}  \) and \( I = I(X) \). Then there is a bijection:
\[
\left\{{\substack{
  \text{Points }x\in X
}}\right\}
&\rightleftharpoons
\left\{{\substack{
  \text{Homogeneous }I\in \operatorname{mSpec}S \\
  \text{with }I\not\supseteq S_+
}}\right\} \\
x &\mapsto I(x) \coloneqq\left\langle{ f\in k[x_1, \cdots, x_{n}]^ { \mathrm{homog} } {~\mathrel{\Big|}~}f(x) = 0}\right\rangle \\
V_p(I) &\mapsfrom I
\]
:::

::: {.remark}
Note \( I \) doesn't contain \( S_+ \) iff \( I \) is strictly contained in \( S_+ \).
:::

## Proj

::: {.definition title="Proj"}
Let \( S\in {\mathsf{gr}\,}\mathsf{CRing} \), then define
\[
\mathop{\mathrm{Proj}}S \coloneqq\left\{{p\in  \operatorname{Spec}S \text{ homogeneous} {~\mathrel{\Big|}~}p\not\supseteq S_+}\right\}
,\]
where \( S_+ \coloneqq\bigoplus_{d\geq 1} S_d \) is the irrelevant ideal.
:::

::: {.remark}
We'll define \( {\mathcal{O}}_{\mathop{\mathrm{Proj}}S} \) next class.
:::

# Friday, October 01

::: {.remark}
Recall the Proj construction: for \( S = \bigoplus_{d\geq 0} S_d \in {\mathsf{gr}\,}\mathsf{CRing} \) we define the irrelevant ideal \( S_+ \coloneqq\bigoplus _{d\geq 1} S_d \) and
\[
\mathop{\mathrm{Proj}}S &\coloneqq\left\{{p\in \operatorname{Spec}S \text{ homog } {~\mathrel{\Big|}~}p\not\supseteq S_+}\right\} \\
{\mathcal{O}}_{\mathop{\mathrm{Proj}}S} &\coloneqq\left\{{s: U\to \displaystyle\coprod_{p\in U} S \left[ { \scriptstyle { { \qty{ {p}^c } }^{-1}}  } \right] {~\mathrel{\Big|}~}s(p) \in S \left[ { \scriptstyle { { \qty{ {p}^c } }^{-1}}  } \right], s \text{ locally a fraction}}\right\}
,\]
recalling that \( S \left[ { \scriptstyle { { \qty{ {p}^c } }^{-1}}  } \right] = \left\{{a /f {~\mathrel{\Big|}~}\deg a = \deg f, a,f\in S, f\not\in p}\right\} \). We showed this was a locally ringed space using
\[
( D(f), { \left.{{{\mathcal{O}}_{\mathop{\mathrm{Proj}}S}}} \right|_{{D(f)}} } { { \, \xrightarrow{\sim}\, }}(\operatorname{Spec}S \left[ { \scriptstyle { {f}^{-1}}  } \right], {\mathcal{O}}_{\operatorname{Spec}S \left[ { \scriptstyle { {f}^{-1}}  } \right]})
,\]
where \( D(f) \coloneqq\left\{{p\in \mathop{\mathrm{proj}}S {~\mathrel{\Big|}~}f\not\in p}\right\} \), and thus \( \mathop{\mathrm{Proj}}S \in {\mathsf{Sch}} \).
:::

::: {.exercise title="?"}
Check that there is a natural map of schemes \( \mathop{\mathrm{Proj}}S\to \operatorname{Spec}S_0 \).
:::

::: {.remark}
Consider
\[
{\mathbb{P}}^n_{/ {R}}  \coloneqq\mathop{\mathrm{Proj}}R[x_0,\cdots, x_n] && R = k = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \in \mathsf{Field}
.\]
Then the closed points of \( {\mathbb{P}}^n_{/ {k}}  \) are of the form \( \left\langle{a_i x_j - a_j x_i}\right\rangle \in \operatorname{mSpec}k[x_1, \cdots, x_{n}] \) for points \( [a_0: \cdots : a_n] \in k^n/\sim \) where \( \mathbf{a} \sim \lambda \mathbf{a} \) for \( \lambda \in k^{\times} \). Note that \( D(x_i) = \left\{{p\in {\mathbb{P}}^n_{/ {k}}  {~\mathrel{\Big|}~}x_i \not\in p}\right\} \) -- what are the closed points? We discard the hyperplane \( a_i = 0 \) in \( {\mathbb{P}}^n \) to obtain

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-10-01_11-43.pdf_tex} };
\end{tikzpicture}
```
Then \( x_i \in {\mathfrak{m}}_q \) for \( q \coloneqq[a_0: \cdots : a_n] \) iff \( a_i=0 \), and
\[
D(x_i) 
&= \operatorname{Spec}k[x_1, \cdots, x_{n}] \left[ { \scriptstyle { {x_i}^{-1}}  } \right] \\
&= \left\{{f(x_0, \cdots, x_n)/x_i^d {~\mathrel{\Big|}~}\deg f = d}\right\} \\
&= \left\{{f\qty{ {x_0\over x_i }, \cdots, 1, \cdots, {x_n \over x_i }}}\right\} \\
&= k { \left[ {{x_0\over x_i}, \cdots, {x_n \over x_i} } \right] }  \\
&\cong {\mathbb{A}}^n_{/ {k}} 
.\]
We claim that \( \displaystyle\bigcup_{i\geq 0} D(x_i) = {\mathbb{P}}^n_{/ {k}}  \), or equivalently \( \emptyset = \displaystyle\bigcap_{i \geq 0} V(x_i) = V(\left\langle{x_0,\cdots, x_n}\right\rangle) \). But this is true since \( \left\langle{x_0, \cdots, x_n}\right\rangle = S^+ \) is the irrelevant ideal.
:::

::: {.proposition title="?"}
Let \( k = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \in \mathsf{Field} \). Then there is a fully faithful embedding of categories
\[
F: {\mathsf{Var}}_{/ {k}}  \hookrightarrow{\mathsf{Sch}}_{/ {k}} 
.\]
Here \( {\mathsf{Var}}_{/ {k}}  \) are defined as topological spaces with sheaves of rings of *regular functions* which admitted an affine cover of the form \( V(I) \subseteq {\mathbb{A}}^n_{/ {k}}  \) (viewed as a variety).
:::

::: {.example title="Going from a variety to a scheme"}
Consider \( X\coloneqq{\mathbb{A}}^2_{/ {k}}  \) as a variety and separately as a scheme \( X' \). As a variety, \( X \coloneqq k{ {}^{ \scriptscriptstyle\times^{2} }  } \) with the Zariski topology, while as a scheme \( X' = \operatorname{Spec}k[x, y] \) with the Zariski topology. Then there is an inclusion \( X \hookrightarrow X' \) which is a bijection on closed points.

More generally, for \( X\in {\mathsf{Top}} \) any space, define \( t(X) \) to be the set of irreducible closed subsets. Some facts:

-   For \( Y \subseteq X \) closed, \( t(Y) \subseteq t(X) \),
-   \( t(Y_1 \cup Y_2) = t(Y_1) \cup t(Y_2) \),
-   \( t( \displaystyle\bigcap_i Y_i) = \displaystyle\bigcap_i t(Y_i) \).

Define a topology on \( t(X) \) by declaring closed sets to be any of the form \( t(Y) \) for \( Y \subseteq X \) closed. Note that the scheme \( X' \) has non-closed points, i.e. irreducible subvarieties, i.e. irreducible closed subsets of \( X \) as a variety:

```{=tex}
\begin{tikzpicture}
\fontsize{35pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-10-01_12-02.pdf_tex} };
\end{tikzpicture}
```
Then consider the map
\[
\alpha: X &\to t(X) \\
p &\mapsto \left\{{p}\right\}
,\]
noting that this is only well-defined if points are closed in \( X \).

Now let \( V\in {\mathsf{Var}}_{/ {k}}  \) with its sheaf of regular functions \( {\mathcal{O}}_V \) (i.e. restrictions of polynomials). Define a sheaf of rings on \( t(V) \) as \( \alpha_* {\mathcal{O}}_V \), using that \( \alpha \) is continuous, and noting that \( \alpha^{-1}(U) = U \cap\alpha(X) \).

To see this is a scheme, it suffices to check for \( V \) affine since this entire construction is compatible with restriction and we can take an affine cover. Letting \( I = I(V) \) for \( V\in {\mathsf{Aff}}{\mathsf{Var}}_{/ {k}}  \), then \( (t(V), \alpha_* {\mathcal{O}}_V){ { \, \xrightarrow{\sim}\, }}\operatorname{Spec}k[V] \coloneqq\operatorname{Spec}k[x_1, \cdots, x_{n}]/I \). There is a bijection
\[
t(V) &\rightleftharpoons\operatorname{Spec}k[V] \\
Y &\mapsto I(Y) \\
V(p) &\mapsfrom p
.\]
One can check that the topology on \( t(V) \) bijects with the Zariski topology on \( \operatorname{Spec}k[V] \), and
\[
\alpha_* {\mathcal{O}}_V(t(V)) = {\mathcal{O}}_V(V) = {\mathcal{O}}_{\operatorname{Spec}k[V]}(\operatorname{Spec}k[V]) = k[V]
.\]
:::

::: {.exercise title="?"}
Check this on open subsets of \( t(V) \).
:::

::: {.remark}
\( {\mathcal{O}}_X \in {\mathsf{Sh}}(X, {\mathsf{Alg}_{/k} }) \) being a sheaf of \( k{\hbox{-}} \)algebras means the following diagram commutes:
```{=tex}
\begin{tikzcd}
    k && {{\mathcal{O}}_X(U)} \\
    \\
    && {{\mathcal{O}}_X(V)}
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-1, to=3-3]
    \arrow["{\operatorname{res}_{UV}}", from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJrIl0sWzIsMCwiXFxPT19YKFUpIl0sWzIsMiwiXFxPT19YKFYpIl0sWzAsMV0sWzAsMl0sWzEsMiwiXFxyZXNfe1VWfSJdXQ==)

This is the data of a morphism \( (X, {\mathcal{O}}_X) \to \operatorname{Spec}k \).
:::

::: {.remark}
What's the point of the theorem? Not everything of geometric interest is in the essential image of \( F \). Consider \( V(y-x^2) \subseteq {\mathbb{A}}^2_{/ {k}}  \), and consider intersecting it with lines \( y=t \):

```{=tex}
\begin{tikzpicture}
\fontsize{42pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-10-01_12-19.pdf_tex} };
\end{tikzpicture}
```
Letting \( I_1 = I_1(\left\langle{y-x^2}\right\rangle) \) and \( I_2 = I(\left\langle{y-t}\right\rangle) \), intersecting in varieties yields
\[
V_1 \cap V_2 = V(I_1 + I_2) = V(\sqrt{I_1 + I_2})
.\]
One can check \( I_1 + I_2 = (x-\sqrt t, y-t)\cdot (x+\sqrt t, y-t) \), and \( \operatorname{Spec}k[x, y] / \left\langle{y-x^2, y}\right\rangle = \operatorname{Spec}k[x]/\left\langle{x^2}\right\rangle \) when \( t=0 \) (i.e. when there's a tangency with multiplicity), since the scheme intersection is \( \operatorname{Spec}k[x, y] / \left\langle{I_1 + I_2}\right\rangle \). Note that the regular functions on a point are just constant, so the sheaf of regular functions on a point is \( k \) itself and thus doesn't pick up the multiplicity of the intersection.
:::

::: {.remark}
There can be issues for \( \operatorname{Spec}R \) when \( R \) is finitely generated but not reduced!
:::

# Monday, October 04

::: {.remark}
We'll set up some properties for schemes. A scheme can be:

-   Irreducible
-   Smooth
-   Reduced
-   Noetherian
:::

::: {.remark}
Recall that \( X\in {\mathsf{Top}} \) is **connected** iff whenever \( X = X_1 {\textstyle\coprod}X_2 \) with \( X_i \) closed, one of \( X_i = X \) and the other is empty. \( X \) is **irreducible** iff this holds in the weaker case when \( X = X_1 \cup X_2 \) is not necessarily disjoint. Note that irreducible implies connected.
:::

::: {.definition title="Connectedness and irreducibility for schemes"}
\( (X, {\mathcal{O}}_X) \in {\mathsf{Sch}} \) is **connected** (resp. **irreducible**) iff \( { {\left\lvert {X} \right\rvert} } \in {\mathsf{Top}} \) is connected (resp. irreducible).
:::

::: {.example title="Connected and irreducible"}
\( X\coloneqq{\mathbb{A}}^n_{/ {k}}  \) is connected and irreducible. Write \( {\mathbb{A}}^n = \operatorname{Spec}k[x_1, \cdots, x_{n}] \), whose closed sets are \( V(I) \coloneqq\left\{{p\supseteq I}\right\} \). Suppose \( X = V(I) \cup V(J) = V(IJ) \), then all primes \( p \) satisfy \( IJ \supseteq p \), and this \( IJ \supseteq\cap_{p\in \operatorname{Spec}R} p = {\sqrt{0_{R}} } = 0 \), using a fact from commutative algebra. Then \( IJ = 0 \) implies \( I=0 \) (wlog), so \( V(I) = X \).
:::

::: {.example title="Connected but not irreducible"}
Let \( X \coloneqq\operatorname{Spec}k[x, y] / \left\langle{xy}\right\rangle \), for \( k \) not necessarily algebraically closed. This is roughly the coordinate axis in \( k^2 \), except there are generic points corresponding to irreducible closed subsets. Points \( \left\langle{x-a, y-b}\right\rangle \) are closed and contained in \( X \) when \( (a, b) \) is on the axis. There are non-maximal primes \( \left\langle{x}\right\rangle, \left\langle{y}\right\rangle \).

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-10-04_11-46.pdf_tex} };
\end{tikzpicture}
```
Note \( X \supseteq V(\left\langle{x}\right\rangle) = \left\{{p\in x}\right\} = \left\{{\left\langle{x}\right\rangle}\right\} \cup\left\{{\left\langle{x, y-b}\right\rangle}\right\} \), and similarly, \( V(\left\langle{y}\right\rangle) = \left\{{\left\langle{y}\right\rangle}\right\} \cup\left\{{\left\langle{x-a, y}\right\rangle}\right\} \). However \( V(x) \cup V(y) = X \) but \( V(x) \cap V(y) = \left\{{\left\langle{x, y}\right\rangle}\right\} \), making \( X \) connected but not irreducible.
:::

::: {.example title="Not connected"}
Let \( X\coloneqq\operatorname{Spec}( k[x]/\left\langle{x(x-1)}\right\rangle ) \cong \operatorname{Spec}( k[x]/\left\langle{x}\right\rangle ) \oplus \operatorname{Spec}(k[x]/\left\langle{x-1}\right\rangle) \cong \operatorname{Spec}(k \oplus k) \), using the Chinese remainder theorem. Note that this has two prime ideals, \( \left\{{0 \oplus k, k \oplus 0}\right\} \), making it a discrete space and thus a disjoint union of its two closed points. Note that \( 0 \oplus 0 \) isn't prime, consider \( (a, 0) \oplus (0, b) \).
:::

::: {.example title="Connected and irreducible"}
Consider \( X \coloneqq\operatorname{Spec}{ {\mathbb{Z}}_p }= \left\{{ \left\langle{0}\right\rangle, \left\langle{p}\right\rangle}\right\} \). Then \( { \operatorname{cl}} _X\qty{ \left\{{\left\langle{0}\right\rangle}\right\}} = X \), since \( 0 \) is not a closed point. This is connected and irreducible, and the picture is a point with a fuzzy point:

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-10-04_11-55.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.exercise title="$\\spec \\ZZ$ is connected and irreducible"}
Show \( \operatorname{Spec}{\mathbb{Z}} \) is connected and irreducible.
:::

::: {.definition title="Reduced schemes"}
\( (X, {\mathcal{O}}_X) \in {\mathsf{Sch}} \) is **reduced** iff \( {\mathcal{O}}_X(U) \) is a reduced ring for all open \( U \subseteq X \), i.e. contains no nilpotents. Equivalently, \( {\mathcal{O}}_{X, p} \) is reduced for all \( p\in X \).
:::

::: {.remark}
Note that this is a genuinely new concepts for schemes, since functions valued in a field always yields a reduced ring.
:::

::: {.example title="$\\spec R$ is reduced for $R$ reduced"}
Let \( R \) be reduced and take \( X\coloneqq\operatorname{Spec}R \), then for \( U \subseteq X \) with \( U = V(I)^c \supseteq D(f) \coloneqq V(f) \) for any \( f\in I \). In fact \( U = \displaystyle\bigcup_{f\in I} D(f) \), and \( {\mathcal{O}}_X(U) \) by the sheaf property can be written as
\[
{\mathcal{O}}_X(U) 
&= \left\{{\phi_f \in {\mathcal{O}}_X(D(f)) {~\mathrel{\Big|}~}{ \left.{{\phi_f}} \right|_{{D(f) \cap D(g) }} } = { \left.{{\phi_f}} \right|_{{D(f) \cap D(g)}} } }\right\} \\
&\subseteq \prod_{f\in I} {\mathcal{O}}_X(D(f)) \\
&= \prod_{f\in I} R \left[ { \scriptstyle { {f}^{-1}}  } \right]
,\]
by the Dan-Changho theorem, and the claim is that \( R \left[ { \scriptstyle { {f}^{-1}}  } \right] \) is reduced for all \( f \). This follows since \( (a/f^k)^d \sim 0/1 \implies f^d a^d = 0 \), so \( f^{dm}a^d = (f^ma)^d = 0 \), so \( f^ma=0 \) since \( R \) is reduced and this \( a/f^k \sim 0 \), so the localization has no nilpotents. Then \( {\mathcal{O}}_X(U) \) is a subring of a reduced ring and thus reduced, and \( \operatorname{Spec}R \) is a reduced scheme.
:::

::: {.definition title="Integral schemes"}
\( (X, {\mathcal{O}}_X)\in {\mathsf{Sch}} \) is **integral** iff \( {\mathcal{O}}_X(U) \) is an integral domain for all \( U \).
:::

::: {.example title="$\\spec R$ is integral for $R$ integral"}
For \( R \) an integral domain, \( \operatorname{Spec}R \) is integral. Supposing \( R \) is not an integral domain, so \( xy=0 \) with \( x,y\neq 0 \). Then \( 0\in p \) for any prime, so \( x \) or \( y \) is in any prime ideal, so \( V(x) \cup V(y) = \operatorname{Spec}R \). Alternatively, one can use \( {\mathcal{O}}_{\operatorname{Spec}R}(\operatorname{Spec}R) = R \).
:::

::: {.proposition title="?"}
\( (X, {\mathcal{O}}_X) \) is integral \( \iff \) it is irreducible and reduced.
:::

::: {.proof title="of proposition"}
**Integral \( \implies \) reduced**: Just use the domains have no nilpotents.

**Integral \( \implies \) irreducible**: For the sake of contradiction, suppose \( X = X_1 \cup X_2 \) with \( X_i \) closed. Then there exist \( U_i = X_i^c \) open and disjoint (using \( X^c = X_1^c \cap X_2^c \)), so \( {\mathcal{O}}_(U_1 {\textstyle\coprod}U_2) = {\mathcal{O}}(U_1) \times {\mathcal{O}}(U_2) \) by the sheaf property for \( {\mathcal{O}} \). However, this is not an integral domain.

**Irreducible and reduced \( \implies \) integral**: Next time!
:::

# Wednesday, October 06

::: {.remark}
Recall: \( X\in {\mathsf{Sch}} \) is integral iff \( X \) is irreducible and reduced, which are defined on sections in terms of rings.
:::

::: {.proof title="?"}
**Irreducible and reduced \( \implies \) integral**: By contrapositive, assume \( {\mathcal{O}}_X(U) \) is not a domain, so \( fg = 0 \) in \( {\mathcal{O}}_X(U) \). A local ring need not be domain. However, the germ \( f_p g_p \coloneqq\mathop{\mathrm{Res}}(U, {\mathfrak{p}})(fg) = 0 \) in the stalk \( {\mathcal{O}}_{X, {\mathfrak{p}}} \). If \( (a/s)(b/t) = 0 \in {\mathfrak{p}} \), then either \( a/s \) or \( b/t \) is in \( {\mathfrak{p}} \), so \( f_p \) or \( g_p \) is in \( {\mathfrak{p}} \). Note that \( U_1 \coloneqq\left\{{{\mathfrak{m}}\in U {~\mathrel{\Big|}~}f_p \in {\mathfrak{m}}}\right\} \subseteq U \) is closed, as is \( U_2 \coloneqq\left\{{{\mathfrak{m}}\in U {~\mathrel{\Big|}~}g_p \in {\mathfrak{m}}}\right\} \).

We can write \( U = U_1 \cup U_2 \), so if \( X \) is irreducible then \( U \) is irreducible, so some \( U_i = U \), say \( U_1 \). So take an open affine \( V \subseteq U_1 \) with \( { \left.{{f}} \right|_{{V}} }\neq 0 \), using the sheaf property. Writing \( V = \operatorname{Spec}R \), we have \( { \left.{{f}} \right|_{{V}} } \in {\mathcal{O}}_X(V) = R \), and the stalk \( f_p\in p \) for all \( p\in R \). Then \( f\in p \) for all \( p\in \operatorname{Spec}R \), thus in their intersection, and so \( f\in {\sqrt{0_{R}} } \). Since \( f\neq 0 \), this contradicts that \( X \) is not reduced. \( \contradiction \)
:::

::: {.remark}
Recall that *Noetherian rings* are those that satisfy the ACC, or equivalently that all ideals are finitely generated (e.g. a finitely generated \( k{\hbox{-}} \)algebra).

A *Noetherian space* is a space where every descending sequence of closed sets stabilizes.
:::

::: {.definition title="Noetherian rings and spaces"}
\( X\in {\mathsf{Sch}} \) is **locally Noetherian** iff there exists an affine open cover with \( U_i = \operatorname{Spec}A_i \) for \( A_i \) Noetherian. \( X \) is **(globally) Noetherian** if \( X \) is additionally *quasicompact*, i.e. every open cover has a finite subcover.
:::

::: {.example title="Non-Noetherian rings can produce Noetherian spaces"}
The hypothesis of being a Noetherian space isn't enough in general. Consider the ring of *puiseux series* studied by Newton, \( R = \displaystyle\bigcup_{n\geq 1} k { \left[\left[ {t^{1\over n}} \right] \right] }  \). Then \( \operatorname{Spec}R \) has 2 points:
\[
\operatorname{Spec}R = \left\{{ {\mathfrak{p}}\coloneqq\left\langle{t^r}\right\rangle_{r \in {\mathbb{Q}}_{\geq 0}}, \left\langle{0}\right\rangle }\right\}
.\]
Here \( \left\langle{0}\right\rangle \) has closure containing \( {\mathfrak{p}} \), so \( {\mathfrak{p}} \) is a generic point. This is a valuation ring, just not a DVR, and is a Noetherian topological space since there are only two closed sets. However, \( R \) is not Noetherian, since there is an infinite chain of ideals:
\[
\left\{{I_j}\right\}_{j\geq 1}: \quad \left\langle{t}\right\rangle \subsetneq \left\langle{t^{1\over 2}}\right\rangle \subsetneq \left\langle{t^{1\over 3}}\right\rangle \subsetneq \left\langle{t^{1\over 3}}\right\rangle \subsetneq \cdots
.\]
However, \( V(I_j) = V(I_{k}) \) for all \( j, k \), and all equal to \( V(\left\langle{p}\right\rangle) \), so \( \operatorname{Spec}R \) is a Noetherian space!

Fun fact: \( \operatorname{ff}(R) = \displaystyle\bigcup_{n\geq 1} k{\left(\left( t^{1\over n} \right)\right)  } = \mkern 1.5mu\overline{\mkern-1.5muk{\left(\left( t \right)\right)  }\mkern-1.5mu}\mkern 1.5mu \) when \( k= { \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu }  \).
:::

::: {.remark}
There are many theorems of the form "a scheme is locally *something*". Here we required an open affine cover by \( \operatorname{Spec}R \) for \( R \) Noetherian rings. The following two conditions will thus be equivalent:

-   A property \( P \) holds on every affine open \( U \subseteq X \),
-   There exists some affine cover \( {\mathcal{U}}\rightrightarrows X \) satisfying property \( P \).
:::

::: {.theorem title="?"}
\( X\in {\mathsf{Sch}} \) is locally Noetherian iff for any affine open \( U = \operatorname{Spec}A \subseteq X \), \( A \) is a Noetherian ring.
:::

::: {.proof title="of theorem"}
\( \impliedby \): Definitional, just apply the hypothesis to some affine open cover.

\( \implies \): The more nontrivial direction.

::: {.fact title="from ring theory"}
The localization of any Noetherian ring is again Noetherian
:::

Let \( U \subseteq X \) be an affine open, so \( U = \operatorname{Spec}B \), and let \( {\mathcal{U}}\rightrightarrows X \) be an affine cover:

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-10-06_12-15.pdf_tex} };
\end{tikzpicture}
```
Consider \( U \cap{\mathcal{U}}_i \subseteq {\mathcal{U}}_i \) open, which can be covered by distinguished open sets. So write \( U \cap{\mathcal{U}}_i = \displaystyle\bigcup_j V_{ij} \) with \( V_{ij} = D(f_{ij}) \subseteq \operatorname{Spec}A_{i} \). Then \( U \) is covered by \( \operatorname{Spec}A_i \left[ { \scriptstyle { {f_{ij}}^{-1}}  } \right] \), i.e. spectra of local Noetherian rings. Can we conclude that \( B \) is Noetherian from this? This will follow from the fact that we can further decompose \( V_{ij} = \displaystyle\bigcup W_{ijk} \) where \( W_{ijk} = D_B(f_{ijk}) \).

So we want to show the following ring-theoretic statement: let \( B\in \mathsf{Ring} \) and \( \left\{{g_i}\right\} \subseteq B \) be a collection such that \( \operatorname{Spec}B = \displaystyle\bigcup\operatorname{Spec}B \left[ { \scriptstyle { {g_i}^{-1}}  } \right] \) with each \( B \left[ { \scriptstyle { {g_i}^{-1}}  } \right] \) Noetherian, then \( B \) is necessarily Noetherian. Equivalently, we need \( \left\langle{g_i}\right\rangle = \left\langle{1}\right\rangle \), which corresponds to \( \cap V(g_i) = \emptyset \).
:::

# Locally Noetherian Schemes vs Noetherian Covers (Friday, October 08)

## Proof of Theorem

Recall that we were proving the following:

::: {.theorem title="?"}
\( X\in {\mathsf{Sch}} \) is locally Noetherian iff for any affine open \( U = \operatorname{Spec}A \subseteq X \), \( A \) is a Noetherian ring.
:::

::: {.remark}
Recall that we covered \( X \) by \( U_i \), had some affine open \( U \) isomorphic to \( \operatorname{Spec} \) of a ring, and then covered each intersection \( U \cap U_i \) by distinguished opens which were \( \operatorname{Spec}R \left[ { \scriptstyle { {f_i}^{-1}}  } \right] = D(f_i) = \left\{{{\mathfrak{p}}\not\ni f_i}\right\} \). Then \( R \left[ { \scriptstyle { {f_i}^{-1}}  } \right] \) is Noetherian iff \( \displaystyle\bigcup_{i\in I} D(f_i) = \operatorname{Spec}R \), which implies \( \displaystyle\bigcap_{i\in I} V(f_i) = \emptyset \), and thus \( \not\exists p\in \operatorname{Spec}R \) prime with \( p\ni f_i \) for all \( i\in I \). Then \( \left\langle{f_i {~\mathrel{\Big|}~}i\in I}\right\rangle = \left\langle{1}\right\rangle \).
:::

::: {.proposition title="?"}
\( \operatorname{Spec}R \) is quasicompact.
:::

::: {.proof title="of proposition"}
Let \( {\mathcal{U}}\rightrightarrows\operatorname{Spec}R \), so \( \operatorname{Spec}R = \displaystyle\bigcup_{i\in I} U_i \), then we want to find a finite subcover. Take \( \left\{{D(f_{ij})}\right\} \rightrightarrows U_i \); it suffices to find a finite subcover of the refined cover by distinguished opens, so reduce to \( U_i = D(f_i) \) for each \( i \). Using the argument from the above remark, \( \left\langle{f_i {~\mathrel{\Big|}~}i\in I}\right\rangle = \left\langle{1}\right\rangle \) since this is a cover. But then there exists a finite sum \( \sum_{j=1}^N a_j f_{ij} = 1 \) for some \( a_j\in R \), so \( \left\{{f_{ij} }\right\}_{j=1}^N = \left\langle{1}\right\rangle \) which implies that \( \displaystyle\bigcup_{j=1}^N D(f_{ij}) = \operatorname{Spec}R \).
:::

::: {.remark}
Applying the proposition above, we can find a finite set \( \left\{{f_i}\right\} \) such that \( \left\langle{f_i {~\mathrel{\Big|}~}i\in I}\right\rangle = \left\langle{1}\right\rangle \) with each \( R \left[ { \scriptstyle { {f_i}^{-1}}  } \right] \) Noetherian. We'll use the following:
:::

::: {.lemma title="?"}
Let \( J{~\trianglelefteq~}R \) and \( \phi_i: R\to R \left[ { \scriptstyle { {f_i}^{-1}}  } \right] \) by the canonical localization morphism. Setting \( \left\langle{f_1,\cdots, f_s}\right\rangle = \left\langle{1}\right\rangle \),
\[
J = \cap_{i=1}^s \phi_i \qty{ \phi_i^{-1}(J) R \left[ { \scriptstyle { {f_i}^{-1}}  } \right] } 
.\]
:::

::: {.proof title="?"}
Note that \( \phi_i\qty{ \phi_i^{-1}(J) R \left[ { \scriptstyle { {f}^{-1}}  } \right] } \neq J \) generally, e.g. if \( f\in J \). So that \( J \) is contained in the right-hand side is clear. For the reverse containment, let \( b \in \displaystyle\bigcap_i \phi_i^{-1}(\phi_i(J) R \left[ { \scriptstyle { {f_i}^{-1}}  } \right] ) \). Then \( \phi_i(b)\in \phi_i(J) R \left[ { \scriptstyle { {f_i}^{-1}}  } \right] \) for all \( i \), so \( b \sim a_i / f_i^{n_i} \) in the localization for some \( a_i \in J \).

Since \( \left\{{f_i}\right\} \) is finite, assume that that \( n_i = n \) for some uniform \( n \), e.g. \( n = \max \left\{{n_i}\right\} \). Then \( b \sim a_i/f_i^N \), so there exist \( m_i \) such that \( f_i^{m_i}(f_i^N b - a_i) = 0 \) in the original ring \( R \). So now pick \( M \coloneqq\max\left\{{m_i}\right\} \) to obtain \( f_i^M(f_i^N - a_i) = 0 \).

Now a trick: use that \( f_i^{M+N}b\in J \) for all \( i \), and the claim is that \( \left\langle{f_i^{M+N}}\right\rangle_{i\in I} = \left\langle{1}\right\rangle \). More generally, raising all generators of a unit ideal to a fixed power still generates the unit ideal. This follows from writing \( 1 = \sum_{i=1}^r c_i f_i \implies 1 = 1^M = \qty{\sum c_i f_i}^M \), so choose \( M \) large enough so that some \( f_i \) occurs with an exponent of at least \( m+n \), e.g. choosing \( M = r(m+n) \).

::: {.example title="?"}
If \( 1 = \left\langle{x, y}\right\rangle \), then \( \left\langle{x^2, y^2}\right\rangle = 1 \) by taking \( ax + by = 1 \) and (say) expanding \( (ax+by)^4=1 \) and noting that any term is divisible by either \( x^2 \) or \( y^2 \).
:::

Now writing \( \sum_{i=1}^r c_i f_i^{m+n} = 1 \), we get \( \sum_{i=1}^r c_i f_i^{m+n} \in J \), and thus \( b\in J \).
:::

::: {.remark}
We now know that the \( R \left[ { \scriptstyle { {f_i}^{-1}}  } \right] \) are Noetherian. Let \( J_1 \subseteq J_2 \subseteq \cdots \) be an ascending chain of ideals in \( R \), we'll show it stabilizes. Since the \( R \left[ { \scriptstyle { {f_i}^{-1}}  } \right] \) are Noetherian, there is an ascending chain \( J_1 R \left[ { \scriptstyle { {f_i}^{-1}}  } \right] \subseteq J_2 R \left[ { \scriptstyle { {f_i}^{-1}}  } \right] \subseteq \cdots \) in \( R \left[ { \scriptstyle { {f_i}^{-1}}  } \right] \), which is Noetherian and thus stabilizes. So for some \( N = N(i) \gg 0 \), \( J_k R \left[ { \scriptstyle { {f_i}^{-1}}  } \right] = J_{k+1} R \left[ { \scriptstyle { {=}^{-1}}  } \right] \cdots \) for all \( k\geq N \). But there are only finitely many \( f_i \), so we can choose some uniformly large \( \tilde N\gg 0 \) not depending on \( i \) where \( J_k = J_{k+1} = \cdots \) for all \( k\geq \tilde N \) by applying the lemma.
:::

::: {.remark}
On applying the lemma: use that
\[
\phi_i^{-1}(J_k R \left[ { \scriptstyle { {f_i}^{-1}}  } \right]) &= \phi_i^{-1}(J_{k+1}R \left[ { \scriptstyle { {f_i}^{-1}}  } \right]) \quad \forall k\geq N \\
&\implies
\cap_i \phi_i^{-1}(J_k R \left[ { \scriptstyle { {f_i}^{-1}}  } \right]) = \cap_i \phi_i^{-1}(J_{k+1}R \left[ { \scriptstyle { {f_i}^{-1}}  } \right]) \quad \forall k\geq N \\
&\implies
J_{k} = J{k+1}\quad \forall k\neq N
.\]
:::

## Other Properties

::: {.example title="A scheme that is not quasicompact"}
Let \( X = {\mathbb{Z}} \) with the discrete topology (so every set is open) and set \( {\mathcal{O}}_X(U) = {\mathsf{Set}}(U, k) \) to be the local ring of arbitrary set functions. Then for \( p\in X \), the stalks are \( {\mathcal{O}}_{X, p} {\mathcal{O}}_X(\left\{{P}\right\}) = {\mathsf{Set}}(p, k) = k \), which is local. This is a locally ringed space, since it's locally isomorphic to \( \operatorname{Spec}R \): we can take an open cover of such, or find a neighborhood where it holds, but \( p \in \left\{{p}\right\} \) which is open and letting \( {\mathcal{F}}\coloneqq{ \left.{{{\mathcal{O}}_X}} \right|_{{\left\{{p}\right\}}} } \), we have \( (\left\{{p}\right\}, {\mathcal{F}}) \cong \operatorname{Spec}k \). Then \( X = \displaystyle\bigcup_{p\in X} \left\{{p}\right\} \) is an open cover with no finite subcover.

So \( {\mathbb{Z}} \) with the discrete topology is not \( \operatorname{Spec}R \) with the Zariski topology for any ring.
:::

::: {.exercise title="?"}
\( X \coloneqq\operatorname{Spec}\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Q}}\mkern-1.5mu}\mkern 1.5mu[t] = \left\{{\left\langle{0}\right\rangle}\right\} \cup\left\{{\left\langle{t-a_i}\right\rangle {~\mathrel{\Big|}~}i\in I}\right\} \) where \( I \) is a countable enumeration of \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Q}}\mkern-1.5mu}\mkern 1.5mu \). Is this quasicompact?
:::

::: {.exercise title="?"}
Consider \( R \coloneqq\prod_{n\in {\mathbb{Z}}} {\mathbb{C}} \), then there is a set map \( \left\{{I{~\trianglelefteq~}R}\right\} { { \, \xrightarrow{\sim}\, }}{\mathcal{P}}({\mathbb{Z}}) \), given by sending any subset to the ideal \( {\mathbb{C}}\oplus {\mathbb{C}}\oplus \cdots \) which are zeroed out at entries according to the complement of \( S \).

What is \( \operatorname{Spec}R \), and what is the topology? Is \( \operatorname{Spec}R \) quasicompact?

> Consider \( I \coloneqq\left\{{(a_i) {~\mathrel{\Big|}~}a_i = 0\quad i\geq N \gg 0}\right\} \), which forms an ideal. Is \( I \) prime? Are there prime ideals not containing \( I \)?
:::

# Monday, October 11

::: {.remark}
Last time: Noetherian isn't a purely topological property. Today: another guiding principle in AG is that one can put properties on schemes, or alternatively on morphisms, usually to \( \operatorname{Spec}k \).
:::

::: {.definition title="Finite type morphisms"}
A morphism \( X \xrightarrow{f} Y \) of schemes is **locally of finite type** if there exists an affine open cover \( {\mathcal{V}}\rightrightarrows Y \) with \( V_i = \operatorname{Spec}B_i \) such that there exists an affine open cover \( {\mathcal{U}}\rightrightarrows f^{-1}({\mathcal{V}}) \) so \( U_{ij}\supseteq f^{-1}(V_i) \) where \( U_{ij} = \operatorname{Spec}A_{ij} \) such that the restricted function \( f: U_{ij} \to V_{i} \) is induced by a ring morphism \( B_{i } \to A_{ij} \) finitely generated over \( B_i \).
:::

::: {.remark}
This globalizes the notion of being a finitely generated ring, essentially by covering the scheme morphisms by ring morphisms with the desired property. As a special case, let \( X \in {\mathsf{Sch}}_{/ {k}}  \), so there is a morphism \( X\to \operatorname{Spec}k \). Let \( X = \cup_j U_j \) with \( U_j = \operatorname{Spec}A_j \), then we want that the map \( \operatorname{Spec}A_{j}\to \operatorname{Spec}k \) is induced by a finitely-generated ring morphism \( k\to A_j \), so \( A_j \) is a finitely-generated \( k{\hbox{-}} \)algebra. So this is like having a sheaf of \( k{\hbox{-}} \)algebras. As an abuse of notation/terminology, we say that \( X \) is **finite type** over \( k \) (since the target doesn't need to be covered).
:::

::: {.warnings}
Note that a subring of a finitely generated ring need not be finitely generated!
:::

::: {.example title="?"}
Let \( A\in {\mathsf{Alg}_{/k} }^{{\mathrm{fg}}} \), then \( \operatorname{Spec}A \) is finite type over \( k \). One can change the definition from "there exists an open cover" to "for all open covers" -- this amounts to checking localizations of ring maps.
:::

::: {.example title="?"}
Consider \( X \coloneqq\mathop{\mathrm{Proj}}k[x, y] = {\mathbb{P}}^1_{/ {k}}  \), then recall that \( (D(f), { \left.{{{\mathcal{O}}_X}} \right|_{{D(f)}} }) \cong \operatorname{Spec}R \left[ { \scriptstyle { {f}^{-1}}  } \right] \). Then
\[
{\mathbb{P}}^1_{/ {k}}  = D(x) {\textstyle\coprod}_f D(y) \cong {\mathbb{A}}^1_{/ {k}} {\textstyle\coprod}_f {\mathbb{A}}^1_{/ {k}} 
,\]
glued along inversion. Then \( k[x,y] \left[ { \scriptstyle { {x}^{-1}}  } \right] \cong k { \left[ {y\over x} \right] }  \) and \( k[x, y] \left[ { \scriptstyle { {y}^{-1}}  } \right] \cong k { \left[ {x\over y} \right] }  \). One can check that \( {\mathbb{P}}^1_{/ {k}} \to \operatorname{Spec}k \) is finite type, and this works for \( {\mathbb{P}}^n \) as well.

Note that if \( S\coloneqq k[x_1, \cdots, x_{n}]/I \) for \( I \) a homogeneous ideal, then \( \mathop{\mathrm{Proj}}S \) is also finite type over \( k \). We can write \( \mathop{\mathrm{Proj}}S = \displaystyle\bigcup_{i=0}^n D(\mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu_i) \), since taking complements yields \( \emptyset = \displaystyle\bigcap_{i=0}^n V(\mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu_i) \), which is the set of homogeneous prime ideals \( p\in \operatorname{Spec}S \) with \( p\supseteq\mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu_i \) for all \( i \) and \( p\not\supseteq S^+ \) the irrelevant ideal, which is empty. So \( S \left[ { \scriptstyle { {x_i}^{-1}}  } \right] \) is a finitely generated ring, with generators of the form \( x_j/x_i \).
:::

::: {.example title="a non-example"}
\( \operatorname{Spec}k { \left[\left[ {t} \right] \right] }  \to \operatorname{Spec}k \) is not a finite type morphism, i.e. \( k{\left[\left[ t \right]\right]  } \) is not a finitely generated \( k{\hbox{-}} \)algebra. Toward a contradiction suppose \( k{\left[\left[ t \right]\right]  } = \left\langle{f_1, \cdots, f_r}\right\rangle \), so there is a ring map \( k { \left[ {f_1,\cdots, f_r} \right] }  \twoheadrightarrow k{\left[\left[ t \right]\right]  } \). Take \( k= {\mathbb{Q}} \), or any countable field, then the LHS is countable but the right-hand side is not.
:::

::: {.definition title="Finite morphisms"}
Recall that a morphism \( \phi:B\to A \in \mathsf{CRing} \) is a **finite morphism** if \( A \) is finitely-generated as a \( B{\hbox{-}} \)module. A morphism \( X \xrightarrow{f} Y\in {\mathsf{Sch}} \) is **finite** iff there exists an affine open cover \( {\mathcal{V}}\rightrightarrows Y \) with \( V_i = \operatorname{Spec}B_i \) and \( f^{-1}(V_i) = \operatorname{Spec}A_i \), and the induced ring maps \( B_i\to A_i \) are finite.
:::

::: {.remark}
Here the module structure is \( b\cdot a \coloneqq\phi(b)a \). Note that finite type required finite generation as rings, so \( B(g_1,\cdots, g_r)\twoheadrightarrow A \), but here we require that any \( a\in A \) is of the form \( a = \sum_{i=1}^r \phi(b_i) a_i \) for some \( b_i \).
:::

::: {.example title="?"}
Consider \( X \coloneqq\operatorname{Spec}R \coloneqq\operatorname{Spec}{\mathbb{C}}[x, y]/ \left\langle{y^2-f(x)}\right\rangle \) where \( f \) has no repeated roots, which yields a hyperelliptic curve. This is a reduced ring, so \( X \) is the scheme associated to a variety. Letting \( r_i \) be the roots of \( f \), we have the following:

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-10-11_12-10.pdf_tex} };
\end{tikzpicture}
```
Consider the function \( f:X\to Y \) induced by the following ring map:
\[
{\mathbb{C}}[x] &\to R \\
x &\mapsto x
,\]
which is projection onto the axis. Note that \( R \cong {\mathbb{C}}[x] \left\langle{1}\right\rangle \oplus {\mathbb{C}}[x] \left\langle{y}\right\rangle \) as a \( {\mathbb{C}}[x]{\hbox{-}} \)module.
:::

::: {.example title="?"}
Consider \( \operatorname{Spec}{\mathbb{C}}[x,y,z]/\left\langle{xyz - 1}\right\rangle \to \operatorname{Spec}{\mathbb{C}}[x] \), whose real locus yields a hyperboloid:

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-10-11_12-18.pdf_tex} };
\end{tikzpicture}
```
Note that finite type should approximately be spec of finite type \( k{\hbox{-}} \)algebras, i.e. essentially varieties, where for finiteness the fibers should be finite.
:::

::: {.example title="?"}
Consider \( \operatorname{Spec}{\mathbb{C}}[x, x^{-1}] \to \operatorname{Spec}{\mathbb{C}}[x] \), i.e. \( {\mathbb{G}}_m \hookrightarrow{\mathbb{A}}^1 \). However, \( {\mathbb{C}}[x, x^{-1}] \) is not finitely-generated as a \( {\mathbb{C}}[x] \) modules, even though it has finite fibers. Given any finite set of generators, one can take \( {\mathbb{C}}[x]\left\langle{f_i\over x^{k_i}}\right\rangle \) which doesn't contain \( 1/x^{\max k_i + 1} \).
:::

::: {.remark}
We'll define subschemes soon.
:::

# Wednesday, October 13

::: {.remark}
Result from last time: there doesn't exist a surjection \( k { \left[ {f_1,\cdots, f_m} \right] }  \twoheadrightarrow k { \left[ {x} \right] }  \) for any finite collection \( \left\{{f_i}\right\}_{i=1}^m \) of polynomials. This can be checked by just considering their dimension as a \( k{\hbox{-}} \)modules, where \( \dim_k LHS = \# {\mathbb{N}} \) and \( \dim_k RHS = \# {\mathbb{R}} \).

We said that a morphism \( X \xrightarrow{f} Y \) is **locally finite type** if it is locally modeled on \( \operatorname{Spec}A\to \operatorname{Spec}B \) with \( B\to A \) a finitely-generated ring morphism, and is **finite** if locally modeled on \( B \to A \) module-finite. Note that in the first case, we require \( f^{-1}(U) \supseteq U\to V \), but in the latter \( U = f^{-1}(V) \).
:::

::: {.example title="?"}
As an example, the map \( D(x) \to {\mathbb{A}}^1_{/ {k}}  \) was not finite since \( k[x] \to k[x, x^{-1}] \) is not module-finite, despite the fact that this geometrically corresponds to \( {\mathbb{A}}^1\setminus\left\{{0}\right\}\hookrightarrow{\mathbb{A}}^1 \):

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-10-13_11-41.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.example title="Not finite type: $\\spec$ of a local ring of a variety"}
Let \( p \in V \) be a \( k{\hbox{-}} \)variety for \( k \) an infinite field, which we can assume to be affine (so \( k[x_1, \cdots, x_{n}]/I \) for \( I \) reduced). Then \( {\mathcal{O}}_{V, p} \) is not not finitely-generated as a \( k{\hbox{-}} \)algebra, and \( \operatorname{Spec}{\mathcal{O}}_{V, p}\to \operatorname{Spec}k \) is not of finite type. Consider the local ring of \( {\mathbb{A}}^1_{/ {k}}  \) at the prime ideal \( p \coloneqq\left\langle{x}\right\rangle \), then \( k[x] \left[ { \scriptstyle { { \qty{ {p}^c } }^{-1}}  } \right] = \left\{{f/g {~\mathrel{\Big|}~}g\not\in p}\right\} \), so \( g(0) \neq 0 \) for such \( g \). Note that this is not \( k[x]  \left[ { \scriptstyle { {x}^{-1}}  } \right] \)!

Idea: there are only finitely many denominators: if
\[
\phi: k { \left[ {f_1/g_1, \cdots, f_r/g_r} \right] }  \twoheadrightarrow k[x] \left[ { \scriptstyle { { \qty{ {p}^c } }^{-1}}  } \right]
,\]
then \( \operatorname{im}\phi \) contains contains those \( f/g \) such that \( V(g) \subseteq \cup V(g_i) \), so such a \( \phi \) can not exist. Note that this is still true for \( k \) a finite field, just not by this proof.
:::

## Open/Closed Subschemes

::: {.definition title="Open subschemes"}
Given \( X\in {\mathsf{Sch}} \), an **open subscheme** of \( X \) is an open subset \( U \subseteq { {\left\lvert {X} \right\rvert} } \) with structure sheaf \( {\mathcal{O}}_U = { \left.{{{\mathcal{O}}_X}} \right|_{{U}} } \).
:::

::: {.remark}
Why does \( (U, {\mathcal{O}}_U) \in \mathsf{Loc}\mathsf{RingSp} \) form a scheme? One needs to check that it's locally isomorphic to the spectrum of a ring: let \( \left\{{X_i}\right\}\rightrightarrows X \) be an open affine cover, then \( U_i\coloneqq U \cap X_i \) is open in \( U \) and in \( X_i \), so can be covered by distinguished opens \( V_{ij} \). But then \( \left\{{V_{ij}}\right\}\rightrightarrows U \) is a cover by affine schemes. The inclusion \( (U, {\mathcal{O}}_U) \hookrightarrow(X, {\mathcal{O}}_X) \) is clearly a morphism in \( \mathsf{Loc}\mathsf{RingSp} \).
:::

::: {.definition title="Open Immersion"}
The inclusion above is an **open immersion**.
:::

::: {.remark}
A small dictionary

  AG          Rest of Math
  ----------- --------------
  Immersion   Embedding
  Nothing!    Immersion
:::

::: {.remark}
Here I write \( { {\left\lvert {X} \right\rvert} } \coloneqq\mathrm{sp}(X) \) as an alternative for Hartshorne's notation.
:::

::: {.definition title="Closed immersion"}
A **closed immersion** is a morphism \( X \xrightarrow{f} Y\in {\mathsf{Sch}} \) such that

1.  The induced map \( { {\left\lvert {X} \right\rvert} }\to { {\left\lvert {Y} \right\rvert} } \in {\mathsf{Top}} \) is a homeomorphism onto a closed subset of \( { {\left\lvert {Y} \right\rvert} } \),
2.  \( f^\#: {\mathcal{O}}_Y \twoheadrightarrow f_* {\mathcal{O}}_X \in {\mathsf{Sh}}(Y) \) is surjective.
:::

::: {.remark}
Set \( U = D(f) \subseteq \operatorname{Spec}A \) defines an open immersion \( \operatorname{Spec}A \left[ { \scriptstyle { {f}^{-1}}  } \right] \to \operatorname{Spec}A \). So this corresponds to the ring map \( A\hookrightarrow A \left[ { \scriptstyle { {f}^{-1}}  } \right] \) since \( \operatorname{Spec}A \left[ { \scriptstyle { {f}^{-1}}  } \right] \subseteq \operatorname{Spec}A \) are those ideals not containing \( f \).
:::

::: {.example title="?"}
Consider \( U \coloneqq{\mathbb{A}}^2_{/ {k}} \setminus\left\{{{\left[ {x, y} \right]}}\right\} \hookrightarrow{\mathbb{A}}^2_{/ {k}}  \). Then \( \left\{{{\left[ {x, y} \right]}}\right\} = V(x, y) \), and this is a subscheme of an affine scheme which is not itself affine. One can use that \( \dim D(f)^c \geq 1 \)
:::

::: {.exercise title="?"}
Prove that this is not affine. Hint: check \( {\mathcal{O}}_U = k[x,y] \),[^1] and use that for any \( X \in {\mathsf{Aff}}{\mathsf{Sch}} \) we have \( {\mathcal{O}}_X(X) = R \). However, \( \operatorname{Spec}k[x, y] = {\mathbb{A}}^2\neq U \).
:::

> Check "affinization"? It fills in holes of at codimension at most 2, and satisfies a universal property. Consider \( X = {\mathbb{A}}^1\times {\mathbb{P}}^1 \).

::: {.remark}
All examples are locally of this form: \( F:X\hookrightarrow Y = \operatorname{Spec}A \) where \( { {\left\lvert {X} \right\rvert} }\to U \subseteq { {\left\lvert {Y} \right\rvert} } \) maps homeomorphically onto a closed subset. Recall that the closed subsets are of the form \( U = V(I) \), and here we need \( f^\#: {\mathcal{O}}_Y \to f_* {\mathcal{O}}_X \) surjective. Let \( X = \operatorname{Spec}A/I \), and recall that every surjective ring map is of the form \( A\to A/I \). Here \( q: A\twoheadrightarrow A/I \) where \( {\mathfrak{p}}\mapsfrom q^{-1}({\mathfrak{p}}) \), so we get some map \( \operatorname{Spec}A/I\to \operatorname{Spec}A \), and this is homeomorphism onto \( V(I) \subseteq \operatorname{Spec}A \):
\[
\operatorname{Spec}A/I &\to V(I) \\
{\mathfrak{p}}&\mapsto q^{-1}({\mathfrak{p}}) \supseteq I \\
q({\mathfrak{q}}) &\mapsfrom {\mathfrak{q}}
.\]
We also get an induced map \( A \left[ { \scriptstyle { {g}^{-1}}  } \right] \to (A/I) \left[ { \scriptstyle { {g}^{-1}}  } \right] \), which is precisely
\[
f^\#(D(g)): {\mathcal{O}}_Y(D(g)) \to {\mathcal{O}}_X(f^{-1}(D(g)))
\]
and is thus surjective. Since it's surjective on a basis, by gluing it'll be surjective on the entire space.
:::

# Friday, October 15

::: {.remark}
Last time: open and closed subschemes, where openness was easy since we required \( f:X\to Y \) to be a homeomorphism onto a closed subset of \( Y \) with \( f^\# \) surjective. Any example of a closed subscheme is locally of the following form: \( V(I) \coloneqq\operatorname{Spec}A/I \to \operatorname{Spec}A \) induced by some \( A\twoheadrightarrow A/I \) in rings. Here \( A \left[ { \scriptstyle { {g}^{-1}}  } \right] \twoheadrightarrow(A/I) \left[ { \scriptstyle { {g}^{-1}}  } \right] \) implies that \( f^(D(g)) \) surjective for every distinguished open, so \( f^\# \) is a surjective sheaf map. However, this need not be surjective on global sections.
:::

::: {.example title="?"}
Recall that \( {\mathbb{P}}^1_{/ {k}}  = {\mathbb{A}}^1 \displaystyle\coprod_{x\mapsto x^{-1}}{\mathbb{A}}^1 \) and \( {\mathcal{O}}_{{\mathbb{P}}^1}({\mathbb{P}}^1) = k \) where we glued \( k[t] \cap k[s] = k \) along \( s=1/t \). Consider the closed subscheme of \( {\mathbb{A}}^1 \) given by \( X\coloneqq\operatorname{Spec}{\mathbb{C}}[t]/ t^2 \) and the global restriction map
\[
f^\#({\mathbb{P}}^1): {\mathcal{O}}_{{\mathbb{P}}^1}({\mathbb{P}}^1) &\to {\mathcal{O}}_X(X) \\
{\mathbb{C}}&\to{\mathbb{C}}[t]/t^2
,\]
which is not surjective.
:::

::: {.example title="?"}
Consider \( {\mathbb{A}}^2_{/ {k}}  \) for \( k= { \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu }  \), how many closed subschemes are homeomorphic onto the origin \( 0 \) corresponding to \( \left\langle{x, y}\right\rangle\in \operatorname{Spec}k[x, y] \). Since they're all locally of the form \( V(I) \), these correspond to ideals \( I \) where \( V(I) = 0 \). These are ideals \( I \) where \( \left\langle{x, y}\right\rangle \) is the only ideal containing \( I \), so we can write this as \( \left\{{I {~\mathrel{\Big|}~}\sqrt I = \left\langle{x, y}\right\rangle}\right\} \), i.e. the primary decomposition of \( I \) has only 1 prime, namely \( \left\langle{x, y}\right\rangle \). Some ideals of this form:

-   \( \left\langle{x, y}\right\rangle^k \) for any \( k\geq 0 \),
-   \( \left\langle{x^ay^b, x^cy^d}\right\rangle \) where \( \operatorname{det}{
    \begin{bmatrix}
      {a} & {b} 
    \\
      {c} & {d}
    \end{bmatrix}
    } \neq 0 \), e.g. \( \left\langle{x^2, y}\right\rangle \).
-   \( \left\langle{(x+y)^2, y}\right\rangle \)
-   \( \left\langle{f, g}\right\rangle \) where \( V(f) \cap V(g) = 0 \) as a set, e.g. two curves only intersecting at the origin.
:::

::: {.remark}
What kinds of schemes are these? For example, considering \( V(x-y^2) \) and \( V(y) \), we have \( \left\langle{y-x^2, y}\right\rangle = \left\langle{x^2, y}\right\rangle \), yielding a non-reduced scheme. We have \( k[x,y]/\left\langle{x^2, y}\right\rangle= k \bigoplus kx\in{\mathsf{k}{\hbox{-}}\mathsf{Mod}} \), thought of as functions as the tangent vector at 0 pointing horizontally. Similarly, \( k[x,y] = \left\langle{x^2, xy, y^2}\right\rangle = k \oplus kx \oplus ky \), which can be thought of as functions on \( {\mathbf{T}}_p {\mathbb{A}}^2 \) for \( p=0 \). The rough idea: we want \( {\mathbf{T}}_0 {\mathbb{A}}^2 \cong \operatorname{Spec}k[x,y]/\left\langle{x, y}\right\rangle^2 \).
:::

::: {.definition title="?"}
Let \( Z \subseteq { {\left\lvert {Y} \right\rvert} } \) be closed, then there exists a unique scheme structure \( X \) on \( Z \) such that \( { {\left\lvert {X} \right\rvert} } = Z \), the **reduced subscheme structure on \( Z \)**. Affine locally, for \( Z \subseteq { {\left\lvert {\operatorname{Spec}A} \right\rvert} } \) given by \( V(I) \) for some ideal \( I \), and we define this as \( \operatorname{Spec}A/\sqrt{I} \). This will glue because passing to reduction will commute with localization, i.e. \( (A_{ \text{red} }) \left[ { \scriptstyle { {f_{ \text{red} }}^{-1}}  } \right] = (A \left[ { \scriptstyle { {f}^{-1}}  } \right])_{ \text{red} } \) where \( A_{ \text{red} }= A/\sqrt{0} \).
:::

::: {.example title="?"}
Take \( 0\in {\left\lvert {{\mathbb{A}}^2_{/ {k}} } \right\rvert} \), then its reduced subscheme structure is \( \operatorname{Spec}k[x, y] / \left\langle{x, y}\right\rangle \).
:::

::: {.remark}
Any closed subscheme structure along \( Z \) is locally given by \( \operatorname{Spec}A/I \) with \( V(I) = Z \), and there's always a map \( \operatorname{Spec}A/\sqrt{I} \to \operatorname{Spec}A/I \) dual to the reduction map \( A/I \to (A/I)_{ \text{red} } \). For any closed subscheme \( X \subseteq Y \), we define \( X_{ \text{red} } \) as the reduced subscheme associated to \( {\left\lvert {X} \right\rvert} \), and there is a morphism \( X_{ \text{red} }\to X \).

> Idea: this is a space such that all of its functions kill nilpotents.
:::

::: {.proposition title="?"}
\( X_{ \text{red} } \) is well-defined
:::

::: {.proof title="?"}
Let \( Y\in {\mathsf{Sch}} \) and \( Z \subset { {\left\lvert {Y} \right\rvert} }\in {\mathsf{Top}} \) closed. Take a cover \( {\mathcal{U}}\to Y \) with \( U_i = \operatorname{Spec}A_i \), then \( Z \cap{ {\left\lvert {U_i} \right\rvert} } \) is closed and thus equal to some \( V(I_i) \). Define a reduced scheme \( X_i \coloneqq\operatorname{Spec}(A_i / \sqrt{I_i}) \), which we'll try to glue to define \( X_{ \text{red} } \). Note that we can write
\[
\sqrt{I_i} = \displaystyle\bigcap_{{\mathfrak{p}}\in Z \cap{ {\left\lvert {U_i} \right\rvert} }} {\mathfrak{p}}
,\]
which generalizes \( {\sqrt{0_{R}} } = \displaystyle\bigcap_{{\mathfrak{p}}\in \operatorname{Spec}R} {\mathfrak{p}} \).

To give a gluing amounts to defining isomorphisms:
\[
f_{ij}: X_i \cap U_{j} \to X_j \cap U_i
.\]

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/Schemes/sections/figures}{2021-10-15_12-13.pdf_tex} };
\end{tikzpicture}
```
So pass to an open affine cover. We'll have \( (A_i) \left[ { \scriptstyle { {f}^{-1}}  } \right] = (A_j) \left[ { \scriptstyle { {g}^{-1}}  } \right] \) for some \( f, g \), and this will induce isomorphisms
\[
(A_i) \left[ { \scriptstyle { {f}^{-1}}  } \right] / \sqrt{I_i} { { \, \xrightarrow{\sim}\, }}{\mathcal{O}}_{X_j \cap U_i}(Z \cap D(f))
.\]
:::

# Appendix

::: {.remark}
A bunch of stuff I always forget!
:::

::: {.definition title="Classical AG"}
```{=tex}
\envlist
```
-   A **section** is just an element \( s\in {\mathcal{F}}(U) \).

-   A **stalk** of a (pre)sheaf \( {\mathcal{F}} \) at a point \( p \) is defined as
    \[
    {\mathcal{F}}_p \coloneqq\colim_{p\ni U_i} ({\mathcal{F}}(U_i), \operatorname{res}_{ij})
    .\]

-   A **germ** \( \tilde f_p \) at a point \( p \) is an element in a stalk \( {\mathcal{F}}_p \). It can concretely be described as
    \[
    \tilde f_p = [(U\ni p, s\in {\mathcal{F}}(U))]/\sim && (U, s)\sim (V, t) \iff \exists W \subseteq U \cap V,\, { \left.{{s}} \right|_{{W}} } = { \left.{{t}} \right|_{{W}} }
    .\]
:::

::: {.definition title="Colimit of a diagram"}
Given a diagram \( J \) in a category \( \mathsf{C} \), regard it as a functor \( F: \mathsf{J}\to \mathsf{C} \) where \( \mathsf{J} \) is the diagram category of \( J \). Then the **colimit** of \( J \) is defined as the initial object in the category of co-cones over \( F \).

-   A **co-cone** of \( F \) is an \( N\in {\operatorname{Ob}}(\mathsf{C}) \) and a family of morphisms \( \left\{{ \psi_X: F(X)\to N{~\mathrel{\Big|}~}X\in {\operatorname{Ob}}(\mathsf{J})}\right\} \).

-   The **category of co-cones** over \( F \) is the comma category \( F \downarrow \Delta \), where \( \Delta: \mathsf{C} \to {\mathsf{Fun}}(\mathsf{J}, \mathsf{C}) \) is the diagonal functor sending \( N\in {\operatorname{Ob}}(\mathsf{C}) \) to the constant functor to \( N \):
    \[
    \Delta(N):\mathsf{J} &\to \mathsf{C} \\
    X &\mapsto N
    .\]

-   The **comma category** generalizes slice categories: given categories and functors
    \[
    \mathsf{A} \mapsto{S} \mathsf{C} \mapsfrom{T} \mathsf{B}
    ,\]
    the comma category \( S\downarrow T \) is given by triples \( (A, B, h: S(A)\to T(B)) \) making the obvious diagrams commute:

```{=tex}
\begin{tikzcd}
    {A_0} && {A_1} &&& {S(A_0)} && {S(A_1)} \\
    && {} \\
    {B_0} && {B_1} &&& {T(B_0)} && {T(B_1)}
    \arrow["{S(f)}", from=1-6, to=1-8]
    \arrow["{h_1}", from=1-8, to=3-8]
    \arrow["{h_1}"', from=1-6, to=3-6]
    \arrow["{T(g)}"', from=3-6, to=3-8]
    \arrow["f", from=1-1, to=1-3]
    \arrow["g", from=3-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOSxbNSwwLCJTKEFfMCkiXSxbNSwyLCJUKEJfMCkiXSxbNywwLCJTKEFfMSkiXSxbNywyLCJUKEJfMSkiXSxbMCwwLCJBXzAiXSxbMiwwLCJBXzEiXSxbMCwyLCJCXzAiXSxbMiwyLCJCXzEiXSxbMiwxXSxbMCwyLCJTKGYpIl0sWzIsMywiaF8xIl0sWzAsMSwiaF8xIiwyXSxbMSwzLCJUKGcpIiwyXSxbNCw1LCJmIl0sWzYsNywiZyJdXQ==)

Taking \( \mathsf{C} = A \), \( S = \operatorname{id}_{\mathsf{A}} \), and \( \mathsf{B} \coloneqq{\operatorname{pt}} \) to be a 1-object category with only the identity morphism forces \( X\coloneqq T({\operatorname{pt}}) \in {\operatorname{Ob}}(\mathsf{A}) \) to be a single object and \( (\mathsf{A} \downarrow X) \) is the usual slice category over \( X \).
:::

# Problem Sets

## Problem Set 1

::: {.remark}
All problems are sourced from Hartshorne.
:::

## Chapter 2, Section 1

::: {.remark}
List of useful facts used:

-   Morphisms of sheaves commute with restrictions: if \( \phi: {\mathcal{F}}\to {\mathcal{G}} \) then for any \( s\in {\mathcal{F}}(U) \) and \( V \subseteq U \), \( \mathop{\mathrm{Res}}(U, V)(\phi(s)) = \phi(\mathop{\mathrm{Res}}(U, V)(s)) \).
-   \( \phi \) is an isomorphism iff \( \phi_p \) are all isomorphisms.
-   Elements of stalks \( {\mathcal{F}}_p: \) equivalence classes \( [U, s\in {\mathcal{F}}(U)] \).
-   The induced map on stalks: \( \phi_p([U, s]) \coloneqq[U, \phi(U)(s)] \).
-   A surjection of sheaves need not induce a surjection on sections.
-   The colimit diagram:

```{=tex}
\begin{tikzcd}
    & \bullet \\
    \vdots && \vdots \\
    {U_1} && {F(U_1)} \\
    &&&& {\forall O} && {\colim_{i} F(U_i)} \\
    {U_2} && {F(U_2)} \\
    \vdots && \vdots \\
    & \bullet
    \arrow["f", from=5-1, to=3-1]
    \arrow["{F(f)}"', from=3-3, to=5-3]
    \arrow["{\psi_2}"', from=5-3, to=4-7]
    \arrow["{\psi_1}", from=3-3, to=4-7]
    \arrow["{\psi'_1}"', from=3-3, to=4-5]
    \arrow["{\psi'_2}", from=5-3, to=4-5]
    \arrow["{\exists !}", dashed, from=4-5, to=4-7]
    \arrow[dotted, no head, from=1-2, to=7-2]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTIsWzAsMiwiVV8xIl0sWzAsNCwiVV8yIl0sWzIsMiwiRihVXzEpIl0sWzIsNCwiRihVXzIpIl0sWzAsMSwiXFx2ZG90cyJdLFswLDUsIlxcdmRvdHMiXSxbMiw1LCJcXHZkb3RzIl0sWzIsMSwiXFx2ZG90cyJdLFs2LDMsIlxcY29saW1fe2l9IEYoVV9pKSJdLFs0LDMsIlxcZm9yYWxsIE8iXSxbMSwwLCJcXGJ1bGxldCJdLFsxLDYsIlxcYnVsbGV0Il0sWzEsMCwiZiJdLFsyLDMsIkYoZikiLDJdLFszLDgsIlxccHNpXzIiLDJdLFsyLDgsIlxccHNpXzEiXSxbMiw5LCJcXHBzaSdfMSIsMl0sWzMsOSwiXFxwc2knXzIiXSxbOSw4LCJcXGV4aXN0cyAhIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEwLDExLCIiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifSwiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==)

-   Colimits are initial co-cones, where \( I \) is initial if \( I\to X \) for any \( X \). AKA direct limits.

-   Filtered colimits commute with finite limits.

    -   In particular, monomorphisms are pullbacks, so finite limits, and stalks are filtered colimits. So injections of sheaves induce injections on stalks.
:::

::: {.remark}
Recommended problems:

-   1.1
-   1.2
-   1.3
-   1.4
-   1.5
:::

::: {.problem title="1.1"}
Let \( A \) be an abelian group, and define the *constant presheaf* associated to \( A \) on the topological space \( X \) to be the presheaf \( U \mapsto A \) for all \( U \neq \emptyset \), with restriction maps the identity.

Show that the constant sheaf \( {\mathcal{A}} \) defined in Hartshorne is the sheafification of this presheaf.
:::

::: {.solution}
Let \( X\in {\mathsf{Top}} \) be a space. Recapping the definitions, define the constant presheaf as
\[
\underline{A}^{\mathsf{pre}}(U) \coloneqq
\begin{cases}
A & U\neq \emptyset 
\\
0 & \text{else}.
\end{cases}
\quad \operatorname{res}^1(U, V) \coloneqq
\begin{cases}
\operatorname{id}_A  & U\neq \emptyset 
\\
0 & \text{else}.
\end{cases}
.\]

Then define the constant *sheaf* as
\[
\underline{A}(U) \coloneqq\mathop{\mathrm{Hom}}_{{\mathsf{Top}}}(U, A)\quad \operatorname{res}^2(U, V)(f) \coloneqq{ \left.{{f}} \right|_{{V}} }
.\]

We're then tasked with finding a morphism of sheaves
\[
\Psi: (\underline{A}^{\mathsf{pre}})^+ \xrightarrow{\sim} \mathop{\mathrm{Hom}}_{{\mathsf{Top}}}({-}, A)
,\]
which we'll also want to have an inverse morphism and this define an isomorphism in \( {\mathsf{Sh}}(X) \).

We'll use the implicitly stated fact in Hartshorne that \( \mathop{\mathrm{Hom}}_{{\mathsf{Top}}}(U, A) = A^{\oplus n} \) where \( n \coloneqq\# \pi_0(X) \) is the number of connected components of \( U \). Suppose first that \( n=1 \), so \( X \) is connected, and define the following morphism of groups:
\[
\Psi_U: (\underline{A}^{\mathsf{pre}})(U) = A &\longrightarrow\mathop{\mathrm{Hom}}_{\mathsf{Top}}(U, A)\\
a_0 &\mapsto \left\{ { \begin{aligned} \varphi_{a_0}: U \to A \\ x \mapsto a_0, \end{aligned} } \right.
\]
which maps a group element \( a_0 \) to the constant function on \( U \) sending every point to \( a_0 \in A \). The claim is that the following diagram commutes in the category \(  \underset{ \mathsf{pre} } {\mathsf{Sh} }(X) \) (in both directions) for all \( U \) and \( V \):

```{=tex}
\begin{tikzcd}
    && {f(U)} && f \\
    && {a_0} && { \begin{aligned} \varphi_{a_0}: U &\to A \\ x &\mapsto a_0 \end{aligned} } \\
    U && {(\underline{A}^{\mathsf{pre}})(U) = A} && {\mathop{\mathrm{Hom}}_{\mathsf{Top}}(U, A)} \\
    \\
    V && {(\underline{A}^{\mathsf{pre}})(V) = A} && {\mathop{\mathrm{Hom}}_{\mathsf{Top}}(V, A)} \\
    && {a_0} && { \begin{aligned} \varphi_{a_0}: V &\to A \\ x &\mapsto a_0 \end{aligned} } \\
    && {f(V)} && f
    \arrow[hook, from=5-1, to=3-1]
    \arrow["{\Psi_U}", from=3-3, to=3-5]
    \arrow["{\Psi_V}", from=5-3, to=5-5]
    \arrow["{\operatorname{res}^1(U, V)}"', from=3-3, to=5-3]
    \arrow["{\operatorname{res}^2(U, V)}", from=3-5, to=5-5]
    \arrow[maps to, from=2-3, to=2-5]
    \arrow[maps to, from=1-5, to=1-3]
    \arrow[maps to, from=7-5, to=7-3]
    \arrow[maps to, from=6-3, to=6-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTQsWzAsMiwiVSJdLFswLDQsIlYiXSxbMiwyLCIoXFx1bHtBfV5cXHByZSleKyhVKSJdLFsyLDQsIihcXHVse0F9XlxccHJlKV4rKFYpIl0sWzQsMiwiXFxIb21fXFxUb3AoVSwgQSkiXSxbNCw0LCJcXEhvbV9cXFRvcChVLCBBKSJdLFsyLDEsImFfMCJdLFs0LDEsIlxcdmFycGhpX3thXzB9OiBVXFx0byBBIFxcXFx4XFxtYXBzdG8gYV8wIl0sWzQsMCwiZiJdLFsyLDAsImYoVSkiXSxbMiw1LCJhXzAiXSxbNCw1LCJcXHZhcnBoaV97YV8wfTogVlxcdG8gQSBcXFxceFxcbWFwc3RvIGFfMCJdLFs0LDYsImYiXSxbMiw2LCJmKFYpIl0sWzEsMCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMiw0LCJcXHBzaV9VIl0sWzMsNSwiXFxwc2lfViJdLFsyLDMsIlxccmVzXjEoVSwgVikiLDJdLFs0LDUsIlxccmVzXjIoVSwgVikiXSxbNiw3LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV0sWzgsOSwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dLFsxMiwxMywiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dLFsxMCwxMSwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dXQ==)

Here we've specified simultaneously what \( \Psi \) and \( \Psi^{-1} \) prescribe on opens \( U, V \), and abuse notation slightly by writing \( \mathop{\mathrm{Hom}}_{{\mathsf{Top}}}({-}, A) \) for the sheaf it represents and its underlying presheaf.

-   That this commutes follows readily, since running the diagram counterclockwise yields \( \operatorname{res}^1(U, V) = \operatorname{id}_A \), so the composition
    \[
    (A \xrightarrow{\operatorname{res}^1(U, V)} A \xrightarrow{\Psi_V} \mathop{\mathrm{Hom}}(V, A)) = (A \xrightarrow{\Psi_V} \mathop{\mathrm{Hom}}(V, A))
    \]
    sends an element \( a_0\in A \) to the constant function \( \varphi_{a_0, V}: V\to A \). Running the diagram clockwise yields
    \[
    (A \xrightarrow{\Psi_U} \mathop{\mathrm{Hom}}(U, A) \xrightarrow{\operatorname{res}^2(U, V)} \mathop{\mathrm{Hom}}(V, A))
    ,\]
    which sends \( a_0 \) to the constant function \( \varphi_{a_0, U}: U\to A \) sending everything to \( a_0 \), which then gets sent to \( { \left.{{\varphi_{a_0, U}}} \right|_{{V}} }: V\to A \) sending everything to \( a \). Since \( { \left.{{\varphi_{a_0}}} \right|_{{V}} }(x) = \varphi_{a_0, V}(x) = a \) for every \( x\in U \), these functions are equal.

-   That the reverse maps \( \Psi_U^{-1} \) are well-defined follows from the fact that \( U \) is connected: the continuous image of a connected set is connected. Since \( A \) is given the discrete topology, any subset with 2 or more elements in disconnected, so each function \( f\in \mathop{\mathrm{Hom}}(U, A) \) is necessarily a constant function and \( f(U) = \left\{{a}\right\} \) is a singleton.

-   \( \Psi_U, \Psi_U^{-1} \) clearly compose to the identity in either order, so \( \Psi_U \) defines an isomorphism of abelian groups.

As a consequence, we get a well-defined morphism of presheaves \( \underline{A}^{\mathsf{pre}}({-}) \to { \left.{{ \mathop{\mathrm{Hom}}({-}, A)}} \right|_{{ \underset{ \mathsf{pre} } {\mathsf{Sh} }}} } \), and by the sheafification adjunction we can lift this to a morphism of sheaves:
\[
\adjunction{{\mathcal{F}}\mapsto {\mathcal{F}}^+ }{{\mathcal{G}}\mapsto { \left.{{{\mathcal{F}}}} \right|_{{ \underset{ \mathsf{pre} } {\mathsf{Sh} }}} } }{ \underset{ \mathsf{pre} } {\mathsf{Sh} }(X)}{{\mathsf{Sh}}(X)}
,\]
which reads
\[
\mathop{\mathrm{Hom}}_{ \underset{ \mathsf{pre} } {\mathsf{Sh} }}({\mathcal{F}}, { \left.{{{\mathcal{G}}}} \right|_{{ \underset{ \mathsf{pre} } {\mathsf{Sh} }}} }) &\xrightarrow{\sim} \mathop{\mathrm{Hom}}_{{\mathsf{Sh}}}({\mathcal{F}}^+, {\mathcal{G}}) \\
\Psi &\mapsto \tilde \Psi
,\]
and since \( \Psi \) was an isomorphism, so is \( \tilde \Psi \).

> It remains to handle the \( n\geq 2 \), case when (say) \( U = U_1 {\textstyle\coprod}U_2 \) has more than 1 connected component. Actually, is it even true that adjunctions preserve isomorphisms...? Todo: help??

------------------------------------------------------------------------

Alternatively, consider the map \( \Psi \) defined on presheaves -- by the universal property, we get some sheaf morphism \( \tilde\Psi \), which we can show is an isomorphism by showing its induced map on stalks is an isomorphism. This amounts to showing the following map is a group isomorphism:
\[
\Psi_p: (\underline{A}^{\mathsf{pre}}({-}))_p \xrightarrow{\sim} \mathop{\mathrm{Hom}}_{\mathsf{Top}}({-}, A)_p
.\]

First we identify the LHS:
\[
(\underline{A}^{\mathsf{pre}}({-}))_p \coloneqq\colim_{U\ni p} \underline{A}^{\mathsf{pre}}(U) = \colim_{U\ni p} A = A
.\]

(todo: show \( A \) satisfies the universal property for a colimit)

Identifying the RHS, we have equivalence classes \( [U\ni p, s: U\to A] \)

-   Injectivity: that \( \Psi_p \) is injective follows from the fact that \( \ker \psi_p \coloneqq\left\{{a\in A {~\mathrel{\Big|}~}\Psi_p(a) = e}\right\} \), where \( e \) is the identity in the right-hand side stalk, which is represented by the class \( [U, f_e:U\to A] \) where \( f_e(x) \coloneqq e_A \), the identity of \( A \), for every \( x\in U \).

-   Surjectivity: that \( \Psi_p \) is surjective follows from the fact that every fixed \( f: U\to A \) for \( A \) discrete is constant on connected components. Use that \( p \) is contained in a connected component \( U_1 \ni p \), then \( [U, f] \sim [U_1, { \left.{{f}} \right|_{{U_1}} }] \coloneqq[U_1, g] \) to get that \( g \) is now a constant function of \( U_1 \). So \( g(x) = a \) for some \( a\in A \), so \( g = \Psi_p(a) \) is in the image.

------------------------------------------------------------------------

Alternatively:

-   Show that \( \underline{A} \) satisfies the universal property of \( (\underline{A}^{\mathsf{pre}})^+ \): we need to produce a morphism \( \theta: (\underline{A}^{\mathsf{pre}}) \to \underline{A} \) such that for any \( {\mathcal{G}}\in {\mathsf{Sh}}(X) \) and morphism of presheaves \( \varphi: \underline{A}^{\mathsf{pre}}\to { \left.{{{\mathcal{G}}}} \right|_{{{\mathsf{pre}}}} } \) we can produce a unique morphism \( \tilde \varphi \) of sheaves making the following diagram commute:

```{=tex}
\begin{tikzcd}
    {\underline{A}^{{\mathsf{pre}}}} && {{ \left.{{{\mathcal{G}}}} \right|_{{{\mathsf{pre}}}} }} && {\in  \underset{ \mathsf{pre} } {\mathsf{Sh} }(X)} \\
    \\
    {\underline{A}} && {\mathcal{G}}&& {\in{\mathsf{Sh}}(X)}
    \arrow["\varphi", from=1-1, to=1-3]
    \arrow["\theta"', from=1-1, to=3-1]
    \arrow["{{ \left.{{{-}}} \right|_{{{\mathsf{pre}}}} }}"', from=3-3, to=1-3]
    \arrow["{\exists! \tilde \varphi}"', dashed, from=3-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwyLCJcXHVse0F9Il0sWzAsMCwiXFx1bHtBfV57XFxwcmV9Il0sWzIsMCwiXFxyb3tcXG1jZ317XFxwcmV9Il0sWzIsMiwiXFxtY2ciXSxbNCwwLCJcXGluIFxcUHJlc2goWCkiXSxbNCwyLCJcXGluXFxTaChYKSJdLFsxLDIsIlxcdGhldGEiXSxbMSwwLCJcXHRoZXRhIiwyXSxbMywyLCJcXHJve1xcd2FpdH17XFxwcmV9IiwyXSxbMCwzLCJcXGV4aXN0cyEgXFx0aWxkZSBcXHRoZXRhIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d)

-   To define \( \tilde \varphi \), it suffices to define morphisms of the form
    \[
    \tilde\varphi(U): \underline{A}(U) &\to{\mathcal{G}}(U) \\
    f & \mapsto \tilde\varphi(U)(f)
    \]

-   Take a map \( f\in \underline{A}(U) \coloneqq\mathop{\mathrm{Hom}}_{\mathsf{Top}}(U, A) \). Write \( U \coloneqq{\textstyle\coprod}U_i \) as a union of connected components. Use that \( f \) is constant on connected components since \( A \) is discrete, so \( f(U_i) = a_i \) for some elements \( a_i \in A \in {\mathsf{Ab}}{\mathsf{Grp}} \).

-   Plug the \( U_i \) into \( \underline{A}^{\mathsf{pre}} \) to get morphisms
    \[
    \varphi(U_i): \underline{A}^{\mathsf{pre}}(U_i)= A \to { \left.{{{\mathcal{G}}}} \right|_{{{\mathsf{pre}}}} }(U_i) && \in {\mathsf{Ab}}{\mathsf{Grp}}
    \]

-   Write \( b_i \coloneqq\varphi(U_i)(a_i) \in { \left.{{{\mathcal{G}}}} \right|_{{{\mathsf{pre}}}} }(U_i) = {\mathcal{G}}(U_i) \).

```{=tex}
\begin{tikzcd}
    {a_i} &&& {b_i \coloneqq\varphi(U_i)(a_i)} \\
    & {\underline{A}^{{\mathsf{pre}}}(U_i) = A} && {{ \left.{{{\mathcal{G}}}} \right|_{{{\mathsf{pre}}}} }(U_i)} && {\in  \underset{ \mathsf{pre} } {\mathsf{Sh} }(X)} \\
    \\
    & {\mathop{\mathrm{Hom}}(U_i, A)} && {{\mathcal{G}}(U_i)} && {\in{\mathsf{Sh}}(X)} \\
    & f && {b_i} && {}
    \arrow["{\varphi(U_i)}", from=2-2, to=2-4]
    \arrow["\theta"', from=2-2, to=4-2]
    \arrow["{{ \left.{{{-}}} \right|_{{{\mathsf{pre}}}} }}"', from=4-4, to=2-4]
    \arrow["{\exists! \tilde \varphi}"', dashed, from=4-2, to=4-4]
    \arrow[curve={height=-24pt}, dashed, maps to, from=5-2, to=1-1]
    \arrow[dashed, maps to, from=1-1, to=1-4]
    \arrow[maps to, from=5-2, to=5-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTEsWzEsMywiXFxIb20oVV9pLCBBKSJdLFsxLDEsIlxcdWx7QX1ee1xccHJlfShVX2kpID0gQSJdLFszLDEsIlxccm97XFxtY2d9e1xccHJlfShVX2kpIl0sWzMsMywiXFxtY2coVV9pKSJdLFs1LDEsIlxcaW4gXFxQcmVzaChYKSJdLFs1LDMsIlxcaW5cXFNoKFgpIl0sWzUsNF0sWzEsNCwiZiJdLFswLDAsImFfaSJdLFszLDAsImJfaSBcXGRhIFxcdmFycGhpKFVfaSkoYV9pKSJdLFszLDQsImJfaSJdLFsxLDIsIlxcdmFycGhpKFVfaSkiXSxbMSwwLCJcXHRoZXRhIiwyXSxbMywyLCJcXHJve1xcd2FpdH17XFxwcmV9IiwyXSxbMCwzLCJcXGV4aXN0cyEgXFx0aWxkZSBcXHZhcnBoaSIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs3LDgsIiIsMCx7ImN1cnZlIjotNCwic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9LCJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOCw5LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn0sImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs3LDEwLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV1d)

-   Since \( {\mathcal{G}} \) is in fact a sheaf, by unique gluing there exists a unique element \( b \in {\mathcal{G}}(U) \) such that \( { \left.{{b}} \right|_{{U_i}} } = b_i \). So define \( \tilde\varphi(U)(f) \coloneqq b \).

-   Now define the map \( \theta: \underline{A}^{\mathsf{pre}}(U_i) \to \mathop{\mathrm{Hom}}(U_i, A) \) sending \( a_i \) to the constant function \( f_{i}(x)\coloneqq a_i \). Since \( \underline{A} \) is a sheaf, there is a well defined \( F\in \mathop{\mathrm{Hom}}(U, A) \) such that \( { \left.{{F}} \right|_{{U_i}} } = f_i \). So for \( a\in \underline{A}^{\mathsf{pre}}(U) \) set \( \theta(a) = F \in \underline{A}(U) \).

-   This makes the relevant diagram commute: if \( a\in A = \underline{A}^{\mathsf{pre}}(U) \), then \( b\coloneqq\phi(U)(a) \in {\mathcal{G}}(U) \). On the other hand, \( \theta(a) \) is the constant function \( f_a: x\mapsto a \) (on every connected component of \( U \)), and setting \( F \coloneqq\tilde\phi(f_a)\in {\mathcal{G}}(U) \), we have \( F \coloneqq b \).
:::

::: {.problem title="1.2"}
(a) For any morphism of sheaves \( \varphi: {\mathcal{F}}\rightarrow {\mathcal{G}} \), show that for each point \( p \) that \( \ker (\varphi)_{p}= \) \( \operatorname{ker}\left(\varphi_{p}\right) \) and \( \operatorname{im}(\varphi)_{p} = \operatorname{im}\left(\varphi_{p}\right) \).

(b) Show that \( \varphi \) is injective (resp. surjective) if and only if the induced map on the stalks \( \varphi_{p} \) is injective (resp. surjective) for all \( p \).

(c) Show that a sequence of sheaves and morphisms
    \[
    \cdots {\mathcal{F}}^{i-1} \xrightarrow{\varphi^{i-1}} {\mathcal{F}}^i \xrightarrow{\varphi^{i}} {\mathcal{F}}^{i+1} \to \cdots
    \]
    is exact if and only if for each \( P \in X \) the corresponding sequence of stalks is exact as a sequence of abelian groups.
:::

::: {.proof title="of 1, kernels"}
```{=tex}
\envlist
```
-   Write \( K\in {\mathsf{Sh}}(X) \) for the kernel sheaf \( U \mapsto \ker \qty{ {\mathcal{F}}(U) \xrightarrow{\phi(U)} {\mathcal{G}}(U) } \),
-   We then want to show \( K_p = \ker\qty{{\mathcal{F}}_p \xrightarrow{\phi_p} {\mathcal{G}}_p} \), an equality of sets in \( {\mathsf{Ab}}{\mathsf{Grp}} \). So we just do it!
    -   Addendum: this works because both are subsets of the same abelian group, \( {\mathcal{F}}_p \).
-   We can write
    \[
    \phi_p: {\mathcal{F}}_p &\to {\mathcal{G}}_p \\
    [U, s] &\mapsto [U, \phi(U)(s)]
    ,\]
    and note that the zero element in a stalk is the equivalence class \( [U, 0] \) where \( 0\in {\mathsf{Ab}}{\mathsf{Grp}} \) is the zero object. Thus
    \[
    \ker \phi_p 
    &\coloneqq\left\{{ x\in {\mathcal{F}}_p {~\mathrel{\Big|}~}\phi_p(x) = 0 \in {\mathcal{G}}_p }\right\} \\
    & = \left\{{ [U, s] \in {\mathcal{F}}_p {~\mathrel{\Big|}~}[U, \phi(U)(s)] = [U, 0] }\right\} \\
    & = \left\{{ [U, s] \in {\mathcal{F}}_p {~\mathrel{\Big|}~}\phi(U)(s) = 0 }\right\} \\
    & = \left\{{ [U, s] \in {\mathcal{F}}_p {~\mathrel{\Big|}~}s \in \ker \phi(U) }\right\} \\
    &= \left\{{ [U, s] {~\mathrel{\Big|}~}s\in \ker{\qty{{\mathcal{F}}(U) \xrightarrow{\phi(U)} {\mathcal{G}}(U) } } }\right\} \\
    &\coloneqq\left\{{[U, s] {~\mathrel{\Big|}~}s\in K(U)}\right\} \\
    &\coloneqq K_p 
    .\]
:::

::: {.proof title="of 1, images"}
```{=tex}
\envlist
```
-   Write \( {\mathcal{I}} \) for the sheaf \( \operatorname{im}\phi \) which sends \( U\mapsto \operatorname{im}\qty{{\mathcal{F}}(U) \xrightarrow{\phi(U)} {\mathcal{G}}(U)} \).
-   We want to show \( {\mathcal{I}}_p = \operatorname{im}\qty{{\mathcal{F}}_p \xrightarrow{\phi_p} {\mathcal{G}}_p} \), where both are subsets of \( {\mathcal{G}}_p \).
-   So we show set equality:
    \[
    \operatorname{im}(\phi_p)
    &= \left\{{ y\in {\mathcal{G}}_p {~\mathrel{\Big|}~}\exists x\in {\mathcal{F}}_p,\, \phi_p(x) = y }\right\} \\
    &= \left\{{ [U, t] \in {\mathcal{G}}_p {~\mathrel{\Big|}~}\exists [U, s] \in {\mathcal{F}}_p,\, \phi_p([U, s]) = [U, t] }\right\} \\
    &= \left\{{ [U, t] \in {\mathcal{G}}_p {~\mathrel{\Big|}~}\exists s\in {\mathcal{F}}(U),\, \phi(U)(s) = t }\right\} \\
    &= \left\{{ [U, t] \in {\mathcal{G}}_p {~\mathrel{\Big|}~}t\in \operatorname{im}\qty{{\mathcal{F}}(U) \xrightarrow{\phi(U)}  {\mathcal{G}}(U) }}\right\} \\
    &\coloneqq\left\{{ [U, t] \in {\mathcal{G}}_p {~\mathrel{\Big|}~}t \in {\mathcal{I}}(U) }\right\} \\
    &\coloneqq{\mathcal{I}}_p
    .\]
:::

::: {.proof title="of 2, injectivity"}
\( \implies \):

-   Use that injectivity of a morphism \( \phi \) of sheaves is *defined* to hold exactly when \( \ker \phi = 0 \) is the constant zero sheaf.

-   Now use (1):
    \[
    0 = \ker(\phi) \implies 0 = \ker(\phi)_p = \ker(\phi_p) && \forall p
    .\]

-   If \( \ker \phi = 0 \), so \( \phi \) is injective, then \( \ker \phi_p = 0 \) for all \( p \), so \( \ker \phi_p \) is injective.

\( \impliedby \):

-   Conversely, suppose \( \ker \phi_p = 0 \) for all \( p \); we want to show \( \ker \phi(U) = 0 \) for all \( U \).
-   So fix \( U\ni p \), we want to show
    \[
    s\in K(U) \coloneqq\ker\qty{{\mathcal{F}}(U) \xrightarrow{\phi(U)} {\mathcal{G}}(U)}
    \implies s = 0 \in {\mathcal{F}}(U)
    .\]
-   We have \( \phi(U)(s) = 0 \), so
    \[
    \phi_p([U, s]) \coloneqq[U, \phi(U)(s)] = [U, 0] \in {\mathcal{G}}_p \implies [U, s] \in \ker (\phi_p)
    .\]
-   By injectivity of \( \phi_p \), we have \( [U, s] = 0 \in {\mathcal{F}}_p \).
-   So there is some open \( U_p \) with \( U \supseteq U_p \ni p \) and \( \mathop{\mathrm{Res}}(U, U_p)(s) = 0 \) in \( {\mathcal{F}}(U_p) \).
-   Then \( \left\{{U_p }\right\}_{p\in U} \rightrightarrows U \), and since \( {\mathcal{F}} \) is a sheaf, by existence of gluing these glue to an \( F \in {\mathcal{F}}(U) \) with \( \mathop{\mathrm{Res}}(U, U_p)(F) = 0 \) for each \( p \). By uniqueness of gluing, \( 0 = F = s \).
:::

::: {.proof title="of 2, surjectivity"}
\( \implies \):

-   Suppose \( \phi \) is surjective, then by definition \( \operatorname{im}\phi = {\mathcal{G}} \) is an equality of sheaves.
-   So \( (\operatorname{im}\phi)(U) = {\mathcal{G}}(U) \) for all \( U \).
-   Let \( [U, t]\in {\mathcal{G}}_p \), so \( t\in {\mathcal{G}}(U) \).
-   Then \( t\in (\operatorname{im}\phi)(U) \), so there exists an \( s\in {\mathcal{F}}(U) \) such that \( \phi(U)(s) = t \).
-   Then \( [U, s] \mapsto [U, \phi(U)(s)] = [U, t] \), under \( \phi_p \), making \( \phi_p \) surjective.

\( \impliedby \):

-   Suppose \( \phi_p \) is surjective for all \( p \), fix \( U \), and let \( t \in {\mathcal{G}}(U) \). We want to produce an \( s\in {\mathcal{F}}(U) \) such that \( \phi(U)(s) = t \).

-   For \( p\in U \), the image of \( t \) in the stalk of \( {\mathcal{G}} \) is of the form \( [U_p, t_p] \in {\mathcal{G}}_p \) where \( t_p \in {\mathcal{G}}(U_p) \).

-   Since \( \phi_p: {\mathcal{F}}_p \twoheadrightarrow{\mathcal{G}}_p \), we can find some pair \( [U_p, s_p] \) mapping to \( [U_p, t_p] \) under \( \phi_p \), so \( \phi(U_p)(s_p) = t_p \).

    -   Note that \( \mathop{\mathrm{Res}}(U, U_p)(t) = t_p \).
    -   Note: may need to pull back to some \( \tilde U_p \), then take a common refinement in both germs?

-   Now \( \left\{{U_p}\right\}_{p\in U}\rightrightarrows U \), so using existence of gluing for \( {\mathcal{F}} \) we have some \( s\in {\mathcal{F}}(U) \) with \( \mathop{\mathrm{Res}}(U, U_p)(s) = s_p \) for all \( p \).

-   Claim: \( \phi(U)(s) = t \).
    \[
    \mathop{\mathrm{Res}}(U, U_p)( \phi(s) ) &= \phi(\mathop{\mathrm{Res}}(U, U_p)(s)) \\ &= \phi(s_p) \\ &= t_p \\ &= \mathop{\mathrm{Res}}(U, U_p)(t)
    && \forall p\in U
    ,\]
    so \( \phi(s) = t \) by uniqueness of gluing of \( {\mathcal{G}} \).
:::

::: {.proof title="of 3, exactness"}
\( \implies \): Assuming exactness of sheaves,
\[
\ker({\mathcal{F}}^{i+1}) = \operatorname{im}({\mathcal{F}}^{i}) \iff
\ker({\mathcal{F}}^{i+1})_p = \operatorname{im}({\mathcal{F}}^{i})_p && \forall p
.\]

\( \impliedby \): Assuming exactness on stalks, write
\[
\ker({\mathcal{F}}^{i+1})_p 
&= \ker({\mathcal{F}}^{i+1}_p) && \text{by 1 } \\
&= \operatorname{im}({\mathcal{F}}^{i}_p) && \text{exactness, by assumption} \\
&= \operatorname{im}({\mathcal{F}}^{i})_p && \text{by 1}
.\]
:::

::: {.problem title="1.3"}
(a) Let \( \varphi: {\mathcal{F}}\to{\mathcal{G}} \) be a morphism of sheaves on \( X \). Show that \( \varphi \) is surjective if and only if the following condition holds:

    For every open set \( U \subseteq X \), and for every \( s\in {\mathcal{G}}(U) \), there is a cover \( \left\{{U_i}\right\} \) of \( U \) and elements \( t_i \in {\mathcal{F}}(U_i) \) such that \( \varphi(t_i) = { \left.{{s}} \right|_{{U_i}} } \) for all \( i \).

(b) Give an example of a surjective morphism of sheaves \( \varphi: {\mathcal{F}}\rightarrow {\mathcal{G}} \), and an open set \( U \) such that \( \varphi(U): {\mathcal{F}}(U) \rightarrow {\mathcal{G}}(U) \) is not surjective.
:::

::: {.proof title="of 1"}
\( \implies \):

-   If \( \phi: {\mathcal{F}}\twoheadrightarrow{\mathcal{G}} \), then \( \phi_p: {\mathcal{F}}_p \twoheadrightarrow{\mathcal{G}}_p \) for all \( p \), since \( \operatorname{im}(\phi_p) = (\operatorname{im}\phi)_p = {\mathcal{G}}_p \), using problem 1.2.
-   Fix \( U \subseteq X \) and \( s\in {\mathcal{G}}(U) \), we want
    -   To produce a cover \( \left\{{U_i}\right\}\rightrightarrows U \),
    -   To find \( t_i\in {\mathcal{F}}(U_i) \), and
    -   To show that \( \phi(t_i) = \mathop{\mathrm{Res}}(U, U_i)(s) \) for all \( i \).
-   Fix \( p \), and take the image of \( s \) in the stalk of \( {\mathcal{G}} \) to get \( [U_p, s_p] \in {\mathcal{G}}_p \) with \( s_p \in {\mathcal{G}}(U_p) \) and \( \mathop{\mathrm{Res}}(U, U_p)(s) = s_p \). Note that \( \left\{{U_p}\right\}_{p\in U}\rightrightarrows U \).
-   By surjectivity on stalks, these pull back to \( [U_p, t_p]\in {\mathcal{F}}_p \) with \( t_p \in {\mathcal{F}}(U_p) \) and \( \phi_p([U_p, t_p]) \coloneqq[U_p, \phi(U_p)(t_p)] = [U_p, s_p] \).
-   Then \( s_p \in \operatorname{im}({\mathcal{F}}(U_p) \xrightarrow{\phi(U_p)} {\mathcal{G}}(U_p )) \) and \( \phi(t_p) = s_p = \mathop{\mathrm{Res}}(U, U_p)(s) \).

\( \impliedby \):

-   If \( \left\{{U_i}\right\}\rightrightarrows U \) with \( \phi(t_i) = \mathop{\mathrm{Res}}(U, U_i)(s) \) for all \( i \), then the \( t_i \) glue to a unique section \( t\in {\mathcal{F}}(U) \) since \( {\mathcal{F}} \) is a sheaf.
-   Moreover \( \mathop{\mathrm{Res}}(U, U_i)( \phi(t) ) = \phi(\mathop{\mathrm{Res}}(U, U_i)(t)) = \phi(t_i) = \mathop{\mathrm{Res}}(U, U_i)(s) \) for all \( i \), and by unique gluing for \( {\mathcal{G}} \) we have \( \phi(t) = s \).
-   So \( \phi(U): {\mathcal{F}}(U) \to {\mathcal{G}}(U) \) is surjective for all \( U \), making \( \operatorname{im}(\phi(U)) = {\mathcal{G}}(U) \)
-   So \( \operatorname{im}\phi = {\mathcal{G}} \) as sheaves since they make the same assignment to every open set \( U \), making \( \phi: {\mathcal{F}}\to{\mathcal{G}} \) surjective by definition.
:::

::: {.proof title="of 2"}
```{=tex}
\envlist
```
-   Take \( X \coloneqq\left\{{a,b,c}\right\} \) a 3-point space with the topology \( \tau_X \coloneqq\left\{{\emptyset, \left\{{a}\right\}, \left\{{b}\right\}, \left\{{a,b}\right\}, X}\right\} \).

-   Take \( {\mathcal{F}}\coloneqq\underline{A} \) for some nontrivial \( A\in {\mathsf{Ab}}{\mathsf{Grp}} \). We have the stalks

    -   \( {\mathcal{F}}_a = A \)
    -   \( {\mathcal{F}}_b = A \)
    -   \( {\mathcal{F}}_c = A \)

-   Take \( {\mathcal{G}}\coloneqq\underline{A}(a) \times \underline{A}(b) \), the skyscraper sheaves at \( a \) and \( b \) respectively, where
    \[
    \underline{A}(x)(U) \coloneqq
    \begin{cases}
    A &  x\in U
    \\
    0 & \text{ else} .
    \end{cases}
    \]
    Note that the stalks are given by \( \underline{A}(x)_x = A \) and \( \underline{A}(x)_y = 0 \) for \( y\neq x \), so

    -   \( {\mathcal{G}}_a = A\times 0 \)
    -   \( {\mathcal{G}}_b = 0 \times A \)
    -   \( {\mathcal{G}}_c = 0 \times 0 \).

-   Now define \( \phi: {\mathcal{F}}\to {\mathcal{G}} \) by specifying \( \phi(U):{\mathcal{F}}(U) \to {\mathcal{G}}(U) \) for all \( U \) in the following way:

```{=tex}
\begin{tikzcd}
    & {{\mathsf{Open}}(X)} &&&& {\underline{A}} &&&& {\underline{A}(a) \times \underline{A}(b)} \\
    & {X = \left\{{a,b,c}\right\}} &&&& A &&&& {A^{\times 2}} \\
    & {\left\{{a,b}\right\}} &&&& A &&&& {A^{\times 2}} \\
    {\left\{{a}\right\}} && {\left\{{b}\right\}} && A && A && {A\times 0} && {0\times A} \\
    & \emptyset &&&& 0 &&&& 0
    \arrow[from=5-2, to=4-1]
    \arrow[from=5-2, to=4-3]
    \arrow[from=4-1, to=3-2]
    \arrow[from=4-3, to=3-2]
    \arrow[from=3-2, to=2-2]
    \arrow[from=2-6, to=3-6]
    \arrow[from=3-6, to=4-5]
    \arrow[from=3-6, to=4-7]
    \arrow[from=4-7, to=5-6]
    \arrow[from=4-5, to=5-6]
    \arrow[from=2-10, to=3-10]
    \arrow[from=3-10, to=4-9]
    \arrow[from=3-10, to=4-11]
    \arrow[from=4-11, to=5-10]
    \arrow[from=4-9, to=5-10]
    \arrow[color={rgb,255:red,92;green,214;blue,214}, curve={height=-18pt}, dashed, from=2-6, to=2-10]
    \arrow[color={rgb,255:red,92;green,214;blue,214}, curve={height=-18pt}, dashed, from=3-6, to=3-10]
    \arrow[color={rgb,255:red,92;green,214;blue,214}, curve={height=-18pt}, dashed, from=4-5, to=4-9]
    \arrow[color={rgb,255:red,92;green,214;blue,214}, curve={height=-18pt}, dashed, from=4-7, to=4-11]
    \arrow[color={rgb,255:red,92;green,214;blue,214}, curve={height=-18pt}, dashed, from=5-6, to=5-10]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTgsWzEsMSwiWCA9IFxcc3R7YSxiLGN9Il0sWzEsMiwiXFx0c3thLGJ9Il0sWzAsMywiXFx0c3thfSJdLFsyLDMsIlxcdHN7Yn0iXSxbMSw0LCJcXGVtcHR5c2V0Il0sWzUsMSwiQSJdLFs1LDIsIkEiXSxbNCwzLCJBIl0sWzYsMywiQSJdLFs1LDQsIjAiXSxbOCwzLCJBXFx0aW1lcyAwIl0sWzEwLDMsIjBcXHRpbWVzIEEiXSxbOSwyLCJBXntcXHRpbWVzIDJ9Il0sWzksMSwiQV57XFx0aW1lcyAyfSJdLFs5LDQsIjAiXSxbNSwwLCJcXHVse0F9Il0sWzksMCwiXFx1bHtBfShhKSBcXHRpbWVzIFxcdWx7QX0oYikiXSxbMSwwLCJcXE9wZW4oWCkiXSxbNCwyXSxbNCwzXSxbMiwxXSxbMywxXSxbMSwwXSxbNSw2XSxbNiw3XSxbNiw4XSxbOCw5XSxbNyw5XSxbMTMsMTJdLFsxMiwxMF0sWzEyLDExXSxbMTEsMTRdLFsxMCwxNF0sWzUsMTMsIiIsMSx7ImN1cnZlIjotMywiY29sb3VyIjpbMTgwLDYwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsMTIsIiIsMSx7ImN1cnZlIjotMywiY29sb3VyIjpbMTgwLDYwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzcsMTAsIiIsMSx7ImN1cnZlIjotMywiY29sb3VyIjpbMTgwLDYwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzgsMTEsIiIsMSx7ImN1cnZlIjotMywiY29sb3VyIjpbMTgwLDYwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzksMTQsIiIsMSx7ImN1cnZlIjotMywiY29sb3VyIjpbMTgwLDYwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d)

-   Note that the induced maps on stalks are surjective, since \( \phi_p: A \to A, 0 \) is either the identity or the zero map. But e.g. for \( \left\{{a, b}\right\} \) we have \( A\mapsto A^{\times 2} \), which can not be surjective.

    > Question: what is this map? Apparently its image is the diagonal...?
:::

::: {.problem title="1.4"}
(a) Let \( \varphi: {\mathcal{F}}\to {\mathcal{G}} \) be a morphism of presheaves such that \( \varphi(U): {\mathcal{F}}(U) \to {\mathcal{G}}(U) \) is injective for each \( U \). Show that the induced map \( \varphi^+: {\mathcal{F}}^+ \to {\mathcal{G}}^+ \)of associated sheaves is injective.

(b) Use part (a) to show that if \( \varphi: {\mathcal{F}}\to{\mathcal{G}} \) is a morphism of sheaves, then \( \operatorname{im}\varphi \) can be naturally identified with a subsheaf of \( {\mathcal{G}} \), as mentioned in the text.
:::

::: {.proof title="of a"}
```{=tex}
\envlist
```
-   \( \phi: {\mathcal{F}}\to {\mathcal{G}} \) is injective iff \( \phi_p:{\mathcal{F}}_p \to {\mathcal{G}}_p \) is injective for all \( p \).
-   Sheafification induces a map \( \phi^+: {\mathcal{F}}^+_p \to {\mathcal{G}}^+_p \)
-   The sheafification has the same stalks, so \( {\mathcal{F}}^+_p = {\mathcal{F}}_p \) and \( {\mathcal{G}}^+_p = {\mathcal{G}}_p \).
-   So in fact \( \phi^+_p = \phi_p \). Since \( \phi^+_p \) is thus injective on all stalks, \( \phi^+ \) is injective on sheaves.
:::

::: {.proof title="of b"}
```{=tex}
\envlist
```
-   Noting that on opens \( (\operatorname{im}\phi)(U) \subseteq {\mathcal{G}}(U) \) is an inclusion of abelian groups, so define a morphism of sheaves by \( \iota(U): (\operatorname{im}\phi)(U) \to {\mathcal{G}}(U) \) using this inclusion.
    -   By definition, it suffices to show \( \ker \iota = 0 \) as a sheaf.
    -   By 1.2.2, it suffices to show \( (\ker \iota)_p = 0 \) on all stalks.
    -   By 1.2.1, \( (\ker \iota)_p = \ker(\iota_p) \), so it suffices to show \( \iota_p \) is injective for all \( p \).
-   Now use that
    \[
    \ker(\iota_p) = \colim_{U\ni p} (\ker \phi)(\iota(U)) = \colim_{U\ni p} 0 = 0
    ,\]
    since all of the \( \iota(U) \) are injective, so 0 satisfies the universal property for this colimit. So we're done.
:::

::: {.problem title="1.5"}
Show that a morphism of sheaves is an isomorphism if and only if it is both injective and surjective.
:::

::: {.proof title="?"}
```{=tex}
\envlist
```
Problem: surjections of sheaves don't induce surjections ons sections!

-   \( \phi:{\mathcal{F}}\to{\mathcal{G}} \) being injective means that \( (\ker \phi) = 0 \) as sheaves, and surjective means \( (\operatorname{im}\phi) = {\mathcal{G}} \).

-   Thus \( \phi(U): {\mathcal{F}}(U) \to {\mathcal{G}}(U) \) is injective, since \( (\ker \phi)(U) = 0(U) = 0 \), and surjective since \( \operatorname{im}(\phi(U)) = (\operatorname{im}\phi)(U) = {\mathcal{G}}(U) \). This \( \phi(U) \) is an isomorphism in abelian groups, and has an left and right inverse \( \phi^{-1}(U): {\mathcal{G}}(U) \to {\mathcal{F}}(U) \).

-   So we have a diagram:

```{=tex}
\begin{tikzcd}
    {{\mathcal{F}}(U)} && {{\mathcal{G}}(U)} && {{\mathcal{F}}(U)} \\
    \\
    {{\mathcal{F}}(V)} && {{\mathcal{G}}(V)} && {{\mathcal{F}}(V)}
    \arrow["{\phi(U)}", from=1-1, to=1-3]
    \arrow["{\phi(V)}", from=3-1, to=3-3]
    \arrow["{\mathop{\mathrm{Res}}_{{\mathcal{F}}}(U, V)}"', from=1-1, to=3-1]
    \arrow["{\mathop{\mathrm{Res}}_{{\mathcal{G}}}(U, V)}"{description}, from=1-3, to=3-3]
    \arrow["{\phi(U)^{-1}}", from=1-3, to=1-5]
    \arrow["{\phi(V)^{-1}}"', from=3-3, to=3-5]
    \arrow["{\mathop{\mathrm{Res}}_{{\mathcal{F}}}(U, V)}", from=1-5, to=3-5]
    \arrow["{\operatorname{id}_{{\mathcal{F}}(U)}}"{description}, curve={height=-30pt}, from=1-1, to=1-5]
    \arrow["{\operatorname{id}_{{\mathcal{F}}(V)}}"{description}, curve={height=30pt}, from=3-1, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJcXG1jZihVKSJdLFswLDIsIlxcbWNmKFYpIl0sWzIsMCwiXFxtY2coVSkiXSxbMiwyLCJcXG1jZyhWKSJdLFs0LDAsIlxcbWNmKFUpIl0sWzQsMiwiXFxtY2YoVikiXSxbMCwyLCJcXHBoaShVKSJdLFsxLDMsIlxccGhpKFYpIl0sWzAsMSwiXFxSZXNfe1xcbWNmfShVLCBWKSIsMl0sWzIsMywiXFxSZXNfe1xcbWNnfShVLCBWKSIsMV0sWzIsNCwiXFxwaGkoVSlcXGludiJdLFszLDUsIlxccGhpKFYpXFxpbnYiLDJdLFs0LDUsIlxcUmVzX3tcXG1jZn0oVSwgVikiXSxbMCw0LCJcXGlkX3tcXG1jZihVKX0iLDEseyJjdXJ2ZSI6LTV9XSxbMSw1LCJcXGlkX3tcXG1jZihWKX0iLDEseyJjdXJ2ZSI6NX1dXQ==)

-   Both squares form a morphism of sheaves, so the right square assembles to \( \phi^{-1}: {\mathcal{G}}\to{\mathcal{F}} \)
-   Moreover \( (\phi^{-1}\circ \phi)({\mathcal{F}})(U) = \operatorname{id}_{{\mathcal{F}}(U)} \) and similarly in the other order, so \( \phi^{-1}\circ \phi= \operatorname{id}_{{\mathcal{F}}} \) Similarly \( (\phi\circ \phi^{-1})({\mathcal{G}})(U) = \operatorname{id}_{{\mathcal{G}}(U)} \) and \( (\phi^{-1}\circ \phi) = \operatorname{id}_{{\mathcal{G}}} \).
-   Then by definition an isomorphism of sheaves is a morphism with a two-sided inverse, so we're done.
:::

## Problem Set 2

## II.1

::: {.exercise title="II.1.8"}
For any open \( U \subseteq X \) show that the functor
\[
{{\Gamma}\qty{U, {-}} }: {\mathsf{Sh}}(X) \to {\mathsf{Ab}}{\mathsf{Grp}}
\]
is left-exact, but need not be exact.
:::

::: {.solution}
We're given exactness of
\[
\xi: 0 \to {\mathcal{F}}_1 \xrightarrow{f} {\mathcal{F}}_2 \xrightarrow{g} {\mathcal{F}}_3 \to 0
,\]
which (e.g. ) is data of the form

```{=tex}
\begin{tikzcd}
    U && {{\mathcal{F}}_1(U)} && {{\mathcal{F}}_2(U)} \\
    \\
    V && {{\mathcal{F}}_1(V)} && {{\mathcal{F}}_2(V)}
    \arrow[""{name=0, anchor=center, inner sep=0}, "{\iota_{UV}}", hook, from=3-1, to=1-1]
    \arrow[""{name=1, anchor=center, inner sep=0}, "{{\mathcal{F}}_1\mathrel{\Big|}^U_V}", from=1-3, to=3-3]
    \arrow["{{\mathcal{F}}_2\mathrel{\Big|}^U_V}", from=1-5, to=3-5]
    \arrow["{f_V}", from=1-3, to=1-5]
    \arrow["{f_U}"', from=3-3, to=3-5]
    \arrow["f", shorten <=14pt, shorten >=14pt, Rightarrow, from=0, to=1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMiwwLCJcXG1jZl8xKFUpIl0sWzAsMCwiVSJdLFswLDIsIlYiXSxbMiwyLCJcXG1jZl8xKFYpIl0sWzQsMiwiXFxtY2ZfMihWKSJdLFs0LDAsIlxcbWNmXzIoVSkiXSxbMiwxLCJcXGlvdGFfe1VWfSIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzAsMywiXFxSZXNfMShVLCBWKSJdLFs1LDQsIlxcUmVzXzIoVSwgVikiXSxbMCw1LCJmX1YiXSxbMyw0LCJmX1UiLDJdLFs2LDcsImYiLDAseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9fV1d)

Applying \( \Gamma(X; {-}) \), we want to show exactness of
\[
\xi_X: 0 \to {\mathcal{F}}_1(X) \xrightarrow{f_X} {\mathcal{F}}_2(X) \xrightarrow{g_X} {\mathcal{F}}_3(X) \to \cdots
.\]

**Exactness at \( f_X \)**:

-   Use that \( f \) is exact \( \iff \ker f = \mathbf 0 \) as a sheaf, so
    \[
    (\ker f)(U) = (\mathbf 0)(U) = 0 \in \mathsf{CRing}
    .\]
    -   Use that
        \[
        (\ker f)(U) &\coloneqq\ker f_U \coloneqq\ker( {\mathcal{F}}_1(U) \xrightarrow{f_U} {\mathcal{F}}_2(U)) \\
        \implies
        \ker f_X &= (\ker f)(X) = (\mathbf 0)(X) = 0
        .\]
-   Why this works: the kernel presheaf is already a sheaf, so we can use the presheaf assignment \( (\ker f)(U) = \ker f_U \) directly. This won't work for the cokernel sheaf, since the image presheaf needs to be sheafified.

Alternatively, a direct argument that \( f_X \) is injective:

-   A fact we'll need: \( \xi \) is exact iff locally exact. Sketch of situation, there are commutative squares for all \( p\in X \):

```{=tex}
\begin{tikzcd}
    {\xi:} && 0 && {{\mathcal{F}}_1} && {{\mathcal{F}}_2} && {{\mathcal{F}}_3} && 0 \\
    \\
    {\xi_X:} && {?} && {{\mathcal{F}}_1(X)} && {{\mathcal{F}}_2(X)} && {{\mathcal{F}}_3(X)} && {?} \\
    \\
    {\xi_p:} && 0 && {({\mathcal{F}}_1)_p} && {({\mathcal{F}}_2)_p} && {({\mathcal{F}}_3)_p} && 0
    \arrow[from=5-3, to=5-5]
    \arrow["{f_p}"', hook, from=5-5, to=5-7]
    \arrow["{g_p}"', two heads, from=5-7, to=5-9]
    \arrow[from=5-9, to=5-11]
    \arrow["{{\mathcal{F}}_1\mathrel{\Big|}^X_p}", from=3-5, to=5-5]
    \arrow["{{\mathcal{F}}_2\mathrel{\Big|}^X_p}", from=3-7, to=5-7]
    \arrow["{{\mathcal{F}}_3\mathrel{\Big|}^X_p}", from=3-9, to=5-9]
    \arrow[from=3-3, to=3-5]
    \arrow["{f_X}", from=3-5, to=3-7]
    \arrow["{g_X}", from=3-7, to=3-9]
    \arrow[from=3-9, to=3-11]
    \arrow[from=1-3, to=1-5]
    \arrow["f", hook, from=1-5, to=1-7]
    \arrow["g", two heads, from=1-7, to=1-9]
    \arrow[from=1-9, to=1-11]
    \arrow["{\Gamma(X;{-})}", Rightarrow, from=1-7, to=3-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTgsWzIsMiwiPyJdLFs0LDIsIlxcbWNmXzEoWCkiXSxbNiwyLCJcXG1jZl8yKFgpIl0sWzgsMiwiXFxtY2ZfMyhYKSJdLFsxMCwyLCI/Il0sWzQsNCwiKFxcbWNmXzEpX3AiXSxbNiw0LCIoXFxtY2ZfMilfcCJdLFs4LDQsIihcXG1jZl8zKV9wIl0sWzIsNCwiMCJdLFsxMCw0LCIwIl0sWzAsMiwiXFx4aV9YOiJdLFswLDQsIlxceGlfcDoiXSxbNCwwLCJcXG1jZl8xIl0sWzAsMCwiXFx4aToiXSxbNiwwLCJcXG1jZl8yIl0sWzgsMCwiXFxtY2ZfMyJdLFsyLDAsIjAiXSxbMTAsMCwiMCJdLFs4LDVdLFs1LDYsImZfcCIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzYsNywiZ19wIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzcsOV0sWzEsNSwiXFxSZXNfMShYLCBwKSJdLFsyLDYsIlxcUmVzXzIoWCwgcCkiXSxbMyw3LCJcXFJlc18zKFgsIHApIl0sWzAsMV0sWzEsMiwiZl9YIl0sWzIsMywiZ19YIl0sWzMsNF0sWzE2LDEyXSxbMTIsMTQsImYiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsxNCwxNSwiZyIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6ImVwaSJ9fX1dLFsxNSwxN10sWzE0LDIsIlxcR2FtbWEoWDtcXHdhaXQpIiwwLHsibGV2ZWwiOjJ9XV0=)

-   Write the kernel out:
    \[
    \ker f_X \coloneqq\left\{{ s\in {\mathcal{F}}_1(X) {~\mathrel{\Big|}~}f_X(s) = 0 \in {\mathcal{F}}_2(X)}\right\}
    .\]

-   Suppose \( s\in {\mathcal{F}}_1(X) \) and \( f_X(s) = 0 \) in \( {\mathcal{F}}_2(X) \). Then
    \[
    ({\mathcal{F}}_2 \mathrel{\Big|}^X_p \circ f_X )(s) &= {\mathcal{F}}_2\mathrel{\Big|}^X_p( 0) = 0 \in ({\mathcal{F}}_2)_p \text{ Ring mor, 0 to 0}\\
    \implies (f_p \circ {\mathcal{F}}_1 \mathrel{\Big|}^X_p(s) &= ({\mathcal{F}}_2 \mathrel{\Big|}^X_p \circ f_X)(s) = 0 \text{ by commutativity} \\
    \implies {\mathcal{F}}_1 \mathrel{\Big|}^X_p (s) &= 0 \text{ left-cancel $f_p$ since mono}
    ,\]
    which holds for all \( p \).

-   Claim: by the sheaf condition on \( {\mathcal{F}}_1 \), \( s= 0 \in {\mathcal{F}}_1(X) \).

    -   Fix \( p \). For \( s\in {\mathcal{F}}_1(X) \), write a representative \( {\mathcal{F}}_1\mathrel{\Big|}^X_p(s) = [U, \tilde s\in {\mathcal{F}}_1(U)] \).

    > Recall \( (U_1, s_1) \sim (U_2, s_2) \in {\mathcal{F}}_p \iff \) they're both equivalent to \( (W, t) \) where \( W \subseteq U_1 \cap U_2 \) and
    > \[
    > {\mathcal{F}}_1 \mathrel{\Big|}^{U_1}_W (s_1) = t = {\mathcal{F}}_1\mathrel{\Big|}^{U_2}_W (s_2)
    > .\]

    -   Then \( s_p \coloneqq{\mathcal{F}}_1 \mathrel{\Big|}^X_p(s) = 0 \sim (W, 0) \in ({\mathcal{F}}_1)_p \) means there exists some \( W_p \) and a lift \( \tilde s(p) = 0 \in {\mathcal{F}}_1(W_p) \) with \( {\mathcal{F}}_1\mathrel{\Big|}^{W_p}_p(\tilde s(p)) = s_p \).

    -   But this holds for all \( p \), and \( \left\{{W_p}\right\}_{p\in X} \rightrightarrows X \), so by the sheaf gluing axiom for \( {\mathcal{F}}_1 \), \( \left\{{ \tilde s(p) \in {\mathcal{F}}_1(W_p) {~\mathrel{\Big|}~}p\in X}\right\} \) glue to a unique \( \tilde s\in {\mathcal{F}}_1(X) \), and by uniqueness, \( \tilde s = s = 0 \in {\mathcal{F}}_1(X) \).

**Exactness at \( g_X \)**:

-   We want to show \( \ker g_X = \operatorname{im}f_X \). First show \( \operatorname{im}f_X \subseteq \ker g_X \), and let \( s \in \operatorname{im}f_X \subseteq {\mathcal{F}}_2(X) \).

-   A small diagram chase:

```{=tex}
\begin{tikzcd}
    && \textcolor{rgb,255:red,92;green,92;blue,214}{f_X^{-1}(s)} && \textcolor{rgb,255:red,92;green,92;blue,214}{s} && {\ell \coloneqq g_X(s)} \\
    0 && {{\mathcal{F}}_1(X)} && {{\mathcal{F}}_2(X)} && {{\mathcal{F}}_3(X)} && {?} \\
    \\
    0 && {({\mathcal{F}}_1)_p} && {({\mathcal{F}}_2)_p} && {({\mathcal{F}}_3)_p} \\
    && \textcolor{rgb,255:red,92;green,92;blue,214}{{\mathcal{F}}_1\mathrel{\Big|}^U_p(f_X^{-1}(s))} && \textcolor{rgb,255:red,92;green,92;blue,214}{t \coloneqq{\mathcal{F}}_2\mathrel{\Big|}^U_p(s)} && 0
    \arrow["{f_X}", from=2-3, to=2-5]
    \arrow[from=2-1, to=2-3]
    \arrow["{g_X}", from=2-5, to=2-7]
    \arrow["{{\mathcal{F}}_1\mathrel{\Big|}^U_p}"{description}, from=2-3, to=4-3]
    \arrow[from=4-1, to=4-3]
    \arrow["{f_p}"', from=4-3, to=4-5]
    \arrow["{g_p}"', from=4-5, to=4-7]
    \arrow["{{\mathcal{F}}_3\mathrel{\Big|}^U_p}", from=2-7, to=4-7]
    \arrow["{{\mathcal{F}}_2\mathrel{\Big|}^U_p}"{description}, from=2-5, to=4-5]
    \arrow[from=2-7, to=2-9]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, curve={height=-30pt}, dotted, maps to, from=1-5, to=5-5]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, dashed, maps to, from=1-3, to=1-5]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, curve={height=18pt}, dotted, maps to, from=1-3, to=5-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTUsWzAsMSwiMCJdLFsyLDEsIlxcbWNmXzEoWCkiXSxbNCwxLCJcXG1jZl8yKFgpIl0sWzYsMSwiXFxtY2ZfMyhYKSJdLFsyLDMsIihcXG1jZl8xKV9wIl0sWzQsMywiKFxcbWNmXzIpX3AiXSxbNiwzLCIoXFxtY2ZfMylfcCJdLFswLDMsIjAiXSxbOCwxLCI/Il0sWzQsMCwicyIsWzI0MCw2MCw2MCwxXV0sWzIsMCwiZl9YXFxpbnYocykiLFsyNDAsNjAsNjAsMV1dLFs2LDAsIlxcZWxsIFxcZGEgZ19YKHMpIl0sWzQsNCwidCBcXGRhIFxcbWNmXzJcXG1pZF5VX3AocykiLFsyNDAsNjAsNjAsMV1dLFs2LDQsIjAiXSxbMiw0LCJcXG1jZl8xXFxtaWReVV9wKGZfWFxcaW52KHMpKSIsWzI0MCw2MCw2MCwxXV0sWzEsMiwiZl9YIl0sWzAsMV0sWzIsMywiZ19YIl0sWzEsNCwiXFxtY2ZfMVxcbWlkXlVfcCIsMV0sWzcsNF0sWzQsNSwiZl9wIiwyXSxbNSw2LCJnX3AiLDJdLFszLDYsIlxcbWNmXzNcXG1pZF5VX3AiXSxbMiw1LCJcXG1jZl8yXFxtaWReVV9wIiwxXSxbMyw4XSxbOSwxMiwiIiwxLHsiY3VydmUiOi01LCJjb2xvdXIiOlsyNDAsNjAsNjBdLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn0sImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFsxMCw5LCIiLDEseyJjb2xvdXIiOlsyNDAsNjAsNjBdLCJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn0sImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxMCwxMiwiIiwxLHsiY3VydmUiOjMsImNvbG91ciI6WzI0MCw2MCw2MF0sInN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifSwiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d)

-   Push \( s \) into \( ({\mathcal{F}}_2)_p \) and pull back to \( f_X^{-1}(s) \in {\mathcal{F}}_1(X) \), by commutativity, the former is in \( \operatorname{im}f_p \), so
    \[
    {\mathcal{F}}_1\mathrel{\Big|}^U_p(s) \in \operatorname{im}f_p = \ker g_p
    .\]

-   Then push \( s \xrightarrow{g_X} \ell \), so \( {\mathcal{F}}_3 \mathrel{\Big|}^U_p(\ell) = 0 \) by commutativity. Since this is true for all stalks at all \( p \), \( \ell = 0\in {\mathcal{F}}_3(X) \), so \( \ell \in \ker g_X \).

**A counterexample:**

The exponential SES, assembled from groups:

```{=tex}
\begin{tikzcd}
    0 && {\mathbb{Z}}&& {{\mathbb{G}}_a({\mathbb{C}})} && {{\mathbb{G}}_m({\mathbb{C}}^{\times})} && 0 && \in{\mathsf{Grp}}\\
    &&&& {} \\
    0 && {\underline{{\mathbb{Z}}}} && {\mathop{\mathrm{Hol}}_X({-})} && {\mathop{\mathrm{Hol}}_X({-})^{\times}} && 0 && {\in {\mathsf{Sh}}(X, {\mathsf{Grp}}), X \coloneqq{\mathbb{C}}^{\times}} \\
    \\
    0 && {\mathbb{Z}}&& {\mathop{\mathrm{Hol}}_X(X)} && {\mathop{\mathrm{Hol}}_X(X)^{\times}} && 0 && {\in \mathsf{CRing}}
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow["{\exp: z \mapsto e^{2\pi i z}}", from=1-5, to=1-7]
    \arrow[from=1-7, to=1-9]
    \arrow[from=3-7, to=3-9]
    \arrow[from=5-7, to=5-9]
    \arrow["\exp", from=5-5, to=5-7]
    \arrow["\exp", from=3-5, to=3-7]
    \arrow[from=3-3, to=3-5]
    \arrow[from=5-3, to=5-5]
    \arrow[from=3-1, to=3-3]
    \arrow[from=5-1, to=5-3]
    \arrow["{\Gamma(X; {-})}"{description}, Rightarrow, from=3-5, to=5-5]
    \arrow[squiggly, from=1-5, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTksWzAsMCwiMCJdLFsyLDAsIlxcWloiXSxbNCwwLCJcXEdHX2EoXFxDQykiXSxbNiwwLCJcXEdHX20oXFxDQ1xcdW5pdHMpIl0sWzgsMCwiMCJdLFsxMCwwLCJcXGluXFxHcnAiXSxbMCwyLCIwIl0sWzIsMiwiXFx1bHtcXFpafSJdLFs0LDIsIlxcSG9sX1goXFx3YWl0KSJdLFs2LDIsIlxcSG9sX1goXFx3YWl0KVxcdW5pdHMiXSxbOCwyLCIwIl0sWzEwLDIsIlxcaW4gXFxTaChYLCBcXEdycCksIFggXFxkYSBcXENDXFx1bml0cyJdLFswLDQsIjAiXSxbMiw0LCJcXFpaIl0sWzQsNCwiXFxIb2xfWChYKSJdLFs2LDQsIlxcSG9sX1goWClcXHVuaXRzIl0sWzgsNCwiMCJdLFsxMCw0LCJcXGluIFxcQ1JpbmciXSxbNCwxXSxbMCwxXSxbMSwyXSxbMiwzLCJcXGV4cDogeiBcXG1hcHN0byBlXnsyXFxwaSBpIHp9Il0sWzMsNF0sWzksMTBdLFsxNSwxNl0sWzE0LDE1LCJcXGV4cCJdLFs4LDksIlxcZXhwIl0sWzcsOF0sWzEzLDE0XSxbNiw3XSxbMTIsMTNdLFs4LDE0LCJcXEdhbW1hKFg7IFxcd2FpdCkiLDEseyJsZXZlbCI6Mn1dLFsyLDgsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6InNxdWlnZ2x5In19fV1d)

Here \( \mathop{\mathrm{Hol}}_X({-})^{\times} \) denotes the multiplicatively invertible functions, i.e. nonvanishing functions.

But if the bottom sequence were exact, then every invertible holomorphic function would have a logarithm on all of \( {\mathbb{C}}^{\times} \), but for example the identity function does not.
:::

::: {.exercise title="II.1.14"}
Let \( {\mathcal{F}}\in {\mathsf{Sh}}(X) \) and \( s\in {\mathcal{F}}(U) \) be a section, and define
\[
\mathop{\mathrm{supp}}s &\coloneqq\left\{{p\in U {~\mathrel{\Big|}~}s_p \neq 0}\right\} \subseteq U \\
\mathop{\mathrm{supp}}{\mathcal{F}}&\coloneqq\left\{{p\in X{~\mathrel{\Big|}~}{\mathcal{F}}_p\neq 0}\right\} \subseteq  X
,\]
where \( s_p \) denotes the germ of \( s \) in the stalk \( {\mathcal{F}}_p \). Show that \( \mathop{\mathrm{supp}}s \) is closed in \( U \) but \( \mathop{\mathrm{supp}}{\mathcal{F}} \) need not be closed in \( X \).
:::

::: {.solution}
**\( \mathop{\mathrm{supp}}(s) \) is closed**:

-   Write
    \[
    \mathop{\mathrm{supp}}(s) \coloneqq\left\{{p\in U {~\mathrel{\Big|}~}{\mathcal{F}}\mathrel{\Big|}^U_p(s) \neq 0}\right\} \subseteq U \\
    \implies 
    \mathop{\mathrm{supp}}(s)^c \coloneqq U\setminus\mathop{\mathrm{supp}}(s) \coloneqq\left\{{p\in U {~\mathrel{\Big|}~}{\mathcal{F}}\mathrel{\Big|}^U_p(s) = 0}\right\} \subseteq U \\
    .\]

-   Now use that if \( p\in U \) with \( s=0 \) in the stalk at \( p \), then \( s=0 \) in an open neighborhood \( W_p \) of \( p \) with \( W_p \subseteq U\setminus\mathop{\mathrm{supp}}(s) \), so every such \( p \) is interior.

**\( \mathop{\mathrm{supp}}({\mathcal{F}}) \) is not closed**:

-   Take the skyscraper sheaf: take the constant sheaf on a point \( q\in X \), then push it forward along the inclusion of \( q \):

```{=tex}
\begin{tikzcd}
    {\underline{A}} && {q^* \underline{A}} \\
    \\
    q && X
    \arrow["q", hook, from=3-1, to=3-3]
    \arrow["{q^*}", from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwyLCJxIl0sWzIsMiwiWCJdLFswLDAsIlxcdWx7QX0iXSxbMiwwLCJxXiogXFx1bHtBfSJdLFswLDEsInEiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsyLDMsInFeKiJdXQ==)

-   Then check
    \[
    q^* \underline{A}(U) = 
    \begin{cases}
    A & q\in U 
    \\
    0 & \text{else}.
    \end{cases}
    ,\quad (q^* \underline{A})_p = 
    \begin{cases}
    A & p=q 
    \\
    0 & \text{else}.
    \end{cases}
    \]

-   Now invert this construction by taking the sheaf
    \[
    {\mathcal{F}}\coloneqq \left( \not q^* \underline{A} \right)^{\scriptscriptstyle \mathrm{sh}} :
     \left( U \mapsto
    \begin{cases}
    A & q\not\in U 
    \\
    0 & q\in U.
    \end{cases}
     \right)^{\scriptscriptstyle \mathrm{sh}} 
    \]

-   \( \not q^*\underline{A} \) and \( {\mathcal{F}} \) have the same stalks, and a computation shows
    \[
    (\not q^*\underline{A})_p = 
    \begin{cases}
    A & p\neq q
    \\
    0 & p=q.
    \end{cases}
    .\]

-   Then for a fixed \( q\in X \), we have \( \mathop{\mathrm{supp}}{\mathcal{F}}= X \setminus{ \operatorname{cl}} _X(\left\{{ q}\right\}) \).

    -   Why: if there is some neighborhood \( U\ni p \) that doesn't meet \( q \), then \( {\mathcal{F}}\mathrel{\Big|}^X_U(V) = A \) for every \( V \subseteq U \), so the colimit stabilizes and is equal to \( A \).
    -   Conversely, if every neighborhood of \( p \) meets \( q \), then \( {\mathcal{F}}\mathrel{\Big|}^X_U(V) = 0 \) for every \( V \subseteq U \) (including \( U \)), so the colimit stabilizes to zero.

-   Now concretely take \( X \coloneqq{\mathbb{A}}^1_{/ {k}}  \) and \( q=0 \), then \( \left\{{0}\right\} = V(x) \) for \( x\in k[x] \) is closed, so \( { \operatorname{cl}} _X(\left\{{0}\right\}) = \left\{{0}\right\} \).

-   Thus
    \[
    \mathop{\mathrm{supp}}{\mathcal{F}}= {\mathbb{A}}^1 \setminus{ \operatorname{cl}} _X(\left\{{0}\right\}) = {\mathbb{A}}^1\setminus\left\{{0}\right\}= D(x)
    \]
    is open and not closed when \( k \) is infinite.
:::

::: {.exercise title="II.1.17"}
Let \( X\in {\mathsf{Top}}, A\in {\mathsf{Ab}}{\mathsf{Grp}}, p\in X \) and define the skyscraper sheaf as
\[
\iota_p(A)(U) \coloneqq
\begin{cases}
A & p\in U 
\\
0 & \text{else}.
\end{cases}
\]
Show that the stalk \( \iota_p(A)_q = A \) when \( q\in { \operatorname{cl}} _X(\left\{{p}\right\}) \) and 0 otherwise, and that there is an equality of sheaves \( \iota_p(A) = \iota_*(\underline{A}) \) where \( \iota: { \operatorname{cl}} _X(\left\{{p}\right\}) \hookrightarrow X \) is the inclusion.
:::

::: {.solution}
Computation of stalks: see previous problem.

That \( \iota_p A \coloneqq(U\mapsto A \chi_{p\in U}) \) is *equal* to \( \iota_* \underline{A} \) the pushforward sheaf:

-   Note that \( \underline{A} \) on \( \left\{{p}\right\} \) is given by
    \[
    \underline{A}(U)
    \coloneqq
    {\mathsf{Top}}(U, a)
    =
    \begin{cases}
    A & U = \left\{{p}\right\}  
    \\
    0 & U = \emptyset.
    \end{cases}
    .\]

-   Now check
    \[
    \iota_* \underline{A}(U) 
    \coloneqq\underline{A} (\iota^{-1}(U))
    &=
    \begin{cases}
    A & \iota^{-1}(U) = p 
    \\
    0 & \iota^{-1}(U) = \emptyset.
    \end{cases}
    \\
    &=
    \begin{cases}
    A & U \ni \iota(p) = p
    \\
    0 & U\not\ni \iota(p) = p
    \end{cases}
    \]

-   Now take the identity maps as the components of a morphism \( \iota_p A\to \iota_* \underline{A} \), which induces the identity on stalks, making these sheaves equal.
:::

## II.2

::: {.exercise title="II.2.1"}
Let \( A\in \mathsf{Ring} \) and \( X\coloneqq\operatorname{Spec}(A) \), and for \( f\in A \) let \( D(f) \coloneqq V(\left\langle{f}\right\rangle)^c \). Show that there is an isomorphism of ringed spaces
\[
(D(f), { \left.{{{\mathcal{O}}_X}} \right|_{{D(f)}} }) \xrightarrow{\sim} \operatorname{Spec}(A_f)
.\]
:::

::: {.strategy}
```{=tex}
\envlist
```
-   Take \( \iota: A\to A_f \) and induced maps \( \iota^*: \operatorname{Spec}A_f \to \operatorname{Spec}A \).
-   Use \( \operatorname{Spec}A \left[ { \scriptstyle { {S}^{-1}}  } \right] \cong \left\{{p\in \operatorname{Spec}A {~\mathrel{\Big|}~}p \cap S = \emptyset }\right\} \)
    -   So \( \operatorname{Spec}A_f = \left\{{p\in \operatorname{Spec}A {~\mathrel{\Big|}~}p \not\supseteq\left\langle{f}\right\rangle}\right\} \).
-   Construct \( \psi \coloneqq\iota^* \), check \( D(g/f^k) \xrightarrow{\psi} D(gf) \) and \( D(g) \xrightarrow{\psi^{-1}} D(g/1) \).
-   Use \( {\mathcal{O}}_{\operatorname{Spec}A}{ \left.{{}} \right|_{{D(f)}} }(D(g)) = (A_f)_g \) and define \( \psi^\# = \operatorname{id} \).
:::

::: {.solution}
Recall: for \( I{~\trianglelefteq~}A \) any ideal,
\[
V(I) = \left\{{p\in \operatorname{Spec}A {~\mathrel{\Big|}~}p\supseteq I}\right\} \\
D(I) \coloneqq V(I)^c = \left\{{p\in \operatorname{Spec}A {~\mathrel{\Big|}~}p\not\supseteq I}\right\}
,\]
and there is a correspondence
\[
i: A&\mapsto A_f \\
a &\mapsto {\left[ {a\over 1} \right]}
\\ \\
\adjunction{i_*}{i^*}
{ 
\left\{{p\in \operatorname{Spec}A {~\mathrel{\Big|}~}p \cap\left\{{f^n}\right\} = \emptyset}\right\}}
{\operatorname{Spec}A_f} \\
p \mapsto \left\langle{i(p)}\right\rangle = \left\{{p'/s {~\mathrel{\Big|}~}p'\in p, s\in \left\{{f^n}\right\} }\right\}\\
i^{-1}(q) \mapsfrom q = \left\{{g/f^n}\right\}{~\trianglelefteq~}A_f
,\]
i.e. prime ideals of \( A_S \) are prime ideals of \( A \) not meeting \( S \).

Let \( Y\coloneqq\operatorname{Spec}A  \left[ { \scriptstyle { {f}^{-1}}  } \right] \). Need
\[
f&\in {\mathsf{Top}}(D(f), Y)\\
f^\# &\in \mathop{\mathrm{Mor}}_{{\mathsf{Sh}}_{/ {X}} }({\mathcal{O}}_{Y}, f^* { \left.{{{\mathcal{O}}_X}} \right|_{{D(f)}} })
.\]

-   Use the commutative algebra fact: primes of localizations lift to primes not intersecting the local set. Let \( i: A\to A_f \) be the ring morphism \( a\mapsto a/1 \), this induces
    \[
    \operatorname{Spec}A \left[ { \scriptstyle { {f}^{-1}}  } \right] 
    &\xrightarrow{i^*} 
    \left\{{p\in \operatorname{Spec}A{~\mathrel{\Big|}~}p \cap\left\{{f^n}\right\}_{n\geq 1} = \emptyset }\right\} \\
    &= \left\{{p\in \operatorname{Spec}A {~\mathrel{\Big|}~}p \not\supseteq\left\langle{f}\right\rangle}\right\} \\
    &\coloneqq D(\left\langle{f}\right\rangle) = D(f)
    .\]

    Here \( i^*(q) = i^{-1}(q) \) is \( i_*(p) = \left\langle{i(p)}\right\rangle \).

-   So take \( \psi: \operatorname{Spec}A_f \to D(f) \) to be \( i^* \), which is a bijection.

-   Check this is a homeomorphism: it's an open map, since
    \[
    D(g/f^k ) &\xrightarrow{\psi} D(gf) \\
    D(g) &\xrightarrow{\psi^{-1}} D(g/1)
    ,\]

-   Then \( \psi^\#\coloneqq\operatorname{id} \) induces an isomorphism of sheaves: check that on distinguished opens,

\[
D(g) \subseteq Y \implies 
\psi^* { \left.{{{\mathcal{O}}_X}} \right|_{{D(f)}} }(D(g)) 
&\coloneqq
{ \left.{{{\mathcal{O}}_X}} \right|_{{D(f)}} }(\psi^{-1}( D(g)) ) \\
&=
{ \left.{{{\mathcal{O}}_X}} \right|_{{D(f)}} }( D(g/1) ) \\
&=
(A_f)_{g/1}
,\]
using that \( {\mathcal{O}}_X(D(h)) = k[X]_{h} \), so the coordinate ring of \( D(f) \) is \( A_f \).

-   Similarly,
    \[
    {\mathcal{O}}_{\operatorname{Spec}A_f}(D(g)) = (A_f)_g
    ,\]
    and these are equal.

-   Now for any \( U \subseteq \operatorname{Spec}A_f \), taken an open cover by distinguished opens \( D(g_k)\rightrightarrows U \); then the sections of each sheaf agree on each \( D(g_k) \) and using the sheaf axioms they glue to agreeing sections on \( U \), so this induces an isomorphism of sheaves.
:::

::: {.exercise title="II.2.3"}
Note that \( (X, {\mathcal{O}}_X)\in {\mathsf{Sch}} \) is **reduced** iff \( {\mathcal{O}}_X(U) \) has no nilpotents, and for \( A\in \mathsf{Ring} \) define \( A^{{ \text{red} }}\coloneqq A/\sqrt{0} \) to be \( A \) modulo its ideal of nilpotents.

a.  Show that \( X \) is reduced iff for every \( p\in X \), the local ring \( {\mathcal{O}}_{X, p} \) has no nilpotents.

b.  Let \( {\mathcal{O}}_X^{{ \text{red} }} \) be the sheafification of \( U \mapsto {\mathcal{O}}_X(U)^{ \text{red} } \). Show that \( X_{ \text{red} }\coloneqq(X, {\mathcal{O}}_X^{ \text{red} }) \) is a scheme, and there is a morphism of schemes \( X_{ \text{red} }\xrightarrow{{ \text{red} }} X \) which induces a homeomorphism \( {\left\lvert {X_{ \text{red} }} \right\rvert}\to {\left\lvert {X} \right\rvert} \) on underlying topological spaces.

c.  Let \( X \xrightarrow{f} Y\in {\mathsf{Sch}} \) with \( X \) reduced. Show that there is a unique morphism \( X \xrightarrow{g} Y_{ \text{red} } \) such that \( f \) is the composition:

```{=tex}
\begin{tikzcd}
    X && Y \\
    \\
    && {Y_{ \text{red} }}
    \arrow["f", from=1-1, to=1-3]
    \arrow["{ \text{red} }"', from=3-3, to=1-3]
    \arrow["{\exists !g}"', from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJYIl0sWzIsMCwiWSJdLFsyLDIsIllfXFxyZWQiXSxbMCwxLCJmIl0sWzIsMSwiXFxyZWQiLDJdLFswLDIsIlxcZXhpc3RzICFnIiwyXV0=)
:::

::: {.strategy}
Part a:

-   Zero in every stalk implies zero by the sheaf axiom.
-   

Part b:

-   Cover by affines.
-   \( {\sqrt{0_{R}} } \leq {\mathfrak{p}} \) for every \( {\mathfrak{p}}\in \operatorname{Spec}R \).
-   \( R_{ \text{red} }\coloneqq R/{\sqrt{0_{R}} } \) is a quotient, and localization commutes with quotients.
-   Maps \( R\to S \) with \( S \) reduced factor through \( R_{ \text{red} } \).
-   Sheafification has the same stalks, and isomorphism on stalks iff isomorphism of sheaves.
-   Pushforwards of reduces sheaves are reduced.
:::

::: {.solution title="1"}
\( \implies \): If \( {\mathcal{O}}_{X, p} \) has nilpotents, pick \( s \) with \( s^n\in 0 \in {\mathcal{O}}_{X, p} \). This lifts to some \( s^n = 0 \in {\mathcal{O}}_X(U) \), so \( s \) is nilpotent in \( {\mathcal{O}}_X(U) \), a contradiction.

\( \impliedby \): If \( s\in {\mathcal{O}}_X(U) \) has nilpotents, then \( {\mathcal{O}}_X\mathrel{\Big|}^X_p(s^n) = 0 \) in the stalk, making \( s \) nilpotent in the stalk.
:::

::: {.solution title="2"}
:::

::: {.exercise title="II.2.5"}
Describe \( \operatorname{Spec}{\mathbb{Z}} \) and show it is terminal in \( {\mathsf{Sch}} \), i.e. each \( X\in {\mathsf{Sch}} \) admits a unique morphism \( X\to \operatorname{Spec}{\mathbb{Z}} \).
:::

::: {.strategy}
```{=tex}
\envlist
```
-   An adjunction inducing an equivalence:
    \[
    \adjunction{{{\Gamma}\qty{{-}} }}{\operatorname{Spec}({-})}{{\mathsf{Sch}}^{\operatorname{op}}}{\mathsf{CRing}}\hspace{6em}
    \\ \\
    \mathop{\mathrm{Mor}}_{{{\mathsf{Sch}}}}(X, \text{Spec}(R)) \cong \mathop{\mathrm{Mor}}_{{\mathsf{CRing}}}(R, \Gamma(X;\mathcal{O}_X))
    .\]
:::

::: {.exercise title="II.2.7"}
Let \( X\in {\mathsf{Sch}} \) and for \( x\in X \) let \( {\mathcal{O}}_x \) be the local ring at \( x \) and \( {\mathfrak{m}}_x \) its maximal ideal. Let \( \kappa(x) \coloneqq{\mathcal{O}}_x/{\mathfrak{m}}_x \) be the residue field at \( x \).

Then for \( k \) any field, show that giving a morphism \( \operatorname{Spec}(k) \to X \in {\mathsf{Sch}} \) is equivalent to giving a point \( x\in X \) and an inclusion \( \kappa(x) \hookrightarrow k \).

\[
x^2 - y^q = 1 && x^p - y^2 = 1
.\]

\[
x^2 - y^q = 1 && x^p - y^2 = 1
.\]
:::

::: {.strategy}
?
:::

::: {.warnings}
-   The image presheaf isn't necessarily a sheaf.
-   Filtered direct limits are exact.
-   Finite limits commute with filtered colimits in most categories
-   Right adjoints preserve colimits
-   \( \mathop{\mathrm{Hom}}({-}, {-}): \mathsf{C}^{\operatorname{op}}\times \mathsf{C}\to \mathsf{C} \) is continuous (for regular limits, noting limits in \( \mathsf{C}^{\operatorname{op}} \) are colimits in \( \mathsf{C} \)).
-   Right adjoints preserve limits, left adjoints preserve colimits. Sheafification is left adjoint to the forgetful functor, so right exact, so preserves colimits
    -   So exact in presheaves implies exact in sheaves, but exact in shaves only implies left-exact in presheaves. Sheaf cohomology measures how much the presheaf fails exactness.
:::

[^1]: This says that any regular function on \( U \) actually extends to all of \( {\mathbb{A}}^2 \)
