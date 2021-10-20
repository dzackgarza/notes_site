












# Friday, July 30

References:

-   Course website: <https://sites.math.washington.edu/~jarod/math582C.html>
-   [Gómez 99: Expository article on algebraic stacks](https://arxiv.org/pdf/math/9911199.pdf)

::: {.remark}
Stated goal of the course: prove that the moduli space \( \mkern 1.5mu\overline{\mkern-1.5mu{ \mathcal{M}_{g} }\mkern-1.5mu}\mkern 1.5mu \) of stable curves (for \( g\geq 2 \)) is a smooth, proper, irreducible Deligne-Mumford stack of dimension \( 3g-3 \). Moreover, it admits a projective coarse moduli space.

In the process we'll define **algebraic spaces** and **stacks**.

Prerequisites:

-   Schemes
-   Existence of Hilbert schemes
-   Artin approximation
-   Resolution of singularities for surfaces
-   Deformation theory
:::

# Lecture 3: Groupoids and Prestacks (Monday, September 06)

## Groupoids

::: {.remark}
Last time: functors, sheaves on sites, descent, and Artin approximation. Today: groupoids and stacks.

Recall that a **site** \( \mathsf{S} \) is a category such that for all \( U\in {\operatorname{Ob}}(\mathsf{S}) \), there exists a set \( {\mathsf{Cov}}(U) \coloneqq\left\{{U_i \to U}\right\}_{i\in I} \) (a *covering family*) such that

-   \( \operatorname{id}_U \in {\mathsf{Cov}}(U) \),
-   \( {\mathsf{Cov}}(U) \) is closed under composition.
-   \( {\mathsf{Cov}}(U) \) is closed under pullbacks:

```{=tex}
\begin{tikzcd}
    {\exists U_i{ \underset{\scriptscriptstyle {U} }{\times} }V} && {U_i} \\
    \\
    V && U
    \arrow["{\in {\mathsf{Cov}}(U)}", from=1-3, to=3-3]
    \arrow[from=3-1, to=3-3]
    \arrow[dashed, from=1-1, to=1-3]
    \arrow[dashed, from=1-1, to=3-1]
    \arrow["\lrcorner"{anchor=center, pos=0.025}, draw=none, from=1-1, to=3-3]
    \arrow["{\in{\mathsf{Cov}}(U)}"{description}, curve={height=-12pt}, dashed, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMiwyLCJVIl0sWzAsMiwiViJdLFsyLDAsIlVfaSJdLFswLDAsIlxcZXhpc3RzIFVfaVxcZmliZXJwcm9ke1V9ViJdLFsyLDAsIlxcaW4gXFxDb3YoVSkiXSxbMSwwXSxbMywyLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMywxLCIiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMywwLCIiLDEseyJzdHlsZSI6eyJuYW1lIjoiY29ybmVyIn19XSxbMywwLCJcXGluXFxDb3YoVSkiLDEseyJjdXJ2ZSI6LTIsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)
:::

::: {.example title="The big étale site"}
Take \( \mathsf{S} \coloneqq{\mathsf{Sch}}_{\text{Ét}} \) to be the big étale site: the category of all schemes, with covering families given by étale morphisms \( \left\{{U_i\to U}\right\}_{i\in I} \) such that \( \displaystyle\coprod_i U_i \twoheadrightarrow U \). Note that there is a special covering family given by *surjective* etale morphisms.

```{=tex}
\todo[inline]{Reducing to case of single surjective etale cover somehow?}
```
:::

::: {.definition title="Sheaves on sites"}
Let \( \mathsf{C} \) be a category (e.g. \( \mathsf{C} \coloneqq{\mathsf{Set}} \)) and recall that a *presheaf* on a category \( \mathsf{S} \) is a contravariant functor \( \mathsf{S}\to \mathsf{C} \).

A \( \mathsf{C}{\hbox{-}} \)valued **sheaf** on a site \( \mathsf{S} \) is a presheaf
\[
{\mathcal{F}}:\mathsf{S} \to \mathsf{C}
\]
such that for all \( U_i, U_j\in {\mathsf{Cov}}(U) \), the following equalizer diagram is exact in \( \mathsf{C} \)

```{=tex}
\begin{tikzcd}
    0
    \stackarr{1}[r]
    &
    F(U)
    \stackarr{3}[r]
    &
    \prod\limits_{i} F(U_i)
    \stackarr{5}[r]
    &
    \prod\limits_{i, j} F(U_i { \underset{\scriptscriptstyle {U} }{\times} }  U_j)
\end{tikzcd}
```
:::

::: {.exercise title="Criterion for sheaves on the big etale site"}
Show that a presheaf \( F \) is a sheaf on \( {\mathsf{Sch}}_\text{Ét} \) iff

-   \( F \) is a sheaf on \( {\mathsf{Sch}}_{\mathrm{Zar}} \) and
-   For all etale surjections \( U' \twoheadrightarrow_{\text{ét}} U \) of affines, the equalizer diagram is exact.
:::

::: {.proposition title="Yoneda"}
For \( X\in {\mathsf{Sch}} \), the presheaf
\[
h_X \coloneqq\operatorname{Mor}({-}, X): {\mathsf{Sch}}\to {\mathsf{Set}}
\]
is a sheaf on \( {\mathsf{Sch}}_{\text{Ét}} \).
:::

::: {.remark}
We'll often consider *moduli functors*: functors \( F: {\mathsf{Sch}}\to {\mathsf{Set}} \) where \( F(S) \) is a family of objects over \( S \). Then \( F \) will be a sheaf iff families glue uniquely in the étale topology, and representability of such functors will imply they are sheaves.
:::

::: {.example title="A non-sheaf"}
Consider the following moduli functor:

```{=tex}
\begin{tikzpicture}
\node {%
  \(\begin{aligned}
    F_{{\mathsf{Alg}}}: {\mathsf{Sch}}&\to {\mathsf{Set}}\\
    S &\mapsto
    \left\{
    \begin{tikzcd}
    \mathcal{C}
      \ar[d] 
    \\
    S 
    \end{tikzcd}
    \right.
    \begin{aligned}
    \text{Smooth families of}\\
    \text{genus $g$ curves.}
    \end{aligned}
  \end{aligned}\)
};
\end{tikzpicture}
```
This is *not* representable by a scheme and not a sheaf.
:::

::: {.remark}
Why care about representability? Suppose there were a scheme \( M \), so
\[
F_{{\mathsf{Alg}}}(S) \simeq \operatorname{Mor}(S, M)
.\]
Then taking \( \operatorname{id}_M \in \operatorname{Mor}(M, M) \) should yield a universal family \( {\mathcal{U}}\to M \):

![](figures/2021-09-06_14-50-50.png)

Then the points of \( M \) would correspond to isomorphism classes of curves, and every family of curves would be a pullback of this.

For any \( S\in{\mathsf{Sch}} \) and a family \( {\mathcal{C}}\xrightarrow{f} S \), the fiber \( f^{-1}(s)\in{\mathcal{C}} \) is a curve for any \( s\in S \), so one could define a map
\[
g: S &\to M \\
s &\mapsto [s]
,\]
where we send a curve to its isomorphism class. Then \( {\mathcal{C}} \) would fit into a pullback diagram:

```{=tex}
\begin{tikzcd}
    {\mathcal{C}}&& {\mathcal{U}}\\
    \\
    S && M
    \arrow[from=1-3, to=3-3]
    \arrow[from=3-1, to=3-3]
    \arrow[from=1-1, to=3-1]
    \arrow[dashed, from=1-1, to=1-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXG1jYyJdLFsyLDAsIlxcbWN1Il0sWzAsMiwiUyJdLFsyLDIsIk0iXSxbMSwzXSxbMiwzXSxbMCwyXSxbMCwxLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCwzLCIiLDEseyJzdHlsZSI6eyJuYW1lIjoiY29ybmVyIn19XV0=)

If \( S \) was itself a curve, then \( g: S\to M \) would be a path in \( M \) deforming a base curve.
:::

## Groupoids

::: {.remark}
Recall that a **groupoid** is a category where every morphism is an isomorphism. Morphisms of groupoids are functors, and isomorphisms of groupoids are equivalences of categories.
:::

::: {.example title="Groupoid of a set"}
A basic example is the category of sets where
\[
\operatorname{Mor}(A, B) \coloneqq
\begin{cases}
\operatorname{id}_A & A=B 
\\
\emptyset & \text{else}.
\end{cases}
\]

A similar construction: for any set \( \Sigma \), one can form a groupoid \( {\mathcal{C}}_\Sigma \):

-   Object: Elements \( x\in \Sigma \).
-   Morphisms: \( \operatorname{id}_x \)
:::

::: {.example title="Moduli of curves"}
Define a category \( { \mathcal{M}_{g} }({\mathbb{C}}) \):

-   Objects: smooth projective curves over \( {\mathbb{C}} \) of genus \( g \).
-   Morphisms:
    \[
    \operatorname{Mor}(C, C') = \mathop{\mathrm{Isom}}_{{\mathsf{Sch}}_{/ {{\mathbb{C}}}} }(C, C') \subseteq \operatorname{Mor}_{{\mathsf{Sch}}_{/ {{\mathbb{C}}}} }(C, C')
    .\]
:::

::: {.example title="Equivalence of groupoids"}
Groupoids are equivalent iff they are equivalent as categories. The following is an example of mapping the quotient groupoid \( [C_2/C_4] \) to \( {\mathsf{B}}C_2 \):

![](figures/2021-09-06_19-13-21.png)
:::

::: {.example title="Groupoids equivalent to sets"}
If a groupoid \( {\mathfrak{X}} \) is equivalent to \( \mathsf{C}_{\Sigma} \) for any \( \Sigma \in {\mathsf{Set}} \), we say \( {\mathfrak{X}} \) is **equivalent to a set**. For example, the following groupoid is equivalent to a 2-element set:

![](figures/2021-09-06_19-15-23.png)
:::

::: {.example title="Quotient groupoids"}
For \( G\curvearrowright\Sigma \) a group acting on any set, define the **quotient groupoid** \( [\Sigma/G] \) in the following way:

-   Objects: \( x\in \Sigma \), i.e. one object for each element of the set \( \Sigma \).
-   Morphisms: \( \operatorname{Mor}(x, x') = \left\{{g\in G {~\mathrel{\Big|}~}gx' = x}\right\} \).
:::

::: {.exercise title="Groupoids equivalent to sets"}
Show that \( [\Sigma/G] \) is equivalent to a set iff \( G\curvearrowright\Sigma \) is a free action.
:::

::: {.example title="Classifying stacks"}
For \( \Sigma = \left\{{{\operatorname{pt}}}\right\} \), we obtain
\[
{\mathsf{B}}G \coloneqq[{\operatorname{pt}}/ G]
,\]
where there is one object \( {\operatorname{pt}} \) and \( \operatorname{Mor}({\operatorname{pt}}, {\operatorname{pt}}) = G \).
:::

::: {.example title="from representation stability"}
Define \( {\mathsf{FinSet}} \) to be the category of finite sets where the morphisms are set bijections. Then \( {\mathsf{FinSet}}= \displaystyle\coprod_{n\in {\mathbb{Z}}_{\geq 0}} {\mathsf{B}}S_n \) for \( S_n \) the symmetric group.
:::

::: {.definition title="Fiber products of groupoids"}
For \( C, D' \to D \) morphisms of groupoids, we can construct their **fiber product** as the cartesian diagram:

```{=tex}
\begin{tikzcd}
    \textcolor{rgb,255:red,92;green,92;blue,214}{C{ \underset{\scriptscriptstyle {D} }{\times} }D'} && {D'} \\
    \\
    C && D
    \arrow["f"', from=3-1, to=3-3]
    \arrow["{g}", from=1-3, to=3-3]
    \arrow["{{\operatorname{pr}}_1}"', from=1-1, to=3-1]
    \arrow["{{\operatorname{pr}}_2}", from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwyLCJDIl0sWzIsMiwiRCJdLFsyLDAsIkQnIl0sWzAsMCwiQ1xcZmliZXJwcm9ke0R9RCciLFsyNDAsNjAsNjAsMV1dLFswLDEsImYiLDJdLFsyLDEsImYnIl0sWzMsMCwiXFxwcl8xIiwyXSxbMywyLCJcXHByXzIiXV0=)

It can be constructed as the following category:

\[
{\operatorname{Ob}}(C{ \underset{\scriptscriptstyle {D} }{\times} } D') \coloneqq
\left\{ 
\begin{array}{l}
(c, d', \alpha)
\end{array}
\middle\vert 
\begin{array}{l}
c\in C, d'\in D', \\ \\
\alpha: f(c) \xrightarrow{\sim} g(d')
\end{array}
\right\}
\]

`\includegraphics{figures/BigDiagram1.pdf}`{=tex}

```{=html}
<!--
\begin{tikzpicture}
\node {%
  \(\Mor((c_1, d_1', \alpha_1), (c_2, d_2', \alpha_2)) \da 
    \left\{
    \begin{aligned}
    c_1 \mapsvia{\beta} c_2 \\ \\
    d_1' \mapsvia{\gamma} d_2' 
    \end{aligned}
\,\,
    \middle\vert
\begin{tikzcd}
    {f(c_1)} && {f(c_2)} \\
    \\
    {g(d_1')} && {g(d_2')}
    \arrow["{f(\beta)}", from=1-1, to=1-3]
    \arrow["{g(\gamma)}"', from=3-1, to=3-3]
    \arrow["{\alpha_1}"', from=1-1, to=3-1]
    \arrow["{\alpha_2}", from=1-3, to=3-3]
\end{tikzcd}
    \right\}\)
};
\end{tikzpicture}
-->
```
:::

::: {.exercise title="Universal property of pullbacks in Groupoids"}
Describe the universal property of the pullback in the 2-category of groupoids.
:::

::: {.example title="$G$ is a pullback of $\\B G$"}
\( G \) regarded as a groupoid is the pullback over inclusions of points into \( {\mathsf{B}}G \):

```{=tex}
\begin{tikzcd}
    \textcolor{rgb,255:red,92;green,92;blue,214}{G} && {\operatorname{pt}}\\
    \\
    {\operatorname{pt}}&& {{\mathsf{B}}G}
    \arrow[from=3-1, to=3-3]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, from=1-1, to=3-1]
    \arrow[from=1-3, to=3-3]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, from=1-1, to=1-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJHIixbMjQwLDYwLDYwLDFdXSxbMiwwLCJcXHB0Il0sWzAsMiwiXFxwdCJdLFsyLDIsIlxcQiBHIl0sWzIsM10sWzAsMiwiIiwwLHsiY29sb3VyIjpbMjQwLDYwLDYwXX1dLFsxLDNdLFswLDEsIiIsMix7ImNvbG91ciI6WzI0MCw2MCw2MF19XSxbMCwzLCIiLDEseyJzdHlsZSI6eyJuYW1lIjoiY29ybmVyIn19XV0=)
:::

::: {.example title="Orbit/Stabilizer"}
Let \( G\curvearrowright\Sigma \) and \( x\in \Sigma \), and let \( Gx \) be the orbit and \( G_x \) be the stabilizer. Then there is a morphism of groupoids \( f \in \operatorname{Mor}({\mathsf{B}}G_x, [\Sigma/G]) \) inducing a pullback:

```{=tex}
\begin{tikzcd}
    \textcolor{rgb,255:red,92;green,92;blue,214}{G_x} & {} & \Sigma \\
    \\
    {{\mathsf{B}}G_x} && {[\Sigma/G]} \\
    {\operatorname{pt}}&& x
    \arrow["{\exists f}", from=3-1, to=3-3]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, from=1-1, to=3-1]
    \arrow[from=1-3, to=3-3]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, from=1-1, to=1-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, color={rgb,255:red,92;green,92;blue,214}, draw=none, from=1-1, to=3-3]
    \arrow[maps to, from=4-1, to=4-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNyxbMCwwLCJHX3giLFsyNDAsNjAsNjAsMV1dLFsxLDBdLFsyLDAsIlxcU2lnbWEiXSxbMCwyLCJcXEIgR194Il0sWzIsMiwiW1xcU2lnbWEvR10iXSxbMCwzLCJcXHB0Il0sWzIsMywieCJdLFszLDQsIlxcZXhpc3RzIGYiXSxbMCwzLCIiLDAseyJjb2xvdXIiOlsyNDAsNjAsNjBdfV0sWzIsNF0sWzAsMiwiIiwyLHsiY29sb3VyIjpbMjQwLDYwLDYwXX1dLFswLDQsIiIsMSx7ImNvbG91ciI6WzI0MCw2MCw2MF0sInN0eWxlIjp7Im5hbWUiOiJjb3JuZXIifX1dLFs1LDYsIiIsmfx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XV0=)
:::

## Prestacks

::: {.remark}
Motivation: to specify a moduli functor, we'll need the data of

-   Families over \( S \),
-   How to pull back families under morphisms, and
-   *How* objects are isomorphic.

As a first attempt, we might try to define a 2-functor \( F: {\mathsf{Sch}}\to {\mathsf{Grpd}} \) between 2-categories, where the latter is the category of groupoids. For this, we need the following data:

-   For all \( S\in {\mathsf{Sch}} \), an assignment of a groupoid \( F(S) \),
-   For all morphisms \( f\in \operatorname{Mor}_{{\mathsf{Sch}}}(S, T) \), an assignment of morphisms of groupoids
    \[
    f^* \in \operatorname{Mor}_{{\mathsf{Grpd}}}(F(T), F(S))
    .\]
-   For compositions of morphisms of schemes \( S \xrightarrow{f} T \xrightarrow{g} U \), an isomorphism of functors
    \[
    \psi_{fg}: g^* \circ f^* \xrightarrow{\sim} (g \circ f)^*
    .\]
-   Compatibility of these isomorphisms on chains of compositions \( S \to T \to U \to V \to \cdots \). [^1]

This is a lot of data to track, so instead we'll construct a large category \( {\mathfrak{X}} \) that encodes all of this, along with a fibration

```{=tex}
\begin{tikzcd}
{\mathfrak{X}}\coloneqq\displaystyle\coprod_{S\in {\mathsf{Sch}}} F(S) \ar[d, "p"] 
& (S, \alpha \in F(S)) \ar[d, maps to]
\\
{\mathsf{Sch}}& S
\end{tikzcd}
```
Here \( S \in {\mathsf{Sch}} \) and \( F(S) \in {\mathsf{Grpd}} \), so the "fibers" above \( S \) are groupoids.
:::

::: {.definition title="Prestack"}
Let \( p:{\mathfrak{X}}\to \mathsf{C} \) be a functor between two 1-categories, so we have the following data:

```{=tex}
\begin{tikzcd}
    {\mathfrak{X}}&& a && b & {\in {\operatorname{Ob}}({\mathfrak{X}})} \\
    \\
    \mathsf{C} && S && T & {\in {\operatorname{Ob}}(\mathsf{C})}
    \arrow["f", from=3-3, to=3-5]
    \arrow["p"', from=1-1, to=3-1]
    \arrow[maps to, from=1-3, to=3-3]
    \arrow[maps to, from=1-5, to=3-5]
    \arrow["\alpha", from=1-3, to=1-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMCwwLCJcXG1meCJdLFswLDIsIlMiXSxbMiwwLCJhIl0sWzQsMCwiYiJdLFsyLDIsIlMiXSxbNCwyLCJUIl0sWzUsMCwiXFxpbiBcXE9iKFxcbWZ4KSJdLFs1LDIsIlxcaW4gXFxPYihTKSJdLFs0LDUsImYiXSxbMCwxLCJwIiwyXSxbMiw0LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV0sWzMsNSwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dLFsyLDNdXQ==)

Then \( {\mathfrak{X}}, p \) define a **prestack** over \( \mathsf{C} \) iff

-   Pullbacks exist: for \( S \xrightarrow{f} T \), there exists a (not necessarily unique) map \( f^*b \), sometimes denoted \( { \left.{{b}} \right|_{{f}} } \), yielding a cartesian square:

```{=tex}
\begin{tikzcd}
    \textcolor{rgb,255:red,92;green,92;blue,214}{\exists a} && b \\
    \\
    S && T
    \arrow[from=3-1, to=3-3]
    \arrow[from=1-3, to=3-3]
    \arrow["{f^* b = { \left.{{b}} \right|_{{f}} }}", color={rgb,255:red,92;green,92;blue,214}, dashed, from=1-1, to=1-3]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, dashed, from=1-1, to=3-1]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, color={rgb,255:red,92;green,92;blue,214}, draw=none, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXGV4aXN0cyBhIixbMjQwLDYwLDYwLDFdXSxbMiwwLCJiIl0sWzAsMiwiUyJdLFsyLDIsIlQiXSxbMiwzXSxbMSwzXSxbMCwxLCJmXiogYiA9IFxccm97Yn17Zn0iLDAseyJjb2xvdXIiOlsyNDAsNjAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19LFsyNDAsNjAsNjAsMV1dLFswLDIsIiIsMCx7ImNvbG91ciI6WzI0MCw2MCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFswLDMsIiIsMSx7ImNvbG91ciI6WzI0MCw2MCw2MF0sInN0eWxlIjp7Im5hbWUiOiJjb3JuZXIifX1dXQ==)

-   A universal property making \( {\mathfrak{X}} \) a *fibered category*: every arrow in \( {\mathfrak{X}} \) is a pullback, so there are always lifts of the following form:

```{=tex}
\begin{tikzcd}
    \textcolor{rgb,255:red,92;green,92;blue,214}{a} && b && c \\
    \\
    R && S && R
    \arrow[from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow[maps to, from=1-3, to=3-3]
    \arrow[maps to, from=1-5, to=3-5]
    \arrow[from=1-3, to=1-5]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, dashed, maps to, from=1-1, to=3-1]
    \arrow["{\exists !}", color={rgb,255:red,92;green,92;blue,214}, dashed, from=1-1, to=1-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJhIixbMjQwLDYwLDYwLDFdXSxbMiwwLCJiIl0sWzQsMCwiYyJdLFswLDIsIlIiXSxbMiwyLCJTIl0sWzQsMiwiUiJdLFszLDRdLFs0LDVdLFsxLDQsIiIsmfx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbMiw1LCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV0sWzEsMl0sWzAsMywiIiwwLHsiY29sb3VyIjpbMjQwLDYwLDYwXSwic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9LCJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCwxLCJcXGV4aXN0cyAhIiwwLHsiY29sb3VyIjpbMjQwLDYwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fSxbMjQwLDYwLDYwLDFdXSxbMCw0LCIiLDAseyJzdHlsZSI6eyJuYW1lIjoiY29ybmVyIn19XV0=)
:::

::: {.slogan}
An alternative definition: a prestack is a category *fibered in groupoids*.
:::

::: {.warnings}
We often conflate \( {\mathfrak{X}} \) and the functor \( {\mathfrak{X}}\xrightarrow{p} S \), and don't spell out the composition law in \( {\mathfrak{X}} \). Moreover, we write \( f^*b \) or \( { \left.{{b}} \right|_{{f}} } \) for a *choice* of a pullback.
:::

::: {.definition title="Fiber Categories"}
For \( p: {\mathfrak{X}}\to \mathsf{C} \) a functor and \( S\in {\operatorname{Ob}}(\mathsf{C}) \) any fixed object, the associated **fiber category over \( S \)**, denoted \( {\mathfrak{X}}(S) \), is the subcategory of \( {\mathfrak{X}} \) defined by:

-   Objects: \( a\in {\operatorname{Ob}}({\mathfrak{X}}) \) such that \( a \xrightarrow{p} S \),
-   Morphisms: \( \operatorname{Mor}(a, a') \) are morphisms \( f\in \operatorname{Mor}_{{\mathfrak{X}}}(a, a') \) over \( \operatorname{id}_S \):

```{=tex}
\begin{tikzcd}
a 
  \ar[rd, ""]
  \ar[rr, "f"] 
& 
& 
a'
  \ar[ld, ""] 
\\
& 
S 
& 
\end{tikzcd}
```
:::

::: {.remark}
We can now equivalently define presheaves as categories fibered in sets.
:::

::: {.exercise title="Justifying 'category fibered in groupoids'"}
Show that if \( {\mathfrak{X}}\to \mathsf{C} \) is a prestack, then for all \( S\in \mathsf{C} \), all maps in \( {\mathfrak{X}}(S) \) are invertible. Conclude that the fiber categories \( {\mathfrak{X}}(S) \) are all groupoids.
:::

::: {.example title="Presheaves"}
Every presheaf forms a prestack. Let \( F \in  \underset{ \mathsf{pre} } {\mathsf{Sh} }({\mathsf{Sch}}, {\mathsf{Set}}) \) be a presheaf of sets, and define \( {\mathfrak{X}}_F \) as the following category:

-   Objects: Pairs \( (S, a \in F(S)) \) where \( S\in {\mathsf{Sch}} \) and \( F(s) \in {\mathsf{Set}} \).
-   Morphisms:
    \[
    \operatorname{Mor}( (S, a), (T, b) ) \coloneqq\left\{{ S \xrightarrow{f} T {~\mathrel{\Big|}~}a = f^* b}\right\}
    .\]

Note that we'll often conflate \( F \) and \( {\mathfrak{X}}_F \). This yields the fibration

```{=tex}
\begin{tikzcd}
    {{\mathfrak{X}}_F} && {(S, a)} \\
    \\
    {\mathsf{Sch}}&& S
    \arrow[from=1-1, to=3-1, "p"]
    \arrow[maps to, from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXG1jeF9GIl0sWzAsMiwiXFxTY2giXSxbMiwwLCIoUywgYSkiXSxbMiwyLCJTIl0sWzAsMV0sWzIsMywiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dXQ==)
:::

::: {.example title="Schemes"}
For \( X\in {\mathsf{Sch}} \), take its Yoneda functor \( h_X: {\mathsf{Sch}}\to {\mathsf{Set}} \). Then define the category \( {\mathfrak{X}}_X \):

-   Objects: Morphisms \( S\to X \) of schemes.
-   Morphisms: \( \operatorname{Mor}(S\to X, T\to X) \) are morphisms over \( X \):

```{=tex}
\begin{tikzcd}
S 
  \ar[rd, ""]
  \ar[rr, ""] 
& 
& 
T
  \ar[ld, ""] 
\\
& 
X 
& 
\end{tikzcd}
```
This yields the fibration

```{=tex}
\begin{tikzcd}
    {{\mathfrak{X}}_X} && {(S\to X)} \\
    \\
    {\mathsf{Sch}}&& S
    \arrow[from=1-1, to=3-1, "p"]
    \arrow[maps to, from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXG1jeF9GIl0sWzAsMiwiXFxTY2giXSxbMiwwLCIoUywgYSkiXSxbMiwyLCJTIl0sWzAsMV0sWzIsMywiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dXQ==)
:::

::: {.example title="Moduli of curves"}
Define \( { \mathcal{M}_{g} } \) as the following category:

-   Objects: families \( {\mathcal{C}}\to S \) of smooth genus \( g \) curves,
-   Morphisms: \( \operatorname{Mor}({\mathcal{C}}\to S, {\mathcal{C}}'\to S') \): cartesian squares

```{=tex}
\begin{tikzcd}
    {\mathcal{C}}&& {{\mathcal{C}}'} \\
    \\
    S && S'
    \arrow[from=3-1, to=3-3]
    \arrow[from=1-1, to=3-1]
    \arrow[from=1-3, to=3-3]
    \arrow[from=1-1, to=1-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJDIl0sWzAsMiwiUyJdLFsyLDIsIlMiXSxbMiwwLCJDJyJdLFsxLDIsIlxcaWRfUyIsMl0sWzAsMV0sWzMsMl0sWzAsM10sWzAsMiwiIiwxLHsic3R5bGUiOnsibmFtZSI6ImNvcm5lciJ9fV1d)

This yields a fibration

```{=tex}
\begin{tikzcd}
    {{ \mathcal{M}_{g} }} && {({\mathcal{C}}\to S)} \\
    \\
    {\mathsf{Sch}}&& S
    \arrow[from=1-1, to=3-1]
    \arrow[maps to, from=1-3, to=3-3]
\end{tikzcd}
```
:::

::: {.example title="Bundles"}
For \( C \) a smooth connected projective curve over \( k \) a field, define \( {\mathsf{Bun}}(C) \) as the following category:

-   Objects: pairs \( (S, F) \) where \( F \) is a vector bundle over \( C\times S \).
-   Morphisms:
    \[
    \operatorname{Mor}((S, F), (S', F'))
    =
    \left\{ 
    \begin{array}{l}
    f\in \operatorname{Mor}_{{\mathsf{Sch}}}(S, S') \\
    \text{and a chosen isomorphism} \\
    \alpha: (f\times \operatorname{id})^* \circ F' \xrightarrow{\sim} F
    \end{array}
    \right\}
    .\]

::: {.remark}
A technical point: the choice of pushforward here is not necessarily canonical. However, as part of the data, one can take morphisms \( F' \to (f\times\operatorname{id})_* \circ F \) such that the adjunction yields an isomorphism.
:::
:::

::: {.example title="Quotient prestack"}
Let \( X_{/ {S}} \in {\mathsf{Grp}}{\mathsf{Sch}} \) where \( G\curvearrowright X \). Then define a category \( [X/G]^{\mathsf{pre}} \):

-   Objects: Morphisms over \( \operatorname{id}_S \):

```{=tex}
\begin{tikzcd}
T 
  \ar[rd, ""]
  \ar[rr, ""] 
& 
& 
X
  \ar[ld, ""] 
\\
& 
S 
& 
\end{tikzcd}
```
-   Morphisms:

\[
\operatorname{Mor}(T\to X, T'\to X)
\coloneqq
\left\{ 
\begin{array}{l}
  T\to T'
\end{array}
\,\,
\middle\vert 
\begin{array}{l}
  (T \to T' \to X ) = g(T \to X) \\
  g\in G(T) \\
  G(T) \curvearrowright X(T)
\end{array}
\right\}
.\]
:::

::: {.remark}
A group scheme can alternatively be thought of as a functor with a factorization through \( {\mathsf{Grp}} \).
:::

::: {.exercise title="Quotient prestacks and quotient groupoids"}
Show that for \( T\in {\mathsf{Sch}} \), there is an equivalence
\[
[X/G]^{\mathsf{pre}}(T) \xrightarrow{\sim} [X(T) / G(T)]
,\]
where the left-hand side is a fibered category over \( T \) and the right-hand side is a quotient groupoid.
:::

### Morphisms of Prestacks

::: {.definition title="Morphisms of prestacks"}
A **morphism of prestacks** is a functor \( {\mathfrak{X}}\xrightarrow{f} {\mathfrak{X}}' \) such that there is a (strictly) commutative triangle

```{=tex}
\begin{tikzcd}
    {\mathfrak{X}}&& {\mathfrak{X}}' \\
    \\
    & \mathsf{C}
    \arrow["f", from=1-1, to=1-3]
    \arrow["{p_X}"', from=1-1, to=3-2]
    \arrow["{p_Y}", from=1-3, to=3-2]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJcXG1jeCJdLFsyLDAsIlxcbWN5Il0sWzEsMiwiXFxTY2giXSxbMCwxLCJmIl0sWzAsMiwicF9YIiwyXSxbMSwyLCJwX1kiXV0=)

Here we require a strict equality \( p_X(a) = p_Y(f(a)) \) for any \( a\in {\mathfrak{X}} \)

A **2-morphism** \( \alpha \) between morphisms \( f, g \) is a natural transformation:

```{=tex}
\begin{tikzcd}
    {\mathfrak{X}}&&& {\mathfrak{X}}'
    \arrow[""{name=0, anchor=center, inner sep=0}, "f", curve={height=-30pt}, from=1-1, to=1-4]
    \arrow[""{name=1, anchor=center, inner sep=0}, "g"', curve={height=30pt}, from=1-1, to=1-4]
    \arrow["\alpha", shorten <=8pt, shorten >=8pt, Rightarrow, from=0, to=1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMixbMCwwLCJcXG1meCJdLFszLDAsIlxcbWZ5Il0sWzAsMSwiZiIsMCx7ImN1cnZlIjotNX1dLFswLDEsImciLDIseyJjdXJ2ZSI6NX1dLFsyLDMsIlxcYWxwaGEiLDAseyJzaG9ydGVuIjp7InNvdXJjZSI6MjAsInRhcmdldCI6MjB9fV1d)

such that for all \( a\in {\mathfrak{X}} \), the following triangle \( \alpha_a\in \operatorname{Mor}_{{\mathfrak{X}}'}(f(a), g(a)) \) is a morphisms over \( \operatorname{id}_S \) for any \( S\in \mathsf{C} \):

```{=tex}
\begin{tikzcd}
f(a) 
  \ar[rd, ""]
  \ar[rr, ""] 
& 
& 
g(a)
  \ar[ld, ""] 
\\
& 
S 
& 
\end{tikzcd}
```
We define a category \( \operatorname{Mor}({\mathfrak{X}}, {\mathfrak{X}}') \) by:

-   Objects: morphisms of prestacks.
-   Morphisms: 2-morphisms of prestacks.
:::

::: {.exercise title="?"}
Show that \( \operatorname{Mor}({\mathfrak{X}}, {\mathfrak{X}}') \) is a groupoid.
:::

::: {.definition title="2-commutativity"}
A diagram is **2-commutative** iff there exists a 2-morphism \( \alpha: g \circ f' \xrightarrow{\sim} f\circ g' \) which is an isomorphism:

```{=tex}
\begin{tikzcd}
    {{\mathfrak{X}}{ \underset{\scriptscriptstyle {{\mathfrak{X}}'} }{\times} } {\mathfrak{X}}''} && {{\mathfrak{X}}''} \\
    \\
    {\mathfrak{X}}&& {\mathfrak{X}}'
    \arrow["g", from=1-3, to=3-3]
    \arrow["f"', from=3-1, to=3-3]
    \arrow["{g'}"', from=1-1, to=3-1]
    \arrow["{f'}", from=1-1, to=1-3]
    \arrow["\alpha", Rightarrow, from=3-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXG1meCBcXGZpYmVycHJvZHtcXG1meX0gXFxtZnknIl0sWzIsMCwiXFxtZnknIl0sWzIsMiwiXFxtZnkiXSxbMCwyLCJcXG1meCJdLFsxLDIsImciXSxbMywyLCJmIiwyXSxbMCwzLCJnJyIsMl0sWzAsMSwiZiciXSxbMywxLCJcXGFscGhhIiwwLHsibGV2ZWwiOjJ9XV0=)
:::

::: {.definition title="Isomorphisms of prestacks"}
An **isomorphism** of prestacks is a 1-isomorphism of prestacks \( f: {\mathfrak{X}}\to {\mathfrak{X}}' \) along with 2-isomorphisms \( g\circ f \xrightarrow{\sim} \operatorname{id}_{{\mathfrak{X}}} \) and \( f\circ g \xrightarrow{\sim} \operatorname{id}_{{\mathfrak{X}}'} \).
:::

::: {.exercise title="Isomorphisms of prestacks can be checked on fibers"}
Show that \( {\mathfrak{X}}\to {\mathfrak{X}}' \) is an isomorphism iff \( {\mathfrak{X}}(S) \xrightarrow{\sim} {\mathfrak{X}}'(S) \) is an isomorphism on all fibers.
:::

::: {.proposition title="2-Yoneda"}
If \( {\mathfrak{X}}\in  {\underset{ \mathsf{pre} } {\mathsf{St} } } {}_{/ {\mathsf{C}}}  \) is a prestack over \( \mathsf{C} \), then for any \( S\in {\operatorname{Ob}}(\mathsf{C}) \), there is an equivalence of categories induced by the following functor:
\[
\operatorname{Mor}(S, {\mathfrak{X}}) & \xrightarrow{\sim}  {\mathfrak{X}}(S) \\
f &\mapsto f_S(\operatorname{id}_S )
.\]
:::

::: {.remark}
For \( S\in {\mathsf{Sch}} \), view \( S \) as a prestack and consider a morphism \( f:S\to {\mathfrak{X}} \). How is this specified? For all \( T\in {\mathsf{Sch}} \), the objects of \( S_{/ {T}}  \) are morphisms
\[
f_T: \operatorname{Mor}(T, S) \to {\mathfrak{X}}(T)
\]
and if \( T=S \) this sends \( \operatorname{id}_S \) to \( f_S(\operatorname{id}_S)\in {\mathfrak{X}}(S) \).

What is the inverse? For \( a\in {\mathfrak{X}}(S) \) and for each \( T \xrightarrow{g} S \), **choose** a pullback \( g^* a \). Then define \( f: S \to {\mathfrak{X}} \) by
\[
f_T: \operatorname{Mor}(T, S) &\to {\mathfrak{X}}(T) \\
g &\mapsto g^* a
.\]
:::

::: {.exercise title="?"}
Define what this equivalence should do on morphisms.
:::

::: {.remark}
Next time: fiber products of prestacks.
:::

[^1]: This leads to the notion of **lax** or **pseudofunctors**.
