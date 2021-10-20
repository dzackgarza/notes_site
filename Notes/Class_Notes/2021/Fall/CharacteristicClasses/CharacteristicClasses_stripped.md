












# Thursday, August 19

## Intro and Overview

::: {.remark}
Course website: <https://akramalishahi.github.io/CharClass.html>

Description from Akram's syllabus:

> This course is about characteristic classes, which are cohomology classes naturally associated to vector bundles or, more generally, principal bundles. They are a key tool in modern {algebraic, differential}×{topology, geometry}. The course starts with an introduction to vector bundles and principal bundles. It then discusses their main characteristic classes---the Euler class, Stiefel-Whitney classes, Chern classes, and Pontryagin classes. The last part of the class discusses some applications of characteristic classes to bordisms. In the process, we will see some nice applications (e.g., to immersions) and review some important parts of algebraic topology (e.g., obstruction theory).

**References**:

-   [@Hu] Husemoller, Fiber bundles.
-   [@MS] Milnor and Stasheff, Characteristic classes.
-   [@S] Steenrod, The topology of fibre bundles.
-   [@Ha] Hatcher, Vector bundles and K-theory .
-   [@BottTu] Bott and Tu, Differential forms in algebraic topology.

Prerequisites:

-   Smooth manifolds: smooth maps and derivatives, differential forms.
-   Algebraic topology: homology and cohomology.
:::

::: {.remark}
An overview of what we'll cover:

-   **General definitions and constructions related to *vector bundles* and *fiber bundles*.**

    Why bundles? For a bundle \( E \xrightarrow{\pi} B \), characteristic classes will be cohomology classes in \( H^*(B) \). Natural examples include

    -   The tangent bundle \( TX\to X \), and vector fields will be sections.
    -   Exterior products \( \bigwedge\nolimits^n TX \), where differential forms live
    -   Normal bundles \( \nu \), giving directions an embedded submanifold can be deformed.

    Also note that manifolds locally look like vectors spaces (\( {\mathbb{R}}^n \)!) and so embedded manifolds locally look like vector bundles. In particular, if \( f: M^n \hookrightarrow N^k \) is an embedding, locally \( \nu \) is locally a \( k-n \) dimensional vector bundle over \( {\mathbb{R}}^n \) (and globally a bundle of the form \( \nu: E \to f(M_n) \))

    ```{=tex}
    \begin{tikzpicture}
    \fontsize{34pt}{1em} 
    \node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/CharacteristicClasses/sections/figures}{2021-08-19_13-04.pdf_tex} };
    \end{tikzpicture}
    ```

-   **Characteristic Classes: Euler, Stiefel-Whitney, Pontryagin, etc.**

    These package geometric information into algebraic invariants that are often computable. Some examples:

    -   Stiefel-Whitney classes can detect if \( M^n = {{\partial}}M^{n+1} \) is a boundary (for smooth closed manifolds).
    -   Euler classes can prove the Hairy Ball theorem, i.e. \( S^2 \) admits no nonvanishing continuous vector fields, which can be generalized to \( S^{2n} \) and to splitting the tangent bundle.
    -   Pontryagin classes: Milnor used these to produce exotic \( S^7 \)s! These are manifolds \( M^7 \) which are homeomorphic but not diffeomorphic to \( S^7 \).
    -   Chern classes.
:::

## Fiber Bundles

::: {.definition title="Fiber bundle"}
A **fiber bundle** over \( B \) with fiber \( F \) is a continuous map \( \pi: E\to B \) where each \( b\in B \) admits an open neighborhood \( U \subseteq B \) and a homeomorphism \( \phi: \pi^{-1}(U)\to U\times F \) such that the following diagram commutes in \( {\mathsf{Top}} \):

```{=tex}
\begin{tikzcd}
    {\pi^{-1}(U)} && {U\times F} \\
    \\
    & U
    \arrow["\phi", from=1-1, to=1-3]
    \arrow["\pi"', from=1-1, to=3-2]
    \arrow["{p_2}", from=1-3, to=3-2]
\end{tikzcd}
```
Here the square is \( [0, 1]^{\times 2} \).

> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJcXHBpXFxpbnYoVSkiXSxbMiwwLCJVXFxjcm9zcyBGIl0sWzEsMiwiVSJdLFswLDEsIlxccGhpIl0sWzAsMiwiXFxwaSIsMl0sWzEsMiwicF8yIl1d)
:::

::: {.remark}
Note that this necessarily implies that all fibers are homeomorphic, noting that \( F_b \coloneqq\pi^{-1}(b) \xrightarrow{\phi} \left\{{b}\right\} \times F \). We have inclusions: vector bundles \( \implies \) fiber bundles \( \implies \) fibrations. For a fibration that's not a fiber bundle, one can collapse a fiber in a trivial bundle, e.g. 

