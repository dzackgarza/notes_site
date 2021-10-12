---
aspectratio: 169
author: D. Zack Garza
colortheme: default
date: April 2020
fontfamily: 'noto-sans'
fontsize: 10pt
header-includes:
- |
  ```{=tex}
  \usepackage{cmbright}
  ```
subtitle: Sections 8.3 and 8.4
theme: Berkeley
title: Linearization and Transversality
---

```{=tex}
\usepackage{cmbright}
```

-   [Review](#review)
    -   [Recalling Notation](#recalling-notation)
    -   [The "Program" for Chapter 8](#the-program-for-chapter-8)
-   [Section 8.3: The Space of Perturbations of H](#section-8.3-the-space-of-perturbations-of-h)
    -   [Goal](#goal)
    -   [Goal](#goal-1)
    -   [Define an Absolute Value](#define-an-absolute-value)
    -   [Define a Norm](#define-a-norm)
    -   [Define a Banach Space](#define-a-banach-space)
    -   [Sketch Proof of Theorem](#sketch-proof-of-theorem)
    -   [Modified Theorem](#modified-theorem)
-   [Section 8.4: Linearizing the Floer Equation: The Differential of F](#section-8.4-linearizing-the-floer-equation-the-differential-of-f)
    -   [Goal](#goal-2)
    -   [Definitions](#definitions)
    -   [Compactify to Sphere](#compactify-to-sphere)
    -   [Lift to 2-Sphere](#lift-to-2-sphere)
    -   [Trivialize the Pullback](#trivialize-the-pullback)
    -   [Choose a Frame](#choose-a-frame)
    -   [Define "Banach Manifold Charts"](#define-banach-manifold-charts)
    -   [Define the Floer Map in Charts](#define-the-floer-map-in-charts)
    -   [Add a Tangent](#add-a-tangent)
    -   [Add a Tangent](#add-a-tangent-1)
    -   [Extract Linear Part](#extract-linear-part)
    -   [Leibniz Rule](#leibniz-rule)
    -   [Sketch: Proof of Leibniz Rule](#sketch-proof-of-leibniz-rule)
    -   [Decompose by Order](#decompose-by-order)
    -   [Order One](#order-one)
    -   [Recap](#recap)
    -   [Order 0 Term is Linear](#order-0-term-is-linear)
    -   [Order 0 Symmetry in the Limit](#order-0-symmetry-in-the-limit)
    -   [Proof](#proof)
    -   [Proof](#proof-1)
    -   [asdas](#asdas)
    -   [Image](#image)
    -   [Proof Sketch](#proof-sketch)
    -   [Proof Sketch](#proof-sketch-1)
    -   [Final Remarks](#final-remarks)
    -   [Final Remarks](#final-remarks-1)














[[Floer Reading Group Fall 2020 | ../../../../Unsorted/Floer%20Reading%20Group%20Fall%202020.html]]

Review
======

Recalling Notation
------------------

-   The Floer equation is given by `\begin{align*}
    \frac{\partial u}{\partial s}+J(u) \frac{\partial u}{\partial t}+\operatorname{grad} H_{t}(u)=0
    .\end{align*}`{=tex}

-   Critical points of the action functional ${\mathcal{A}}_H$ are given by orbits, i.e. contractible loops $x, y \in {\mathcal{L}}W$

-   In general, $x, y$ are two periodic orbits of $H$ of period 1.

-   Solutions are functions $u \in C^\infty({\mathbb{R}}\times S^1; W) = C^\infty({\mathbb{R}}; {\mathcal{L}}W)$

-   ${\mathcal{M}}(x, y)$ is the moduli space of solutions of the Floer equation connecting orbits $x$ and $y$.

-   $W^{1, p}(x, y)$ and ${\mathcal{P}}^{1, p}(x, y)$ were completions of $C^\infty(?)$ with respect to certain norms.

The "Program" for Chapter 8
---------------------------

-   Show that ${\mathcal{M}}(x, y)$ is a manifold of dimension $\mu(x) - \mu(y)$
-   Define ${\mathcal{M}}(x, y)$ as the inverse image of a regular value of some map
-   Perturb $H$ to apply the Sard-Smale theorem
-   Show the tangent maps are Fredholm operators and compute their index.

Section 8.3: The Space of Perturbations of H
============================================

Goal
----

**Goal**: Given a fixed Hamiltonian $H\in C^\infty(W\times S^1; {\mathbb{R}})$, perturb it (without modifying the periodic orbits) so that ${\mathcal{M}}(x, y)$ are manifolds of the expected dimension.

Goal
----

`\tiny `{=tex}Start by trying to construct a subspace ${\mathcal{C}}_{\varepsilon}^{\infty}(H) \subset {\mathcal{C}}^\infty(W\times S^1; {\mathbb{R}})$, the space of perturbations of $H$ depending on a certain sequence ${\varepsilon}= \left\{{{\varepsilon}_k}\right\}$, and show it is a dense subspace.
```{=tex}
\begin{center}
\includegraphics[width = 0.8\textwidth]{figures/image_2020-04-14-23-36-58.png} 
\end{center}
```
Define an Absolute Value
------------------------

Idea: similar to how you build $L^2({\mathbb{R}})$, define a norm ${\left\lVert {{-}} \right\rVert}_{\varepsilon}$ on $C_{\varepsilon}^{\infty}(H)$ and take the subspace of finite-norm elements.

-   Let $h(\mathbf{x}, t) \in C_{\varepsilon}^\infty(H)$ denote a perturbation of $H$.

-   Fix ${\varepsilon}= \left\{{{\varepsilon}_k \mathrel{\Big|}k\in {\mathbb{Z}}^{\geq 0}}\right\} \subset {\mathbb{R}}^{>0}$ a sequence of real numbers, which we will choose carefully later.

-   For a fixed $\mathbf{x} \in W, t\in {\mathbb{R}}$ and $k \in {\mathbb{Z}}^{\geq 0}$, define `
    <span class="math display">
    \begin{align*}
    {\left\lvert {d^k h(\mathbf{x}, t)} \right\rvert} = \max \left\{{d^\alpha h(\mathbf{x}, t) {~\mathrel{\Big|}~}{\left\lvert {\alpha} \right\rvert} = k}\right\}
    ,\end{align*}
    <span>`{=html} the maximum over all sets of multi-indices $\alpha$ of length $k$.

    > Note: I interpret this as `
    > <span class="math display">
    > \begin{align*}
    > d^{\alpha_1, \alpha_2, \cdots, \alpha_k}h = \frac{{\partial}^k h}{{\partial}x_{\alpha_1} ~{\partial}x_{\alpha_2} \cdots {\partial}x_{\alpha_k}}
    > ,\end{align*}
    > <span>`{=html} the partial derivatives wrt the corresponding variables.

Define a Norm
-------------

-   Define a norm on $C^\infty(W\times S^1; {\mathbb{R}})$:

    `\begin{align*}
    \|h\|_{\mathbf{\varepsilon}}
    &= \sum_{k \geq 0} {\varepsilon}_{k} \sup _{(x, t) \in W \times S^{1}}\left|d^{k} h(x, t)\right|
    .\end{align*}`{=tex}

-   Since $W\times S^1$ is assumed compact (?), fix a finite covering $\left\{{B_i}\right\}$ of $W\times S^1$ such that `
    <span class="math display">
    \begin{align*}
    \cup_i B_i^\circ = W \times S^1
    .\end{align*}
    <span>`{=html}

    -   Choose them in such a way we obtain charts `\begin{align*}
        \Psi_i: B_i &\to \mkern 1.5mu\overline{\mkern-1.5muB(0, 1)\mkern-1.5mu}\mkern 1.5mu \subset {\mathbb{R}}^{2n + 1} ~(?)
        .\end{align*}`{=tex}

-   Obtain the computable form `\begin{align*}
    {\left\lVert {h} \right\rVert}_{\mathbf{\varepsilon}} &= \sum_{k \geq 0} {\varepsilon}_{k} \sup _{(x, t) \in W \times S^{1}} \sup_{i, z\in B(0, 1)} {\left\lvert { d^k (h\circ \Psi_i^{-1})(z)} \right\rvert}
    .\end{align*}`{=tex}

Define a Banach Space
---------------------

-   Define `
    <span class="math display">
    \begin{align*}
      C_{\varepsilon}^\infty = \left\{{h\in C^\infty(W\times S^1; {\mathbb{R}}) {~\mathrel{\Big|}~}{\left\lVert {h} \right\rVert}_{\varepsilon}< \infty}\right\} \subset C^{\infty}(W\times S^1; {\mathbb{R}})
      ,\end{align*}
    <span>`{=html} which is a Banach space (normed and complete).

-   Show that the sequence $\left\{{{\varepsilon}_k}\right\}$ can be chosen so that $C_{\varepsilon}^\infty$ is a *dense* subspace for the $C^\infty$ topology, and in particular for the $C^1$ topology.

Theorem
:   Such a sequence $\left\{{{\varepsilon}_k}\right\}$ can be chosen.

Lemma
:   $C^\infty(W \times S^1; {\mathbb{R}})$ with the $C^1$ topology is separable as a topological space (contains a countable dense subset).

Sketch Proof of Theorem
-----------------------

-   By the lemma, produce a sequence $\left\{{f_n}\right\} \subset C^\infty(W\times S^1; {\mathbb{R}})$ dense for the $C^1$ topology.

-   Using the norm on $C^n(W\times S^1; {\mathbb{R}})$ for the $f_n$, define

    `\begin{align*}
    \frac 1 {{\varepsilon}_n} = 2^n \displaystyle\max \left\{{{\left\lVert {f_k} \right\rVert} {~\mathrel{\Big|}~}k\leq n}\right\}
    \implies {\varepsilon}_n \sup {\left\lvert {d^n f_k(x, t)} \right\rvert} \leq 2^{-n}
    \end{align*}`{=tex}

    which is summable.

$\hfill\blacksquare$

> Why does this imply density? I don't know.

Modified Theorem
----------------

The next proposition establishes a version of this theorem with compact support:

Theorem
:   For any $(\mathbf{x}, t) \subset U \in W \times S^1)$ there exists a $V\subset U$ such that every $h\in C^{\infty}(W\times S^1; {\mathbb{R}})$ can be approximated in the $C^1$ topology by functions in $C_{\varepsilon}^\infty$ supported in $U$.

Then fix a time-dependent Hamiltonian $H_0$ with nondegenerate periodic orbits and consider `
<span class="math display">
\begin{align*}
\left\{{ h\in C_{\varepsilon}^\infty(H_0) {~\mathrel{\Big|}~}h(x, t) = 0 \text{ in some $U\supseteq$ the 1-periodic orbits of $H_0$}}\right\}
\end{align*}
<span>`{=html} Then $\mathop{\mathrm{supp}}(h)$ is "far" from $\mathop{\mathrm{per}}(H_0)$, so `
<span class="math display">
\begin{align*}
{\left\lVert {h} \right\rVert}_{\varepsilon}\ll 1 \implies \mathop{\mathrm{per}}(H_0 + h) = \mathop{\mathrm{per}}(H_0)
\end{align*}
<span>`{=html} and are both nondegenerate.

Section 8.4: Linearizing the Floer Equation: The Differential of F
==================================================================

Goal
----

Choose $m> n = \dim (W)$ and embed $TW \hookrightarrow{\mathbb{R}}^m$ to identify tangent vectors (such as $Z_i$, tangents to $W$ along $u$ or in a neighborhood $B$ of $u$) with actual vectors in ${\mathbb{R}}^m$.

> Why? Bypasses differentiating vector fields and the Levi-Cevita connection.

We can then identify `
<span class="math display">
\begin{align*}
\operatorname{im}{\mathcal{F}}= C^\infty ({\mathbb{R}}\times S^1; {\mathbb{R}}^m) {\quad \operatorname{or} \quad} L^p({\mathbb{R}}\times S^1; W)
,\end{align*}
<span>`{=html} and we seek to compute its differential $d {\mathcal{F}}$.

> We've just replaced the codomain here.

Definitions
-----------

Recall that

-   $x, y$ are contractible loops in $W$ that are nondegenerate critical points of the action functional ${\mathcal{A}}_H$,
-   $u \in {\mathcal{M}}(x, y) \subset C_{\mathsf{loc}}^\infty$ denotes a fixed solution to the Floer equation,
-   $C_{\searrow}(x ,y) \subset \left\{{u \in C^\infty(R\times S^1; W)}\right\}$ is the set of smooth solutions $u: {\mathbb{R}}\times S^1 \to W$ satisfying some conditions:

`\begin{align*}
&\lim_{s\to -\infty}u(s, t) = x(t),~ \lim_{s\to\infty}u(s, t) = y(t) \\ \\
&\text{and } {\left\lvert {{\frac{\partial u}{\partial t}\,}(s, t)} \right\rvert}, ~~ {\left\lvert {{\frac{\partial u}{\partial t}\,}(s, t) - X_H(u)} \right\rvert}  \sim \exp({\left\lvert {s} \right\rvert})
\end{align*}`{=tex}

Compactify to Sphere
--------------------

Fix a solution `
<span class="math display">
\begin{align*}
u\in {\mathcal{M}}(x, y) \subset C_{{\mathsf{loc}}}^\infty({\mathbb{R}}\times S^1; W)
.\end{align*}
<span>`{=html}

We lift each solution to a map `
<span class="math display">
\begin{align*}
\tilde u: S^2 \to W
\end{align*}
<span>`{=html} in the following way:

The loops $x, y$ are contractible, so they bound discs. So we extend by pushing these discs out slightly:

Lift to 2-Sphere
----------------

`
<span class="math display">
\begin{align*}
u \in C^\infty(S^1\times{\mathbb{R}}; W) \quad\mapsto\quad \tilde u \in C^\infty(S^2; W) 
\end{align*}
<span>`{=html}
```{=tex}
\begin{center}
\includegraphics[width = 1.02\textwidth]{figures/image_2020-04-15-18-10-40.png} 
\end{center}
```
Trivialize the Pullback
-----------------------

From earlier in the book, we have

**Assumption (6.22)**:

For every $w\in C^\infty(S^2, W)$ there exists a symplectic trivialization of the fiber bundle $w^* TW$, i.e. ${\left\langle {c_1(TW)},~{\pi_2(W)} \right\rangle} = 0$ where $c_1$ denotes the first Chern class of the bundle $TW$.

> `\tiny `{=tex}Note: I don't know what this pairing is. The top Chern class is the Euler class (obstructs nowhere zero sections) and are defined inductively: `
> <span class="math display">
> \begin{align*}
> c_1(TW) = e(\Lambda^n(TW)) \in H^2(W; {\mathbb{Z}})
> \end{align*}
> <span>`{=html} Assumption is satisfied when all maps $S^2 \to W$ lift to $B^3$ $\iff \pi_2(W) = 0$.

We have a pullback that is a symplectic fiber bundle:
```{=tex}
\begin{center}
\begin{tikzcd}[ampersand replacement=\&]
\tilde u^* TW \ar[r, "d\tilde u"] \ar[d]
\arrow[dr, phantom, "\scalebox{1.5}{\color{black}$\lrcorner$}" , very near start, color=black]
\& TW\ar[d] \\
S^2 \ar[r, "\tilde u"] \& W
\end{tikzcd}
\end{center}
```
Choose a Frame
--------------

-   Using the assumption, trivialize the pullback $\tilde u ^* TW$ to obtain an orthonormal unitary frame `
    <span class="math display">
    \begin{align*}\left\{{Z_i}\right\}_{i=1}^{2n} \subset T_{u(s, t)} W\end{align*}
    <span>`{=html} where
    -   The frame depends smoothly on $(s, t) \in S^2$,
    -   $\lim_{s\to \infty} Z_i$ exists for each $i$.
    -   `
        <span class="math display">
        \begin{align*}{\frac{\partial }{\partial s}\,}, \quad \frac{{\partial}^2}{{\partial}s^2}, \quad \frac{{\partial}^2}{{\partial}s~{\partial}t} \quad \curvearrowright Z_i \overset{s\to \pm\infty}\to 0\quad \text{for each } i\end{align*}
        <span>`{=html}

Claim: such trivializations exist, "using cylinders near the spherical caps in the figure".

Define "Banach Manifold Charts"
-------------------------------

Recall we had $W^{1, p}(x, y)$ a completion of $C^\infty$ `\begin{align*}
{\mathcal{M}}(x, y) \subset C_{\searrow}^\infty(x, y) \subset {\mathcal{P}}^{1, p}(x , y) \underset{\text{defn}}\subset \left\{{ (s, t) \xrightarrow{\varphi} \exp_{w(s, t)} Y(s, t)}\right\}
.\end{align*}`{=tex}

where we restrict to

-   $Y \in W^{1, p}(w^* TW)$,
-   $w\in C_{\searrow}^\infty(x, y)$

Use the chosen frame $\left\{{Z_i}\right\}$ to define a chart centered at $u$ of ${\mathcal{P}}^{1, p}(x, y)$ given by `\begin{align*}
\iota: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow \mathcal{P}^{1, p}(x, y) \\
\mathbf{y} = \left(y_{1}, \dots, y_{2 n}\right) & \longmapsto \exp _{u}\left(\sum y_{i} Z_{i}\right)
.\end{align*}`{=tex}

-   Note that the derivative at zero is $\sum_{i=1}^{2n} y_i Z_i$.

Define the Floer Map in Charts
------------------------------

Define and compute the differential of the composite map $\tilde{\mathcal{F}}$ defined as follows:
```{=tex}
\begin{center}
  \begin{tikzcd}[ampersand replacement=\&]
  \mathcal{P}^{1, p}(x, y) \ar[r, "\mathcal{F}"] \ar[rr, dotted, "\tilde {\mathcal{F}}", bend left]
  \& L^{p}\left(\mathbb{R} \times S^{1} ; T W\right) \ar[r]
  \& L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{m}\right) \\
  u \ar[rr, "\tilde {\mathcal{F}}"] \& \&\frac{\partial u}{\partial s}+J(u)\left(\frac{\partial u}{\partial t}-X_{t}(u)\right)
  \end{tikzcd}
  \end{center}
```
-   From now on, let ${\mathcal{F}}$ denote $\tilde {\mathcal{F}}$.

Add a Tangent
-------------

-   Take the vector `
    <span class="math display">
    \begin{align*}Y(s, t) \coloneqq(y_1(s, t), \cdots) \in {\mathbb{R}}^{2n} \subset {\mathbb{R}}^m\end{align*}
    <span>`{=html}

    -   View $Y$ as a vector in ${\mathbb{R}}^m$ tangent to $W$, given by $Y = \sum_{i=1}^{2n} y_i Z_i$.

-   Plug $u + Y$ into the equation for ${\mathcal{F}}$, directly yielding

Add a Tangent
-------------

```{=tex}
\begin{center}
\begin{tikzcd}[ampersand replacement=\&, matrix scale=0.002]
{\mathcal{F}}(u) =
\& \frac{\partial u}{\partial s} 
\& + J(u) \frac{\partial u}{\partial t} 
\& - J(u)X_{t}(u) \\
\mathcal{F}(u+Y) =
\& \frac{\partial(u+Y)}{\partial s}
\&+ J(u+Y) \frac{\partial(u+Y)}{\partial t}
\&- J(u+Y) X_{t}(u+Y)
\end{tikzcd}
\end{center}
```
Extract Linear Part
-------------------

Extract the part that is linear in $Y$ and collect terms: `\begin{align*}
&(d \mathcal{F})_{u}(Y)  \\
& = {\color{red}\frac{\partial Y}{\partial s}} +(d J)_{u}(Y) \frac{\partial u}{\partial t} + {\color{red} J(u) \frac{\partial Y}{\partial t}} -(d J)_{u}(Y) X_{t}-J(u)\left(d X_{t}\right)_{u}(Y) \\ 
& = 
\qty{ {\color{red}\frac{\partial Y}{\partial s}} + {\color{red} J(u) \frac{\partial Y}{\partial t}}}  \\
& \quad + \qty{ (d J)_{u}(Y) \frac{\partial u}{\partial t} - (d J)_{u}(Y) X_{t}-J(u)\left(d X_{t}\right)_{u}(Y)} \\
.\end{align*}`{=tex}

-   This is a sum of two differential operators:
    -   One of order 1, one of order 0 (Perspective 1)
    -   The Cauchy-Riemann operator, and one of order zero (Perspective 2, not immediate from this form)

Leibniz Rule
------------

-   Now compute in charts. Need a lemma:

Lemma (Leibniz Rule)

:   For any source space $X$ and any maps `\begin{align*}
    J: X &\to \endo({\mathbb{R}}^m) \\
    Y, v: X &\to {\mathbb{R}}^m
    \end{align*}`{=tex}

    we have `\begin{align*}
    (dJ)(Y) \cdot v = d(Jv)(Y) - J dv(Y)
    .\end{align*}`{=tex}

Sketch: Proof of Leibniz Rule
-----------------------------

Differentiate the map `\begin{align*}
J\cdot v: X &\to {\mathbb{R}}^m \\
x &\mapsto J(x)\cdot v(x)
\end{align*}`{=tex}

to obtain `\begin{align*}
&J(x + Y) v(x + y)  \\ 
&= \qty{J(x) + (dJ)_{x} (Y) } ~\cdot~ \qty{v(x) + (dv)_x(Y)} + \cdots \\
&= J(x) \cdot v(x) + {\color{blue} J(x) \cdot (dv)_x(Y) + (dJ)_x(Y) \cdot v(x)}  \\
&\quad + (dJ)_x(Y)\cdot (dv)_x(Y) + \cdots \\ \\ 
&\implies d(J\cdot v)_x(Y) =  (dJ)_x(Y) \cdot v(x) + J(x) \cdot (dv)_x(Y) 
.\end{align*}`{=tex}

$\hfill\blacksquare$

Decompose by Order
------------------

Using the chart $\iota$ defined by $\left\{{Z_i}\right\}$ to write $Y = \sum_{i=1}^{2n} y_i Z_i$ and thus `\begin{align*}
(d{\mathcal{F}})_u(Y) = O_0 + O_1 
\end{align*}`{=tex} where $O_0$ are order 0 terms ("they do not differentiate the $y_i$") and the $O_1$ are order 1 terms: `\begin{align*}
O_1 &= \sum_{i=1}^{2n} \qty{ {\frac{\partial y_i}{\partial s}\,} Z_i + {\frac{\partial y_i}{\partial t}\,} J(u) Z_i}  \\ \\
O_0 &= \sum_{i=1}^{2n} y_i \Bigg( {\frac{\partial Z_i}{\partial s}\,} + J(u) {\frac{\partial Z_i}{\partial t}\,} + (dJ)_u (Z_i) {\frac{\partial u}{\partial t}\,}  \\
&\quad\quad\quad\quad - J(u) (dX_t)_u Z_i - (dJ)_u (Z_i) X_t \Bigg)
.\end{align*}`{=tex}

Order One
---------

-   Study $O_1$ first, which (claim) reduces to `\begin{align*}
    O_1 = \sum_{i=1}^{2n} \qty{{\frac{\partial y_i}{\partial s}\,} + J_0 {\frac{\partial y_i}{\partial t}\,}  }Z_i = \mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu(y_1, \cdots, y_{2n})
    .\end{align*}`{=tex} where $J_0$ is the standard complex structure on ${\mathbb{R}}^{2n} = {\mathbb{C}}^n$

-   The second equality follows from the assumption that the $Z_i$ are symplectic and orthonormal.

-   Note that this writes $(d{\mathcal{F}})_u(Y) = O_0 + O_{CR}$, a sum of an order zero and a Cauchy-Riemann operator.

Recap
-----

Note that since we've computed in charts, we have actually computed the differential of ${\mathcal{F}}_u$ in the following diagram

![[figures/image_2020-04-16-01-11-02.png]]\

So we've technically computed $(dF_\mu)_0$.

Order 0 Term is Linear
----------------------

`\begin{align*}
(d{\mathcal{F}})_u &= 
\qty{ {\color{red}\frac{\partial Y}{\partial s}} + {\color{red} J(u) \frac{\partial Y}{\partial t}}}  \\
&\quad +  \qty{ (d J)_{u}(Y) \frac{\partial u}{\partial t} - (d J)_{u}(Y) X_{t}-J(u)\left(d X_{t}\right)_{u}(Y)}  \\ \\
&\coloneqq{\color{red} \mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5muY} + SY
\end{align*}`{=tex} where $S\in C^\infty({\mathbb{R}}\times S^1; \endo({\mathbb{R}}^n))$ is a linear operator of order 0.

Order 0 Symmetry in the Limit
-----------------------------

Theorem (8.4.4, CR + Symmetric in the Limit)

:   If $u$ solves Floer's equation, then `
    <span class="math display">
    \begin{align*}
    (d{\mathcal{F}})_u = \mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu+ S( s, t)
    \end{align*}
    <span>`{=html} where

    -   $S$ is linear
    -   $S$ tends to a symmetric operator as $s\to \pm \infty$, and
    -   `
        <span class="math display">
        \begin{align*}{\frac{\partial S}{\partial s}\,}(s, t)  \overset{s\to\pm\infty}\to 0 {\quad \operatorname{uniformly in $t$} \quad}\end{align*}
        <span>`{=html}

Proof
-----

Omitted -- $S$ is exactly $O_0$ from before: `\begin{align*}
O_0 
&= \sum_{i=1}^{2n} y_i \Bigg( {\frac{\partial Z_i}{\partial s}\,} + J(u) {\frac{\partial Z_i}{\partial t}\,} + {\color{blue} (dJ)_u (Z_i) {\frac{\partial u}{\partial t}\,}}  \\
&\quad\quad\quad\quad - J(u) (dX_t)_u Z_i - {\color{blue} (dJ)_u (Z_i) X_t} \Bigg) \\
&= \sum_{i=1}^{2n} y_i \Bigg() {\frac{\partial Z_i}{\partial s}\,} + { \color{blue} (dJ)_u (Z_i) \qty{ {\frac{\partial u}{\partial t}\,} - (Z_i) X_t} } \\
&\quad\quad\quad\quad + J(u) {\frac{\partial Z_i}{\partial t}\,}  - J(u) (dX_t)_u Z_i \Bigg)
.\end{align*}`{=tex}

-   The term in blue vanishes as $s\to \pm \infty$
    -   Using the fact that $u$ is a solution
    -   Uses ${\frac{\partial u}{\partial s}\,} \to 0$ uniformly (as do its derivatives?)
-   Suffices to show the remaining part is symmetric in the limit

Proof
-----

-   Write the remaining part as `\begin{align*}
    A(y_1, \cdots, y_{2n}) = \cdots \implies A_{ij} = A_{ji}
    \end{align*}`{=tex} using inner product calculations

-   Uses the fact the $Z_i$ needed to be chosen to be unitary and symplectic.

$\hfill\blacksquare$

asdas
-----

Write $O_0$ as a map $Y \mapsto S\cdot Y$, so $S\in C^\infty({\mathbb{R}}\times S^1; \endo({\mathbb{R}}^{2n}))$ and define the symmetric operators `
<span class="math display">
\begin{align*}
S^{\pm} \coloneqq\lim_{s\to \pm\infty} S(s, {-}) {\quad \operatorname{respectively} \quad}
\end{align*}
<span>`{=html}

Theorem
:   The equation `
    <span class="math display">
    \begin{align*}
    {\partial}_t Y = J_0 S^{\pm} Y
    \end{align*}
    <span>`{=html} linearizes Hamilton's equation `\begin{align*}
    {\frac{\partial z}{\partial t}\,} = X_t(z){\quad \operatorname{at} \quad} 
    \begin{cases}
    x = \lim_{s\to -\infty} u & \text{for } S^- \\
    y = \lim_{s\to \infty} u & \text{for } S^+
    \end{cases}\quad\text{respectively}
    .\end{align*}`{=tex}

Image
-----

Reminder the $x, y$ were the top/bottom pieces of the original cylinder/sphere:

```{=tex}
\begin{center}
\includegraphics[height= 0.8\textheight]{figures/image_2020-04-15-21-53-36.png} 
\end{center}
```
Proof Sketch
------------

-   Use the fact that ${\frac{\partial Y}{\partial t}\,} = (dX_t)_x Y$
-   Expand $\sum {\frac{\partial y_i}{\partial t}\,} Z_i$ in the $Z_i$ basis (roughly) to write ${\frac{\partial y_i}{\partial t}\,} = \sum b_{ij} y_j$ for some coefficients $b_{ij}$.
-   Collect terms into a matrix/operator $B^\mp$ for $x,y$ respectively to write `
    <span class="math display">
    \begin{align*}{\frac{\partial Y}{\partial t}\,} = B^- \cdot Y\end{align*}
    <span>`{=html}
-   Write $(d{\mathcal{F}})_u = \mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu+ S$ where $S$ is zero order and symmetric in the limit

Proof Sketch
------------

-   Get the corresponding operator $A$ in coordinates
-   Expand in a basis (roughly) as $A(\sum y_i Z_i) = \sum s_{ij} y_j Z_i$
-   Check that $s_{ij} = \pm b_{i\pm n, j}$
-   This implies `
    <span class="math display">
    \begin{align*}S^- = - J_0 B^- \quad S^+ = -J_0 B^+ \implies {\frac{\partial Y}{\partial t}\,} = J_0 S^\pm Y\end{align*}
    <span>`{=html}

Final Remarks
-------------

-   Given a solution $u$, we have a right ${\mathbb{R}}{\hbox{-}}$action, so for $s\in {\mathbb{R}}$, `\begin{align*}
    u \cdot s \in C^\infty({\mathbb{R}}\times S^1; W) \\ 
    (\sigma, t) \mapsto u(\sigma + s, t)
    \end{align*}`{=tex} is also a solution, so ${\mathcal{F}}(u \cdot s) = 0$ for all $s$.

> In other words: we can flow solutions?

Final Remarks
-------------

**Punchline**:**${\frac{\partial u}{\partial s}\,}$ is a solution of the linearized equation**, since

`\begin{align*}
0 = {\frac{\partial }{\partial s}\,} {\mathcal{F}}(u\cdot s) = (d{\mathcal{F}})_u \qty{{\frac{\partial u}{\partial s}\,}}
.\end{align*}`{=tex}

-   Along any nonconstant solution connecting $x$ and $y$, $\dim \ker (d{\mathcal{F}})_u \geq 1$.
