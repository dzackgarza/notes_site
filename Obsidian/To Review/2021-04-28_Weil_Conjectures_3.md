---
date: '2020-04-13'
tags:
- Unfiled
title: Weil Conjectures Notes
---














[[../Unsorted/Zeta function](../Unsorted/Zeta%20function.md) [../Unsorted/Number theory](../Unsorted/Number%20theory.md) [Algebraic Geometry](../Subjects/Algebraic%20Geometry.md) [Weil Conjectures | ../Subjects/Weil%20Conjectures.html]] [GRH](GRH)

About [[../Unsorted/variety | ../Unsorted/variety.html]]: defined by polynomial equations, Hypersurfaces are defined by one equation Let $X/K: f(x_0, \cdots, x_{n+1}) = 0, \mathbf{x} \in {\mathbb{P}}_k^{n+2}$, so the variety will have dimension.

For any $L/K$ we can consider the $L$ points $X(L) = \mathbf{x}\in L^{n+2} / \sim$ where identify $\mathbf{x} = \lambda \mathbf{x}$ for any $\lambda \in L^{\times}$?

Example: $n=1$, $f(x,y,z) = y^2 z - x^3 - ax^2 z - bz^3 \in {\mathbb{P}}^2_K$ for $K = {\mathbb{Q}}$, where $a, b \in {\mathbb{Z}}$, is the homogeneous [[Weierstrass equation](Weierstrass%20equation) for an [../Unsorted/elliptic curve | ../Unsorted/elliptic%20curve.html]].

Example: Taking $K = {\mathbb{C}}$ for an arbitrary $X$ yields a complex analytic space (manifold with singularities), which is in fact a manifold when $\operatorname{Jac}(f_1, \cdots, f_n) \neq 0$ is nonvanishing on $X({\mathbb{C}})$ (so the tangent space is full dimension everywhere).

Example: For $K = {\mathbb{F}}_p$, $X({\mathbb{F}}_p)$ is a finite set, which we can count.

We can consider extensions $F_{p^r} = {\mathbb{F}}_p[\left\{{\zeta_{p^r}}\right\}]$ given by adjoining all of the roots of $x^{p^r} - 1$. We now obtain a sequence of numbers: `
<span class="math display">
\begin{align*}
\# X({\mathbb{F}}_p), \# {\mathbb{F}}_{p^2}, \cdots
.\end{align*}
<span>`{=html}

Can we determine them completely (without a brute-force count)? Can we say anything about the asymptotics?

The simplest case: $X = {\mathbb{A}}^n$, we have ${\mathbb{A}}^n({\mathbb{F}}_{p^r}) = p^{rn}$, so in general $X({\mathbb{F}}_{p^r}) = p^{rn} - \text{ error terms }$.

Theorem (Weil)
:   If $n=1$, so there is 1 defining equation, with $X$ smooth and connected, then $\# X({\mathbb{F}}_{p^r}) = p^r + O(p^{r/2})$.

We in fact know $\# X({\mathbb{F}}_{p^r})$ is $p^r + 1 - \sum_{i=1}^g \alpha+i^r$ where $g$ is the genus of ths curve and $\alpha_i \in \mkern 1.5mu\overline{\mkern-1.5mu\mathbb{Q}\mkern-1.5mu}\mkern 1.5mu$ with ${\left\lvert {\iota(\alpha)} \right\rvert}= \sqrt{2}$ for any embedding $\mkern 1.5mu\overline{\mkern-1.5mu\mathbb{Q}\mkern-1.5mu}\mkern 1.5mu\hookrightarrow{\mathbb{C}}$ where the $\alpha_i$ are algebraic.

Note that this condition is much stronger than ${\left\lvert {\alpha_i} \right\rvert} = \sqrt{p}$, since e.g. $1 \pm \sqrt 2$ have two different norms.

How to generalize to higher dimensions: do combinatorics! Take a certain generating series, the zeta function: \[\[ Z(X, t) = `\exp`{=tex}( `\sum`{=tex}*{r=1}\^`\infty {t^r \over r}`{=tex} \# X(`{\mathbb{F}}`{=tex}*{p\^t})) `\in `{=tex}`{\mathbb{Q}}`{=tex}`{\left[\left[ t \right]\right]  }`{=tex}\]\]

> Note that we're not using an OGF.

Example: For $X= {\mathbb{P}}^n$, take the hyperplane $f(\mathbf{x}) - x_{n+2} = 0$. Then $\#X({\mathbb{F}}_{p^r}) = p^rn + p^{r(n-1)} + p^{r(n-2)} + \cdots + 1$ where we count the embedded ${\mathbb{A}}^n$ in the first term, an ${\mathbb{A}}^{n-1}$ in the hyperplane at infinity, the embedded ${\mathbb{A}}^{n-2}$ in *its* hyperplane at infinity, etc.

Note that the sum will turn this into a product, and we get `
<span class="math display">
\begin{align*}
Z({\mathbb{P}}^n, t) = \prod_{j=0}^n \exp(\sum_t {t^r \over r}p^{rj}) = \prod_{j=0}^n {1 \over 1 - p^jt}
.\end{align*}
<span>`{=html} which is in fact a rational function.

In general, for $X$ a curve, we obtain `
<span class="math display">
\begin{align*}
Z(X, t) = {(1 - \alpha_1 t) \cdots(1 - \alpha_j t \over (1-t) (1-pt) )} 
.\end{align*}
<span>`{=html}

[[Weil Conjectures | ../Subjects/Weil%20Conjectures.html]] for $X$ smooth and connected of dimension $n$:

-   $Z(X, t) \in {\mathbb{Q}}(t)$
-   (RH) Explicitly, $Z(X, t) = {P_1(t) \cdots P_{2n-1}(t) \over P_0(t) \cdots P_{2n}(t)}$
    -   $P_i(t) \in {\mathbb{Z}}[t]$, so the roots are algebraic integers. Normalize to $P_i(0) = 1$ so the constant term is 1.
    -   $P_i(t) = \prod_j (1 - \alpha_{ij} t)$ (i.e. the roots), so the absolute value of every embedding is $p^{i/2}$
-   (Functional equation) $Z(X, 1/p^nt) = \pm t^\chi p^{c/2} Z(X, t)$ where $c = \sum_{i=0}^{2n} (-1)^\chi \deg P_i$. Note that $\chi$ will be the Euler-Poincare characteristic.
-   If $X$ comes by reduction mod $p$ from some $X'/{\mathbb{Q}}$, then $\deg P_i = \beta_i = \dim_{\mathbb{Q}}H^i(X({\mathbb{C}}); {\mathbb{Q}})$.

Note that the genus is half of the first [Betti number](Betti%20number). See also [Poincaré polynomial](Poincaré%20polynomial)

Why are they called the RH for varieties over [finite fields](finite%20fields)? Identify ${\mathbb{Z}}$ as the ring of functions over a curve $\operatorname{Spec}{\mathbb{Z}}$. We think of $x\in \operatorname{Spec}{\mathbb{Z}}$ as a map $\operatorname{ev}_x: {\mathbb{Z}}\to {\mathbb{F}}_p$ of rings, so points correspond to evaluating at the point.

Recall that we can write the [[../Unsorted/Riemann zeta function](../Unsorted/Riemann%20zeta%20function.md) as the [Dirichlet series | ../Unsorted/Dirichlet%20series.html]] $\zeta(s) = \sum_n {1 \over n^s}$ and expand as an [Euler product](Euler%20product) $\prod_{p\text{ prime}} {1 \over 1 - p^{-s}$.
