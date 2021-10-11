---
author: D. Zack Garza
date: "2021-04-28 18:09:50"
height: 900
notoc: true
slideNumber: true
tags:
- Unfiled
title: Mapping Class Groups
transition: fade
width: 1200
---

-   [Setup](#setup)
    -   [The Compact-Open Topology](#the-compact-open-topology)
        -   [Mapping Spaces](#mapping-spaces)
    -   [Aside on Analysis](#aside-on-analysis)
-   [Path Spaces](#path-spaces)
    -   [Homotopy and Isotopy in Terms of Path Spaces](#homotopy-and-isotopy-in-terms-of-path-spaces)
        -   [Proof](#proof)
-   [Defining the Mapping Class Group](#defining-the-mapping-class-group)
    -   [Isotopy](#isotopy)
    -   [Self-Homeomorphisms](#self-homeomorphisms)
    -   [Definitions in Several Categories](#definitions-in-several-categories)
    -   [Relation to Moduli Spaces](#relation-to-moduli-spaces)
-   [Examples of MCG](#examples-of-mcg)
    -   [The Plane: Straight Lines](#the-plane-straight-lines)
    -   [The Closed Disc: The Alexander Trick](#the-closed-disc-the-alexander-trick)
    -   [Overview of Big Results](#overview-of-big-results)
-   [Dehn Twists](#dehn-twists)
-   [MCG of the Torus](#mcg-of-the-torus)
    -   [Setup](#setup-1)
    -   [Proof](#proof-1)
        -   [Surjectivity](#surjectivity)
        -   [Injectivity](#injectivity)














[[Subjects/mapping class group | Subjects/mapping%20class%20group.html]]

Tags: \#topology

# Setup

-   All manifolds:

    -   Connected
    -   Oriented
    -   2nd countable (countable basis)
    -   Hausdorff (separate with disjoint neighborhoods, uniqueness of limits)
    -   With boundary (possibly empty)

-   Weakly Hausdorff: every continuous image of a compact Hausdorff space into it is closed.

-   Compactly generated: sets are closed iff their intersection with every compact subspace is closed.

-   Curves: simple, closed, oriented

-   Surfaces: these guys

-   For $X, Y$ topological spaces, consider `
    <span class="math display">
    \begin{align*}  
    Y^X = C(X, Y) = \hom_{\mathsf{Top}}(X, Y) \coloneqq\left\{{f: X\to Y {~\mathrel{\Big|}~}f\,\,\text{is continuous}}\right\}
    .\end{align*}
    <span>`{=html}

```{=tex}
\newpage
```
## The Compact-Open Topology

-   General idea: *cartesian closed* categories, require *exponential objects* or *internal homs*: i.e. for every hom set, there is some object in the category that represents it

    -   Slogan: we'd like homs to be spaces.

-   Can make this work if we assume WHCG: weakly Hausdorff and compactly generated.

-   Topologize with the *compact-open* topology ${\mathcal{O}}_{\text{CO}}$: `
    <span class="math display">
    \begin{align*}  
    U \in {\mathcal{O}}_{\text{CO}} \iff 
    \forall f\in U, \quad f(K) \subset Y \text{ is open for every compact } K\subseteq X
    .\end{align*}
    <span>`{=html}

### Mapping Spaces

-   So define `
    <span class="math display">
    \begin{align*}  
    \mathop{\mathrm{Maps}}(X, Y) \coloneqq(\hom_{\mathsf{Top}}(X, Y), {\mathcal{O}}_{\text{CO}}) \qquad\text{where }{\mathcal{O}}_{\text{CO}}\text{ is the compact-open topology}
    .\end{align*}
    <span>`{=html}

-   Can immediately define interesting derived spaces:

    -   ${\operatorname{Homeo}}(X, Y)$ the subspace of homeomorphisms
    -   $\mathrm{Imm}(X, Y)$, the subspace of immersions (injective map on tangent spaces)
    -   $\mathrm{Emb}(X, Y)$, the subspace of embeddings (immersion + diffeomorphic onto image)
    -   $C^k(X, Y)$, the subspace of $k\times$ differentiable maps
    -   $C^\infty(X, Y)$ the subspace of smooth maps
    -   $\mathrm{Diffeo}(X ,Y)$ the subspace of diffeomorphisms
    -   $C^\omega(X, Y)$ the subspace of analytic maps
    -   $\mathrm{Isom}(X, Y)$ the subspace of isometric maps (for Riemannian metrics)
    -   $[X, Y]$ homotopy classes of maps

```{=tex}
\newpage
```
## Aside on Analysis

-   If $Y = (Y, d)$ is a metric space, this is the topology of "uniform convergence on compact sets": for $f_n \to f$ in this topology iff `
    <span class="math display">
    \begin{align*}  
    {\left\lVert {f_n - f} \right\rVert}_{\infty, K} \coloneqq\sup \left\{{d(f_n(x), f(x)) {~\mathrel{\Big|}~}x\in K}\right\}\overset{n\to\infty}\to 0 \quad \forall K\subseteq X \,\,\text{compact}
    .\end{align*}
    <span>`{=html}

    -   In words: $f_n\to f$ uniformly on every compact set.

-   If $X$ itself is compact and $Y$ is a metric space, $C(X, Y)$ can be promoted to a metric space with

`
<span class="math display">
\begin{align*}
d(f, g) = \sup_{x\in X}(f(x), g(x))
.\end{align*}
<span>`{=html}

```{=tex}
\newpage
```

------------------------------------------------------------------------

# Path Spaces

-   Can immediately consider some interesting spaces via the functor $\mathop{\mathrm{Maps}}({-}, Y)$: `
    <span class="math display">
    \begin{align*}  
    X = {\operatorname{pt}}&\leadsto \quad \mathop{\mathrm{Maps}}({\operatorname{pt}}, Y) \cong Y \\
    X= I &\leadsto\quad \mathcal{P}Y  \coloneqq\left\{{f: I\to Y}\right\} = Y^I  \\
    X= S^1 &\leadsto\quad \mathcal{L}Y  \coloneqq\left\{{f: S^1\to Y }\right\} = Y^{S^1} 
    .\end{align*}
    <span>`{=html}

-   Adjoint property: there is a homeomorphism `
    <span class="math display">
    \begin{align*}  
    \mathop{\mathrm{Maps}}(X\times Z, Y) &\leftrightarrow_{\cong} \mathop{\mathrm{Maps}}(Z, Y^X) \\
    H:X\times Z \to Y &\iff \tilde H: Z\to \mathop{\mathrm{Maps}}(X, Y)\\
    (x, z) \mapsto H(x,z) &\iff z \mapsto H({-}, z)
    .\end{align*}
    <span>`{=html}

    -   Categorically, $\hom(X, {-}) \leftrightarrow (X\times{-})$ form an adjoint pair in ${\mathsf{Top}}$.

    -   A form of this adjunction holds in any cartesian closed category (terminal objects, products, and exponentials)

```{=tex}
\newpage
```
## Homotopy and Isotopy in Terms of Path Spaces

-   Can take basepoints to obtain the base path space $PY$, the based loop space $\Omega Y$.

-   Importance in homotopy theory: the path space fibration `
    <span class="math display">
    \begin{align*} 
    \Omega Y \hookrightarrow PY \xrightarrow{\gamma \mapsto \gamma(1)} Y
    \end{align*}
    <span>`{=html}

    -   Plays a role in "homotopy replacement", allows you to assume everything is a fibration and use homotopy long exact sequences.

-   Fun fact: with some mild point-set conditions (Locally compact and Hausdorff), `
    <span class="math display">
    \begin{align*}  
    \pi_0 \mathop{\mathrm{Maps}}(X, Y) = \left\{{[f],\, \text{homotopy classes of maps }f: X\to Y}\right\}
    ,\end{align*}
    <span>`{=html} i.e. two maps $f, g$ are homotopic $\iff$ they are connected by a path in $\mathop{\mathrm{Maps}}(X, Y)$.

    > Picture!

```{=tex}
\newpage
```
### Proof

`
<span class="math display">
\begin{align*}  
  \mathcal{P}\mathop{\mathrm{Maps}}(X, Y) = \mathop{\mathrm{Maps}}(I, Y^X) \cong \mathop{\mathrm{Maps}}(X\times I, Y)
,\end{align*}
<span>`{=html} and just check that $\gamma(0) = f \iff H(x, 0) = f$ and $\gamma(1) = g \iff H(x, 1) = g$.

-   Interpretation: the RHS contains homotopies for maps $X\to Y$, the LHS are paths in the space of maps.

------------------------------------------------------------------------

```{=tex}
\newpage
```
# Defining the Mapping Class Group

## Isotopy

-   Define a homotopy between $f, g: X\to Y$ as a map $F:X\times I \to Y$ restricting to $f, g$ on the ends.
    -   Equivalently: a *path*, an element of $\mathop{\mathrm{Maps}}(I, C(X, Y))$.
-   Isotopy: require the partially-applied function $F_t:X\to Y$ to be homeomorphisms for every $t$.
    -   Equivalently: a path in the subspace of homeomorphisms, an element of $\mathop{\mathrm{Maps}}(I, {\operatorname{Homeo}}(X, Y))$

> Picture: picture of homotopy, paths in $\mathop{\mathrm{Maps}}(X, Y)$, subspace of homeomorphisms.

```{=tex}
\newpage
```
## Self-Homeomorphisms

-   In any category, the automorphisms form a group.

    -   In a general category $\mathcal{C}$, we can always define the group $\mathop{\mathrm{Aut}}_{\mathcal{C}}(X)$.

        -   If the group has a topology, we can consider $\pi_0 \mathop{\mathrm{Aut}}_{\mathcal{C}}(X)$, the set of path components.
        -   Since groups have identities, we can consider $\mathop{\mathrm{Aut}}^0_{\mathcal{C}}(X)$, the path component containing the identity.

    -   So we make a general definition, the *extended mapping class group*: `
        <span class="math display">
        \begin{align*}  
        {\operatorname{MCG}}^\pm_{\mathcal{C}}(X) \coloneqq\mathop{\mathrm{Aut}}_{\mathcal{C}}(X) / \mathop{\mathrm{Aut}}_{\mathcal{C}}^0(X)
        .\end{align*}
        <span>`{=html}

    -   Here the $\pm$ indicates that we take both orientation preserving and non-preserving automorphisms.

    -   Has an index 2 subgroup of orientation-preserving automorphisms, ${\operatorname{MCG}}^+(X)$.

    -   Can define ${\operatorname{MCG}}_{{\partial}}(X)$ as those that restrict to the identity on ${{\partial}}X$.

> Picture: quotienting out by identity component

```{=tex}
\newpage
```
## Definitions in Several Categories

-   Now restrict attention to `
    <span class="math display">
    \begin{align*}  
    {\operatorname{Homeo}}(X) \coloneqq\mathop{\mathrm{Aut}}_{{\mathsf{Top}}}(X) = \left\{{f\in \mathop{\mathrm{Maps}}(X, X) {~\mathrel{\Big|}~}f \text{ is an isomorphism}}\right\} \\
    \qquad\text{equipped with }{\mathcal{O}}_{\text{CO}}
    .\end{align*}
    <span>`{=html}
    -   Taking ${\operatorname{MCG}}^\pm_{\mathsf{Top}}(X)$ yields *homeomorphism up to homotopy*
-   Similarly, we can do all of this in the smooth category: `
    <span class="math display">
    \begin{align*}  
    {\operatorname{Diffeo}}(X) \coloneqq\mathop{\mathrm{Aut}}_{C^\infty}(X)
    .\end{align*}
    <span>`{=html}
    -   Taking ${\operatorname{MCG}}_{C^\infty}(X)$ yields *diffeomorphism up to isotopy*
-   Similarly, we can do this for the homotopy category of spaces: `
    <span class="math display">
    \begin{align*}  
    \text{ho}(X) \coloneqq\left\{{[f] \in [X, Y]}\right\}
    .\end{align*}
    <span>`{=html}
    -   Taking ${\operatorname{MCG}}(X)$ here yields *homotopy classes of self-homotopy equivalences*.

```{=tex}
\newpage
```
```{=tex}
\newpage
```
## Relation to Moduli Spaces

-   For topological manifolds: Isotopy classes of homeomorphisms

    -   In the compact-open topology, two maps are isotopic iff they are in the same component of $\pi_0 \mathop{\mathrm{Aut}}(X)$.

-   For surfaces: For $\Sigma$ a genus $g$ surface, ${\operatorname{MCG}}(S)$ acts on the Teichmuller space $T(S)$, yielding a SES `
    <span class="math display">
    \begin{align*}  
    0 \to {\operatorname{MCG}}(\Sigma) \to T(\Sigma) \to {\mathcal{M}}_g \to 0 
    \end{align*}
    <span>`{=html} where the last term is the moduli space of Riemann surfaces homeomorphic to $X$.

-   $T(S)$ is the moduli space of complex structures on $S$, up to the action of homeomorphisms that are isotopic to the identity:

    -   Points are isomorphism classes of marked Riemann surfaces
    -   Equivalently the space of hyperbolic metrics

-   Used in the Neilsen-Thurston Classification: for a compact orientable surface, a self-homeomorphism is isotopic to one which is any of:

    -   Periodic,
    -   Reducible (preserves some simple closed curves), or
    -   Pseudo-Anosov (has directions of expansion/contraction)

> Picture: $\mathcal{M}_g$.

```{=tex}
\newpage
```
# Examples of MCG

## The Plane: Straight Lines

-   ${\operatorname{MCG}}_{\mathsf{Top}}({\mathbb{R}}^2) = 1$: for any $f:{\mathbb{R}}^2\to {\mathbb{R}}^2$, take the straight-line homotopy: `
    <span class="math display">
    \begin{align*}  
    F: {\mathbb{R}}^2 \times I &\to {\mathbb{R}}^2 \\
    F(x, t) &= tf(x) + (1-t)x
     .\end{align*}
    <span>`{=html}

> Picture: parameterize line between $x$ and $f(x)$ and flow along it over time.

```{=tex}
\newpage
```
## The Closed Disc: The Alexander Trick

-   ${\operatorname{MCG}}_{\mathsf{Top}}(\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{D}}\mkern-1.5mu}\mkern 1.5mu^2) = 1$: for any $f: \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{D}}\mkern-1.5mu}\mkern 1.5mu^2\to\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{D}}\mkern-1.5mu}\mkern 1.5mu^2$ such that ${ \left.{{f}} \right|_{{{{\partial}}\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{D}}\mkern-1.5mu}\mkern 1.5mu^2}} } = \operatorname{id}$, take `
    <span class="math display">
    \begin{align*}  
    F: \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{D}}\mkern-1.5mu}\mkern 1.5mu^2 \times I &\to \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{D}}\mkern-1.5mu}\mkern 1.5mu^2 \\
    F(x, t) &\coloneqq
    \begin{cases}
    t f \qty{x\over t} & {\left\lVert {x} \right\rVert} \in [0, t) \\
    x & {\left\lVert {x} \right\rVert} \in [1-t, 1]
    \end{cases}
    .\end{align*}
    <span>`{=html}

    -   This is an isotopy from $f$ to the identity.

    -   Interpretation: "cone off" your homeomorphism over time:

    -   Note that this won't work in the smooth category: singularity at origin

```{=tex}
\newpage
```
## Overview of Big Results

-   The word problem in ${\operatorname{MCG}}(\Sigma_g)$ is solvable

-   Any finite group is ${\operatorname{MCG}}(X)$ for some compact hyperbolic 3-manifold $X$.

-   For $g\geq 3$, the center of ${\operatorname{MCG}}(\Sigma_g)$ is trivial and $H_1({\operatorname{MCG}}(\Sigma_g); {\mathbb{Z}}) = 1$

    -   Why care: same as abelianization of the group.

::: {.theorem .proofenv title="Dehn-Neilsen-Baer"}
Let $\Sigma_g$ be compact and oriented with $\chi(\Sigma_g) < 0$. Then `
<span class="math display">
\begin{align*}  
{\operatorname{MCG}}^+_{\partial}(\Sigma_g) \cong \mathop{\mathrm{Out}}_{\partial}(\pi_1(\Sigma_g)) \cong_{{\mathsf{Grp}}} \pi_0 \mathrm{ho}_{\partial}(\Sigma_g)
.\end{align*}
<span>`{=html}
:::

-   For $g\geq 4$, $H_2({\operatorname{MCG}}(\Sigma_g); {\mathbb{Z}}) = {\mathbb{Z}}$

    -   Why care: used to understand surface bundles

    ```{=tex}
    \begin{center}
    \begin{tikzcd}
    \Sigma_g \ar[r] & E \ar[d] \\
     & B  \\
    \end{tikzcd}
    \end{center}
    ```
    -   Find the classifying space $B{\operatorname{Diffeo}}$

    -   Understand its homotopy type, since the homotopy LES yields `
        <span class="math display">
        \begin{align*}
        [S^n, B{\operatorname{Diffeo}}(\Sigma_g)] \cong [S^{n-1}, {\operatorname{Diffeo}}(\Sigma_g)]
        \end{align*}
        <span>`{=html}

    -   Theorem (Earle-Ells): For $g\geq 2$, ${\operatorname{Diffeo}}_0(\Sigma_g)$ is contractible. As a consequence, ${\operatorname{Diffeo}}(\Sigma_g) \twoheadrightarrow{\mathsf{Mod}}(\Sigma_g)$ is a homotopy equivalence, and there is a correspondence: `
        <span class="math display">
        \begin{align*}  
        \left\{{\substack{\text{Oriented $\Sigma_g$ bundles} \\ \text{over } B }}\right\}/\text{\tiny Bundle isomorphism}
        \iff
        \left\{{\substack{\text{Monodromy Representations} \\ \rho: \pi_1(B) \to {\operatorname{MCG}}(\Sigma_g)}}\right\}/\text{\tiny Conjugacy}
        .\end{align*}
        <span>`{=html}

------------------------------------------------------------------------

```{=tex}
\newpage
```
# Dehn Twists

-   ${\operatorname{MCG}}(\Sigma_g)$ is generated by finitely many **Dehn twists**, and always has a finite presentation

::: {.claim .proofenv}
Let $A \coloneqq\left\{{z\in {\mathbb{C}}{~\mathrel{\Big|}~}1\leq {\left\lvert {z} \right\rvert} \leq 2}\right\}$, then ${\operatorname{MCG}}(A) \cong {\mathbb{Z}}$, generated by the map `
<span class="math display">
\begin{align*}  
\tau_0: {\mathbb{C}}&\to {\mathbb{C}}\\
z & \mapsto \exp{2\pi i {\left\lvert {z} \right\rvert}}\, z
.\end{align*}
<span>`{=html}

> See complex function plotter
:::

```{=tex}
\newpage
```
# MCG of the Torus

## Setup

::: {.definition .proofenv title="Special Linear Group"}
`
<span class="math display">
\begin{align*}  
{\operatorname{SL}}(n, {\mathbb{k}}) = \left\{{M\in \operatorname{GL}(n, {\mathbb{k}}) \mathrel{\Big|}\operatorname{det}M = 1}\right\} = \ker \operatorname{det}_{{\mathbb{G}}_m}
.\end{align*}
<span>`{=html}
:::

::: {.definition .proofenv title="Symplectic Group"}
`
<span class="math display">
\begin{align*}  
{\mathsf{Sp}}(2n, {\mathbb{k}}) = \left\{{M\in \operatorname{GL}(2n, {\mathbb{k}}) \mathrel{\Big|}M^t\Omega M = \Omega}\right\} \leq {\operatorname{SL}}(2n, {\mathbb{k}})
\end{align*}
<span>`{=html} where $\Omega$ is a nondegenerate skew-symmetric bilinear form on ${\mathbb{k}}$.

Example: `
<span class="math display">
\begin{align*}  
\Omega = 
\begin{bmatrix}
0 & I_n \\
-I_n & 0
\end{bmatrix}
.\end{align*}
<span>`{=html}
:::

::: {.definition .proofenv title="Algebraic Intersection"}
A bilinear antisymmetric form on middle homology: `
<span class="math display">
\begin{align*}  
\widehat{\iota}: H_1(\Sigma_g; {\mathbb{Z}}) \otimes H_1(\Sigma_g; {\mathbb{Z}}) \to {\mathbb{Z}}
.\end{align*}
<span>`{=html}

> Note that this is a symplectic pairing.
:::

-   There is a natural action of ${\operatorname{MCG}}(\Sigma)$ on $H_1(\Sigma; {\mathbb{Z}})$, i.e. a *homology representation* of ${\operatorname{MCG}}(\Sigma)$: `
    <span class="math display">
    \begin{align*}  
    \rho: {\operatorname{MCG}}(\Sigma) &\to \mathop{\mathrm{Aut}}_{{\mathsf{Grp}}}(H_1(\Sigma; {\mathbb{Z}})) \\
    f &\mapsto f_*
    .\end{align*}
    <span>`{=html}

```{=tex}
\newpage
```
-   For a surface of finite genus $g\geq 1$, elements in $\operatorname{im}\rho$ preserve the *algebraic intersection form*

-   Thus there is an interesting surjective representation: `
    <span class="math display">
    \begin{align*}  
    0 \to \mathrm{Tor}(\Sigma_g) \hookrightarrow{\operatorname{MCG}}(\Sigma_g) \twoheadrightarrow{\mathsf{Sp}}(2g; {\mathbb{Z}}) \to 0
    .\end{align*}
    <span>`{=html}

-   Kernel is the *Torelli group*, interesting because the symplectic group is well understood, so questions about ${\operatorname{MCG}}$ reduce to questions about $\operatorname{Tor}$.

::: {.theorem .proofenv title="Mapping Class Group of the Torus"}
The homology representation of the torus induces an isomorphism `
<span class="math display">
\begin{align*}  
\sigma: {\operatorname{MCG}}(\Sigma_2) \xrightarrow{\cong} {\operatorname{SL}}(2, {\mathbb{Z}})
\end{align*}
<span>`{=html}
:::

```{=tex}
\newpage
```
## Proof

-   For $f$ any automorphism, the induced map $f_*: {\mathbb{Z}}^2 \to {\mathbb{Z}}^2$ is a group automorphism, so we can consider the group morphism `
    <span class="math display">
    \begin{align*}  
    \tilde \sigma: ({\operatorname{Homeo}}(X,X), \circ) &\to (\operatorname{GL}(2, {\mathbb{Z}}), \circ) \\
    f &\mapsto f_*
    .\end{align*}
    <span>`{=html}

-   This will descend to the quotient ${\operatorname{MCG}}(X)$ iff `
    <span class="math display">
    \begin{align*}{\operatorname{Homeo}}^0(X, X) \subseteq \ker \tilde \sigma = \tilde\sigma^{-1}(\operatorname{id})\end{align*}
    <span>`{=html}

    -   This is true here, since any map in the identity component is homotopic to the identity, and homotopic maps induce the equal maps on homology.

-   So we have a (now injective) map `
    <span class="math display">
    \begin{align*}  
    \tilde \sigma:{\operatorname{MCG}}(X) &\to \operatorname{GL}(2, {\mathbb{Z}})  \\
    f &\mapsto f_*
    .\end{align*}
    <span>`{=html}

```{=tex}
\newpage
```
::: {.claim .proofenv}
$\operatorname{im}(\tilde\sigma )\subseteq {\operatorname{SL}}(2, {\mathbb{Z}})$.
:::

::: {.proof .proofenv}
```{=tex}
\hfill
```
-   Algebraic intersection numbers in $\Sigma_2$ correspond to determinants
-   $f\in {\operatorname{Homeo}}^+(X)$ preserve algebraic intersection numbers.
-   See section 1.2 of Farb and Margalit
:::

-   We can thus freely restrict the codomain to define the map `
    <span class="math display">
    \begin{align*}  
    \sigma:{\operatorname{MCG}}(X) &\to {\operatorname{SL}}(2, {\mathbb{Z}})  \\
    f &\mapsto f_*
    .\end{align*}
    <span>`{=html}

```{=tex}
\newpage
```
### Surjectivity

::: {.claim .proofenv}
$\sigma$ is surjective.
:::

-   ${\mathbb{R}}^2$ is the universal cover of $\Sigma_2$, with deck transformation group ${\mathbb{Z}}^2$.

-   Any $A\in {\operatorname{SL}}(2, {\mathbb{Z}})$ extends to $\tilde A \in \operatorname{GL}(2, {\mathbb{R}})$, a linear self-homeomorphism of the plane that is orientation-preserving.

::: {.claim .proofenv}
$\tilde A$ is equivariant wrt ${\mathbb{Z}}^2$
:::

::: {.proof .proofenv}
`
<span class="math display">
\begin{align*}  
{\operatorname{SL}}(2, {\mathbb{Z}}) = \left\langle{ S = 
\begin{bmatrix}
0 & -1 \\
1 & 0
\end{bmatrix}
, T =
\begin{bmatrix}
1 & 1 \\
0 & 1
\end{bmatrix}
}\right\rangle
.\end{align*}
<span>`{=html}

Note that `
<span class="math display">
\begin{align*}  
S^2 = 1, \qquad 
T^n = 
\begin{bmatrix}
1 & n \\
0 & 1
\end{bmatrix}
\end{align*}
<span>`{=html}

So if $\mathbf{x} = {\left[ {x_1, x_2} \right]} \in {\mathbb{Z}}\oplus {\mathbb{Z}}$ and $\tilde A\in {\operatorname{SL}}(2, {\mathbb{Z}})$, we have $\tilde A\mathbf{x} \in {\mathbb{Z}}\oplus {\mathbb{Z}}$, i.e. $A$ preserves any integer lattice `
<span class="math display">
\begin{align*}  
\Lambda = \left\{{p \mathbf{v}_1 + q\mathbf{v}_2 {~\mathrel{\Big|}~}p, q\in {\mathbb{Z}}}\right\} 
.\end{align*}
<span>`{=html}
:::

-   So $\tilde A$ descends to a well-defined map `
    <span class="math display">
    \begin{align*}  
    \psi_{\tilde A}: \Sigma_2 {\circlearrowleft}= {\mathbb{R}}^2 / {\mathbb{Z}}^2 {\circlearrowleft}
    \end{align*}
    <span>`{=html} which is still a linear self-homeomorphism.

```{=tex}
\newpage
```
-   There is a correspondence `
    <span class="math display">
    \begin{align*}  
    \left\{{\substack{\text{Primitive curves in }  \\ \pi_1(\Sigma_2) \cong {\mathbb{Z}}^2}}\right\} \iff 
    \left\{{\substack{\text{Primitive vectors in }{\mathbb{Z}}^2}}\right\}
    \iff
    \left\{{\substack{\text{Oriented simple closed} \\\text{curves in } \Sigma_2}}\right\}/\text{\tiny homotopy}
    ,\end{align*}
    <span>`{=html} where an element $x$ is *primitive* iff it is not a multiple of another element.

    -   By changing basis, you can associate a unique primitive vector to $M$ (all components coprime)

-   By the correspondence, changing a map by a homotopy corresponds to the same primitive vector

-   Thus $\sigma([\psi_{\tilde A}]) = \tilde A$, and we have surjectivity.

```{=tex}
\newpage
```
### Injectivity

::: {.claim .proofenv}
$\sigma$ is injective.
:::

-   Useful fact: $\Sigma_2 \simeq K({\mathbb{Z}}^2, 1)$.

::: {.proposition .proofenv title="Hatcher 1B.9"}
Let $X$ be a connected CW complex and $Y$ a $K(G, 1)$. Then there is a map `
<span class="math display">
\begin{align*}  
\hom_{\mathsf{Grp}}(\pi_1(X; x_0), \pi_1(Y; y_0)) \to \hom_{\mathsf{Top}}((X; x_0), (Y; y_0))
,\end{align*}
<span>`{=html} i.e. every homomorphism of fundamental groups is induced by a continuous pointed map.

Moreover, the map is unique up to homotopies fixing $x_0$.
:::

-   Thus there is a correspondence `
    <span class="math display">
    \begin{align*}  
    \left\{{\substack{\text{Homotopy classes of } \\ \text{maps }\Sigma_2 {\circlearrowleft}}}\right\}
    \iff
    \left\{{\substack{\text{Group morphisms } {\mathbb{Z}}^2{\circlearrowleft}}}\right\}
    .\end{align*}
    <span>`{=html}

-   Claim: any element $f\in {\operatorname{MCG}}(\Sigma_2)$ has a representative $\phi$ which fixes any given basepoint

-   So if $f\in \ker \sigma$, then $f\simeq \phi \simeq \operatorname{id}$ are homotopic, so $\ker \sigma = 1$.