```{=tex}
\begin{tikzpicture}
\fontsize{44pt}{1em}4
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/CharacteristicClasses/sections/figures}{2021-08-19_13-37.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.example title="?"}
An **atlas bundle** for \( \pi:E\to B \) is a collection of charts \( \left\{{(U_\alpha, \phi_\alpha)}\right\}_{\alpha\in I} \) such that \( \left\{{U_\alpha}\right\}\rightrightarrows B \).
:::

::: {.example title="?"}
```{=tex}
\envlist
```
-   \( E \coloneqq B\times F \xrightarrow{p_2} F \) the trivial/product bundle.

-   \( \widehat{X} \to X \) any covering space. Note that the fibers are discrete.

-   The Möbius band:

\<-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/CharacteristicClasses/sections/figures/2021-08-19_13-41.xoj --\>

![](figures/2021-08-19_13-44-14.png)

This is a fiber bundle with fibers \( [0, 1] \). For a fiber bundle, include the boundary, but to make this a vector bundle do not include it!
:::

::: {.remark}
Consider the following setup:

-   \( B\in {\mathsf{Top}} \)
-   \( \pi:E\to B \) is a map of underlying sets
-   There is a bundle atlas \( \left\{{\phi_\alpha}\right\} \), each \( \phi_\alpha \) being a bijection.

Then there exists *at most* one topology on \( E \) such that \( \pi: E\to B \) is a fiber bundle with the given atlas.
:::

::: {.exercise title="?"}
Find necessary conditions for at least one topology to exist!
:::

## Vector Bundles

::: {.definition title="Vector bundle"}
An \( n{\hbox{-}} \)dimensional real (resp. complex) **vector bundle** over \( B \) is a fiber bundle \( \pi:E\to B \) along with a real vector space structure on each fiber \( F_b \) such that for each \( b\in B \) there exists a neighborhood \( U \ni b \) and a chart \( (U, \phi: \pi^{-1}(U) \to U\times {\mathbb{R}}^n) \) (resp. \( {\mathbb{C}}^n \)) where \( { \left.{{\phi}} \right|_{{F_b}} }: F_b \xrightarrow{\sim} {\mathbb{R}}^n \) (resp. \( {\mathbb{C}}^n \)) is an isomorphism of vector spaces.
:::

::: {.example title="?"}
```{=tex}
\envlist
```
-   The trivial (product) bundle \( B\times{\mathbb{R}}^n \xrightarrow{p_1} B \).
-   The tangent bundle \( T X \).
-   Identifying the Möbius band as \( [0, 1] \times(0, 1)/\sim \) as \( I \times{\mathbb{R}}/ (0, t)\sim (1, -t) \) yields a 1-dimensional bundle \( M\to S^1 \).
:::

::: {.remark}
We have some natural operations:

1.  Direct sums.

For \( E_1, E_2 \in { { {\mathsf{Bun}}\qty{\operatorname{GL}_r} }}_{/ {B}}  \), so \( E_1 \xrightarrow{\pi_1} B \) and \( E_2 \xrightarrow{\pi_2} B \), we can form \( E_1 \oplus E_2 \xrightarrow{\pi} B \). As a set, take
\[
E_1 \oplus E_2 \coloneqq\displaystyle\bigcup_{b\in B} F_{1, b} \oplus F_{2, b}
  \]
as a union of direct sums of vector spaces. For the bundle map, take \( \pi(F_{1, b} \oplus F_{2, b}) \coloneqq\left\{{b}\right\} \). For charts, for any \( b\in B \) pick individual charts about \( b \), say \( (U_1, \phi_1) \) for \( E_1 \) and \( (U_1, \phi_2) \) for \( E_2 \), form charts
\[
\left\{{ (U_1 \cap U_2, \phi: \pi^{-1}(U_1 \cap U_2) \to {\mathbb{R}}^{n_1 + n_2})}\right\}
  \]
where \( n_1 \coloneqq\dim_{\mathbb{R}}F_{1, b} \) and \( n_2 \coloneqq\dim_{\mathbb{R}}F_{2, b} \) and define \( (b, (v_1, v_2)) \xrightarrow{\phi} (\phi_1(v_1), \phi_2(v_2)) \).
:::

# Fiber Bundles with Structure and Principal \( G{\hbox{-}} \) Bundles (Tuesday, August 24) {#fiber-bundles-with-structure-and-principal-ghbox--bundles-tuesday-august-24}

::: {.remark}
Setup:

-   \( B \in {\mathsf{Top}} \) is a space.
-   \( \pi:E\to B \) is a map of sets with fibers/preimages \( F \coloneqq F_b \coloneqq\pi^{-1}(\left\{{b}\right\}) \).
-   A *bundle atlas* for \( \pi \) is \( \phi \) where \( \phi_U: \pi^{-1}(U) \to U \times F \) is a bijection of sets

Then there is at most one topology on \( E \) making \( \pi:E\to B \) into a fiber bundle with the specified atlas.
:::

::: {.definition title="Dual of a vector bundle"}
Given a vector bundle \( \pi:E\to B \), form the **dual bundle** \( \pi {}^{ \vee }:E {}^{ \vee }\to B \) by setting

-   \( E {}^{ \vee }\coloneqq{\textstyle\coprod}_{b\in B} F_b {}^{ \vee } \)
-   Set \( \pi {}^{ \vee }(F_b {}^{ \vee }) = \left\{{b}\right\} \in B \).
-   Given \( \phi: \pi^{-1}(U)\to U\times {\mathbb{R}}^n \), set
    \[
    \phi {}^{ \vee }: (\pi {}^{ \vee })^{-1}(U) = {\textstyle\coprod}_{b\in U} F_b {}^{ \vee }\longrightarrow U\times({\mathbb{R}}^n) {}^{ \vee }\cong U\times{\mathbb{R}}^n
    .\]

Here \( A \subseteq \pi^{-1}(U) \) is open iff \( \phi_U(A) \) is open in \( B \).
:::

::: {.remark}
Consider what happens on overlapping charts -- looking at maps fiberwise yields:

```{=tex}
\begin{tikzcd}
    {\pi^{-1}(U)} && {\pi^{-1}(U\cap V)} && {\pi^{-1}(V)} \\
    && {} \\
    {U\times F} && {(U\cap V) \times F} && {V\times F}
    \arrow[hook', from=1-3, to=1-1]
    \arrow["{\varphi_U}", from=1-1, to=3-1]
    \arrow[hook', from=3-3, to=3-1]
    \arrow[hook, from=3-3, to=3-5]
    \arrow[hook, from=1-3, to=1-5]
    \arrow["{\varphi_V}"', from=1-5, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNyxbMCwwLCJcXHBpXFxpbnYoVSkiXSxbMiwwLCJcXHBpXFxpbnYoVVxcaW50ZXJzZWN0IFYpIl0sWzQsMCwiXFxwaVxcaW52KFYpIl0sWzAsMiwiVVxcdGltZXMgRiJdLFs0LDIsIlZcXHRpbWVzIEYiXSxbMiwyLCIoVVxcaW50ZXJzZWN0IFYpIFxcdGltZXMgRiJdLFsyLDFdLFsxLDAsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoiYm90dG9tIn19fV0sWzAsMywiXFx2YXJwaGlfVSJdLFs1LDMsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoiYm90dG9tIn19fV0sWzUsNCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMSwyLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsyLDQsIlxcdmFycGhpX1YiLDJdXQ==)

Starting at \( (U \cap V)\times F \) and running the diagram clockwise yields a map
\[
\phi_V \circ \phi_U ^{-1}: (U \cap V ) \times F &\to (U \cap V ) \times F \\
(b, f) &\mapsto (b, \phi_{VU}(f) )
\]
where \( \phi_{VU} \) is the following continuous map, defining a **transition function**:
\[
\phi_{VU}: U \cap V &\to {\operatorname{Homeo}}(F)
,\]
where \( {\operatorname{Homeo}}(F) \coloneqq\mathop{\mathrm{Hom}}_{{\mathsf{Top}}}(F, F) \) with the compact-open topology.
:::

::: {.definition title="The compact-open topology"}
Let \( \mathop{\mathrm{Maps}}(X, Y)\coloneqq\mathop{\mathrm{Hom}}_{\mathsf{Top}}(X, Y) \) be the set of continuous maps \( X\to Y \), then a map \( Z\to \mathop{\mathrm{Maps}}(X, Y) \) is continuous iff the following map is continuous:
\[
Z\times X &\to Y \\
(z, x) &\mapsto f(z)(x)
.\]

If \( X \) is Hausdorff and locally compact then \( \mathop{\mathrm{Maps}}(X, Y) \) will have this property for all \( Y \). A subbasis for this topology will be given by taking \( C \subseteq X \) compact, \( U \subseteq Y \) open and taking the basic opens to be
\[
S(C, U) \coloneqq\left\{{f\in \mathop{\mathrm{Maps}}(X, Y){~\mathrel{\Big|}~}f(X) \subseteq U}\right\}
.\]
If \( Y \) has a metric, then this will coincide with the *compact convergence topology*, which has a basis
\[
\left\{{ 
S(f, C, E) {~\mathrel{\Big|}~}C \subseteq X \text{ compact}, \forall {\varepsilon}>0,\,\forall f\in \mathop{\mathrm{Maps}}(X, Y)
}\right\}, \\
S(f, C, E) \coloneqq\left\{{ 
g\in \mathop{\mathrm{Maps}}(X, Y) {~\mathrel{\Big|}~}d( f(x), g(x) ) < {\varepsilon}\,\,\forall x\in C 
}\right\} 
.\]
:::

::: {.definition title="Structure Groups"}
Let \( G \subseteq {\operatorname{Homeo}}(F) \), then a **fiber bundle with structure group** \( G \) is a fiber bundle \( F\to E \xrightarrow{\pi} B \) together with a bundle atlas such that \( G \subseteq {\operatorname{Homeo}}(F) \).
:::

::: {.example title="?"}
An \( {\mathbb{R}}^n{\hbox{-}} \)bundle is just a bundle where \( F = {\mathbb{R}}^n \) for all fibers, where we ignore the vector space structure and only take transition functions to be homeomorphisms. An \( {\mathbb{R}}^n{\hbox{-}} \)bundle with a \( G\coloneqq\operatorname{GL}_n({\mathbb{R}}) \) is exactly a vector bundle, where we can use the structure group to put a vector space structure on the fibers. We have charts \( \phi_U: \pi^{-1}(U)\to U \times{\mathbb{R}}^n \), so for all \( b\in U \), writing \( F_b \coloneqq\pi^{-1}(\left\{{b}\right\}) \) and get \( \phi_U(F_b) = {~\mathrel{\Big|}~}{b} \times{\mathbb{R}}^n \). We can then define addition and multiplication for \( w_1, w_2 \in F_b \) as
\[
cw_1+ w_2 \coloneqq\phi_U^{-1}\qty{ c\phi_U(w_1) + \phi_U(w_2) }
.\]
This is well-defined because for any other chart containing \( V\ni b \), we have \( \phi_{VU}\in \operatorname{GL}_n({\mathbb{R}}) \). This follows by just setting \( A \coloneqq\phi_V \circ \phi_U ^{-1} \) and writing
\[
\phi_V(w_1 + w_2) 
&= A \phi_U(w_1 + w_2) \\
&\coloneqq A\qty{\phi_U(w_1) + \phi_U(w_2) } \\
&= A\phi_U(w_1) + A\phi_U(w_2) \\
&= \phi_V(w_1) + \phi_V(w_2) \\
&\coloneqq\phi_V(w_1 + w_2)
.\]
:::

::: {.example title="Bundles with structure"}
An \( {\mathbb{R}}^n{\hbox{-}} \)bundle with a \( \operatorname{GL}_{n}^+({\mathbb{R}}) \) structure is an orientable vector bundle, where
\[
\operatorname{GL}_n^+({\mathbb{R}}) = \left\{{ A \in \operatorname{GL}_n({\mathbb{R}}) {~\mathrel{\Big|}~}\operatorname{det}(A) > 0 }\right\} 
.\]

A \( G\coloneqq O_n({\mathbb{R}}) \) structure yields vector bundles with Riemannian metrics on fibers, where \( O_n({\mathbb{R}}) \coloneqq\left\{{ A\in \operatorname{GL}_n({\mathbb{R}}) {~\mathrel{\Big|}~}AA^t = \operatorname{id}}\right\} \). Here we use the fact that there is an equivalence between metrics (symmetric bilinear pairings) and choices of an orthonormal basis, e.g. using that if \( \left\{{e_1, \cdots, e_n}\right\} \), one can specify an inner product completely by writing
\[
v\coloneqq\sum v_i e_i,\quad w \coloneqq\sum w_i e_i &&\implies {\left\langle {v},~{w} \right\rangle} = \sum v_i w_i
.\]
:::

::: {.definition title="Principal $G\\dash$bundles"}
A **principal \( G{\hbox{-}} \)bundle** is a fiber bundle \( \pi:P\to B \) with a right \( G{\hbox{-}} \)action \( \psi: P\times G\to P \) such that

1.  \( \psi\qty{F_b} = F_b \), so the action preserves each fiber, and
2.  \( \psi \) is free and transitive.
:::

# Principal \( G{\hbox{-}} \)bundles (Thursday, August 26) {#principal-ghbox-bundles-thursday-august-26}

::: {.remark}
Today: relating \( \mathop{\mathrm{Prin}}{\mathsf{Bun}}_{/ {G}}  \) to fiber bundles with a \( G{\hbox{-}} \)structure. Recall that a principal \( G{\hbox{-}} \)bundle is a fiber bundle \( \pi:P\to B \) with a fiberwise \( G{\hbox{-}} \)action \( P\times G\to P \) which induces a free and transitive action on each fiber. Note that we assume \( G\in{\mathsf{Top}}{\mathsf{Grp}} \). Any bundle in \( \mathop{\mathrm{Prin}}{\mathsf{Bun}}_{/ {G}}  \) is a fiber bundle with fibers \( F \) homeomorphic to \( G \) and admits a \( G{\hbox{-}} \)structure:
\[
G &\hookrightarrow{\operatorname{Homeo}}(G) \\
g &\mapsto (h\mapsto gh)
.\]
Using that \( F\cong G \), taking charts \( (U, \varphi), (V, \psi) \) for \( \pi:P\to B \), we can identify

```{=tex}
\begin{tikzcd}
    {\pi^{-1}(U \cap V)} && {(U \cap V) \times G} && {(U \cap V) \times G} && {\pi^{-1}(U \cap V)} \\
    && {(b, 1)} && {(b, g)} \\
    && {(b, h)} && {(b, gh)}
    \arrow["{\phi_V \circ \phi_U^{-1}}", from=1-3, to=1-5]
    \arrow["{\phi_U, \cong}", from=1-1, to=1-3]
    \arrow["{\phi_V, \cong}"', from=1-7, to=1-5]
    \arrow[maps to, from=2-3, to=2-5]
    \arrow[maps to, from=3-3, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMiwwLCIoVSBcXGludGVyc2VjdCBWKSBcXHRpbWVzIEciXSxbNCwwLCIoVSBcXGludGVyc2VjdCBWKSBcXHRpbWVzIEciXSxbMiwxLCIoYiwgMSkiXSxbNCwxLCIoYiwgZykiXSxbMCwwLCJcXHBpXFxpbnYoVSBcXGludGVyc2VjdCBWKSJdLFs2LDAsIlxccGlcXGludihVIFxcaW50ZXJzZWN0IFYpIl0sWzIsMiwiKGIsIGgpIl0sWzQsMiwiKGIsIGdoKSJdLFswLDEsIlxccGhpX1YgXFxjaXJjIFxccGhpX1VcXGludiJdLFs0LDAsIlxccGhpX1UsIFxcY29uZyJdLFs1LDEsIlxccGhpX1YsIFxcY29uZyIsMl0sWzIsMywiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dLFs2LDcsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XV0=)

So every transition function is given by left-multiplication by some element in \( G \), as opposed to arbitrary homeomorphisms of \( G \) as a topological group.
:::

::: {.example title="of principal bundles"}
```{=tex}
\envlist
```
-   Trivial actions: \( B \times G \xrightarrow{p_1} B \).

-   Regular covering spaces \( \pi:\tilde X\to X \), then \( G = \mathop{\mathrm{Deck}}(\tilde X/X) \) with the discrete topology.

-   Given an \( n{\hbox{-}} \)dimensional vector bundle \( \pi: E\to B \), take
    \[
    \mathop{\mathrm{Frame}}(F_b) \coloneqq\left\{{(e_1, \cdots, e_n) \in F_b}\right\} \subseteq F_b^{\times n}
    ,\]
    the collection of all ordered bases of \( F_b \). Then set
    \[
    \mathop{\mathrm{Frame}}_n \coloneqq{\textstyle\coprod}_{b\in B} \mathop{\mathrm{Frame}}(F_b) \to B
    \]
    to get a principal \( G{\hbox{-}} \)bundle for \( G = \operatorname{GL}_n(F_b) \) under the following action: picking a framing \( (e_1, \cdots, e_n) \) in \( F_b \), then for \( A\in \operatorname{GL}_n(F_b) \) regarded as a linear map, define
    \[
    (\mathbf{e}_1, \cdots, \mathbf{e}_n) \cdot A \coloneqq\qty{\sum_i a_{i,1} \mathbf{e}_i, \sum_i a_{i, 2} \mathbf{e}_i, \cdots, \sum_i a_{i, n} \mathbf{e}_i }
    .\]

-   Given an *oriented* \( n{\hbox{-}} \)dimensional vector bundle \( \pi:E\to B \), one gets a \( G\coloneqq\operatorname{GL}_n^+({\mathbb{F}}_b) \) by taking positively oriented frames.

-   Given a vector bundle with a Riemannian metric, we get a principal \( {\mathcal{O}}_n({\mathbb{R}}){\hbox{-}} \)bundle by taking orthonormal frames.
:::

::: {.definition title="?"}
Given two principal \( G{\hbox{-}} \)bundles \( \pi: P\to B \) and \( \pi': Q\to B \), an **isomorphism of principal bundles** is a \( G{\hbox{-}} \)equivariant map \( P \xrightarrow{f} Q \) commuting over \( B \):

```{=tex}
\begin{tikzcd}
    P && Q \\
    \\
    & B
    \arrow["\pi", from=1-1, to=3-2]
    \arrow["{\pi'}"', from=1-3, to=3-2]
    \arrow["f"', from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJQIl0sWzIsMCwiUSJdLFsxLDIsIkIiXSxbMCwyLCJcXHBpIl0sWzEsMiwiXFxwaSciLDJdLFswLDEsImYiLDJdXQ==)

Here *equivariant* means commuting with the \( G{\hbox{-}} \)action, in the following precise sense: let \( (U, \varphi) \) and \( (V, \psi) \) be charts for \( \pi, \pi' \), then consider the composition
\[
F: \qty{ (U \cap V) \times F \xrightarrow{\phi^{-1}} \pi^{-1}(U \cap V) \xrightarrow{f} (\pi')^{-1}(U \cap V) \xrightarrow{\psi} (U \cap V) \times F}
.\]
Note that this fixes every point \( b\in U \cap V \), so we can regard \( F: U \cap V \to {\operatorname{Homeo}}(F) \), using that \( f \) commutes with the projection maps:
\[
(b, ?) \mapsto \pi^{-1}(b) \mapsto (f\circ \pi^{-1})(b) = (\pi')^{-1}b \mapsto b
.\]
We say \( f \) is a \( G{\hbox{-}} \)isomorphism iff \( F \) sends everything to \( G \).
:::

## Sending Fiber Bundles to Principal \( G{\hbox{-}} \)bundles {#sending-fiber-bundles-to-principal-ghbox-bundles}

::: {.remark}
Given a principal \( G{\hbox{-}} \)bundle \( \pi:P\to B \) and a \( F\in {\mathsf{Top}} \) with a left \( G{\hbox{-}} \)action. Then define
\[
P { \underset{\scriptscriptstyle {G} }{\times} } F / (pg, f)\sim (p, gf)
\]
as a fiber bundle over \( B \) using \( \pi \) as the projection. Note that this looks like a tensor product, and this works in general for any space \( P \) with a right \( G{\hbox{-}} \)action and \( F \) with a left \( G{\hbox{-}} \)action. This will be a fiber bundle with fiber \( F \) and structure group \( G \leq {\operatorname{Homeo}}(F) \).

Locally there is a homeomorphism:
\[
(U\times G) \overset{\scriptscriptstyle {G} }{\times} F &\xrightarrow{\sim} U\times F \\
(p, g, f) &\mapsto (p, gf)
.\]
This is well defined since \( (p, gh, f) \) and \( (p, g, hf) \) map to \( (p, ghf) \). The inverse is \( (p, f) \mapsto (p, 1, gf) \).
:::

::: {.exercise title="?"}
Check that this is a fiber bundle with \( G{\hbox{-}} \)structure.
:::

# Tuesday, August 31

::: {.remark}
We want to show the equivalence between (isomorphism classes) of fiber bundles with \( G \) structures with fiber \( F \) and principal \( G{\hbox{-}} \)bundles. Recall that \( \mathop{\mathrm{Prin}}{\mathsf{Bun}}_{/ {G}}  \) are fiber bundles \( P \xrightarrow{\pi} B \) with a right fiberwise \( G{\hbox{-}} \)action which is free and transitive on each fiber.

To send fiber bundles to principal bundles, we used a *mixing* construction. Since \( G\curvearrowright F \), we get an identification \( G \subseteq {\operatorname{Homeo}}(F, F) \). We constructed
\[
P { \underset{\scriptscriptstyle {G} }{\times} } F \coloneqq(P\times F)/(pg, f)\sim (p, gf)
.\]
A lemma was that \( P{ \underset{\scriptscriptstyle {G} }{\times} } F \to B \) is a fiber bundle with fiber \( F \) and projection \( \pi(p, f) \coloneqq\pi(p) \).

Today we'll talk about the reverse direction. Note the composition of sending \( E \) to \( \mathop{\mathrm{Prin}}{\mathsf{Bun}}_{/ {G}}  \) and then mixing recovers \( E \) when \( E \) is a vector bundle, but not generally.
\[
\left\{{\substack{
  \text{Fiber bundles with }G{\hbox{-}}\text{structures} \\
  \text{ and fiber }F
}}\right\}
\adjunction{\text{Clutching}}{\text{Mixing}}{}{}
\left\{{\substack{
  \text{Principal $G{\hbox{-}}$bundles}
}}\right\}
\]
:::

::: {.example title="?"}
For \( E \xrightarrow{\pi} B \) a real vector bundle, we sent it to \( \mathop{\mathrm{Frame}}(E) \), which is a principal \( \operatorname{GL}_n({\mathbb{R}}){\hbox{-}} \)action Using a left action \( \operatorname{GL}_n \curvearrowright{\mathbb{R}}^n \), we can form \( \mathop{\mathrm{Frame}}(E) { \underset{\scriptscriptstyle {\operatorname{GL}_n} }{\times} } {\mathbb{R}}^n \), a fiber bundle with a \( G \coloneqq\operatorname{GL}_n \) structure, i.e. exactly a vector bundle.

::: {.exercise title="?"}
Show that there is a homeomorphism
\[
\mathop{\mathrm{Frame}}(E) { \underset{\scriptscriptstyle {\operatorname{GL}_n} }{\times} } {\mathbb{R}}^n \xrightarrow{\sim}E
.\]
:::

For the reverse map, take a map \( f \) defined by \( (\mathbf{e}_1, \cdots, \mathbf{e}_n) \in \pi^{-1}(b) \subset \mathop{\mathrm{Frame}}(E) \) and \( {\left[ {{ {b}_1, {b}_2, \cdots, {b}_{n}}} \right]}^t \in {\mathbb{R}}^n \) to \( \sum_{i=1}^n b_i \mathbf{e}_i \). For this to be well-defined, one needs to show the following:
\[
f(( \mathbf{e}_1, \cdots, \mathbf{e}_n) A, \mathbf{b}) = f( (\mathbf{e}_1, \cdots, \mathbf{e}_n), A\mathbf{b}) && \forall A\in \operatorname{GL}_n({\mathbb{R}})
.\]
The left hand side is
\[
b_1 (a_{1, 1} \mathbf{e}_1 + \cdots + a_{n, 1} \mathbf{e}_n ) + \cdots + b_n(a_{1, n} \mathbf{e}_1 + \cdots + a_{n, n} \mathbf{e}_n)
= \sum_{i=1}^n b_i \qty{ \sum_{j=1}^n a_{j, i} \mathbf{e}_j }
.\]

The right-hand side is
\[
(a_{1, 1}b_1 + \cdots + a_{1, n}b_n)\mathbf{e}_1 + \cdots + (a_{n, 1} b_1 + \cdots + a_{n,n} b_n)\mathbf{e}_n
= \sum_{i=1}^n \qty{\sum_{j=1}^n a_{i, j} b_i } \mathbf{e}_i
,\]
and one can check that these sums match term by term.
:::

::: {.remark}
Note that if we choose a basis for the fibers, we can set \( A' \coloneqq{\left[ {\mathbf{e}_1, \cdots, \mathbf{e}_n} \right]}^t \) to be the matrix with columns \( \mathbf{e}_i \), the map \( f \) is given by \( f(A', \mathbf{b}) \coloneqq A'\mathbf{b} \), and we're showing that \( (A'A)\mathbf{b} = A'(A\mathbf{b}) \). However, this involves choosing an isomorphism between the abstract fibers and \( {\mathbb{R}}^n \).
:::

::: {.remark}
What are local charts for a principal bundle? For \( P{ \underset{\scriptscriptstyle {G} }{\times} } F \), pick charts \( (U, \phi) \) for \( P \xrightarrow{\pi} B \):
\[
\phi: \pi^{-1}(U) &\to U \times G \\
x & \mapsto (\pi(x), \gamma(x))
.\]
Then a local chart for the principal bundle is of the form
\[
\pi^{-1}(U) { \underset{\scriptscriptstyle {G} }{\times} } F &\xrightarrow{\tilde \phi} U \times F \\
(x, f) &\mapsto ( \pi(x), \gamma(x) f)
.\]
We also have
\[
(U \times G){ \underset{\scriptscriptstyle {G} }{\times} } F &\to U \times F \\
( (x, g), f) &\mapsto (x, gf)
.\]
One can invert \( \tilde \phi \) using \( (a, f) \mapsto (\phi^{-1}(a, 1), f) \). This yields transition functions: writing
\[
\phi_V: \pi^{-1}(V) &\to V \times G \\ 
x &\mapsto (\pi(x), \psi(x) )
,\]
then
\[
\phi_{VU} = \phi_V \circ \phi_U^{-1}: 
(a, f) & \\
&\xrightarrow{\phi_U^{-1}} ( \phi^{-1}_U(a, 1), \,\, f) \\
&\xrightarrow{\phi_V} (\pi \phi_U^{-1}(a, 1), \,\, \psi( \phi_U^{-1}(a, 1))f ) \\
&= (a,\,\, \psi(\phi_U^{-1}(a, 1)) f)
.\]
This says that \( (a, 1) \mapsto \psi( \phi^{-1}_U(a, 1)) \).
:::

::: {.remark}
In general, for a bundle \( E \xrightarrow{\pi} B \), taking local trivializations \( \phi_U, \phi_V \), we get \( \phi_{VU}: (U \cap V ) \times F {\circlearrowleft} \), or currying an argument, \( \phi_{VU}: U \cap V \to {\operatorname{Homeo}}(F, F) \). If the bundle satisfies the cocycle condition \( \phi_{UW} = \phi_{VW} \circ \phi_{UV} \). Given a covering \( \left\{{U_i}\right\}_{i\in I}\rightrightarrows B \), we get \( \phi_{ij}: U_i \cap U_j \to G \) and a topological space \( F \) with \( G \subseteq {\operatorname{Homeo}}(F, F) \) satisfying the cocycle condition \( \phi_{ik} = \phi_{jk} \circ \phi_{ij} \), then we can build a fiber bundle with fiber \( F \) and structure group \( G \) by setting \( E = {\textstyle\coprod}_{i\in I} (U_i \times F)/\sim \) We then set for \( b\in U_i \cap U_j \) the equivalence
\[
(U_i \times F) \ni (b, f)\sim (b, \phi_{ij}(b) f) \in (U_j \times F)
.\]
This is an equivalence relation precisely when the cocycle condition holds. This is referred to as **clutching data**.
:::

::: {.example title="The Mobius band is clutch"}
Let \( {\mathbb{Z}}/2\curvearrowright{\mathbb{R}} \) by \( t\mapsto -t \) with \( U, V \) defined as follows:

```{=tex}
\begin{tikzpicture}
\fontsize{41pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/CharacteristicClasses/sections/figures}{2021-08-31_13-53.pdf_tex} };
\end{tikzpicture}
```
Labeling the intersections as 1, 2, we set
\[
\phi_{VU}: (U \cap V) = (U \cap V)_1 {\textstyle\coprod}(U \cap V)_2 &\to {\mathbb{Z}}/2 && \subseteq {\operatorname{Homeo}}({\mathbb{R}}) \\
x {\textstyle\coprod}y &\mapsto x {\textstyle\coprod}-y
.\]
This yields the open Mobius band.
:::

::: {.question}
Actually, several questions. Assume \( F \) is a fixed fiber common to all of the following constructions, since bundles with non-homeomorphic fibers can't be isomorphic.

1.  Given clutching data \( \left\{{\phi_{ij}}\right\} \), when is the resulting fiber bundle trivial?
2.  Given two sets of clutching data \( \left\{{\phi_{ij}}\right\} \) and \( \left\{{\psi_{ij}}\right\} \) with the same open cover \( \left\{{U_i}\right\} \rightrightarrows X \), when are the corresponding bundles \( G{\hbox{-}} \)isomorphic?
3.  Given two sets of clutching data \( \left\{{\phi_{ij}}\right\} \) and \( \left\{{\psi_{ij}}\right\} \) with the *different* open cover \( \left\{{U_i}\right\} \rightrightarrows X \) and \( \left\{{V_i}\right\} \rightrightarrows X \), when are the corresponding bundles \( G{\hbox{-}} \)isomorphic?
:::

::: {.lemma title="?"}
The fiber bundle obtained from \( \phi_{ij} \) is trivial iff there exists a map \( \gamma_i: U_i \to G \) such that \( \phi_{ij} = \gamma_i \gamma_j^{-1} \).
:::

::: {.proof title="?"}
The trivial bundle is \( B\times F\to B \), so if we have \( E\to B \), we can take a map
\[
U_i \times F &\to U_i \times F \\
(b, f) &\mapsto (b, \gamma_i(b) f)
.\]
Use that \( B\times F \) is a trivial bundle, so it is its own trivialization.

> To be continued next time.
:::

# Thursday, September 02

::: {.remark}
Recall that we have a correspondence
\[
\left\{{\substack{
  \text{Vector bundles }E
}}\right\}
&\adjunction{\text{clutching}}{\text{mixing}}{}{}
\left\{{\substack{
  \text{Principal $\operatorname{GL}_n{\hbox{-}}$bundles $\mathop{\mathrm{Frame}}(E)$}
}}\right\}
\]
We saw that \( E \cong \mathop{\mathrm{Frame}}(E) { \underset{\scriptscriptstyle {\operatorname{GL}_n({\mathbb{R}})} }{\times} } {\mathbb{R}}^n \). If we take \( \mathop{\mathrm{Frame}}(E) \), mix, and apply the clutching construction, is the result bundle-isomorphic to the frame bundle?
:::

::: {.remark}
Recall the clutching construction: we take a cover \( \left\{{U_i}\right\}_{i\in I} \) and \( \phi_{ij}: U_i \cap U_j \to G \) satisfying the cocycle condition \( \phi_{ij}\phi_{jk} = \phi_{ik} \), then \( G \subseteq {\operatorname{Homeo}}(F, F) \) and we construct a fiber bundle \( \displaystyle\bigcup_{i\in I} U_i \times F / \sim \) where for \( b\in (U_i \cap U_j ) \) and
\[
(b, f) \in (U_i \cap U_j )\times F \subseteq U_i\times F
,\]
we send this to
\[
(b, \phi_{ji}(b) f ) \in (U_i \cap U_j)\times F \subseteq U_j \times F
.\]
This will be a fiber bundle with fiber \( F \) and structure group \( G \). Moreover, if \( F=G \), this will be a principal \( G{\hbox{-}} \)bundle using right-multiplication.
:::

::: {.question}
How can we tell when two fiber bundles constructed via clutching are isomorphic?
:::

::: {.lemma title="when clutched bundles are trivial"}
The bundle formed by the clutching data \( \left\{{\phi_{ij}}\right\} \) is trivial (so isomorphic to the trivial bundle) iff there exist \( \gamma_i: U_i\to G \) such that \( \phi_{ji} = \gamma_j \circ \gamma_i^{-1} \).
:::

::: {.remark}
For principal bundles, these \( \gamma_i \) will give sections assembling to a global section obtained from clutching data:

```{=tex}
\begin{tikzcd}
    P && {U_i \times G} \\
    \\
    B && {U_i}
    \arrow[from=1-1, to=3-1]
    \arrow[from=1-3, to=3-3]
    \arrow["{s(b) = (b, \gamma_i(b))}"', curve={height=24pt}, from=3-3, to=1-3]
    \arrow["{\psi_B}"', from=3-1, to=3-3]
    \arrow["\psi"', from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMiwwLCJVX2kgXFx0aW1lcyBHIl0sWzIsMiwiVV9pIl0sWzAsMiwiQiJdLFswLDAsIlAiXSxbMywyXSxbMCwxXSxbMSwwLCJzKGIpID0gKGIsIFxcZ2FtbWFfaShiKSkiLDIseyJjdXJ2ZSI6NH1dLFsyLDEsIlxccHNpX0IiLDJdLFszLDAsIlxccHNpIiwyXV0=)

The map on \( U_i \to \displaystyle\bigcup_i U_i \times F \) will be \( (b, \gamma_i(b)) \), and we can use that
\[
(b, \gamma_i(b)) \sim (b, \phi_{ji}(b)\gamma_i(b) ) \sim (b, \gamma_j(b))
,\]
so these agree on overlaps.
:::

::: {.lemma title="?"}
If a principal bundle \( P\to B \) has a global section, then \( P \) is trivial, so \( P\cong B\times G \) as bundles. The idea:

```{=tex}
\begin{tikzcd}
    {(b, s(b)g)} &&&& {(b, g)} \\
    P &&&& {B\times G} \\
    \\
    && B \\
    && b
    \arrow["{p_1}"', from=2-5, to=4-3]
    \arrow["\pi", from=2-1, to=4-3]
    \arrow[dashed, from=2-1, to=2-5]
    \arrow["s", curve={height=-24pt}, from=4-3, to=2-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwxLCJQIl0sWzIsMywiQiJdLFs0LDEsIkJcXHRpbWVzIEciXSxbMiw0LCJiIl0sWzAsMCwiKGIsIHMoYilnKSJdLFs0LDAsIihiLCBnKSJdLFsyLDEsInBfMSIsMl0sWzAsMSwiXFxwaSJdLFswLDIsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsxLDAsInMiLDAseyJjdXJ2ZSI6LTR9XV0=)
:::

::: {.proof title="of lemma about when clutched bundles are trivial"}
\( \implies \):

If \( E \) is trivial, we have an isomorphism

```{=tex}
\begin{tikzcd}
E 
  \ar[rd, "f"]
  \ar[rr, "\pi"] 
& 
& 
P\times G
  \ar[ld, "p_1"] 
\\
& 
B 
& 
\end{tikzcd}
```
We have a \( G{\hbox{-}} \)isomorphism \( E_1 \xrightarrow{f} E_2 \), and so a composition

```{=tex}
\begin{tikzcd}
    {(U\cap V) \times F} && {\pi^{-1}(U \cap V)} && {\pi^{-1}(U \cap V)} && {(U\cap V) \times F}
    \arrow["{\phi_U}", from=1-3, to=1-1]
    \arrow["f"', from=1-3, to=1-5]
    \arrow["{\phi_V}"', from=1-5, to=1-7]
    \arrow["F", curve={height=-30pt}, from=1-1, to=1-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCIoVVxcaW50ZXJzZWN0IFYpIFxcdGltZXMgRiJdLFsyLDAsIlxccGlcXGludihVIFxcaW50ZXJzZWN0IFYpIl0sWzQsMCwiXFxwaVxcaW52KFUgXFxpbnRlcnNlY3QgVikiXSxbNiwwLCIoVVxcaW50ZXJzZWN0IFYpIFxcdGltZXMgRiJdLFsxLDAsIlxccGhpX1UiXSxbMSwyLCJmIiwyXSxbMiwzLCJcXHBoaV9WIiwyXSxbMCwzLCJGIiwwLHsiY3VydmUiOi01fV1d)

Here we've used that \( f \) commutes with the projection maps. We want to show \( \operatorname{im}(F) \subseteq G \). We have a composite

```{=tex}
\begin{tikzcd}
    {U\times F} && {\pi^{-1}(U_i)} && {U\times F}
    \arrow["{\phi_i}", from=1-3, to=1-1]
    \arrow["f"', from=1-3, to=1-5]
    \arrow["{\gamma_i = \phi_i^{-1}\circ f: U\to G}", curve={height=-30pt}, from=1-1, to=1-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJVXFx0aW1lcyBGIl0sWzQsMCwiVVxcdGltZXMgRiJdLFsyLDAsIlxccGlcXGludihVX2kpIl0sWzIsMCwiXFxwaGlfaSJdLFsyLDEsImYiLDJdLFswLDEsIlxcZ2FtbWFfaSA9IFxccGhpX2lcXGludiBcXGNpcmMgZjogVVxcdG8gRyIsMCx7ImN1cnZlIjotNX1dXQ==)

We can fill this in to a commutative diagram:

```{=tex}
\begin{tikzcd}
    {(U_i\cap U_j)\times F} && {\phi^{-1}(U_i \cap U_j)} && {(U_i\cap U_j)\times F} \\
    \\
    {\phi^{-1}(U_i \cap U_j)} && {\phi^{-1}(U_i \cap U_j)} && {(U_i\cap U_j)\times F}
    \arrow["f", from=1-3, to=1-5]
    \arrow["{\phi_i}"', from=1-3, to=1-1]
    \arrow["{\phi_j}"', from=3-3, to=3-1]
    \arrow["f", from=3-3, to=3-5]
    \arrow[Rightarrow, no head, from=1-5, to=3-5]
    \arrow[Rightarrow, no head, from=1-3, to=3-3]
    \arrow["{\gamma_i}", color={rgb,255:red,92;green,92;blue,214}, curve={height=-30pt}, from=1-1, to=1-5]
    \arrow["{\gamma_j}"', color={rgb,255:red,92;green,92;blue,214}, curve={height=30pt}, from=3-1, to=3-5]
    \arrow["{\therefore \phi_{ji}}", color={rgb,255:red,92;green,92;blue,214}, from=1-1, to=3-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCIoVV9pXFxpbnRlcnNlY3QgVV9qKVxcdGltZXMgRiJdLFs0LDAsIihVX2lcXGludGVyc2VjdCBVX2opXFx0aW1lcyBGIl0sWzIsMCwiXFxwaGlcXGludihVX2kgXFxpbnRlcnNlY3QgVV9qKSJdLFsyLDIsIlxccGhpXFxpbnYoVV9pIFxcaW50ZXJzZWN0IFVfaikiXSxbMCwyLCJcXHBoaVxcaW52KFVfaSBcXGludGVyc2VjdCBVX2opIl0sWzQsMiwiKFVfaVxcaW50ZXJzZWN0IFVfailcXHRpbWVzIEYiXSxbMiwxLCJmIl0sWzIsMCwiXFxwaGlfaSIsMl0sWzMsNCwiXFxwaGlfaiIsMl0sWzMsNSwiZiJdLFsxLDUsIiIsMSx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsMywiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMCwxLCJcXGdhbW1hX2kiLDAseyJjdXJ2ZSI6LTUsImNvbG91ciI6WzI0MCw2MCw2MF19LFsyNDAsNjAsNjAsMV1dLFs0LDUsIlxcZ2FtbWFfaiIsMix7ImN1cnZlIjo1LCJjb2xvdXIiOlsyNDAsNjAsNjBdfSxbMjQwLDYwLDYwLDFdXSxbMCw0LCJcXHRoZXJlZm9yZSBcXHBoaV97aml9IiwwLHsiY29sb3VyIjpbMjQwLDYwLDYwXX0sWzI0MCw2MCw2MCwxXV1d)

The converse direction proceeds similarly!
:::

::: {.lemma title="?"}
A \( G{\hbox{-}} \)isomorphism between the bundles \( E_1, E_2 \) obtained from clutching data \( \left\{{\phi_{ij}}\right\} \) and \( \left\{{\psi_{ij}}\right\} \) respectively with the same cover \( \left\{{U_i}\right\}_{i\in I} \) give maps \( \gamma_i: U_i\to G \) such that
\[
\gamma_j \phi_{ji} \gamma_i^{-1}= \psi_{ji}
.\]
:::

::: {.proof title="?"}
We can form the composite

```{=tex}
\begin{tikzcd}
    {U_i\times F} && {\pi_1^{-1}(U_i)} && {\pi_2^{-1}(U_i)} && {U_i \times F}
    \arrow["{\phi_i}", from=1-3, to=1-1]
    \arrow["f"', from=1-3, to=1-5]
    \arrow["{\psi_j}"', from=1-5, to=1-7]
    \arrow["{\gamma_i: U_i\to G}", curve={height=30pt}, from=1-1, to=1-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJVX2lcXHRpbWVzIEYiXSxbMiwwLCJcXHBpXzFcXGludihVX2kpIl0sWzQsMCwiXFxwaV8yXFxpbnYoVV9pKSJdLFs2LDAsIlVfaSBcXHRpbWVzIEYiXSxbMSwwLCJcXHBoaV9pIl0sWzEsMiwiZiIsMl0sWzIsMywiXFxwc2lfaiIsMl0sWzAsMywiXFxnYW1tYV9pOiBVX2lcXHRvIEciLDAseyJjdXJ2ZSI6NX1dXQ==)

And then assemble a commuting diagram:

```{=tex}
\begin{tikzcd}
    {(U_i \cap U_j)\times F} && {\pi_1^{-1}(U_i \cap U_j)} && {\pi_2^{-1}(U_i \cap U_j)} && {(U_i \cap U_j)\times F} \\
    \\
    {(U_i \cap U_j)\times F} && {\pi_1^{-1}(U_i \cap U_j)} && {\pi_2^{-1}(U_i \cap U_j)} && {\pi_2^{-1}(U_i \cap U_j)}
    \arrow["{\phi_i}", from=1-3, to=1-1]
    \arrow["{\psi_j}", from=1-5, to=1-7]
    \arrow["f", from=1-3, to=1-5]
    \arrow["{\gamma_i}", curve={height=-30pt}, no head, from=1-1, to=1-7]
    \arrow["{\psi_{ji}}", from=1-7, to=3-7]
    \arrow["{\psi_j}"', from=3-5, to=3-7]
    \arrow[Rightarrow, no head, from=1-5, to=3-5]
    \arrow["f"', from=3-3, to=3-5]
    \arrow[Rightarrow, no head, from=1-3, to=3-3]
    \arrow["{\phi_i}"', from=3-3, to=3-1]
    \arrow["{\phi_{ji}}"', from=1-1, to=3-1]
    \arrow["{\gamma_j}"', curve={height=30pt}, from=3-1, to=3-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMCwwLCIoVV9pIFxcaW50ZXJzZWN0IFVfailcXHRpbWVzIEYiXSxbMiwwLCJcXHBpXzFcXGludihVX2kgXFxpbnRlcnNlY3QgVV9qKSJdLFs0LDAsIlxccGlfMlxcaW52KFVfaSBcXGludGVyc2VjdCBVX2opIl0sWzYsMCwiKFVfaSBcXGludGVyc2VjdCBVX2opXFx0aW1lcyBGIl0sWzQsMiwiXFxwaV8yXFxpbnYoVV9pIFxcaW50ZXJzZWN0IFVfaikiXSxbNiwyLCJcXHBpXzJcXGludihVX2kgXFxpbnRlcnNlY3QgVV9qKSJdLFsyLDIsIlxccGlfMVxcaW52KFVfaSBcXGludGVyc2VjdCBVX2opIl0sWzAsMiwiKFVfaSBcXGludGVyc2VjdCBVX2opXFx0aW1lcyBGIl0sWzEsMCwiXFxwaGlfaSJdLFsyLDMsIlxccHNpX2oiXSxbMSwyLCJmIl0sWzAsMywiXFxnYW1tYV9pIiwwLHsiY3VydmUiOi01LCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsNSwiXFxwc2lfe2ppfSJdLFs0LDUsIlxccHNpX2oiLDJdLFsyLDQsIiIsMix7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsNCwiZiIsMl0sWzEsNiwiIiwyLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNiw3LCJcXHBoaV9pIiwyXSxbMCw3LCJcXHBoaV97aml9IiwyXSxbNyw1LCJcXGdhbW1hX2oiLDIseyJjdXJ2ZSI6NX1dXQ==)
:::

## Nonabelian Čech Cohomology

::: {.definition title="Čech complex"}
Let \( {\mathcal{U}}\coloneqq\left\{{U_i}\right\}_{i\in I}\rightrightarrows B \) an open cover, and define
\[
{\check{C}}^0({\mathcal{U}}; G) \coloneqq\left\{{ \left\{{\gamma_i: U_i\to G}\right\}_{i\in I} }\right\}
,\]
which is a group under pointwise multiplication. Define
\[
{\check{C}}^2({\mathcal{U}}; G) &\coloneqq\left\{{ \left\{{\phi_{ij}: U_i \cap U_j \to G}\right\}_{i, j\in I} }\right\}\\
{\check{C}}^3({\mathcal{U}}; G) &\coloneqq\left\{{ \left\{{\phi_{ijk}: U_i \cap U_j \cap U_k \to G}\right\}_{i,j,k \in I} }\right\}
,\]
and boundary maps
\[
\delta^{0}: {\check{C}}^0({\mathcal{U}}; G) &\to {\check{C}}^1({\mathcal{U}}; G)\\
\left\{{\gamma_i: U_i\to G}\right\} &\mapsto \left\{{\phi_{ji} \coloneqq\gamma_j\gamma_i^{-1}: U_i \cap U_j \to G }\right\}
,\]

\[
\delta^{1}: {\check{C}}^1({\mathcal{U}}; G) &\to {\check{C}}^2({\mathcal{U}}; G)\\
\left\{{\phi_{ij}: U_i \cap U_j \to G}\right\} &\mapsto \left\{{\eta{ijk} \coloneqq\phi_{ij} \phi_{jk} \phi_{ik}^{-1}: U_i \cap U_j \cap U_k \to G }\right\}
.\]
:::

::: {.remark}
One can check that \( \delta^1 \circ \delta^0 = 0 \) is trivial. And 1-cocycle will yield a fiber bundle.
:::

::: {.lemma title="1"}
A bundle is trivial iff it is a 1-coboundary, where we take \( Z^1({\mathcal{U}}; G) \coloneqq\ker \delta^1 \), \( B^1({\mathcal{U}}; G) \coloneqq\operatorname{im}\delta^0 \).
:::

::: {.warnings}
We'd like to define homology as \( Z/B \), but since these aren't abelian groups, the coboundaries \( B \) may not be normal in \( Z \) and the quotient may not yield a group.
:::

::: {.definition title="First Čech cohomology"}
There is an action of \( {\check{C}}^0({\mathcal{U}}; G)\curvearrowright{\check{C}}^1({\mathcal{U}}; G) \) given by taking \( \gamma \coloneqq\left\{{\gamma_i}\right\}_{i\in I} \) and setting \( (\gamma \phi)_{ij} = \gamma_i \phi_{ij} \gamma_j^{-1} \), which descends to an action on \( Z^1 \). We can take the quotient by this action to define
\[
{\check{H}}^1({\mathcal{U}}; G) \coloneqq Z^1({\mathcal{U}}; G) / \sim
.\]
:::

::: {.lemma title="2"}
Two bundles are isomorphic iff they yield the same element in \( {\check{H}}^1({\mathcal{U}}; G) \).
:::

::: {.remark}
This works when bundles have the same open cover, and if not, we can take a common refinement.
:::

# Tuesday, September 07

::: {.remark}
Recall that given a \( B\in {\mathsf{Top}} \) and \( {\mathcal{U}}\rightrightarrows B \), we defined \( {\check{H}}_1({\mathcal{U}}; G) \) which classified isomorphism classes of fiber bundles \( E \xrightarrow{\pi} B \) with fiber \( F \), \( G \subseteq {\operatorname{Homeo}}(F) \), and structure group \( G \), given by clutching data using \( {\mathcal{U}} \). The cochains were given by the following:

\[
{\check{C}}^0({\mathcal{U}}; G) &= \left\{{\left\{{ \gamma_i: U_i \to G}\right\}_{i\in I}}\right\}\\
{\check{C}}^1({\mathcal{U}}; G) &= \left\{{\left\{{ \phi_{ij}: U_i \cap U_j \to G }\right\}_{i, j \in I}}\right\}\\
{\check{C}}^2({\mathcal{U}}; G) &= \left\{{\left\{{ \eta_{ijk}: U_i \cap U_j \cap U_k \to G }\right\}_{i,j,k\in I}}\right\}
\]
with boundary maps \( \delta_i: {\check{C}}^{i-1} \to {\check{C}}^i \):
\[
(\delta_1 \gamma)_{ij} &= \gamma_i \gamma_j^{-1}\\
(\delta_2 \phi)_{ijk} &= \phi_{ij} \phi_{jk} \phi_{ik}^{-1}
.\]
Note that

-   \( \delta_2 \circ \delta_1 = 0 \)
-   \( \ker \delta_2 = Z^1({\mathcal{U}}; G) \) yields clutching data, i.e. a fiber bundle with fiber \( F \),
-   \( \operatorname{im}\delta_1 \) yields trivial bundles,
-   \( {\check{H}}^1({\mathcal{U}}; G) \coloneqq Z^1({\mathcal{U}}; G) / \operatorname{im}({\check{C}}^0({\mathcal{U}}; G) \to Z^1({\mathcal{U}}; G)) \).

We'll see that \( (\gamma \varphi)_{ij} = \gamma_i \varphi_{ij} \gamma_j^{-1} \), and by a lemma this will prove the above claim about classifying isomorphism classes.
:::

::: {.definition title="Refinement of covers"}
We say a cover \( {\mathcal{V}}\coloneqq\left\{{V_j}\right\}_{j\in J} \) is a **refinement** of \( {\mathcal{U}}\coloneqq\left\{{U_i}\right\}_{i\in I} \) iff there exists a function \( f:J\to I \) between the index sets where \( V_j \subseteq U_{f(j)} \) for all \( j \).

> DZG: I'll write \( {\mathcal{V}}\leq {\mathcal{U}} \) if \( {\mathcal{V}} \) is a refinement of \( {\mathcal{U}} \).
:::

::: {.remark}
Since any two covers have a common refinement, we'll assume \( {\mathcal{V}}\leq {\mathcal{U}} \) is always a refinement. We can then restrict clutching data from \( {\mathcal{U}} \) to \( {\mathcal{V}} \): given \( \left\{{\phi_{ij}}\right\}_{i,j\in I} \), we can set \( \psi_{ij} \coloneqq{ \left.{{ \phi_{f(i), f(j)}}} \right|_{{V_i \cap V_j}} } \), noting that if \( V_j \subseteq U_{f(j)} \) and \( V_i \subseteq U_{f(i)} \) then \( V_i \cap V_j \subseteq U_{f(i)} \cap U_{f(j)} \). These yield maps \( \psi_{ij}: V_i \cap V_j \to G \) satisfying the cocycle condition, so \( \psi_{ij} \in Z^1({\mathcal{V}}; G) \). This means that we have map \( Z^1({\mathcal{U}}; G)\to Z^1({\mathcal{V}}; G) \) which respects the actions of \( {\check{C}}^0({\mathcal{U}}; G), {\check{C}}^0({\mathcal{V}}; G) \) respectively. Since the category of covers with morphisms given by refinements come from a preorder, we can take a colimit to define
\[
{\check{H}}^1(B; G) \coloneqq\colim_{{\mathcal{U}}\rightrightarrows B} {\check{H}}^1({\mathcal{U}}; G)
.\]
:::

::: {.lemma title="?"}
There is a bijection
\[
\left\{{\substack{
  \text{Fiber bundles with fiber }F \\
  \text{and structure group }G
}}\right\}_{/ {\sim}} 
&\rightleftharpoons
{\check{H}}^1(B; G)
\]
In particular, these classes are independent of \( F \).
:::

::: {.corollary title="?"}
There is an equivalence of categories
\[
\left\{{\substack{
  \text{Fiber bundles with fiber $F$} \\
  \text{and structure group }G \\
  \text{over }B
}}\right\}_{/ {\sim}} 
&\rightleftharpoons
\mathop{\mathrm{Prin}}{\mathsf{Bun}}(G) _{/ {B}} 
,\]
where the right-hand side are principal \( G{\hbox{-}} \)bundles.
:::

::: {.definition title="$G\\dash$structures"}
Given a map \( G \to {\operatorname{Homeo}}(F) \), a **\( G{\hbox{-}} \)structure** on an \( F{\hbox{-}} \)bundle \( E \xrightarrow{\pi} B \) is the following data: given clutching data \( \phi_{ij} \), lifts of the following form that again satisfy the cocycle condition:

```{=tex}
\begin{tikzcd}
    && G \\
    \\
    {U_i\cap U_j} && {{\operatorname{Homeo}}(F)}
    \arrow["{\phi_{ij}}"', from=3-1, to=3-3]
    \arrow[from=1-3, to=3-3]
    \arrow["{\tilde \phi_{ij}}", dashed, from=3-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwyLCJVX2lcXGludGVyc2VjdCBVX2oiXSxbMiwwLCJHIl0sWzIsMiwiXFxIb21lbyhGKSJdLFswLDIsIlxccGhpX3tpan0iLDJdLFsxLDJdLFswLDEsIlxcdGlsZGUgXFxwaGlfe2lqfSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)
:::

::: {.remark}
Note that we need to impose the cocycle condition, since lifts may not be unique and some choices may not glue correctly!
:::

::: {.example title="$\\Spin_n\\dash$structures"}
Using the known \( {\operatorname{Spin}} \) double covers, we can form the composition
\[
{\operatorname{Spin}}_n({\mathbb{R}}) \xrightarrow{\times 2}  {\operatorname{SO}}_n({\mathbb{R}}) \hookrightarrow{\operatorname{Homeo}}({\mathbb{R}}^n)
.\]
Then a \( {\operatorname{Spin}}_n{\hbox{-}} \)structure on any \( {\mathbb{R}}^n{\hbox{-}} \)bundle is a lift of transition functions from \( {\operatorname{Homeo}}({\mathbb{R}}^n) \) to \( {\operatorname{Spin}}_n \) satisfying the cocycle condition.
:::

::: {.definition title="Fiber products"}
We can fill in a commutative square in the following way:

```{=tex}
\begin{tikzcd}
    \textcolor{rgb,255:red,92;green,92;blue,214}{X{ \underset{\scriptscriptstyle {B} }{\times} }Z} && Z \\
    \\
    X && B
    \arrow["\pi", from=1-3, to=3-3]
    \arrow["f"', from=3-1, to=3-3]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, dashed, from=1-1, to=3-1]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, dashed, from=1-1, to=1-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, color={rgb,255:red,92;green,92;blue,214}, draw=none, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwyLCJYIl0sWzIsMiwiQiJdLFsyLDAsIloiXSxbMCwwLCJYXFxmaWJlcnByb2R7Qn1aIixbMjQwLDYwLDYwLDFdXSxbMiwxLCJcXHBpIl0sWzAsMSwiZiIsMl0sWzMsMCwiIiwyLHsiY29sb3VyIjpbMjQwLDYwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsMiwiIiwwLHsiY29sb3VyIjpbMjQwLDYwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsMSwiIiwxLHsiY29sb3VyIjpbMjQwLDYwLDYwXSwic3R5bGUiOnsibmFtZSI6ImNvcm5lciJ9fV1d)

Here we can construct the fiber product as
\[
X{ \underset{\scriptscriptstyle {B} }{\times} } Z = \left\{{(x, e) {~\mathrel{\Big|}~}\pi(e) = f(x)}\right\}
.\]

It satisfies the following universal property:

```{=tex}
\begin{tikzcd}
    \textcolor{rgb,255:red,214;green,92;blue,92}{W} \\
    \\
    && {X{ \underset{\scriptscriptstyle {B} }{\times} }Z} && Z \\
    \\
    && X && B
    \arrow["\pi", from=3-5, to=5-5]
    \arrow["f"', from=5-3, to=5-5]
    \arrow[from=3-3, to=5-3]
    \arrow[from=3-3, to=3-5]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=3-3, to=5-5]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, from=1-1, to=3-5]
    \arrow[color={rgb,255:red,214;green,92;blue,92}, from=1-1, to=5-3]
    \arrow["{\exists!}", color={rgb,255:red,214;green,92;blue,92}, dashed, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMiw0LCJYIl0sWzQsNCwiQiJdLFs0LDIsIloiXSxbMiwyLCJYXFxmaWJlcnByb2R7Qn1aIl0sWzAsMCwiVyIsWzAsNjAsNjAsMV1dLFsyLDEsIlxccGkiXSxbMCwxLCJmIiwyXSxbMywwXSxbMywyXSxbMywxLCIiLDEseyJzdHlsZSI6eyJuYW1lIjoiY29ybmVyIn19XSxbNCwyLCIiLDAseyJjb2xvdXIiOlswLDYwLDYwXX1dLFs0LDAsIiIsMCx7ImNvbG91ciI6WzAsNjAsNjBdfV0sWzQsMywiXFxleGlzdHMhIiwwLHsiY29sb3VyIjpbMCw2MCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX0sWzAsNjAsNjAsMV1dXQ==)
:::

::: {.lemma title="?"}
If \( \pi: P\to X \) is a principal \( G{\hbox{-}} \)bundle and \( f:Y\to X \) is a continuous map, then the following highlighted portion of the pullback is again a principal \( G{\hbox{-}} \)bundle:

```{=tex}
\begin{tikzcd}
    \textcolor{rgb,255:red,92;green,92;blue,214}{f^* p \coloneqq Y{ \underset{\scriptscriptstyle {X} }{\times} } P} && P \\
    \\
    \textcolor{rgb,255:red,92;green,92;blue,214}{Y} && X
    \arrow["{{\operatorname{pr}}_1}", color={rgb,255:red,92;green,92;blue,214}, from=1-1, to=3-1]
    \arrow["\pi", from=1-3, to=3-3]
    \arrow["f"', from=3-1, to=3-3]
    \arrow["{\exists \tilde f}", dashed, from=1-1, to=1-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJmXiogcCBcXGRhIFlcXGZpYmVycHJvZHtYfSBQIixbMjQwLDYwLDYwLDFdXSxbMCwyLCJZIixbMjQwLDYwLDYwLDFdXSxbMiwyLCJYIl0sWzIsMCwiUCJdLFswLDEsIlxccHJfMSIsMCx7ImNvbG91ciI6WzI0MCw2MCw2MF19LFsyNDAsNjAsNjAsMV1dLFszLDIsIlxccGkiXSxbMSwyLCJmIiwyXSxbMCwzLCJcXGV4aXN0cyBcXHRpbGRlIGYiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCwyLCIiLDAseyJzdHlsZSI6eyJuYW1lIjoiY29ybmVyIn19XV0=)

We in fact obtain \( {\operatorname{pr}}_1^{-1}(y) = \pi^{-1}(f(y))\cong G \), and there will be a right \( G{\hbox{-}} \)action on each fiber. Behold this gnarly diagram:

```{=tex}
\begin{tikzcd}
    {f^{-1}(U)\times G} \\
    {{\operatorname{pr}}_1^{-1}(f^{-1}(U))} & {f^* P} && P & {\pi^{-1}(U)} && {U\times G} \\
    \\
    & Y && X & U \\
    {f^{-1}(U)}
    \arrow["\phi", from=2-5, to=2-7]
    \arrow[dotted, hook', from=2-5, to=2-4]
    \arrow[dotted, hook', from=4-5, to=4-4]
    \arrow["\pi"', from=2-4, to=4-4]
    \arrow["f"', curve={height=30pt}, dotted, maps to, from=5-1, to=4-5]
    \arrow["f"', from=4-2, to=4-4]
    \arrow["{{\operatorname{pr}}_1}"', from=2-7, to=4-5]
    \arrow["\pi"', dotted, from=2-5, to=4-5]
    \arrow[from=2-2, to=2-4]
    \arrow["{{\operatorname{pr}}_1}"', from=2-2, to=4-2]
    \arrow[curve={height=-30pt}, dotted, from=1-1, to=2-7]
    \arrow[dotted, hook, from=1-1, to=2-2]
    \arrow[dotted, hook, from=5-1, to=4-2]
    \arrow["{{\operatorname{pr}}_1}"', dotted, from=2-1, to=5-1]
    \arrow[dotted, hook, from=2-1, to=1-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTAsWzMsMSwiUCJdLFszLDMsIlgiXSxbNCwxLCJcXHBpXFxpbnYoVSkiXSxbNiwxLCJVXFx0aW1lcyBHIl0sWzQsMywiVSJdLFsxLDMsIlkiXSxbMSwxLCJmXiogUCJdLFswLDQsImZcXGludihVKSJdLFswLDAsImZcXGludihVKVxcdGltZXMgRyJdLFswLDEsIlxccHJfMVxcaW52KGZcXGludihVKSkiXSxbMiwzLCJcXHBoaSJdLFsyLDAsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoiYm90dG9tIn0sImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFs0LDEsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoiYm90dG9tIn0sImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFswLDEsIlxccGkiLDJdLFs3LDQsImYiLDIseyJjdXJ2ZSI6NSwic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9LCJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNSwxLCJmIiwyXSxbMyw0LCJcXHByXzEiLDJdLFsyLDQsIlxccGkiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbNiwwXSxbNiw1LCJcXHByXzEiLDJdLFs4LDMsIiIsMix7ImN1cnZlIjotNSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzgsNiwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifSwiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzcsNSwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifSwiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzksNywiXFxwcl8xIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzksOCwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifSwiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV1d)

If \( P\to X \) is trivial, this says the pullback will be trivial and \( U\times G\mapsto f^{-1}(U)\times G \) will be a homeomorphism.
:::

::: {.remark}
So the functor \( X\mapsto \mathop{\mathrm{Prin}}_G(X) \) is contravariant functor.
:::

::: {.theorem title="Bundle homotopy lemma"}
Suppose \( B \) is paracompact and Hausdorff, then there is a principal \( G{\hbox{-}} \)bundle \( P \xrightarrow{\pi} I \times B \). Consider the fiber bundle \( P_0 \coloneqq{ \left.{{P}} \right|_{{\left\{{0}\right\}\times B}} } \to B \), then there is a diagram:

```{=tex}
\begin{tikzcd}
    {P_0} && {{ \left.{{P}} \right|_{{0\times B}} }} \\
    \\
    B && 0\times B
    \arrow["\operatorname{id}", from=1-1, to=1-3]
    \arrow["\pi"', from=1-1, to=3-1]
    \arrow["\operatorname{id}"', from=3-1, to=3-3]
    \arrow[from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJQXzAiXSxbMiwwLCJcXHJve1B9ezBcXHRpbWVzIEJ9Il0sWzAsMiwiQiJdLFsyLDIsIjBcXHRpbWVzQiJdLFswLDEsIlxcaWQiXSxbMCwyLCJcXHBpIiwyXSxbMiwzLCJcXGlkIiwyXSxbMSwzXV0=)

This extends to an isomorphism \( I\times P_0 \to I\times B \) and \( P\to I\times B \):

```{=tex}
\begin{tikzcd}
    & {P_0\times I} && P \\
    & {} \\
    & {B\times I} && I\times B \\
    {P_0} && {{ \left.{{P}} \right|_{{0\times B}} }} \\
    \\
    B && 0\times B
    \arrow["\operatorname{id}", from=4-1, to=4-3]
    \arrow["\pi"', from=4-1, to=6-1]
    \arrow["\operatorname{id}"', from=6-1, to=6-3]
    \arrow[from=4-3, to=6-3]
    \arrow["\cong"', from=1-2, to=1-4]
    \arrow[from=3-2, to=3-4]
    \arrow[from=1-2, to=3-2]
    \arrow["\pi"', from=1-4, to=3-4]
    \arrow[dashed, from=4-1, to=1-2]
    \arrow[dashed, from=6-1, to=3-2]
    \arrow[dashed, from=4-3, to=1-4]
    \arrow[dashed, from=6-3, to=3-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOSxbMCwzLCJQXzAiXSxbMiwzLCJcXHJve1B9ezBcXHRpbWVzIEJ9Il0sWzAsNSwiQiJdLFsyLDUsIjBcXHRpbWVzQiJdLFsxLDFdLFsxLDAsIlBfMFxcdGltZXMgSSJdLFsxLDIsIkJcXHRpbWVzIEkiXSxbMywyLCJJXFx0aW1lc0IiXSxbMywwLCJQIl0sWzAsMSwiXFxpZCJdLFswLDIsIlxccGkiLDJdLFsyLDMsIlxcaWQiLDJdLFsxLDNdLFs1LDgsIlxcY29uZyIsMl0sWzYsN10sWzUsNl0sWzgsNywiXFxwaSIsMl0sWzAsNSwiIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIsNiwiIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzEsOCwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsNywiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d)
:::

::: {.corollary title="?"}
\( P_1 = { \left.{{P}} \right|_{{1\times B}} } \cong P_0 \).
:::

::: {.corollary title="?"}
If \( f_0 \sim f_1: Y\to X \) are homotopic and \( P\to X \), then \( f_0^*P \cong f_1^* P \).
:::

::: {.proof title="?"}
Use the homotopy lifting property to get a map \( h \):

```{=tex}
\begin{tikzcd}
    {h^*P} && P \\
    \\
    {I\times Y} && Y
    \arrow["h", from=3-1, to=3-3]
    \arrow[from=1-1, to=3-1]
    \arrow["\pi"', from=1-3, to=3-3]
    \arrow[from=1-1, to=1-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJoXipQIl0sWzAsMiwiSVxcdGltZXMgWSJdLFsyLDAsIlAiXSxbMiwyLCJZIl0sWzEsMywiaCJdLFswLDFdLFsyLDMsIlxccGkiLDJdLFswLDJdLFswLDMsIiIsMSx7InN0eWxlIjp7Im5hbWUiOiJjb3JuZXIifX1dXQ==)

Then \( { \left.{{h^* P}} \right|_{{0\times Y}} } \simeq{ \left.{{h^*P}} \right|_{{1\times Y}} } \cong f_1^*P \).
:::

# Thursday, September 09

## Corollaries of the homotopy bundle lemma

::: {.remark}
Last time: the bundle homotopy lemma. If \( P\to I\times X \in \mathop{\mathrm{Prin}}{\mathsf{Bun}}(G) \), then there is a bundle isomorphism

```{=tex}
\begin{tikzcd}
    {I\times P_0} &&& P \\
    \\
    {I\times X} &&& {I\times X}
    \arrow[""{name=0, anchor=center, inner sep=0}, from=1-1, to=3-1]
    \arrow[""{name=1, anchor=center, inner sep=0}, from=1-4, to=3-4]
    \arrow["f\cong", shorten <=20pt, shorten >=20pt, Rightarrow, from=0, to=1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJJXFx0aW1lcyBQXzAiXSxbMCwyLCJJXFx0aW1lcyBYIl0sWzMsMCwiUCJdLFszLDIsIklcXHRpbWVzIFgiXSxbMCwxXSxbMiwzXSxbNCw1LCJmXFxjb25nIiwwLHsic2hvcnRlbiI6eyJzb3VyY2UiOjIwLCJ0YXJnZXQiOjIwfX1dXQ==)

where \( { \left.{{f}} \right|_{{0\times P_0}} } \) is the identity.
:::

::: {.corollary title="?"}
If \( P\to I\times X \in \mathop{\mathrm{Prin}}{\mathsf{Bun}}(G) \) then \( P_0 \cong P_1 \) where \( P_i \coloneqq{ \left.{{P}} \right|_{{i\times X}} } \).
:::

::: {.corollary title="?"}
If \( f_0, f_1: Y\to X \) with \( P \xrightarrow{\pi} X \), then \( f_0^* P \cong f_1^* P \) are isomorphic bundles.
:::

::: {.corollary title="?"}
If \( X \) is contractible, then any \( P\in \mathop{\mathrm{Prin}}{\mathsf{Bun}}(G)_{/ {X}}  \) is trivial.
:::

::: {.proof title="?"}
Consider the two maps

```{=tex}
\begin{tikzcd}
    x && {x_0} \\
    X && X \\
    x && x
    \arrow["{f_1}"', shift right=2, curve={height=6pt}, from=2-1, to=2-3]
    \arrow["{f_0}", shift left=3, curve={height=-6pt}, from=2-1, to=2-3]
    \arrow[maps to, from=3-1, to=3-3]
    \arrow[maps to, from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwxLCJYIl0sWzIsMSwiWCJdLFswLDAsIngiXSxbMiwwLCJ4XzAiXSxbMCwyLCJ4Il0sWzIsMiwieCJdLFswLDEsImZfMSIsMix7Im9mZnNldCI6MiwiY3VydmUiOjF9XSxbMCwxLCJmXzAiLDAseyJvZmZzZXQiOi0zLCJjdXJ2ZSI6LTF9XSxbNCw1LCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV0sWzIsMywiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dXQ==)

Then \( f_0 \simeq f_1 \), and conclude by noting that
\[
f_0^*P = X{ \underset{\scriptscriptstyle {x_0} }{\times} } P = X\times \pi^{-1}(x_0) = X\times G
\]
and \( f_1^* P = P \).
:::

## Existence/Uniqueness of Metrics

::: {.definition title="Riemannian metrics"}
A **Riemannian metric** on a vector bundle \( E \xrightarrow{\pi} X \) is a continuous map \( E{ \underset{\scriptscriptstyle {X} }{\times} } E\to {\mathbb{R}} \) which restricts to an inner product on each fiber.
:::

::: {.proposition title="?"}
A Riemannian metric on \( E \) corresponds to a restriction of the structure group from \( \operatorname{GL}_n({\mathbb{R}}) \) to \( {\operatorname{O}}_n({\mathbb{R}}) \).
:::

::: {.proposition title="?"}
Every vector bundle over a paracompact \( X \) has a unique Riemannian metric.
:::

::: {.proof title="?"}
**Existence:** Cover \( X \) by charts and choose a locally finite[^1] refinement \( {\mathcal{U}}= \left\{{U_i}\right\}_{i\in I} \) and pick a partition of unity \( \left\{{\chi_i}\right\}_{i\in I} \) subordinate to \( {\mathcal{U}} \).

Define an inner product \( g_i \) on \( \pi^{-1}(U_i) \) where \( \phi_i: \pi^{-1}(U_i)\to U_i \times {\mathbb{R}}^n \) by pulling back the inner product on \( {\mathbb{R}}^n \), i.e. taking \( e_1\xrightarrow{\phi_i} (p_1, \mathbf{v}_1) \) and \( e_2 \xrightarrow{\phi}(p_2, \mathbf{v}_2) \) and setting
\[
g_i(e_1, e_2) \coloneqq{\left\langle {\mathbf{v}_1},~{\mathbf{v}_2} \right\rangle}_{{\mathbb{R}}^n}
.\]
Then define
\[
g_p({-}, {-}) \coloneqq\sum_i \chi_i(p) g_i({-}, {-})
.\]

**Uniqueness:** Consider two inner products \( g_0({-}, {-}), g_1({-}, {-}) \) on the bundle \( E \xrightarrow{\pi} X \), then define
\[
g_t({-}, {-}) = tg_0({-}, {-})+ (1-t)g_1({-}, {-})
.\]
Then \( I\times E \xrightarrow{\operatorname{id}, \pi} I\times X \) is a bundle, and \( g_t \) is a Riemannian metric on \( I\times E \). Consider its corresponding principal bundle
\[
P\to I\times X \in \mathop{\mathrm{Prin}}{\mathsf{Bun}}({\operatorname{O}}_n({\mathbb{R}}))
\]
These correspond to restricting \( I\times E \) to \( 0, 1 \), yielding \( P_0, P_1 \) with Riemannian metrics \( g_0, g_1 \). But \( P_0 \cong P_1 \) are isomorphic principal bundles, and using the correspondence between bundles with metric and bundles with structure group \( {\operatorname{O}}_n \), this shows the two bundles with metric are isomorphic.
:::

::: {.definition title="Universal $G\\dash$bundles"}
A **universal \( G{\hbox{-}} \)bundle** is a principal \( G{\hbox{-}} \)bundle \( \pi: EG\to {\mathsf{B}}G \) such that \( \pi_i EG = 0 \) for all \( i \) (so \( EG \) is *weakly contractible*).
:::

::: {.example title="?"}
```{=tex}
\envlist
```
-   \( \qty{{\mathbb{R}}\to S^1}\in \mathop{\mathrm{Prin}}{\mathsf{Bun}}({\mathbb{Z}})_{/ {S^1}}  \) since all of the regular covers are principal bundles. Since \( {\mathbb{R}} \) is contractible, this is the universal \( {\mathbb{Z}}{\hbox{-}} \)bundle, so \( S^1 \simeq{\mathsf{B}}{\mathbb{Z}} \).

-   \( \qty{S^\infty \to {\mathbb{RP}}^\infty} \in \mathop{\mathrm{Prin}}{\mathsf{Bun}}(C_2) \) is a universal \( C_2{\hbox{-}} \)bundle, so \( {\mathbb{RP}}^\infty \simeq{\mathsf{B}}C_2 \)

-   \( \qty{S^\infty \to {\mathbb{CP}}^\infty} \) is a universal \( S^1 = U_1 \) bundle, so \( {\mathbb{CP}}^\infty \simeq{\mathsf{B}}U_1 \simeq{\mathsf{B}}S^1 \simeq{\mathsf{B}}{\mathbb{C}}^{\times} \):

    ```{=tex}
    \begin{tikzcd}
      {F_z = \left\{{\lambda z {~\mathrel{\Big|}~}\lambda \neq 0}\right\}} &&& {{\left[ {z_1, \cdots, z_n} \right]}} \\
      {\mathbb{C}}^{\times}&& {{\mathbb{C}}^n} \\
      \\
      && {{\mathbb{CP}}^{n-1}} & {z \coloneqq{\left[ {z_1: \cdots : z_n} \right]}}
      \arrow[from=2-1, to=2-3]
      \arrow[from=2-3, to=4-3]
      \arrow[maps to, from=1-4, to=4-4]
      \arrow[maps to, from=1-1, to=1-4]
    \end{tikzcd}
    ```
    > [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMiwxLCJcXENDXm4iXSxbMiwzLCJcXENQXntuLTF9Il0sWzAsMSwiXFxDQ1xcdW5pdHMiXSxbMywwLCJcXHR2e3pfMSwgXFxjZG90cywgel9ufSJdLFszLDMsInogXFxkYSBcXHR2e3pfMTogXFxjZG90cyA6IHpfbn0iXSxbMCwwLCJGX3ogPSBcXHRze1xcbGFtYmRhIHogXFxzdCBcXGxhbWJkYSBcXG5lcSAwfSJdLFsyLDBdLFswLDFdLFszLDQsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbNSwzLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV1d)
:::

::: {.theorem title="?"}
If \( X\in {\mathsf{CW}}\subseteq {\mathsf{Top}} \) and \( EG \xrightarrow{\pi} {\mathsf{B}}G \in {\mathsf{Bun}}_G \) is universal, then there is a bijection
\[
\mathop{\mathrm{Prin}}{\mathsf{Bun}}(G)_{/ {X}}  &\rightleftharpoons[X, {\mathsf{B}}G] \\
f*EG &\mapsfrom f
.\]
:::

::: {.lemma title="?"}
If \( E \xrightarrow{\pi} X \) is a fiber bundle with fiber \( F \) and \( X \) is weakly contractible then

1.  \( \pi \) admits a section, and
2.  Any two sections are homotopic (through other sections).
:::

::: {.proof title="of lemma, part 1"}
**Step 1:** build a section inductively.

-   Define a section over the 0-skeleton arbitrarily.
-   Inductively, suppose the section is defined on the \( n-1 \) skeleton, so it's defined over every \( n{\hbox{-}} \)cell boundary \( {{\partial}}e^n \).
-   Write \( { \left.{{E}} \right|_{{e_n}} } = e^n\times F \), which is contractible since \( e_n \) is contractible.
-   Then \( s:{{\partial}}e^n = S^{n-1} \to F \) with \( \pi_n(F) = 0 \), so the section extends:

```{=tex}
\begin{tikzcd}
    && {{ \left.{{E}} \right|_{{e^n}} }} && {e^n\times F} \\
    && {} \\
    {{{\partial}}e^n} && {e^n}
    \arrow[from=1-3, to=3-3]
    \arrow["\cong", from=1-3, to=1-5]
    \arrow["{{\operatorname{pr}}_1}", from=1-5, to=3-3]
    \arrow[from=3-1, to=3-3]
    \arrow["s", from=3-1, to=1-3]
    \arrow["{\exists \tilde s}", curve={height=-12pt}, dashed, from=3-3, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMiwwLCJcXHJve0V9e2Vebn0iXSxbNCwwLCJlXm5cXHRpbWVzIEYiXSxbMiwxXSxbMiwyLCJlXm4iXSxbMCwyLCJcXGJkIGVebiJdLFswLDNdLFswLDEsIlxcY29uZyJdLFsxLDMsIlxccHJfMSJdLFs0LDNdLFs0LDAsInMiXSxbMywwLCJcXGV4aXN0cyBcXHRpbGRlIHMiLDAseyJjdXJ2ZSI6LTIsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)

**Step 2:** Build the homotopy between sections inductively cell-by-cell as in part (1).
:::

::: {.proof title="of theorem"}
We want to show that the assignment \( f\mapsto f^* EG \) is bijective.

**Surjectivity**: Note that \( EG \) has a left \( G{\hbox{-}} \)action defined by \( g\cdot e \coloneqq eg^{-1} \). Recall that we can use the mixing construction:

```{=tex}
\begin{tikzcd}
    F && P && EG && {P{ \underset{\scriptscriptstyle {G} }{\times} } EG} \\
    &&& {} & {} & {} \\
    && X &&&& X
    \arrow["\pi", from=1-3, to=3-3]
    \arrow[from=1-7, to=3-7]
    \arrow[from=1-7, to=3-7]
    \arrow[from=1-5, to=1-7]
    \arrow["{\text{mixing}}", squiggly, from=2-4, to=2-6]
    \arrow[from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOSxbMiwwLCJQIl0sWzIsMiwiWCJdLFs2LDAsIlBcXGZpYmVycHJvZHtHfSBFRyJdLFs2LDIsIlgiXSxbNCwwLCJFRyJdLFszLDFdLFs0LDFdLFs1LDFdLFswLDAsIkYiXSxbMCwxLCJcXHBpIl0sWzIsM10sWzIsM10sWzQsMl0sWzUsNywiXFx0ZXh0e21peGluZ30iLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJzcXVpZ2dseSJ9fX1dLFs4LDBdXQ==)

Sections of the mixed bundle biject with \( G{\hbox{-}} \)equivariant maps \( P\to EG \). Writing \( s(x) = [P, e] \sim [Pg, g\cdot e] \coloneqq[Pg, g^{-1}e] \), so given \( p\in \pi^{-1}(x) \) we can send \( p\mapsto e\in EG \) such that \( [p, e]\in s(x) \). This is essentially currying an argument. Conversely, given a \( G{\hbox{-}} \)equivariant map
\[
P\to EG\\
p\mapsto e
,\]
we can define \( s(x) \coloneqq[p, e] \) where \( x = \pi(p) \). This is well-defined: if \( x = \pi(pg) \), then \( s(x) = [pg, eg] = [p, e] \). Now note that \( EG \) is weakly contractible, so \( EG\to P{ \underset{\scriptscriptstyle {G} }{\times} } EG \to X \) has a section \( s: X\to P{ \underset{\scriptscriptstyle {G} }{\times} }EG \) and this we get a \( G{\hbox{-}} \)equivariant map \( P\to EG \) which induces a map \( P/G \xrightarrow{h} EG/G \), where \( P/G = X \) and \( EG/G = {\mathsf{B}}G \).

```{=tex}
\begin{tikzcd}
    P &&&& {h^* EG} && EG \\
    &&&&& {} \\
    &&&& X && {{\mathsf{B}}G}
    \arrow["h", from=3-5, to=3-7]
    \arrow[from=1-7, to=3-7]
    \arrow[from=1-5, to=1-7]
    \arrow[from=1-5, to=3-5]
    \arrow["f", curve={height=-30pt}, from=1-1, to=1-7]
    \arrow["{\exists p \xrightarrow{\sim} (\pi(p), f(p))}", dashed, from=1-1, to=1-5]
    \arrow["\pi"', from=1-1, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbNiwwLCJFRyJdLFs2LDIsIlxcQiBHIl0sWzQsMiwiWCJdLFswLDAsIlAiXSxbNCwwLCJoXiogRUciXSxbNSwxXSxbMiwxLCJoIl0sWzAsMV0sWzQsMF0sWzQsMl0sWzMsMCwiZiIsMCx7ImN1cnZlIjotNX1dLFszLDQsIlxcZXhpc3RzIHAgXFxtYXBzdmlhe1xcc2ltfSAoXFxwaShwKSwgZihwKSkiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMywyLCJcXHBpIiwyXV0=)

::: {.exercise title="?"}
Show that this map is an isomorphism.
:::
:::

# Universal Bundles (Thursday, September 16)

::: {.definition title="Universal $G\\dash$bundles"}
A **universal \( G{\hbox{-}} \)bundle** is a principal \( G{\hbox{-}} \)bundle \( EG \xrightarrow{\pi} {\mathsf{B}}G \) such that \( EG \) is weakly contractible, i.e. \( \pi_*(EG) = 0 \).
:::

::: {.remark}
We looked at a theorem stating the correspondence
\[
\mathop{\mathrm{Prin}}{ {\mathsf{Bun}}\qty{G} }_{/ {X}}  \rightleftharpoons[X, {\mathsf{B}}G]
.\]
:::

::: {.proof title="of surjectivity in theorem, continued"}
We showed surjectivity of the following map:
\[
[X, {\mathsf{B}}G] &\twoheadrightarrow\mathop{\mathrm{Prin}}{ {\mathsf{Bun}}\qty{G} }_{/ {X}}  \\
(f \in [X, {\mathsf{B}}G]) &\mapsto f^* EG
.\]

Given a principal \( G{\hbox{-}} \)bundle \( P \xrightarrow{\pi} B \), the mixing construction used an action \( G\curvearrowright F \) to construct the fiber bundle \( P\overset{\scriptscriptstyle {G} }{\times} F \xrightarrow{\pi} B \). Then the data of an equivariant map \( f: P\to F \), so \( f(pg) = f(p)\cdot g \coloneqq g^{-1}f(p) \) is equivalent to a section \( s: B\to P\overset{\scriptscriptstyle {G} }{\times} F \). Note that fixing the first coordinate \( p \) in \( [p, y] \) also fixes the second coordinate. For \( b\in B \), we can set \( s(b) = [p, y] \sim [pg, g^{-1}y] \) (noting that these are equivalent in the mixed space), and we can define \( f(p) = y \) to get an equivariant map since \( f(pg) = g^{-1}y = g^{-1}f(p) \)

So send \( P \xrightarrow{\pi} X \in \mathop{\mathrm{Prin}}{ {\mathsf{Bun}}\qty{G} }_{/ {X}}  \) to \( P\overset{\scriptscriptstyle {G} }{\times} EG \to X \). We proved that this has a section \( s: X \to P\overset{\scriptscriptstyle {G} }{\times} EG \) and any two sections are homotopic, so from this we extract a \( G{\hbox{-}} \)equivariant map \( f:P\to EG \). Modding out the \( G \) action yields \( h: P/G\to EG/G \). But \( P/G\cong X \) and \( EG/G\cong {\mathsf{B}}G \), so \( h: X\to {\mathsf{B}}G \), and moreover \( h^* EG \cong P \).
:::

::: {.proof title="of injectivity in theorem"}
Suppose \( h_0, h_1\in [X, {\mathsf{B}}G] \), then \( h_0^* EG \xrightarrow{\phi, \cong} h_1^* EG \). We can construct the following section \( s_0 \):

```{=tex}
\begin{tikzcd}
    {(x, y)} && {y \coloneqq f_0([x, y])} \\
    {h_0^* EG} && EG &&& {h_0^* EG \overset{\scriptscriptstyle {G} }{\times} EG} & {[(x, y), y]} \\
    &&& \leadsto \\
    X && {{\mathsf{B}}G} &&& X & x
    \arrow["{f_0}", dashed, from=2-1, to=2-3]
    \arrow[from=2-3, to=4-3]
    \arrow["{h_0}"', from=4-1, to=4-3]
    \arrow[from=2-1, to=4-1]
    \arrow[from=2-6, to=4-6]
    \arrow[maps to, from=1-1, to=1-3]
    \arrow["{s_0}"', curve={height=30pt}, dashed, from=4-6, to=2-6]
    \arrow[maps to, from=4-7, to=2-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTEsWzIsMSwiRUciXSxbMiwzLCJcXEIgRyJdLFswLDMsIlgiXSxbMCwxLCJoXzBeKiBFRyJdLFszLDIsIlxcbGVhZHN0byJdLFs1LDEsImhfMF4qIEVHIFxcbWl4e0d9IEVHIl0sWzUsMywiWCJdLFswLDAsIih4LCB5KSJdLFsyLDAsInkgXFxkYSBmXzAoW3gsIHldKSJdLFs2LDMsIngiXSxbNiwxLCJbKHgsIHkpLCB5XSJdLFszLDAsImZfMCIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFswLDFdLFsyLDEsImhfMCIsMl0sWzMsMl0sWzUsNl0sWzcsOCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dLFs2LDUsInNfMCIsMix7ImN1cnZlIjo1LCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOSwxMCwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dXQ==)

We can build another section \( s_1 \) in the following way: use the isomorphism \( \phi: h_0^* EG \to h_1^* EG \) to construct the composite

```{=tex}
\begin{tikzcd}
    {(x, y)} && {(x, \phi(y))} && {\phi(y)} \\
    \\
    {h_0^* EG} && {h_1^* EG} && EG \\
    \\
    && X && {{\mathsf{B}}G}
    \arrow["{f_1}", from=3-3, to=3-5]
    \arrow["{f_1\circ \phi}", curve={height=-30pt}, from=3-1, to=3-5]
    \arrow["\phi", from=3-1, to=3-3]
    \arrow[from=3-5, to=5-5]
    \arrow[from=3-3, to=5-3]
    \arrow[from=5-3, to=5-5]
    \arrow[from=3-1, to=5-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMCwyLCJoXzBeKiBFRyJdLFsyLDIsImhfMV4qIEVHIl0sWzQsMiwiRUciXSxbMCwwLCIoeCwgeSkiXSxbMiwwLCIoeCwgXFxwaGkoeSkpIl0sWzQsMCwiXFxwaGkoeSkiXSxbMiw0LCJYIl0sWzQsNCwiXFxCIEciXSxbMSwyLCJmXzEiXSxbMCwyLCJmXzFcXGNpcmMgXFxwaGkiLDAseyJjdXJ2ZSI6LTV9XSxbMCwxLCJcXHBoaSJdLFsyLDddLFsxLDZdLFs2LDddLFswLDZdXQ==)

So we have
\[
s_0(x) &\coloneqq[x,y,y] \\
s_1(x) &\coloneqq[x,y,\phi(y)] 
.\]

By the lemma, \( s_0\simeq s_1 \) through sections, so there is a homotopy
\[
s: I\times X &\to I \times h_0^* EG\overset{\scriptscriptstyle {G} }{\times} EG \\
(t, x) &\mapsto (t, x, y, z)
.\]
But this is a section of a principle \( EG{\hbox{-}} \)bundle over a CW complex, which yields a \( G{\hbox{-}} \)equivariant map
\[
f: I \times h_0^* EG &\to EG \\
(t, x, y) &\mapsto z
.\]

Then

-   At \( t=0 \), we have \( (0, x)\mapsto (0, x,y,y) \), so \( f(0, x, y) = y \),
-   At \( t=1 \), we have \( (1, x)\mapsto (1, x,y,\phi(y)) \), so \( f(1,x,y) = \phi(y) \).

Since \( f \) is \( G{\hbox{-}} \)equivariant, we can quotient both sides by \( G \) to get a map
\[
h: I\times X &\to {\mathsf{B}}G \\
(0, x) &\mapsto h_0(x) \\
(1, x) &\mapsto h_1(x) 
.\]
:::

::: {.exercise title="?"}
Try this proof yourself!
:::

::: {.remark}
The same proof shows the following:
:::

::: {.lemma title="?"}
If \( F\to E \xrightarrow{\pi} B \) is a fiber bundle and \( B\in {\mathsf{CW}} \), if \( \pi_{0\leq i\leq n}(F) = 0 \) then we can inductively build sections over skeleta \( B_{(k)} \) fir \( k\leq n \) to construct a section over \( B_{(n+1)} \). Moreover, any two sections over the \( n{\hbox{-}} \)skeleton are homotopic.
:::

::: {.proposition title="?"}
If \( P \xrightarrow{\pi} B \in \mathop{\mathrm{Prin}}{ {\mathsf{Bun}}\qty{G} }_{/ {X}}  \) and \( \pi_{0\leq i \leq n} P = 0 \) (so \( B \) is a "weak universal bundle") then \( [X, B] \twoheadrightarrow\mathop{\mathrm{Prin}}{ {\mathsf{Bun}}\qty{G} }_{/ {X}}  \) for any \( X\in {\mathsf{CW}} \) with \( \dim(X) \leq n+1 \), and it is bijective if \( \dim X \leq n \). Here the map is again \( h \mapsto h^* P \).
:::

## Existence of Universal Bundles

::: {.theorem title="Milnor, 1966"}
For any group \( G \in {\mathsf{Top}}{\mathsf{Grp}} \), there is a universal bundle \( EG\to {\mathsf{B}}G \).
:::

::: {.remark}
Uniqueness up to homotopy:

```{=tex}
\begin{tikzcd}
    {h_*E'} & E && {E'} & {h'_*E} \\
    \\
    & B && {B'}
    \arrow["f", from=1-2, to=1-4]
    \arrow["h"', from=3-2, to=3-4]
    \arrow[from=1-2, to=3-2]
    \arrow[from=1-4, to=3-4]
    \arrow["{f'}"', curve={height=30pt}, from=1-4, to=1-2]
    \arrow["{h'}", curve={height=-30pt}, from=3-4, to=3-2]
    \arrow["\sim"', from=1-1, to=1-2]
    \arrow["\sim"', from=1-5, to=1-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMSwwLCJFIl0sWzEsMiwiQiJdLFszLDAsIkUnIl0sWzMsMiwiQiciXSxbMCwwLCJoXypFJyJdLFs0LDAsImgnXypFIl0sWzAsMiwiZiJdLFsxLDMsImgiLDJdLFswLDFdLFsyLDNdLFsyLDAsImYnIiwyLHsiY3VydmUiOjV9XSxbMywxLCJoJyIsMCx7ImN1cnZlIjotNX1dLFs0LDAsIlxcc2ltIiwyXSxbNSwyLCJcXHNpbSIsMl1d)

Then since \( (h'h^{-1})^* E \cong E \), \( h' h^{-1}\simeq\operatorname{id} \) and \( h (h')^{-1}\simeq\operatorname{id} \), so we get a homotopy equivalence \( B \simeq B' \).
:::

::: {.exercise title="?"}
Show \( E \simeq E' \).
:::

::: {.remark}
We'll prove this theorem using Segal's construction. For discrete groups \( G \), the construction is covered in Hatcher 1B. Hatcher constructs \( K(G, 1) \), a space with \( \pi_1 = G \) and contractible universal cover. Then the universal cover \( \widehat{X}\to X \) is a principle \( G{\hbox{-}} \)bundle, and since \( \widehat{X} \) is contractible, it is universal:

```{=tex}
\begin{tikzcd}
    && {\tilde X\simeq{\operatorname{pt}}} \\
    &&& {\in \mathop{\mathrm{Prin}}{ {\mathsf{Bun}}\qty{G} }_{/ {X}}  \text{ universal}} \\
    {K(G, 1)} && X
    \arrow["\pi", from=1-3, to=3-3]
    \arrow[from=3-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwyLCJLKEcsIDEpIl0sWzIsMiwiWCJdLFsyLDAsIlxcdGlsZGUgWFxcaG9tb3RvcGljIFxccHQiXSxbMywxLCJcXGluIFxcUHJpblxcQnVuZ1xcc2xpY2UgWCBcXHRleHR7IHVuaXZlcnNhbH0iXSxbMiwxLCJcXHBpIl0sWzAsMV1d)
:::

::: {.definition title="Nerve of a category"}
Given a category \( \mathsf{C} \), the **nerve** \( { \mathcal{N}({\mathsf{C}}) } \) is the following \( \Delta{\hbox{-}} \)complex:

-   \( 0{\hbox{-}} \)simplices are objects of \( \mathsf{C} \)
-   \( n{\hbox{-}} \)simplices for \( n\geq 1 \) are sequences of composable morphisms
    \[
    x_0 \xrightarrow{f_0} x_1 \xrightarrow{f_1} \cdots \xrightarrow{f_{n-1}} x_n
    .\]
-   Gluing data for 1-simplices: for \( x_0 \xrightarrow{f} x_1 \), set \( {{\partial}}_1(f) = x_1, {{\partial}}_0(f) = x_0 \).
-   Gluing data for \( n{\hbox{-}} \)simplices: the \( i \)th boundary maps are given by dropping vertex \( i \):
    \[
    {{\partial}}_i(f_1, \cdots, f_n)
    =
    \begin{cases}
    (f_2, f_3, \cdots, f_n) & i=0 \\
    (f_1, f_2, \cdots, f_{i+1} \circ f_{i}, \cdots, f_n) & i=0 \\
    (f_1, f_2, \cdots, f_{n-1}) & i=n.
    \end{cases}
    \]

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/CharacteristicClasses/sections/figures}{2021-09-16_13-50.pdf_tex} };
\end{tikzpicture}
```
:::

# Thursday, September 16

::: {.remark}
Let \( G\in {\mathsf{Grp}} \), and consider the following two categories. \( {\mathsf{B}}G \) will be the category:

-   \( {\operatorname{Ob}}({\mathsf{B}}G) = \left\{{{\operatorname{pt}}}\right\} \).
-   \( \mathop{\mathrm{Mor}}_{{\mathsf{B}}G}({\operatorname{pt}}, {\operatorname{pt}}) = \left\{{g\in G}\right\} \), i.e. there is one morphism for every group element, with composition \( g_1 \circ g_2 \coloneqq g_1g_2 \) given by group multiplication.

\( E G \) will be the category:

-   \( {\operatorname{Ob}}(EG) = \left\{{g\in G}\right\} \), one object for each element of \( G \),
-   \( \mathop{\mathrm{Mor}}(g, h)=\left\{{g^{-1}h}\right\} \), a single (conveniently labeled!) morphism for each ordered pair \( (g, h) \).

Note that \( G\curvearrowright EG \):

```{=tex}
\begin{tikzcd}
    {g_0} && {g_1} \\
    \\
    {gg_0} && {gg_1}
    \arrow[""{name=0, anchor=center, inner sep=0}, "{g_0^{-1}g_1}", from=1-1, to=1-3]
    \arrow[""{name=1, anchor=center, inner sep=0}, "{g\cdot g_0^{-1}g_1}", from=3-1, to=3-3]
    \arrow[shorten <=9pt, shorten >=9pt, Rightarrow, from=0, to=1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJnXzAiXSxbMiwwLCJnXzEiXSxbMCwyLCJnZ18wIl0sWzIsMiwiZ2dfMSJdLFswLDEsImdfMFxcaW52IGdfMSJdLFsyLDMsImdcXGNkb3QgZ18wXFxpbnYgZ18xIl0sWzQsNSwiIiwwLHsic2hvcnRlbiI6eyJzb3VyY2UiOjIwLCJ0YXJnZXQiOjIwfX1dXQ==)

This induces an action on \( { \mathcal{N}({EG}) } \in {\mathsf{Top}} \), where the 0-simplices correspond to elements of \( G \). and \( n{\hbox{-}} \)simplices are chains
\[
g_0 \xrightarrow{g_0^{-1}g_1} g_1 \xrightarrow{g_1^{-1}g_2} g_2 \to \cdots \to g_n
.\]
Acting on this by \( G \) yields
\[
gg_0 \xrightarrow{g_0^{-1}g_1} gg_1 \xrightarrow{g_1^{-1}g_2} gg_2 \to \cdots \to gg_n
,\]
noting we leave the morphism labeling unchanged, and that uniqueness of morphisms makes the simplicial boundary map behave nicely.
:::

::: {.exercise title="?"}
Show that
\[
{ \mathcal{N}({EG}) }/G = { \mathcal{N}({{\mathsf{B}}G}) }
.\]
:::

::: {.remark}
Note that
\[
{ \mathcal{N}({{\mathsf{B}}G}) } &= \Delta^0 {\textstyle\coprod}\Delta^1 \times G {\textstyle\coprod}\Delta^2 \times G{ {}^{ \scriptscriptstyle\times^{2} }  } {\textstyle\coprod}\Delta^3 \times G{ {}^{ \scriptscriptstyle\times^{3} }  }\cdots \\
{ \mathcal{N}({E G}) } &= \Delta^0 \times G {\textstyle\coprod}\Delta^1 \times G{ {}^{ \scriptscriptstyle\times^{2} }  } {\textstyle\coprod}\Delta^2 \times G{ {}^{ \scriptscriptstyle\times^{3} }  }\cdots 
,\]
where the gluing data for \( { \mathcal{N}({{\mathsf{B}}G}) } \) is given by
\[
{{\partial}}_n: 
\Delta^n \times G{ {}^{ \scriptscriptstyle\times^{n} }  } &\to
\Delta^{n-1} \times G{ {}^{ \scriptscriptstyle\times^{n-1} }  } \\
(\mathbf{x}, \mathbf{g}) &\mapsto (\mathbf{x}\setminus\left\{{x_n}\right\}, \mathbf{g} \setminus\left\{{g_n}\right\})
\]
and for \( { \mathcal{N}({EG}) } \) is
\[
{{\partial}}_n: \Delta^n \times G{ {}^{ \scriptscriptstyle\times^{n+1} }  } &\to
\Delta \times G{ {}^{ \scriptscriptstyle\times^{n} }  } \\
(\mathbf{x}, \mathbf{g}) &\mapsto (\mathbf{x}\setminus\left\{{x_n}\right\}, \mathbf{g} \setminus\left\{{g_n}\right\})
.\]

The action \( G\curvearrowright EG \) is the following:
\[
g\cdot (\mathbf{x}, \mathbf{g}) \mapsto (\mathbf{x}, {\left[ {gg_0, gg_1,\cdots, gg_n} \right]} )
.\]
:::

::: {.example title="?"}
Take \( G = C_4, G' = C_2{ {}^{ \scriptscriptstyle\times^{2} }  } \), and \( [ (x_0, x_1, x_2), (a, a^2)] \in \Delta^2 \times G{ {}^{ \scriptscriptstyle\times^{2} }  } \). Then its faces are
\[
[(0, x_1, x_2), (a, a^2)] &\sim [(x_1, x_2), (a^2)] \\
[(x_0, 0, x_2), (a, a^2)] &\sim [(x_0, x_2), (a)] \\
[(x_0, x_1, 0), (a, a^2)] &\sim [(x_0, x_1), (a)] \\
.\]
These describe a 2-simplex mapping into \( {\mathsf{B}}C_4 \) by \( a \to a^2 \to a^3 \), yielding the relation \( a\cdot a^2 = a^3 \). One can check that in \( {\mathsf{B}}G \), these groups yield distinct higher simplices:

```{=html}
<!-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/CharacteristicClasses/sections/figures/2021-09-16_16-58.xoj -->
```
![](figures/2021-09-16_16-59-53.png)
:::

::: {.lemma title="?"}
If \( \mathsf{C} \) has an initial or terminal object, then \( { \mathcal{N}({\mathsf{C}}) } \) is contractible.
:::

::: {.remark}
This clearly holds for \( E G \), since every object is initial and terminal.
:::

::: {.proof title="?"}
Suppose \( y\in \mathsf{C} \) is terminal and any other object \( x\in \mathsf{C} \), denote \( f_x: x\to y \) the unique morphism.

Then for any sequence ending in \( y \), deformation retract to \( y \): \( x_0 \xrightarrow{f_0} \to x_1 \xrightarrow{f_1} \cdots \xrightarrow{f_x} y \leadsto y \). If a sequence doesn't end in \( y \), add it on: \( x_0 \xrightarrow{f_0} x_1 \cdots \to x_n {\color{green} \xrightarrow{f_{x_n}} y} \leadsto y \).
:::

::: {.corollary title="?"}
\( { \mathcal{N}({EG}) } \) is contractible, and the quotient \( { \mathcal{N}({EG}) }\to { \mathcal{N}({{\mathsf{B}}G}) } \) is a universal \( G{\hbox{-}} \)bundle.
:::

::: {.exercise title="?"}
Construct \( E G \) and \( {\mathsf{B}}G \) for \( G = C_4, C_2{ {}^{ \scriptscriptstyle\times^{2} }  } \) and explicitly compare their 3-skeleta.
:::

# Tuesday, September 21

::: {.remark}
Today: a short discussion on generalizations of \( {\mathsf{B}}G \) to topological groups.
:::

::: {.definition title="Topological categories"}
A **topological category** is a category where the objects are topological spaces and morphisms form topological spaces in a coherent way, i.e. the following maps should be continuous:

-   \( \mathrm{source}, \mathrm{target}: \mathop{\mathrm{Mor}}_{\mathsf{C}} \to {\operatorname{Ob}}(\mathsf{C}) \),
-   \( \operatorname{id}: {\operatorname{Ob}}(\mathsf{C})\to \mathop{\mathrm{Mor}}_{\mathsf{C}} \),
-   Composition: \( \mathsf{C}(x, y) \times \mathsf{C}(y,z) \to \mathsf{C}(x, z) \).

I.e. it is a category enriched over topological spaces (plus conditions).
:::

::: {.example title="?"}
If \( G\in {\mathsf{Top}}{\mathsf{Grp}} \), then \( {\mathcal{B}}G \) is a topological category since the morphism space \( \mathop{\mathrm{Mor}}({\operatorname{pt}}, {\operatorname{pt}}) = G \) has a topology. Similarly \( {\mathcal{E}}G \) is a topological category.
:::

::: {.remark}
We can take nerves of topological categories; this just requires tracking the additional enrichment (i.e. the various topologies). The same proof will yield a principal \( G{\hbox{-}} \)bundle \( { \mathcal{N}({{\mathcal{E}}G}) } \xrightarrow{\pi} { \mathcal{N}({{\mathcal{B}}G}) } \), noting that \( G \) again acts on \( { \mathcal{N}({{\mathcal{E}}G}) } \).
:::

::: {.definition title="Absolute Neighborhood Retract"}
A space is called an **absolute neighborhood retract** (ANR) if for any \( X\hookrightarrow Y \) (as a closed subspace) into a metric space, \( X \) is a retract of a neighborhood in \( Y \).
:::

::: {.example title="?"}
Every CW complex is an ANR. This is also true if every point of \( X \) has a contractible neighborhood.
:::

::: {.lemma title="?"}
If \( G \) is ANR, then \( EG = { \mathcal{N}({{\mathcal{E}}G}) }\to { \mathcal{N}({{\mathcal{B}}G}) } = {\mathsf{B}}G \in \mathop{\mathrm{Prin}}{ {\mathsf{Bun}}\qty{G} } \).
:::

::: {.proof title="?"}
Note that \( {\mathsf{B}}G \) is a \( \Delta{\hbox{-}} \)complex, so we'll try to build bundle charts by inducting over the skeleta. Each graded piece of the complex is of the form \( \Delta^i \times G{ {}^{ \scriptscriptstyle\times^{i} }  } \), so pick an interior point \( ((x_0, \cdots, x_i), (g_1,\cdots, g_i)) \) so \( x_i\neq 0 \) for every \( i \). Define a map
\[
\Delta^i \times G{ {}^{ \scriptscriptstyle\times^{i} }  } \times G &\to E G \\
( (x_0,\cdots, x_i), (g_1, \cdots, g_i), g) &\mapsto (\operatorname{id}(\cdots), (g, gg_1, gg_1g_2, \cdots, gg_1\cdots g_i))
,\]
which corresponds to the sequence of composable morphisms
\[
(g \xrightarrow{g_1} gg_1 \xrightarrow{g_2} g g_1 g_2 \to \cdots \to gg_1\cdots g_i) 
.\]

::: {.exercise title="?"}
Show that this is not compatible with the gluing!
:::

Write \( p: \Delta^i \times G{ {}^{ \scriptscriptstyle\times^{i} }  } \to {{\mathsf{B}}G} \) for the quotient attaching map, so we can write the \( m{\hbox{-}} \)skeleton as \( {{\mathsf{B}}G}^{(m)} = \displaystyle\bigcup_{i\leq m} p(\Delta^i \times G{ {}^{ \scriptscriptstyle\times^{i} }  }) \). Now suppose \( (U_m, \phi_m) \) is a chart for \( { \left.{{{\mathsf{E} G}}} \right|_{{{{\mathsf{B}}G}^{(m)}}} } \to{{\mathsf{B}}G}^{(m)} \), we want to extend this to a chart or \( {{\mathsf{B}}G}^{(m+1)} \). We have a retraction \( r: U_{m+1}\to U_m \) where \( U_{m+1} \subseteq {{\mathsf{B}}G}^{(m+1)} \) is an open inclusion. We construct a trivialization of \( \pi^{-1}(U_{m+1}) \to U_{m+1} \):

```{=tex}
\begin{tikzcd}
    {\pi^{-1}(p^{-1}(U_{m+1}))} && {\pi^{-1}(p^{-1}(U_m))} && {\pi^{-1}(U_m)} && {U_m\times G} \\
    \\
    {p^{-1}(U_{m+1})} && {p^{-1}(U_m)} && {U_m} \\
    {p^{-1}(U_{m+1})} &&&& {U_{m+1}}
    \arrow["{\phi_m}", from=1-5, to=1-7]
    \arrow["\pi"', from=1-5, to=3-5]
    \arrow["p", from=3-3, to=3-5]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-3, to=3-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-3, to=3-5]
    \arrow[hook, from=4-5, to=3-5]
    \arrow[hook, from=3-1, to=3-3]
    \arrow["r"', curve={height=18pt}, from=3-3, to=3-1]
    \arrow[from=1-1, to=3-1]
    \arrow["{\exists\tilde r}", dashed, from=1-1, to=1-3]
    \arrow["p", from=4-1, to=4-5]
    \arrow[Rightarrow, no head, from=3-1, to=4-1]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
    \arrow["{\phi_{m+1}}", color={rgb,255:red,92;green,92;blue,214}, curve={height=-30pt}, from=1-1, to=1-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOSxbNCwwLCJcXHBpXFxpbnYoVV9tKSJdLFs2LDAsIlVfbVxcdGltZXMgRyJdLFs0LDIsIlVfbSJdLFsyLDIsInBcXGludihVX20pIl0sWzIsMCwiXFxwaVxcaW52KHBcXGludihVX20pKSJdLFs0LDMsIlVfe20rMX0iXSxbMCwyLCJwXFxpbnYoVV97bSsxfSkiXSxbMCwwLCJcXHBpXFxpbnYocFxcaW52KFVfe20rMX0pKSJdLFswLDMsInBcXGludihVX3ttKzF9KSJdLFswLDEsIlxccGhpX20iXSxbMCwyLCJcXHBpIiwyXSxbMywyLCJwIl0sWzQsMF0sWzQsM10sWzQsMiwiIiwxLHsic3R5bGUiOnsibmFtZSI6ImNvcm5lciJ9fV0sWzUsMiwiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbNiwzLCIiLDEseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFszLDYsInIiLDIseyJjdXJ2ZSI6M31dLFs3LDZdLFs3LDQsIlxcZXhpc3RzXFx0aWxkZSByIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzgsNSwicCJdLFs2LDgsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzcsMywiIiwwLHsic3R5bGUiOnsibmFtZSI6ImNvcm5lciJ9fV0sWzcsMSwiXFxwaGlfe20rMX0iLDAseyJjdXJ2ZSI6LTUsImNvbG91ciI6WzI0MCw2MCw2MF19LFsyNDAsNjAsNjAsMV1dXQ==)

This extends the chart to \( {{\mathsf{B}}G}^{(m+1)} \), noting that \( p \) is a quotient map and thus preserves open sets.
:::

::: {.remark}
We can't necessarily extend over the entire \( m+1 \) skeleton! But here extending it over a retractable neighborhood was enough, so we needed \( G \) to be an ANR in order for \( {{\mathsf{B}}G} \) to be an ANR. Why: consider
\[
p^{-1}(U_m) \subseteq \displaystyle\bigcup_{i\leq m} \Delta^i \times G{ {}^{ \scriptscriptstyle\times^{i} }  } \subseteq \displaystyle\bigcup_{i\leq m-1} \Delta^i \times G{ {}^{ \scriptscriptstyle\times^{i} }  }
.\]
If \( G \) is an ANR, use that \( \Delta^i \) is an ANR and so their product will be, then pick a neighborhood and apply \( p \) to get the required open.
:::

## Building \( {{\mathsf{B}}{\operatorname{O}}}_n \) and \( {\mathsf{E} {\operatorname{O}}}_n \) {#building-mathsfboperatornameo_n-and-mathsfe-operatornameo_n}

::: {.remark}
We'll assume all spaces paracompact from this point forward! We have a correspondence
\[
\left\{{\substack{
  \text{$n{\hbox{-}}$dimensional CW complexes }
}}\right\}
\rightleftharpoons
\left\{{\substack{
  \text{$n{\hbox{-}}$dimensional vector bundles }
  \\
  \text{with an ${\operatorname{O}}_n{\hbox{-}}$structure}
}}\right\}
\rightleftharpoons
\mathop{\mathrm{Prin}}{\mathsf{Bun}}({\operatorname{O}}_n)_{/ {X}} 
\rightleftharpoons
[X, {\mathsf{B}}{\operatorname{O}}_n]
\]
Our next goal is to construct \( {{\mathsf{B}}{\operatorname{O}}}_n \) and \( {\mathsf{E} {\operatorname{O}}}_n \) as spaces. Let \( V_n({\mathbb{R}}^k) \coloneqq\left\{{(\mathbf{v}_1, \cdots, \mathbf{v}_n) \text{orthonormal} }\right\} \). Note that \( {\operatorname{O}}_n\curvearrowright V_n({\mathbb{R}}^k) \) by
\[
\qty{\mathbf{v}_1, \cdots, \mathbf{v}_n} 
\cdot A = 
\qty{\sum_i a_{i, 1} \mathbf{v}_i,
\sum_i a_{i, 2} \mathbf{v}_i,
\cdots,
\sum_i a_{i, n} \mathbf{v}_i}
.\]

There is a projection

```{=tex}
\begin{tikzcd}
    {F_{\mathbf{v}_1} = V_{n-1}({\mathbb{R}}^{k-1})} && {V_n({\mathbb{R}}^k)} & {(\mathbf{v}_1, \cdots, \mathbf{v}_1)} \\
    \\
    && {V_1({\mathbb{R}}^k)} & {\mathbf{v}_1}
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=3-3]
    \arrow[maps to, from=1-4, to=3-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMiwwLCJWX24oXFxSUl5rKSJdLFsyLDIsIlZfMShcXFJSXmspIl0sWzMsMCwiKFxcdmVjdG9yIHZfMSwgXFxjZG90cywgXFx2ZWN0b3Igdl8xKSJdLFszLDIsIlxcdmVjdG9yIHZfMSJdLFswLDAsIkZfe1xcdmVjdG9yIHZfMX0gPSBWX3tuLTF9KFxcUlJee2stMX0pIl0sWzQsMF0sWzAsMV0sWzIsMywiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dXQ==)

We'll use the fact that \( V_1({\mathbb{R}}^k) \) is \( (k-2){\hbox{-}} \)connected, since it's homotopy equivalent to \( S^{k-1} \).
:::

::: {.lemma title="?"}
\( V_n({\mathbb{R}}^{k}) \) is \( (k-n-1){\hbox{-}} \)connected.
:::

::: {.proof title="?"}
Induct on \( n \) using the homotopy LES for the fiber bundle:

```{=tex}
\begin{tikzcd}
    && \cdots && {\pi_{i+1} V_{n-1} {\mathbb{R}}^{k-1} \cong \pi_{i+1}(S^{k-1})} \\
    \\
    {\pi_i V_{n-1} {\mathbb{R}}^{k-1} = 0} && \textcolor{rgb,255:red,92;green,92;blue,214}{\pi_i V_{n} {\mathbb{R}}^{k}} && {\pi_i V_{1} {\mathbb{R}}^{k} \cong \pi_iS^{k-2} = 0} \\
    { \substack{(k-n-1){\hbox{-}}\text{connected} \\ i\leq k-n-1} } && {\therefore\text{zero}} && {i\leq k-n-1 \implies i\leq k-3 }
    \arrow[from=1-5, to=3-1]
    \arrow[from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow[from=1-3, to=1-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMCwyLCJcXHBpX2kgVl97bi0xfSBcXFJSXntrLTF9ID0gMCJdLFsyLDIsIlxccGlfaSBWX3tufSBcXFJSXntrfSIsWzI0MCw2MCw2MCwxXV0sWzQsMiwiXFxwaV9pIFZfezF9IFxcUlJee2t9IFxcY29uZyBcXHBpX2lTXntrLTJ9ID0gMCJdLFs0LDAsIlxccGlfe2krMX0gVl97bi0xfSBcXFJSXntrLTF9IFxcY29uZyBcXHBpX3tpKzF9KFNee2stMX0pIl0sWzAsMywiKGstbi0xKVxcZGFzaFxcdGV4dHtjb25uZWN0ZWR9IFxcXFwgaVxcbGVxIGstbi0xIl0sWzIsMywiXFx0aGVyZWZvcmVcXHRleHR7emVyb30iXSxbNCwzLCJpXFxsZXEgay1uLTEgXFxpbXBsaWVzIGlcXGxlcSBrLTMgXFxcXCJdLFsyLDAsIlxcY2RvdHMiXSxbMywwXSxbMCwxXSxbMSwyXSxbNywzXV0=)
:::

::: {.remark}
Using the inclusions \( V_n({\mathbb{R}}^k) \hookrightarrow V_n({\mathbb{R}}^{k+1}) \), we can define \( V_n({\mathbb{R}}^\infty) = \colim_k V_n({\mathbb{R}}^k) = \displaystyle\bigcup_{k\geq 0}V_n ({\mathbb{R}}^k) \). We equip it with the **weak topology**, i.e. \( U \subseteq V_n({\mathbb{R}}^\infty) \) is open iff \( U \cap V_n({\mathbb{R}}^k) \) is open for all \( k \).
:::

::: {.lemma title="?"}
\[
\pi_* V_n({\mathbb{R}}^\infty) = 0
.\]
:::

::: {.proof title="?"}
By compactness, any sphere \( S^m \) maps to \( V_n({\mathbb{R}}^k) \) for some large \( k \), and using \( V_n({\mathbb{R}}^k) \hookrightarrow V_n({\mathbb{R}}^\ell) \) with \( \ell-n-1 > m \) where \( \pi_n V_n({\mathbb{R}}^\ell) = 0 \) to make the map nullhomotopic.
:::

::: {.definition title="?"}
\[
V_n({\mathbb{R}}^\infty) / {\operatorname{O}}_n = {\operatorname{Gr}}_n({\mathbb{R}}^\infty)
.\]
:::

::: {.remark}
It will turn out that \( {\mathsf{E} {\operatorname{O}}}_n = V_n({\mathbb{R}}^\infty) \), sometimes referred to as the *Stiefel manifold* of \( n{\hbox{-}} \)frames in \( {\mathbb{R}}^\infty \).
:::

# Thursday, September 23

::: {.remark}
Last time: we were trying to construct \( {\mathsf{E} {\operatorname{O}}}_n \) and \( {{\mathsf{B}}{\operatorname{O}}}_n \), and we defined \( V_n({\mathbb{R}}^\infty) = \directlim_{k} V_n({\mathbb{R}}^k) \), where \( V_n({\mathbb{R}}^k) \) was the space of \( n \) orthonormal vectors in \( {\mathbb{R}}^k \). There is a map \( V_n({\mathbb{R}}^\infty)\to {\operatorname{Gr}}_n({\mathbb{R}}^\infty) \), which will be our candidate for \( {\mathsf{E} {\operatorname{O}}}_n \to {{\mathsf{B}}{\operatorname{O}}}_n \).
:::

::: {.lemma title="?"}
\( V_n({\mathbb{R}}^\infty) \xrightarrow{\pi} {\operatorname{Gr}}_n({\mathbb{R}}^\infty) \in \mathop{\mathrm{Prin}}{\mathsf{Bun}}({\operatorname{O}}_n) \).
:::

::: {.proof title="?"}
We'll show this directly in charts. Let \( W\in{\operatorname{Gr}}_n({\mathbb{R}}^\infty) \) be an \( n{\hbox{-}} \)dimensional plane, the consider an open neighborhood
\[
U_W \coloneqq\left\{{W' \in {\operatorname{Gr}}_n({\mathbb{R}}^\infty) {~\mathrel{\Big|}~}W^\perp \cap W' = 0}\right\}
.\]
For any such \( W' \), we have a map \( W'\to W \) given by orthogonal projection, which is an isomorphism since \( W^\perp \cap W' = 0 \).

::: {.claim}
\[
\pi^{-1}(U_W) \cong U_W \times {\operatorname{O}}_n
.\]
:::

Fix some \( \alpha\in \pi^{-1}(U_W) \) (an orthonormal basis for \( W \)), apply \( f^{-1} \) to get \( f^{-1}( \alpha) \), then apply Gram-Schmidt to get \( \tilde a \), an orthonormal basis for \( W' \). Define \( F_{W'} \) to be this composition; this yields a bijection \( \pi^{-1}(W) { { \, \xrightarrow{\sim}\, }}\pi^{-1}(W') \) for all \( W'\in U_W \), namely
\[
U_w \times {\operatorname{O}}_n &\to \pi^{-1}(W) \\
(W', A) &\mapsto F_{W'}( \alpha) \cdot A
.\]
The claim is that this trivializes the bundle, since this constructs a local section using \( {\operatorname{O}}_n \) translations:

```{=tex}
\begin{tikzcd}
    {s(W')\cdot A} && {(W', A)} \\
    {\pi^{-1}(U_W)} && {U_w \times {\operatorname{O}}_n} \\
    \\
    {U_W} && {W'}
    \arrow["\pi", from=2-1, to=4-1]
    \arrow["s"', curve={height=18pt}, from=4-1, to=2-1]
    \arrow["\cong", from=2-3, to=2-1]
    \arrow[dashed, maps to, from=1-3, to=1-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwxLCJcXHBpXFxpbnYoVV9XKSJdLFsyLDEsIlVfdyBcXHRpbWVzIFxcT3J0aF9uIl0sWzIsMCwiKFcnLCBBKSJdLFswLDAsInMoVycpXFxjZG90IEEiXSxbMCwzLCJVX1ciXSxbMiwzLCJXJyJdLFswLDQsIlxccGkiXSxbNCwwLCJzIiwyLHsiY3VydmUiOjN9XSxbMSwwLCJcXGNvbmciXSxbMiwzLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn0sImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)

Summary: pick an orthonormal basis for \( W \), say \( \alpha \), then \( s(W) = \alpha \) and we define \( s(W') \) by sending \( \alpha \) to a basis for \( W' \) by \( P^{-1} \) and the applying Gram-Schmidt to get an orthonormal basis for \( W' \).
:::

::: {.remark}
```{=tex}
\envlist
```
-   Replace \( {\operatorname{O}}_n \) with \( U_n \) and \( {\mathbb{R}} \) with \( {\mathbb{C}} \) to get \( {\operatorname{Gr}}_n({\mathbb{C}}^\infty) = {\mathsf{B}}U_n \).
-   \( V_n({\mathbb{R}}^\infty)/ {\operatorname{SO}}_n = {\mathsf{B}}{\operatorname{SO}}_n \) yields the Grassmannian of *oriented* planes.
-   For \( H\leq G \), we have \( {\mathsf{E}}H = {\mathsf{E}}G \) and \( {\mathsf{B}}H = {\mathsf{E}}G/H \).
:::

> Question: can you get \( {\mathsf{B}}{\operatorname{Spin}}_n \) this way?

::: {.remark}
An alternative description of \( {\mathsf{E} {\operatorname{O}}}_n \) and \( {{\mathsf{B}}{\operatorname{O}}}_n \), due to Milnor-Stasheff: write \( {{\mathsf{B}}{\operatorname{O}}}_n = {\operatorname{Gr}}_n({\mathbb{R}}^\infty) \) and define the **canonical bundle** \( \gamma \). Recall that every principal \( {\operatorname{O}}_n \) bundle is a pullback of the following form:

```{=tex}
\begin{tikzcd}
    {P = f^* {\mathsf{E} {\operatorname{O}}}_n} && {{\mathsf{E} {\operatorname{O}}}_n = V_n({\mathbb{R}}^\infty)} \\
    \\
    X && {{{\mathsf{B}}{\operatorname{O}}}_n}
    \arrow["f", from=3-1, to=3-3]
    \arrow[from=1-1, to=3-1]
    \arrow[dashed, from=1-1, to=1-3]
    \arrow[from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJQID0gZl4qIFxcRU9fbiJdLFswLDIsIlgiXSxbMiwwLCJcXEVPX24gPSBWX24oXFxSUl5cXGluZnR5KSJdLFsyLDIsIlxcQk9fbiJdLFsxLDMsImYiXSxbMCwxXSxbMCwyLCIiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiwzXV0=)

Moreover, \( \mathop{\mathrm{Prin}}({\operatorname{O}}_n)_{/ {X}}  = [X, {{\mathsf{B}}{\operatorname{O}}}_n] = [X, {\operatorname{Gr}}_n({\mathbb{R}}^\infty)] \). Then \( \gamma_n \xrightarrow{\pi} {\operatorname{Gr}}_n({\mathbb{R}}^\infty) \) is the \( {\mathbb{R}}^n{\hbox{-}} \)bundle where \( \pi^{-1}(v) = v = V \), regarded as a plane in \( {\mathbb{R}}^\infty \). Another description comes from the mixing construction: \( \gamma_n = V_n({\mathbb{R}}^\infty) \overset{\scriptscriptstyle {{\operatorname{O}}_n} }{\times} {\mathbb{R}}^n \to {\operatorname{Gr}}_n({\mathbb{R}}^\infty) \).

```{=tex}
\begin{tikzcd}
    {[\mathbf{v}_1, \cdots, \mathbf{v}_n] \times [t_1,\cdots, t_n]} && {\sum t_i \mathbf{v}_i} \\
    {V_n({\mathbb{R}}^\infty) \times {\mathbb{R}}^n} && {\gamma_n} \\
    \\
    {{\operatorname{Gr}}_n({\mathbb{R}}^\infty)}
    \arrow["{\pi'}", from=2-1, to=4-1]
    \arrow["\pi"', from=2-3, to=4-1]
    \arrow["{\exists \cong}"', from=2-1, to=2-3]
    \arrow[maps to, from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwxLCJWX24oXFxSUl5cXGluZnR5KSBcXHRpbWVzIFxcUlJebiJdLFsyLDEsIlxcZ2FtbWFfbiJdLFswLDAsIltcXHZlY3RvciB2XzEsIFxcY2RvdHMsIFxcdmVjdG9yIHZfbl0gXFx0aW1lcyBbdF8xLFxcY2RvdHMsIHRfbl0iXSxbMiwwLCJcXHN1bSB0X2kgXFx2ZWN0b3Igdl9pIl0sWzAsMywiXFxHcl9uKFxcUlJeXFxpbmZ0eSkiXSxbMCw0LCJcXHBpJyJdLFsxLDQsIlxccGkiLDJdLFswLDEsIlxcZXhpc3RzIFxcY29uZyIsMl0sWzIsMywiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dXQ==)
:::

::: {.definition title="Subbundles"}
\( E' \leq E \) is a **subbundle** iff there is an embedding \( E' \hookrightarrow E \) over \( X \):

```{=tex}
\begin{tikzcd}
    {E'} && E \\
    \\
    & X
    \arrow["{\pi'}"', from=1-1, to=3-2]
    \arrow["\pi", from=1-3, to=3-2]
    \arrow["f", hook, from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJFJyJdLFsyLDAsIkUiXSxbMSwyLCJYIl0sWzAsMiwiXFxwaSciLDJdLFsxLDIsIlxccGkiXSxbMCwxLCJmIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XV0=)

We also require that restrictions to fibers \( f_x: { \left.{{E'}} \right|_{{x}} } \to { \left.{{E}} \right|_{{x}} } \in \operatorname{Mat}(m\times n; {\mathbb{R}}) \) is a linear map to an \( n{\hbox{-}} \)dimensional subspace \( { \left.{{E}} \right|_{{x}} } \), where \( \dim_{\mathbb{R}}{ \left.{{E'}} \right|_{{x}} } = n \) and \( \dim_{\mathbb{R}}{ \left.{{E}} \right|_{{x}} } = m \).
:::

::: {.lemma title="?"}
Every vector bundle \( E \xrightarrow{\pi} X \) with \( X\in {\mathsf{CW}} \) compact is a subbundle of a trivial bundle.
:::

::: {.proof title="?"}
Take \( \left\{{(U_i, \phi_i)}\right\}_{i=1}^m\rightrightarrows X \) a finite cover by charts, and choose a subordinate partition of unity \( \left\{{\chi_i}\right\}_{i=1}^m \) such that \( \mathop{\mathrm{supp}}\chi_i \subseteq U_i \). Then define
\[
\psi: E &\to {\mathbb{R}}^{nm} =
{\mathbb{R}}^n \times {\mathbb{R}}^n \times \cdots \times {\mathbb{R}}^n
\\
v &\mapsto {\left[ {\chi_1(v) \phi_1(v),  \chi_2(v) \phi_2(v), \cdots, \chi_m(v) \phi_m(v)} \right]} 
.\]
This exhibits \( (E \to X) \leq (X\times {\mathbb{R}}^{nm} \to X) \) as a subbundle.
:::

::: {.lemma title="?"}
Every \( (E\to X)\in { { {\mathsf{Bun}}\qty{\operatorname{GL}_{n}} } }_{/ {X}}  \) for \( X\in {\mathsf{CW}} \) compact is a pullback of the canonical bundle along some map \( f:X\to {{\mathsf{B}}{\operatorname{O}}}_n \).
:::

::: {.example title="?"}
For \( E \xrightarrow{\pi} X \) and \( f: X\to {{\mathsf{B}}{\operatorname{O}}}_n \), \( \psi: E\to {\mathbb{R}}^{nm} \subseteq {\mathbb{R}}^\infty \) and we can take \( f(x) \coloneqq\psi(\pi^{-1}(x)) \in {\operatorname{Gr}}_n({\mathbb{R}}^\infty) \) to get \( f^* \gamma_n \cong E \).
:::

::: {.lemma title="?"}
If \( f^* \gamma_n \cong E \) and \( g^* \gamma_n \cong E \), then \( f \simeq g \).
:::

::: {.proof title="?"}
Corresponding to \( f^* \gamma_n \cong E \) we get a map \( \tilde f: E\to {\mathbb{R}}^{\infty} \) which restricts to an embedding on all fibers, and similarly \( g^*\gamma_n \cong E \) yields \( \tilde g: E\to {\mathbb{R}}^\infty \). So take
\[
L_t: {\mathbb{R}}^\infty &\to {\mathbb{R}}^\infty \\
\mathbf{x} &\mapsto (t-1){\left[ {x_1,x_2,\cdots} \right]} + t{\left[ {x_1, 0, x_2, 0, x_3, 0, \cdots} \right]}
,\]
which is a homotopy between identity and the self-embedding that maps into only odd coordinates. Composing \( L_t \circ \tilde f \) yields a homotopy between \( \tilde f \) and a map \( F' \) whose image has only odd coordinates. Similarly, we can construct a \( G_t \) for \( \tilde g \) to get a homotopy between \( \tilde g \) and a map \( G' \) whose images has only even coordinates. Now take a linear homotopy \( F'\to G' \), this yields a homotopy through embeddings (where we've first made them "transverse").
:::

# Vector Bundle Classification Theorem (Tuesday, September 28)

> See homework posted on the website! Turn in 2 total problem sets, one by mid-October.

::: {.theorem title="?"}
\[
[X, {{\mathsf{B}}{\operatorname{O}}}_n] \cong [X, {\operatorname{Gr}}_n({\mathbb{R}}^\infty)] &{ { \, \xrightarrow{\sim}\, }}{ {\mathsf{Bun}}\qty{\operatorname{GL}_{n}} }({\mathbb{R}}, X) \\
f & \mapsto f^* \gamma_n
.\]
:::

::: {.remark}
We proved surjectivity last time for \( X \in {\mathsf{CW}} \) compact, using compactness to embed any bundle into a trivial bundle. We proved injectivity in the form of \( f^* \gamma_n \cong g^* \gamma_n \implies f\simeq g \), again for \( X\in {\mathsf{CW}} \) compact. So we need to handle the case of \( X \) not compact.
:::

::: {.lemma title="?"}
Let \( \pi: E\to X \) be a vector bundle over \( X \). Suppose for \( B\in {\mathsf{CW}} \) compact with \( B \subseteq X \), we have \( f: B\to {\operatorname{Gr}}_n({\mathbb{R}}^\infty) \) such that \( f^* \gamma_n \cong { \left.{{E}} \right|_{{B}} } \). Suppose also that there exists a \( g: X\to {\operatorname{Gr}}_n({\mathbb{R}}^\infty) \) with \( g^* \gamma_n \cong E \). Then there exists an \( h: X\to{\operatorname{Gr}}_n({\mathbb{R}}^\infty) \) such that \( { \left.{{h}} \right|_{{B}} } = f \) and \( h^* \gamma_n \cong E \).

```{=tex}
\begin{tikzpicture}
\fontsize{42pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/CharacteristicClasses/sections/figures}{2021-09-28_12-57.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.remark}
Idea: write \( X = \colim_n X^{(n)} \) as a limit of compact finite skeleta, define maps \( f_n: X^{(n)} \to {{\mathsf{B}}{\operatorname{O}}}_n \) and \( f_{n+1}: X^{(n+1)}\to {{\mathsf{B}}{\operatorname{O}}}_n \), then modify \( \tilde f_{n+1} \simeq f_{n+1} \) to extend \( f_n \) in such a way that \( f_n^* \gamma_i = { \left.{{E}} \right|_{{B_n}} } \).
:::

::: {.proof title="?"}
For \( g^* \gamma_n \cong E \) with \( ({ \left.{{g}} \right|_{{B}} })^* \gamma_n \cong { \left.{{E}} \right|_{{B}} } \) and \( f^* \gamma_n \cong { \left.{{E}} \right|_{{B}} } \), then \( f\simeq{ \left.{{g}} \right|_{{B}} } \) by injectivity for compact \( B \). We can then extend the homotopy \( H: I\times X\to {{\mathsf{B}}{\operatorname{O}}}_n \) where \( H_0 = g \) and \( h\coloneqq H_1 \) with \( { \left.{{h}} \right|_{{B}} } = f \).
:::

## Characteristic Classes

::: {.definition title="Characteristic classes and representability"}
Let \( F, G \) be two contravariant functors with source \( \mathsf{C} \). A **characteristic class of \( F \) valued in \( \mathsf{G} \)** is a natural transformation \( c: F\to G \). \( F \) is **representable** if there exists an object \( {\mathsf{B}}F \) such that \( F(X) = [X, {\mathsf{B}}F] \) for every \( X\in {\operatorname{Ob}}(\mathsf{C}) \).

> Note: we aren't requiring the target categories to coincide!
:::

::: {.example title="?"}
```{=tex}
\envlist
```
-   \( F(X) \coloneqq\mathop{\mathrm{Prin}}{\mathsf{Bun}}({\operatorname{O}}_n)_{/ {X}}  = { {\mathsf{Bun}}\qty{\operatorname{GL}_{n}} } {}_{/ {X}}  = [X {{\mathsf{B}}{\operatorname{O}}}_n] \) is a contravariant functor \( {\mathsf{ho}}{\mathsf{CW}}^{\operatorname{op}}\to {\mathsf{Set}} \), where contravariance is due to pullbacks.
-   \( G(X) \coloneqq H^j_{\mathrm{sing}}(X) \), which is representable: for any \( X\in {\mathsf{CW}} \) and any \( G\in {\mathsf{Ab}}{\mathsf{Grp}} \), we have \( H^j(X; M) = [X, K(G, j)] \). This comes from taking the sphere that generates \( \pi_j K(G, j) = \left\langle{\alpha}\right\rangle \) and pulling any \( f: X\to K(G, j) \) back to \( f^* \alpha \).
:::

::: {.lemma title="?"}
If \( F = [{-}, {\mathsf{B}}F] \) is representable, then characteristic classes of \( F \) valued in a functor \( G \) biject with \( G(B) \)
:::

::: {.remark}
We can write \( F(B) = [B, B] \ni \operatorname{id}_B \), and it turns out that the characteristic class is determined by where \( \operatorname{id}_B \) is sent:

```{=tex}
\begin{tikzcd}
    &&& \textcolor{rgb,255:red,92;green,92;blue,214}{\operatorname{id}_B\in F} && \textcolor{rgb,255:red,92;green,92;blue,214}{c(\operatorname{id}_B)} \\
    X &&& {F(B) = [B, B]} && {G(B)} \\
    \\
    B &&& {F(X) = [X, B]} && {G(X)} \\
    &&& \textcolor{rgb,255:red,92;green,92;blue,214}{\psi} && \textcolor{rgb,255:red,92;green,92;blue,214}{c(\psi) = G(\psi)(c(\operatorname{id}_B))}
    \arrow["c", from=2-4, to=2-6]
    \arrow["{\psi \in [X, B]}", from=2-1, to=4-1]
    \arrow["c", from=4-4, to=4-6]
    \arrow["{F(\psi)}", from=2-4, to=4-4]
    \arrow["{G(\psi)}", from=2-6, to=4-6]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, dashed, from=1-4, to=1-6]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, curve={height=18pt}, dashed, from=1-4, to=5-4]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, dashed, from=5-4, to=5-6]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, curve={height=24pt}, dashed, from=1-6, to=5-6]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTAsWzMsMSwiRihCKSA9IFtCLCBCXSJdLFs1LDEsIkcoQikiXSxbMywzLCJGKFgpID0gW1gsIEJdIl0sWzUsMywiRyhYKSJdLFswLDEsIlgiXSxbMCwzLCJCIl0sWzMsMCwiXFxpZF9CXFxpbiBGIixbMjQwLDYwLDYwLDFdXSxbMyw0LCJcXHBzaSIsWzI0MCw2MCw2MCwxXV0sWzUsNCwiYyhcXHBzaSkgPSBHKFxccHNpKShjKFxcaWRfQikpIixbMjQwLDYwLDYwLDFdXSxbNSwwLCJjKFxcaWRfQikiLFsyNDAsNjAsNjAsMV1dLFswLDEsImMiXSxbNCw1LCJcXHBzaSBcXGluIFtYLCBCXSJdLFsyLDMsImMiXSxbMCwyLCJGKFxccHNpKSJdLFsxLDMsIkcoXFxwc2kpIl0sWzYsOSwiIiwwLHsiY29sb3VyIjpbMjQwLDYwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzYsNywiIiwyLHsiY3VydmUiOjMsImNvbG91ciI6WzI0MCw2MCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs3LDgsIiIsMix7ImNvbG91ciI6WzI0MCw2MCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs5LDgsIiIsMCx7ImN1cnZlIjo0LCJjb2xvdXIiOlsyNDAsNjAsNjBdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=)

For us, taking \( B\coloneqq{\operatorname{Gr}}_n({\mathbb{R}}^\infty) \) and \( G(B) = H^j({\operatorname{Gr}}_n({\mathbb{R}}^\infty)) \ni \alpha = c(\operatorname{id}_{B}) \), so we can pullback to define \( c(f) = f^*\alpha \in H^j(X) \).
:::

::: {.example title="?"}
Take \( F(X) = \mathop{\mathrm{Prin}}{\mathsf{Bun}}(U_n)_{/ {X}}  = [X {\operatorname{BU}}_n] \) and \( G(X) = H^j(X) \), then \( \alpha\in H^j({\operatorname{BU}}_n) \) maps to to \( c_\alpha(E) = f^*(\alpha) \) for any \( f\in [X, {\operatorname{BU}}_n] \).
:::

::: {.example title="?"}
Take \( F(X) = H^n(X; M) \) and \( G(X) = H^m(X; N) \) with \( M, N \in {\mathsf{Ab}}{\mathsf{Grp}} \). Then \( F(X) = [X, K(M, n)] \), and taking \( G(K(M, n)) = H^m(K(M, n), N) \ni \alpha \) yields a map
\[
H^n(X; M) &\to H^m(X; N) \\
(f: X\to K(M, n)) &\mapsto f^* \alpha
,\]
i.e. a cohomology operation. If for example
\[
\phi \in \mathop{\mathrm{Hom}}_{\mathsf{Grp}}(M, N) 
= \mathop{\mathrm{Hom}}_{\mathsf{Grp}}( H_n(K(M, n); {\mathbb{Z}}), N)
= H^n( K(M, n); N)
,\]
using that \( H_n(K(M, n); {\mathbb{Z}})\cong M \). This yields a change of coefficient morphism
\[
H^n(X; M) \to H^n(X; N)
,\]
which turns out to be the same map as above. So any element in \( H^m(K(M, n), N) \) yields a map \( H^n(X, M)\to H^m(X, N) \) by sending \( f:X\to K(M, n) \) to \( f^*\alpha \). Taking \( n=m \) yields \( H^n(X; M)\to H^n(X; N) \).
:::

# Thursday, September 30

## Line Bundles: Chern and Stiefel-Whitney Classes

::: {.remark}
Last time: defining characteristic classes. Recall that given \( F, G \in {\mathsf{Fun}}({\mathsf{Top}}, {-}) \), a characteristic class with values in \( G \) is a natural transformation \( c: F { { \, \xrightarrow{\sim}\, }}G \). If \( F \) is representable, then characteristic classes \( c: F\to G \) is of the form \( c(\operatorname{id}_B) \in G(B) \) for \( \operatorname{id}_B \in [B, B] \cong F(B) \), since \( c \) is determined by where it sends \( \operatorname{id}_B \). Recall that Eilenberg-MacLane spaces \( K(G, n) \) represent \( H^n({-}; G) \) for \( G\in {\mathsf{Ab}}{\mathsf{Grp}} \), and are characterized by \( \pi_i(K(G, n)) = G \) only in degree \( i=n \).
:::

::: {.example title="?"}
```{=tex}
\envlist
```
-   \( { {\mathsf{Bun}}\qty{\operatorname{GL}_{n}} }({\mathbb{R}}, X) { { \, \xrightarrow{\sim}\, }}[X, {{\mathsf{B}}{\operatorname{O}}}_n] \) and we realized \( {{\mathsf{B}}{\operatorname{O}}}_n \simeq{\operatorname{Gr}}_n({\mathbb{R}}^\infty) \). For \( \alpha\in H^j({{\mathsf{B}}{\operatorname{O}}}_n; {\mathbb{Z}}) \), we can take a homotopy class \( f:X\to {{\mathsf{B}}{\operatorname{O}}}_n \) and pullback to get \( f^*(\alpha) \in H^j(X; {\mathbb{Z}}) \).

-   \( { {\mathsf{Bun}}\qty{\operatorname{GL}_{n}} }({\mathbb{C}}, X) { { \, \xrightarrow{\sim}\, }}[X, {\operatorname{BU}}_n] \), where \( {\operatorname{BU}}_n \simeq{\operatorname{Gr}}_n({\mathbb{C}}^\infty) \) and we can again pullback cohomology classes.
:::

::: {.example title="?"}
For line bundles, we can identify \( {\operatorname{BU}}_1 \simeq{\operatorname{Gr}}_1({\mathbb{C}}^\infty) \simeq{\mathbb{CP}}^\infty \), so \( { {\mathsf{Bun}}\qty{\operatorname{GL}_{1}} }({\mathbb{C}}, X) { { \, \xrightarrow{\sim}\, }}[X, {\mathbb{CP}}^\infty] \). The claim is that line bundles are uniquely characterized by their first Chern classes. Using that \( H^2({\mathbb{CP}}^\infty; {\mathbb{Z}}) \cong {\mathbb{Z}}= \left\langle{\alpha}\right\rangle \), where we've chosen a positive generator, we obtain the **first Chern class** \( c_1 \coloneqq f^*(\alpha) \in H^2(X; {\mathbb{Z}}) \). Note that \( {\mathbb{CP}}^\infty \simeq K({\mathbb{Z}}, 2) \), and \( [X, K(G, n)] { { \, \xrightarrow{\sim}\, }}H^n(X; M) \) where \( f\mapsto f^*(\alpha) \) for \( H^n(K(G, n); {\mathbb{Z}}) = \left\langle{\alpha}\right\rangle \), so there is an isomorphism
\[
[X, {\mathbb{CP}}^\infty] &{ { \, \xrightarrow{\sim}\, }}H^2(X; {\mathbb{Z}}) \\
f &\mapsto f^*(\alpha),\quad \left\langle{\alpha}\right\rangle = H^2({\mathbb{CP}}^\infty)
.\]
So the set of bundles is an affine space over \( H^2(X) \).
:::

::: {.corollary title="?"}
There is a bijection
\[
c_1: { {\mathsf{Bun}}\qty{\operatorname{GL}_{1}} }({\mathbb{R}}, X) { { \, \xrightarrow{\sim}\, }}H^2(X)
,\]
:::

::: {.example title="?"}
For \( { {\mathsf{Bun}}\qty{\operatorname{GL}_{1}} }({\mathbb{R}}, X) \) we can identify \( {{\mathsf{B}}{\operatorname{O}}}_1 \simeq{\operatorname{Gr}}_1({\mathbb{R}}^\infty) = {\mathbb{RP}}^\infty \), so for \( \left\langle{\alpha}\right\rangle = H^2({\mathbb{RP}}^\infty; {\mathbb{Z}}/2) \cong {\mathbb{Z}}/2 \), we obtain the **first Stiefel-Whitney class** \( w_1 \) and a bijection
\[
w_1: [X, {\mathbb{RP}}^\infty] &{ { \, \xrightarrow{\sim}\, }}H^1(X; {\mathbb{Z}}/2) \\
f &\mapsto f^*(\alpha)
.\]
:::

::: {.remark}
We can define \( c_1 \) for vector bundles of any dimension by taking a top exterior power to get a line bundle:

```{=tex}
\begin{tikzcd}
    {{ {\mathsf{Bun}}\qty{\operatorname{GL}_{n}} }({\mathbb{C}}, X)} && {{ {\mathsf{Bun}}\qty{\operatorname{GL}_{1}} }({\mathbb{C}}, X)} && {H^2(X; {\mathbb{Z}})} \\
    E && {\bigwedge\nolimits^n E} \\
    \\
    X && X
    \arrow["{\bigwedge\nolimits^n({-})}", from=1-1, to=1-3]
    \arrow[from=2-1, to=4-1]
    \arrow[from=2-3, to=4-3]
    \arrow["{c_1}", from=1-3, to=1-5]
    \arrow[maps to, from=2-3, to=1-5]
    \arrow["{\bigwedge\nolimits^n({-})}"', from=2-1, to=2-3]
    \arrow["{\coloneqq c_1 E}"{description}, dashed, from=2-1, to=1-5]
    \arrow["\operatorname{id}"', from=4-1, to=4-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNyxbMCwwLCJcXFZlY3RCdW5kbGVfbihcXENDLCBYKSJdLFsyLDAsIlxcVmVjdEJ1bmRsZV8xKFxcQ0MsIFgpIl0sWzAsMSwiRSJdLFswLDMsIlgiXSxbMiwxLCJcXEV4dGFsZ15uIEUiXSxbMiwzLCJYIl0sWzQsMCwiSF4yKFg7IFxcWlopIl0sWzAsMSwiXFxFeHRhbGdebihcXHdhaXQpIl0sWzIsM10sWzQsNV0sWzEsNiwiY18xIl0sWzQsNiwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dLFsyLDQsIlxcRXh0YWxnXm4oXFx3YWl0KSIsMl0sWzIsNiwiXFxkYSBjXzEgRSIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDUsIlxcaWQiLDJdXQ==)

So
\[
c_1(E) \coloneqq c_1(\bigwedge\nolimits^n E)
.\]
:::

::: {.remark}
There is a natural isomorphism \( c(f^*(E)) \cong f^*(c(E)) \), since we can take iterated pullbacks:

```{=tex}
\begin{tikzcd}
    {f^* E} && {E = g^*\gamma_n} && {\gamma_n} \\
    \\
    Y && X && {{\operatorname{Gr}}_n({\mathbb{R}}^{\infty})}
    \arrow["g"', from=3-3, to=3-5]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-3, to=3-3]
    \arrow[from=1-1, to=3-1]
    \arrow[dashed, from=1-1, to=1-3]
    \arrow["f"', from=3-1, to=3-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-3, to=3-5]
    \arrow[from=1-5, to=3-5]
\end{tikzcd}
```
So we can identify \( c(f^*(E)) = ( g\circ f)^* \alpha \) and \( f^*(c(E)) = f^*(g^* \alpha) = (g\circ f)^* \alpha \).
:::

## Euler Classes and the Thom Isomorphism

::: {.remark}
Note that any vector bundle with a Riemannian metric admits a unit disc bundle.
:::

::: {.definition title="Oriented disc bundles"}
A unit disc bundle \( D \xrightarrow{\pi} B \) is **oriented** if there is a locally coherent choice of a generator of \( H^n(D_b \coloneqq\pi^{-1}(b), S^b \coloneqq{{\partial}}D_b; {\mathbb{Z}}) \).
:::

::: {.example title="?"}
The unit disc bundle for an oriented \( E \in { {\mathsf{Bun}}\qty{\operatorname{GL}_{n}} }({\mathbb{R}}, X) \) with a Riemannian metric will be oriented as a disc bundle.
:::

::: {.remark}
Given a bundle \( E\to X \) and taking its disc bundle \( {\mathbb{D}}E\to X \), taking boundaries on fibers yields a sphere bundle \( {\mathbb{S}}E\to X \), so \( {\mathbb{S}}E_b \coloneqq{{\partial}}{\mathbb{D}}E_b \) on fibers. Note the \( {\mathbb{D}}E \simeq X \) by a deformation retraction.
:::

::: {.theorem title="Thom Isomorphism Theorem"}
Let \( {\mathbb{D}}E\to X\in { {\mathsf{Bun}}\qty{\operatorname{GL}_{n}} }({\mathbb{R}}, X) \) be an oriented disc bundle and \( {\mathbb{S}}E \to X \) its corresponding sphere bundle. Then

1.  \( H^{i< n}({\mathbb{D}}E, {\mathbb{S}}E; {\mathbb{Z}}) = 0 \)
2.  There exists a **Thom class** \( u_E \in H^n({\mathbb{D}}E, {\mathbb{S}}E; {\mathbb{Z}}) \) inducing isomorphisms for all \( j\geq 0 \):
    \[
    ({-}) \smile u_E : H^j( {\mathbb{D}}E) &{ { \, \xrightarrow{\sim}\, }}H^{j+n}({\mathbb{D}}E, {\mathbb{S}}E) \\
    \eta &\mapsto \eta \smile u_E
    .\]
:::

::: {.proof title="of theorem"}
```{=tex}
\envlist
```
-   **Step 1**: Look locally to see why we might expect this result! If \( {\mathbb{D}}E\to X \) is trivial, then the claims hold.

-   **Step 2**: If the claims hold for \( { \left.{{{\mathbb{D}}E}} \right|_{{U}} }, { \left.{{{\mathbb{D}}E}} \right|_{{V}} }, { \left.{{{\mathbb{D}}E}} \right|_{{U \cap V}} } \), then it holds for \( { \left.{{{\mathbb{D}}E}} \right|_{{U \cup V}} } \). As a corollary, the claims hold for compact \( X \).

-   **Step 3**: Prove claims for \( H^*({-}; k) \) for \( k\in \mathsf{Field} \)

-   **Step 4**: Prove claims for \( H^*({-}; {\mathbb{Z}}) \).
:::

::: {.proof title="step 1"}
Trivial bundles are products, and we have formulas for cohomology of products. Write \( {\mathbb{D}}E = X \times {\mathbb{D}}^n \), and note that \( H^*({\mathbb{D}}^n, S^{n-1}; {\mathbb{Z}}) = {\mathbb{Z}}[n] \), which is always torsionfree. Thus
\[
H^k({\mathbb{D}}E, {\mathbb{S}}E; {\mathbb{Z}}) 
&= H^k({\mathbb{D}}^n\times X, S^{n-1} \times X; {\mathbb{Z}}) \\
&\cong \bigoplus_{0\leq i\leq k} H^i(X; {\mathbb{Z}}) \otimes_{\mathbb{Z}}H^{k-i}({\mathbb{D}}^n, S^{n-1}; {\mathbb{Z}}) \\
&\cong \bigoplus_{0\leq i\leq k} H^i(X; {\mathbb{Z}}) \otimes_{\mathbb{Z}}\qty{{\mathbb{Z}}[i+n ]}  \\
&= H^{k-n}(X; {\mathbb{Z}}) & \quad \text{ when } k>n, \text{ else } 0
.\]

So pick \( u\in H^n({\mathbb{D}}^n, S^{n-1}) \) be the generator specified by the orientation, and take \( u_E \in H^n({\mathbb{D}}E, {\mathbb{S}}E; {\mathbb{Z}}) \) to be the corresponding generator pulled back along the Kunneth isomorphism (which recall was induced by a cup product).
:::

::: {.proof title="step 2"}
Use Mayer-Vietoris:

```{=html}
<!--- 
\begin{tikzcd} 
[
  column sep={2em},
  row sep={3em},
]
    &&&& {H^{k-1}(\DD E\mid_{U \intersect V}, \SS E\mid_{U \intersect V} )} \\
    \\
    {H^k(\DD E\mid_{U \union V}, \SS E\mid_{U \union V} )} && {H^k(\DD E\mid_{U}, \SS E\mid_{U} ) \oplus H^k(\DD E\mid_{V}, \SS E\mid_{V} )} && {H^k(\DD E\mid_{U \intersect V}, \SS E\mid_{U \intersect V} )} \\
    \\
    \cdots
    \arrow[from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow[from=1-5, to=3-1, in=180, out=0]
    \arrow[from=3-5, to=5-1, in=180, out=0]
\end{tikzcd}
--->
```
![](figures/2021-10-03_21-35-21.png)

> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwyLCJIXmsoXFxERCBFXFxtaWRfe1UgXFx1bmlvbiBWfSwgXFxTUyBFXFxtaWRfe1UgXFx1bmlvbiBWfSApIl0sWzIsMiwiSF5rKFxcREQgRVxcbWlkX3tVfSwgXFxTUyBFXFxtaWRfe1V9ICkgXFxvcGx1cyBIXmsoXFxERCBFXFxtaWRfe1Z9LCBcXFNTIEVcXG1pZF97Vn0gKSJdLFs0LDIsIkheayhcXEREIEVcXG1pZF97VSBcXGludGVyc2VjdCBWfSwgXFxTUyBFXFxtaWRfe1UgXFxpbnRlcnNlY3QgVn0gKSJdLFs0LDAsIkhee2stMX0oXFxERCBFXFxtaWRfe1UgXFxpbnRlcnNlY3QgVn0sIFxcU1MgRVxcbWlkX3tVIFxcaW50ZXJzZWN0IFZ9ICkiXSxbMCw0LCJcXGNkb3RzIl0sWzAsMV0sWzEsMl0sWzMsMF0sWzIsNF1d)

-   If \( k< n \), the union terms vanish in degree \( k \), since they're surrounded by zeros.
-   If \( k=n \), the kernel of \( \oplus \to \cap \) is isomorphic to \( {\mathbb{Z}} \), so pick a generator \( u_{U \cup V} = { \left.{{u_E}} \right|_{{U \cup V}} } \) that lifts \( { \left.{{u_E}} \right|_{{U}} } \) and \( { \left.{{u_E}} \right|_{{V}} } \).

Next time: we'll show that \( u_{U \cup V} \smile({-}) \) yields the isomorphism in part 2 of the theorem statement.
:::

# Problem Set 1

## 1

::: {.problem title="?"}
With the definition of a vector bundle from class, show that the vector space operations define continuous maps:

\[
&+: E { \underset{\scriptscriptstyle {B} }{\times} } E \rightarrow E \\
&\times: \mathbb{R} \times E \rightarrow E
\]
:::

::: {.remark}
Definition of vector bundle: need charts \( (U, \phi) \) with \( \phi: \pi^{-1}(U) \to U\times{\mathbb{R}}^n \) which when restricted to a fiber \( F_b \) yields an isomorphism \( F_b { { \, \xrightarrow{\sim}\, }}{\mathbb{R}}^n \).

What are these maps??
:::

## 2.

::: {.problem title="?"}
Suppose you are given the following data:

-   Topological spaces \( B \) and \( F \)

-   A set \( E \) and a map of sets \( \pi: E \rightarrow B \)

-   An open cover \( \mathcal{U}=\left\{U_{i}\right\} \) of \( B \) and for each \( i \) a bijection \( \phi: \pi^{-1}\left(U_{i}\right) \rightarrow U_{i} \times F \) so that \( \pi \circ \phi_{i}=\pi \).

Give conditions on the maps \( \phi_{i} \) so that there is a topology on \( E \) making \( \phi: E \rightarrow B \) into a fiber bundle with \( \left\{\left(U_{i}, \phi_{i}\right)\right\} \) as an atlas.
:::

## 3.

::: {.problem title="?"}
An *oriented \( n \)-dimensional vector bundle* is a vector bundle \( \pi: E \rightarrow B \) together with an orientation of each fiber \( E_{b} \), so that these orientations are continuous in the following sense.

For each \( b \in B \) there is a chart \( (U, \phi) \) with \( b \in U \) and \( \phi: \pi^{-1}(U) \rightarrow U \times \mathbb{R}^{n} \) so that for all \( b^{\prime} \in U \),
\[
\left.\phi\right|_{E_{b^{\prime}}}: E_{b^{\prime}} \rightarrow \mathbb{R}^{n}
\]
is orientation-preserving.

Show that given an oriented \( n \)-dimensional vector bundle there is an induced principal \( G L_{+}\left(\mathbb{R}^{n}\right) \)-bundle (the "bundle of oriented frames"), and conversely given a principal \( G L_{+}\left(\mathbb{R}^{n}\right) \)-bundle there is an induced oriented \( n \)-plane bundle.
:::

## 4.

::: {.problem title="?"}
A Riemannian metric on a vector bundle \( \pi: E \rightarrow B \) is an inner product \( \langle\cdot, \cdot\rangle_{b} \) on each fiber \( E_{b} \) of \( E \), which is continuous in the sense that the induced map \( E \oplus E=E \times_{B} E \rightarrow \mathbb{R} \) is continuous.

Show that given a Riemannian metric on a vector bundle, there is an induced principal \( O(n) \)-bundle (the "bundle of orthonormal frames"), and conversely given a principal \( O(n) \)-bundle there is an induced vector bundle with Riemannian metric.
:::

## 5 .

::: {.problem title="?"}
What operation on principal \( O(n) \)-bundles corresponds to dualizing a vector bundle? What about the direct sum of vector bundle?
:::

## 6.

::: {.problem title="?"}
For nice spaces \( X \) (e.g. CW complexes) and abelian groups \( G \), there is a canonical isomorphism
\[
\check{H}^{i}(X ; G) \cong H^{i}(X ; G)
\]
between Čech and singular cohomology of \( X \) with coefficients in \( G \).

> A nice, readable proof can be found in Frank Warner's Foundations of Differential Manifolds and Lie Groups, Chapter 5. In the rest of this problem, cohomology either means Čech cohomology or singular cohomology after applying this isomorphism.

(a) Let \( \pi: E \rightarrow B \) be an \( n \)-dimensional vector bundle, or equivalently, a principal \( G L(n, \mathbb{R}) \)-bundle, given by a Čech cocycle \( \phi \in H^{1}(B ; G L(n, \mathbb{R})) \). Show that the sign of the determinant
    \[
    \operatorname{sgn}\operatorname{det}: \operatorname{GL}_n(\mathbb{R}) \rightarrow\{\pm 1\} \cong \mathbb{Z} / 2 \mathbb{Z}
    \]
    induces a map
    \[
      \check{H}^{1}(B ; G L(n, \mathbb{R})) \rightarrow \check{H}^{1}(B ; \mathbb{Z} / 2 \mathbb{Z})
      ,\]
    and so \( \phi \) induces an element \( w_{1}(E) \in H^{1}(B ; \mathbb{Z} / 2 \mathbb{Z}) \).

(b) Compute \( w_{1} \) for the trivial line bundle (1-dimensional vector bundle) over the circle and for the Möbius band.

(c) Prove that (for nice spaces) a line bundle \( \pi: E \rightarrow B \) is trivial if and only if \( w_{1}(E)=0 \in \) \( H^{1}(B ; \mathbb{Z} / 2 \mathbb{Z}) \)
:::

## 7.

::: {.problem title="?"}
Show that the exact sequence of abelian topological groups

\[
0 \rightarrow \mathbb{Z} \rightarrow \mathbb{R} \rightarrow S^{1}=G L(1, \mathbb{C}) \rightarrow 0
\]

induces an exact sequence in Čech cohomology

\[
\check{H}^{1}(B, \mathbb{Z}) \rightarrow \breve{H}^{1}(B, \mathbb{R}) \rightarrow \check{H}^{1}\left(B ; S^{1}\right) \stackrel{\delta}{\rightarrow} \check{H}^{2}(B ; \mathbb{Z})
\]

Given a complex line bundle (principal \( G L(1, \mathbb{C}) \)-bundle) \( \pi: E \rightarrow B \) coming from the cocycle data \( \phi \in H^{1}(B ; G L(1, \mathbb{C})) \), let \( c_{1}(E)=\delta(\phi) \). Compute \( c_{1}(E) \) for some complex line bundle over \( S^{2} \).
:::

[^1]: Here *locally finite* means every point is covered by finitely many opens in the cover.
