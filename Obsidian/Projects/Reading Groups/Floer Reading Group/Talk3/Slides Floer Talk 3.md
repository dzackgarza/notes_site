---
colortheme: beetle
theme: Warsaw
title: 'Section 8.6 - 8.8: Setup for Computing the Index'
---

-   [Intro](#intro)
    -   [Outline](#outline)
    -   [Map](#map)
    -   [Destination](#destination)
    -   [Review From Last Time](#review-from-last-time)
    -   [Strategy](#strategy)
-   [8.6 Review](#review)
    -   [Review: 8.6.1, Unwrapping/Reduction](#review-8.6.1-unwrappingreduction)
    -   [Toward 8.6.3, Injectivity: $R(v)$ is Open](#toward-8.6.3-injectivity-rv-is-open)
    -   [Sketch of Proof: $R(v)$ is Open](#sketch-of-proof-rv-is-open)
    -   [Toward 8.6.3, Injectivity: $R(v)$ is Dense](#toward-8.6.3-injectivity-rv-is-dense)
-   [8.6.3: $R(v)$ is dense in ${\mathbb{R}}^2$](#rv-is-dense-in-mathbbr2)
    -   [Step 1: Exclude critical points $\cap$ multiple points](#step-1-exclude-critical-points-cap-multiple-points)
    -   [Step 1: Exclude critical points $\cap$ multiple points](#step-1-exclude-critical-points-cap-multiple-points-1)
    -   [Step 1: Exclude critical points $\cap$ multiple points](#step-1-exclude-critical-points-cap-multiple-points-2)
    -   [Step 1: Exclude critical points $\cap$ multiple points](#step-1-exclude-critical-points-cap-multiple-points-3)
    -   [Step 1: Exclude critical points $\cap$ multiple points](#step-1-exclude-critical-points-cap-multiple-points-4)
    -   [Step 1: Exclude critical points $\cap$ multiple points](#step-1-exclude-critical-points-cap-multiple-points-5)
    -   [Step 2: Failure of Injectivity in Small Boxes](#step-2-failure-of-injectivity-in-small-boxes)
    -   [Step 2: Failure of Injectivity in Small Boxes](#step-2-failure-of-injectivity-in-small-boxes-1)
    -   [Step 2: Failure of Injectivity in Small Boxes](#step-2-failure-of-injectivity-in-small-boxes-2)
    -   [Step 3: Final Contradiction](#step-3-final-contradiction)
    -   [Step 3: Final Contradiction](#step-3-final-contradiction-1)
    -   [Step 3: Final Contradiction](#step-3-final-contradiction-2)
    -   [Step 3: Final Contradiction](#step-3-final-contradiction-3)
    -   [The Continuation Principle](#the-continuation-principle)
    -   [The Continuation Principle](#the-continuation-principle-1)
    -   [Similarity Principle](#similarity-principle)
    -   [Similarity Principle](#similarity-principle-1)
-   [8.7](#section)
    -   [8.7 Outline](#outline-1)
    -   [8.7 Outline: Step 1, $\dim \ker L < \infty$](#outline-step-1-dim-ker-l-infty)
    -   [8.7 Outline: $\dim \ker L < \infty$](#outline-dim-ker-l-infty)
    -   [8.7 Outline: $\dim \ker L < \infty$](#outline-dim-ker-l-infty-1)
    -   [8.7 Outline: $\dim \ker L < \infty$](#outline-dim-ker-l-infty-2)
-   [8.8](#section-1)
    -   [8.8: Outline](#outline-2)
    -   [8.8: Replacing $L$](#replacing-l)
    -   [8.8: Replacing $L$](#replacing-l-1)
    -   [8.8: $L_0 \leadsto L_1$](#l_0-leadsto-l_1)
    -   [8.8: Index of $L_1$](#index-of-l_1)














Intro
=====

Outline
-------

What we're trying to prove:

-   8.1.5: $(d{\mathcal{F}})_u$ is a Fredholm operator of index $\mu(x) - \mu(y)$.

```{=tex}
\begin{center}
\includegraphics[width = 0.3\textwidth]{figures/image_2020-05-11-00-55-25.png} 
\end{center}
```
Used to show:

```{=tex}
\scriptsize
```
-   8.1.4: $\Gamma: W^{1, p} \times C_{\varepsilon}^\infty \to L^p$ has a continuous right-inverse and is surjective
-   8.1.3: ${\mathcal{Z}}(x, y, J)$ is a Banach manifold
-   8.1.1: $h\in {\mathcal{H}}_{\text{reg}}, H_0 + h$ nondegenerate and `
    <span class="math display">
    \begin{align*}(d{\mathcal{F}})_u \text{ surjective } \forall ~u\in {\mathcal{M}}(H_0 + h, J).\end{align*}
    <span>`{=html}
-   8.1.2: For $h \in {\mathcal{H}}_{\text{reg}}$ and $x, y\sim {\operatorname{pt}}$ of $H_0$, `
    <span class="math display">
    \begin{align*}\dim_{\text{mfd}} {\mathcal{M}}(x, y, H_0 + h) = \mu(x) - \mu(y).\end{align*}
    <span>`{=html} `\normalsize`{=tex}

Map
---

```{=tex}
\begin{center}
\includegraphics[width = 0.7\textwidth]{figures/image_2020-05-13-18-45-19.png} 
\end{center}
```
```{=tex}
\tiny
```
`\begin{align*}
8.1.4: & \Gamma: W^{1, p} \times C_{\varepsilon}^\infty \to L^p \text{ cts right-inverse}
\qquad 8.1.3: {\mathcal{Z}}(x, y, J)  \text{a Banach manifold} \\
8.1.1: & h\in {\mathcal{H}}_{\text{reg}}, H_0 + h \text{ nondegenerate and } (d{\mathcal{F}})_u \text{ surjective } \forall ~u\in {\mathcal{M}}(H_0 + h, J) \\
8.1.2: & h \in {\mathcal{H}}_{\text{reg}}\text{ and } x, y\sim {\operatorname{pt}}\text{ of } H_0 \implies  \dim_{\text{mfd}} {\mathcal{M}}(x, y, H_0 + h) = \mu(x) - \mu(y)
.\end{align*}`{=tex} `\normalsize`{=tex}

Destination
-----------

What we're working toward now:

-   8.1.5: $(d{\mathcal{F}})_u$ is a Fredholm operator of index $\mu(x) - \mu(y)$.

Outline for today:

-   8.6: Filling in lemmas used in previous sections
    -   Sketch proof of 8.6.3, statement of **Somewhere Injectivity**
    -   Statement of **Continuation Principle**
    -   Statement of **Similarity Principle**
-   High-level outlines
    -   8.7: Proving the operator is Fredholm
    -   8.8: Computing its index

Review From Last Time
---------------------

-   $u \in C^\infty({\mathbb{R}}\times S^1; W)$ is a solution to the Floer equation
-   $C(u)$ the critical points and $R(u)$ the regular points of $u$: `\scriptsize`{=tex} `\begin{align*}
    C(u) &\coloneqq\left\{{(s_0, t_0) \in {\mathbb{R}}\times S^1 {~\mathrel{\Big|}~}{\frac{\partial u}{\partial s}\,}(s_0, t_0) = 0 }\right\} \\
    R(u) &\coloneqq\left\{{(s_0, t_0) \in C(u)^c {~\mathrel{\Big|}~}v(s, t) \neq x^\pm(t),~~s\neq s_0 \implies u(s, t_0) \neq u(s_0, t_0)}\right\}
    .\end{align*}`{=tex} `\normalsize`{=tex}

**WTS**: $C(u)$ is discrete and $R(u)$ is open/dense in ${\mathbb{R}}\times S^1$

-   Strategy: "unwrap" $u$ to an easier solution $v$ on ${\mathbb{R}}^2$.

Strategy
--------

```{=tex}
\scriptsize
```
Strategy:

1.  "Unwrapping" $u$. Replace `\begin{align*}
    {\frac{\partial u}{\partial s}\,} + J(t, u) \qty{{\frac{\partial u}{\partial t}\,} - X(t, u)} = 0 {\quad \operatorname{where} \quad} u \in C^\infty({\color{blue}{\mathbb{R}}\times S^1}; W)
     \end{align*}`{=tex} with a Cauchy-Riemann equation on ${\mathbb{R}}^2$: `
    <span class="math display">
    \begin{align*}{\frac{\partial v}{\partial s}\,} + J {\frac{\partial v}{\partial t}\,} = 0 {\quad \operatorname{where} \quad} v\in C^\infty({\color{blue}{\mathbb{R}}^2}; W)\end{align*}
    <span>`{=html} *(Reduces to showing statements for $v$ instead of $u$)*

2.  Show $R(v)\subset {\mathbb{R}}^2$ is open (short)

3.  Show $R(v) \subset {\mathbb{R}}^2$ is dense (main obstacle)

Main Ingredients:

-   Continuation Principle
-   Similarity Principle `\normalsize`{=tex}

8.6 Review
==========

Review: 8.6.1, Unwrapping/Reduction
-----------------------------------

```{=tex}
\scriptsize
```
If $u$ is a solution to the following equation: `\begin{align*}
\frac{\partial u}{\partial s}+J(t, u)\left(\frac{\partial u}{\partial t}-X(t, u)\right)=0
\end{align*}`{=tex} Then there exist

-   An almost complex structure $J_1$
-   A diffeomorphism $\varphi$ on $W$ ?
-   A map $v \in C^\infty({\mathbb{R}}^2; W)$

where `\begin{align*}
{\frac{\partial v}{\partial s}\,} + J_1(v) {\frac{\partial v}{\partial t}\,} &= 0 \\
v(s, t+1) &= \varphi(v(s, t)) \\
C(u) = C(v) \quad &\text{and }\quad  R(u) = R(v)
.\end{align*}`{=tex}

-   Recall definition of $v$: `
    <span class="math display">
    \begin{align*}v(s, t) \coloneqq\psi_t^{-1}\qty{ u(s, t) }\end{align*}
    <span>`{=html}

```{=tex}
\normalsize
```
Toward 8.6.3, Injectivity: $R(v)$ is Open {#toward-8.6.3-injectivity-rv-is-open}
-----------------------------------------

`\begin{align*}
C(u) &\coloneqq\left\{{(s_0, t_0) \in {\mathbb{R}}\times S^1 {~\mathrel{\Big|}~}{\frac{\partial u}{\partial s}\,}(s_0, t_0) = 0 }\right\} \\
R(u) &\coloneqq\left\{{(s_0, t_0) \in C(u)^c {~\mathrel{\Big|}~}v(s, t) \neq x^\pm(t),~~s\neq s_0 \implies u(s, t_0) \neq u(s_0, t_0)}\right\}
.\end{align*}`{=tex}

```{=tex}
\begin{center}
\includegraphics[width = 0.5\textwidth]{figures/image_2020-05-13-23-51-21.png} 
\end{center}
```
Sketch of Proof: $R(v)$ is Open {#sketch-of-proof-rv-is-open}
-------------------------------

```{=tex}
\scriptsize
```
`\begin{align*}
C(u) &\coloneqq\left\{{(s_0, t_0) \in {\mathbb{R}}\times S^1 {~\mathrel{\Big|}~}{\frac{\partial u}{\partial s}\,}(s_0, t_0) = 0 }\right\} \\
R(u) &\coloneqq\left\{{(s_0, t_0) \in C(u)^c {~\mathrel{\Big|}~}v(s, t) \neq x^\pm(t),~~s\neq s_0 \implies u(s, t_0) \neq u(s_0, t_0)}\right\}
.\end{align*}`{=tex} Proving $R(v)$ is open: contradict zero derivative.

-   Use sequential characterization of being a closed set
-   Construct a sequence in $R(v)^c$ converging to a point in $R(v)$.
-   First two conditions of $R(v)$ are open, so extract a sequence failing injectivity
-   Show it is bounded
-   Apply Bolzano-Weierstrass to extract a convergent subsequence
-   Use quotient definition of ${\frac{\partial v}{\partial s}\,}$, show it is zero, contradiction. `\normalsize`{=tex}

$\hfill\blacksquare$

Toward 8.6.3, Injectivity: $R(v)$ is Dense {#toward-8.6.3-injectivity-rv-is-dense}
------------------------------------------

Define **multiple points**:

-   Set $\mkern 1.5mu\overline{\mkern-1.5mu\mathbb{R}\mkern-1.5mu}\mkern 1.5mu= {\mathbb{R}}{\textstyle\coprod}\left\{{\pm \infty}\right\}$, extend $v: {\mathbb{R}}^2 \to W$ to `\begin{align*}
    v: \mkern 1.5mu\overline{\mkern-1.5mu\mathbb{R}\mkern-1.5mu}\mkern 1.5mu\times{\mathbb{R}}&\to W \\
    v(\pm \infty, t) &= x^\pm(t)
    .\end{align*}`{=tex}

-   Define the set of *multiple points over $(s_0, {\color{red}t_0})$*: `\scriptsize`{=tex} `
    <span class="math display">
    \begin{align*}
    M(s_0, {\color{red}t_0}) \coloneqq\left\{{ (s', {\color{red}t_0}) \in {\mathbb{R}}^2 {~\mathrel{\Big|}~}s\neq s'\in \mkern 1.5mu\overline{\mkern-1.5mu\mathbb{R}\mkern-1.5mu}\mkern 1.5mu, \quad v(s', {\color{red}t_0}) = v(s_0, {\color{red}t_0}) }\right\}
    \end{align*}
    <span>`{=html}

-   *Multiple points* are where injectivity fails in $s$.

-   Characterizes $R(v) \subset C(v)^c$ as points which don't admit multiples. `\normalsize`{=tex}

8.6.3: $R(v)$ is dense in ${\mathbb{R}}^2$ {#rv-is-dense-in-mathbbr2}
==========================================

Step 1: Exclude critical points $\cap$ multiple points {#step-1-exclude-critical-points-cap-multiple-points}
------------------------------------------------------

```{=tex}
\scriptsize
```
-   Suffices to show $R(v)$ is dense in $C(v)^c$ `\begin{align*}
    (s, t) \in C(v)^c \implies \exists (s_n ,t)\subset C(v)^c  \overset{n\to\infty}\to (s, t)~ 
    \text{ with } v(s_n, t) \neq x^\pm(t)~\forall n
    .\end{align*}`{=tex}
-   Why? E.g. `
    <span class="math display">
    \begin{align*}
    v(s + {1\over n}, t) = x^+(t) \implies {\frac{\partial v}{\partial s}\,} = 0 \implies (s+{1\over n}, t)\in C(v)
    .\end{align*}
    <span>`{=html}
-   Then suffices to show every $(s_0, t_0) \in {\mathbb{R}}\times[0, 1]$ with (importantly) `\begin{align}
    {\frac{\partial v}{\partial s}\,}{(s_0, t_0)} \neq 0 {\quad \operatorname{and} \quad} v(s_0, t_0) \neq x^{\pm}(t_0)
    .\end{align}`{=tex} is the limit of a sequence of points in $R(v)$.
-   Proceed by assuming this is not the case, toward a contradiction. `\normalsize`{=tex}

Step 1: Exclude critical points $\cap$ multiple points {#step-1-exclude-critical-points-cap-multiple-points-1}
------------------------------------------------------

`\begin{align}
{\frac{\partial v}{\partial s}\,}{(s_0, t_0)} \neq 0 {\quad \operatorname{and} \quad} v(s_0, t_0) \neq x^{\pm}(t_0)
.\end{align}`{=tex}

A Small Ball Avoids Critical Points in the Image

-   Surround $(s_0, t_0)$ by a ball $B_{\varepsilon}(s_0, t_0) \subset R(v)^c$
-   We can choose ${\varepsilon}$ small enough and $M\gg 1$ big enough, defining `
    <span class="math display">
    \begin{align*}\mathbb{M} = [-M, M] \subset {\mathbb{R}},\end{align*}
    <span>`{=html} such that several properties hold:

Step 1: Exclude critical points $\cap$ multiple points {#step-1-exclude-critical-points-cap-multiple-points-2}
------------------------------------------------------

```{=tex}
\scriptsize
```
`\begin{align*}
{\frac{\partial v}{\partial s}\,}{(s_0, t_0)} \neq 0 {\quad \operatorname{and} \quad} v(s_0, t_0) \neq x^{\pm}(t_0)
.\end{align*}`{=tex}

1.  Translate to far enough to get a point outside the image of the ball: `\begin{align*}
    (s, t) \in \mathbb{M}^c &\times[t_0-{\varepsilon}, t_0+{\varepsilon}]\subset {\mathbb{R}}\times I \implies \\
      v(s, t) \cap v(B_{\varepsilon}(s_0, t_0) = \emptyset &{\quad \operatorname{and} \quad} x^\pm(t) \not \in v(B_{\varepsilon}(s_0, t_0))
      .\end{align*}`{=tex} `\scriptsize`{=tex}

-   Idea: else, cook up sequences forcing $v(s_0, t_0) = x^\pm(t_0)$, contradicting open conditions `\normalsize`{=tex}

2.  For $t \in B_{\varepsilon}(t_0)$, $B_{\varepsilon}(s_0) \hookrightarrow W$ is an injective immersion `\normalsize`{=tex}

Step 1: Exclude critical points $\cap$ multiple points {#step-1-exclude-critical-points-cap-multiple-points-3}
------------------------------------------------------

```{=tex}
\scriptsize
```
1.  Translated boxes that miss the image of $B_{\varepsilon}(s_0, t_0)$ *and* contain no multiple points over $(s_0, t_0)$
2.  $B_{\varepsilon}(s_0) \hookrightarrow W$ immersively

```{=tex}
\begin{center}
\includegraphics[width = 0.8\textwidth]{figures/image_2020-05-21-16-18-58.png} 
\end{center}
```
Combine 1 and 2 to show that

-   $v$ is locally constant
-   $(s_0 ,t_0) \in C(v)$
-   Every point in $B_{\varepsilon}(s_0, t_0)$ satisfies open conditions `\begin{align*}
    {\frac{\partial v}{\partial s}\,}{(s_0, t_0)} \neq 0 {\quad \operatorname{and} \quad} v(s_0, t_0) \neq x^{\pm}(t_0)
    .\end{align*}`{=tex}

```{=tex}
\normalsize
```
Step 1: Exclude critical points $\cap$ multiple points {#step-1-exclude-critical-points-cap-multiple-points-4}
------------------------------------------------------

```{=tex}
\scriptsize
```
3.  `
    <span class="math display">
    \begin{align*}{\left\lvert {\mathbb{M}_C} \right\rvert}\coloneqq{\left\lvert {\qty{\mathbb{M} \times I} \cap C(v)} \right\rvert} < \infty\end{align*}
    <span>`{=html} since it's the intersection of a compact and a discrete set

-   Perturb $(s_0, t_0)$ so that `
    <span class="math display">
    \begin{align*}(s, t) \in \mathbb{M}_C \implies v(s_0, t_0) \neq v(s, t).\end{align*}
    <span>`{=html}
    -   Possible since $(s_0, t_0) \not\in C(v) \implies v$ is non-constant in a neighborhood of $(s_0, t_0)$.
-   Decrease ${\varepsilon}$ so that `
    <span class="math display">
    \begin{align*}v(B_{\varepsilon}(s_0, t_0)) \cap v(\mathbb{M}_C) = \emptyset.\end{align*}
    <span>`{=html}

Step 1: Exclude critical points $\cap$ multiple points {#step-1-exclude-critical-points-cap-multiple-points-5}
------------------------------------------------------

`
<span class="math display">
\begin{align*}v(B_{\varepsilon}(s_0, t_0)) \cap v(\mathbb{M}_C) = \emptyset.\end{align*}
<span>`{=html} `\scriptsize`{=tex} This means that in the thick strip containing $(s_0, t_0)$, no critical points land in its image.

```{=tex}
\begin{center}
\includegraphics[width = 0.7\textwidth]{figures/image_2020-05-21-16-27-40.png} 
\end{center}
```
Conclude that we *only* have to consider injectivity, not critical points that are also multiple points.

Step 2: Failure of Injectivity in Small Boxes
---------------------------------------------

```{=tex}
\scriptsize
```
-   Define the set of multiple points over $s_0$: `
    <span class="math display">
    \begin{align*}
    \mathbb{S}_M(t_0) = \left\{{s_1, \cdots, s_N}\right\} =\left\{{s_i \in [-M, M] {~\mathrel{\Big|}~}v(s_i, t_0) = v(s_0, t_0)}\right\}
    ,\end{align*}
    <span>`{=html}

    -   Finite, since infinite $\implies$ limit point $\implies {\frac{\partial v}{\partial s}\,} = 0.~ \Rightarrow\!\Leftarrow$

-   Lemma: For every ${\varepsilon}>0$ there exists a $\delta > 0$ such that defining `
    <span class="math display">
    \begin{align*}\Delta_0 = [s_0-\delta, s_0 + \delta] \times[t_0-\delta, t_0 + \delta]\end{align*}
    <span>`{=html} then `
    <span class="math display">
    \begin{align*}(s, t)\in \Delta_0 \implies \exists s' \in B_{\varepsilon}(s_j) \text{ s.t. } v(s, t) = v(s', t)\end{align*}
    <span>`{=html} for some $1 \leq j \leq N$.

```{=tex}
\normalsize
```
Step 2: Failure of Injectivity in Small Boxes
---------------------------------------------

```{=tex}
\scriptsize
```
-   In words: for every ${\varepsilon}$, we can find a $\delta{\hbox{-}}$box $\Delta_0 \ni (s_0, t_0)$ such that every point in $\Delta_0$ is a multiple point over *some* point in an epsilon ball around *some* point in $\mathbb{S}_M(t_0)$.

-   Fix ${\varepsilon}' <{\varepsilon}/2$ form Step 1 and apply the lemma to ${\varepsilon}'$ to produce $\delta$ and $\Delta_0$.

-   Apply the lemma: shrink $\Delta_0$ to a closed delta ball $\mkern 1.5mu\overline{\mkern-1.5muB\mkern-1.5mu}\mkern 1.5mu_\delta(s_0, t_0)$.

    -   **Upshot**: Every point in $\Delta_0$ is a multiple point over some $s_j$.

```{=tex}
\begin{center}
\includegraphics[width = 0.8\textwidth]{figures/image_2020-05-21-16-35-57.png} 
\end{center}
```
```{=tex}
\normalsize
```
Step 2: Failure of Injectivity in Small Boxes
---------------------------------------------

```{=tex}
\scriptsize
```
`
<span class="math display">
\begin{align*}
\mathbb{S}_M(t_0) = \left\{{s_1, \cdots, s_N}\right\} =\left\{{s_i \in [-M, M] {~\mathrel{\Big|}~}v(s_i, t_0) = v(s_0, t_0)}\right\}
\end{align*}
<span>`{=html}

-   So partition the ball up: define $\Sigma_j$: all multiple points over $s_j \in \mathbb{S}_M(t_0)$.
-   Take smaller $\rho{\hbox{-}}$ball some $(s_\star, t_\star) \in \Sigma_1^\circ$, choose ${\varepsilon}'$ small enough such that `
    <span class="math display">
    \begin{align*}
    B_\rho(s_\star, t_\star) \cap\qty{ [s_1-{\varepsilon}', s_1 + {\varepsilon}'] \times[t_0-\delta, t_0 + \delta] } = \emptyset
    .\end{align*}
    <span>`{=html}

**Upshot**: the shaded region is disjoint from the $\rho{\hbox{-}}$ball.

```{=tex}
\begin{center}
\includegraphics[width = 0.4\textwidth]{figures/image_2020-05-21-16-35-57.png} 
\end{center}
\begin{center}
\includegraphics[width = 0.8\textwidth]{figures/image_2020-05-21-16-38-55.png} 
\end{center}
\normalsize
```
Step 3: Final Contradiction
---------------------------

-   Construct $v_1, v_2$ which
    -   Satisfy the same Cauchy-Riemann equations
    -   Are equal at the origin
    -   Have nonzero derivative at the origin.
-   We want to show they are equal on ${\mathbb{R}}^2$
-   Constructing them: use points from step 2 to translate
    -   Obtain $(s_\star, t_\star)$ and $(s_\star', t_\star)$ from previous step.
    -   Define `\begin{align*}
        \begin{array}{ll}
        v_{1}(s, t)=v\left(s+s_{\star}, t+t_{\star}\right) &\implies v_1(z) = v(z + w_1)\\
        v_{2}(s, t)=v\left(s+s_{\star}^{\prime}, t+t_{\star}\right) &\implies v_2(z) = v(z + w_2)
        \end{array}
        \end{align*}`{=tex}
    -   Satisfy the same CR equations
    -   By construction, they coincide at $(0, 0)$ since $v(s_\star, t_\star) = v(s_\star', t_\star)$.
    -   Derivatives at the origin are nonzero, coming from the fact that ${\frac{\partial v}{\partial s}\,}(s_\star, t_\star) \neq 0$.

Step 3: Final Contradiction
---------------------------

-   Now work at zero: for every $(s, t) \in B_\rho(0, 0)$ there exists a multiple point $s' \in B_{2{\varepsilon}'}(0)$ over $s$.

-   Use the following extension lemma, consequence of **Continuation Principle**: in this situation, with $X_t \equiv 0$ on $B_{\varepsilon}(\mathbf{0})$, then `
    <span class="math display">
    \begin{align*}z\in B_{\varepsilon}(\mathbf{0}) \implies v_1(z) = v_2(z).\end{align*}
    <span>`{=html}

-   Define `\begin{align*}
    \mathcal{F}: \mathrm{C}^{\infty}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow \mathrm{C}^{\infty}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
    w &\longmapsto \qty{{\frac{\partial }{\partial s}\,} + J\cdot {\frac{\partial }{\partial t}\,}  }w
    \end{align*}`{=tex}

-   Since $v_1, v_2$ satisfy the same CR equation, ${\mathcal{F}}(v_1) = {\mathcal{F}}(v_2)$

Step 3: Final Contradiction
---------------------------

`\begin{align*}
\mathcal{F}: \mathrm{C}^{\infty}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow \mathrm{C}^{\infty}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
w &\longmapsto \qty{{\frac{\partial }{\partial s}\,} + J\cdot {\frac{\partial }{\partial t}\,}  }w
\end{align*}`{=tex}

Linearize ${\mathcal{F}}$ as we did for the Floer operator to obtain `\begin{align*}
\qty{d{\mathcal{F}}}_{\cdots}(Y) = \qty{ {\frac{\partial }{\partial s}\,} + J_0 \cdot {\frac{\partial }{\partial t}\,} + \tilde S } Y
.\end{align*}`{=tex} where $\tilde S: I \times{\mathbb{R}}^2 \to \endo({\mathbb{R}}^{2n})$

Step 3: Final Contradiction
---------------------------

-   Set $Y = v_1 - v_2$, then `
    <span class="math display">
    \begin{align*}
    S = \int_{[0, 1]} \tilde S  \implies S\qty{ {\frac{\partial }{\partial s}\,} + J_0 \cdot {\frac{\partial }{\partial t}\,} + S } Y = 0
    \end{align*}
    <span>`{=html}
-   From above, $Y \equiv 0$ in $B_{\varepsilon}(\mathbf{0})$, apply **Continuation Principle** to obtain $v_1 = v_2$ on ${\mathbb{R}}^2$
-   Inductive argument to show `
    <span class="math display">
    \begin{align*}
    \forall k\in{\mathbb{Z}},\quad v(s, t) = v(k(s_\star' - s_\star), t) \overset{k\to \infty}\longrightarrow x^\pm(t),
    \end{align*}
    <span>`{=html} which contradicts an open condition. $\hfill\blacksquare$

The Continuation Principle
--------------------------

-   Take the perturbed CR equation `\begin{align*}
    \qty{{\frac{\partial }{\partial s}\,} + J_0 \cdot {\frac{\partial }{\partial t}\,} + S }Y &= 0 {\quad \operatorname{where} \quad}
    S: {\mathbb{R}}^2 \longrightarrow \endo({\mathbb{R}}^{2n}) 
    \end{align*}`{=tex} where $J_0$ is the standard complex structure on ${\mathbb{R}}^{2n}$.

-   Define an *infinite-order zero* $z$ of an arbitrary function $f$ as `\begin{align*}
    z_0 \in Z_\infty \iff \sup_{B_r(z_0)} {{\left\lvert {f(z)} \right\rvert} \over r^k} \overset{r\to 0}\to 0 \quad \forall k\in {\mathbb{Z}}^{\geq 0}
    ,\end{align*}`{=tex} or for a smooth function, `\begin{align*}
    z_0\in Z_\infty \iff f^{(k)}(z_0)= 0 \quad \forall k \in {\mathbb{Z}}^{\geq 0}
    .\end{align*}`{=tex}

The Continuation Principle
--------------------------

-   Statement: If $Y$ solves CR on $U \subset {\mathbb{R}}^2$ then the set `\begin{align*}
    C \coloneqq\left\{{(s, t)\in U {~\mathrel{\Big|}~}~Y \text{ is an infinite-order zero at } (s, t)}\right\}
    .\end{align*}`{=tex}

-   Explanation: for $f$ smooth, $Z_\infty$ is closed. For $f$ holomorphic, it is clopen.

    -   From complex analysis: for a connected domain $\Omega$, the only clopen subsets are $\emptyset,\Omega$, so nonempty and $f =g$ on a connected subset implies $f = g$ on $\Omega$.
    -   In particular, $Y = 0$ on $U' \subseteq U$ implies $Y = 0$ on $U$.

-   Proof is a consequence of the **Similarity Principle**

Similarity Principle
--------------------

```{=tex}
\scriptsize
```
-   Recall definition of perturbed CR equation: `\begin{align*}
    \qty{{\frac{\partial }{\partial s}\,} + J_0 \cdot {\frac{\partial }{\partial t}\,} + S }Y &= 0 {\quad \operatorname{where} \quad}
    S: {\mathbb{R}}^2 \longrightarrow \endo({\mathbb{R}}^{2n}) 
    \end{align*}`{=tex}

Let

-   $Y \in C^\infty(B_{\varepsilon}; {\mathbb{C}}^n)$, or more generally $W^{1, p}( B_{\varepsilon}; {\mathbb{C}}^n)$, be a solution
-   $S \in C^\infty({\mathbb{R}}^2, \endo({\mathbb{R}}^2) )$ or more generally $L^p(B_{\varepsilon}; \endo_{\mathbb{R}}({\mathbb{R}}^{2n}))$
-   $p > 2$

Then there exist `\begin{align*}
\delta &\in (0, {\varepsilon}), \\
\sigma &\in C^\infty(B_\delta, {\mathbb{C}}^n) \\
A &\in W^{1, p}(B_\delta, \operatorname{GL}({\mathbb{R}}^{2n}))
.\end{align*}`{=tex} such that `\begin{align*}
\forall(s, t) \in B_{\delta}, ~~\quad Y(s, t)=A(s, t) \cdot \sigma(s+i t) {\quad \operatorname{ and } \quad} 
J_0 A(s, t) = A(s, t)J_0
.\end{align*}`{=tex}

```{=tex}
\normalsize
```
Similarity Principle
--------------------

Used to prove:

-   $C(v)$ is discrete
-   "Extension" lemma used to prove $R(v)$ is dense

Some ideas from proof:

-   Matrix $A$ will look like the fundamental matrix of solutions to an equation

-   Compactify to get $B_\delta \subset S^2$, if $Y: S^2 \to {\mathbb{C}}^n$ then we can consider $\mkern 1.5mu\overline{\mkern-1.5muY\mkern-1.5mu}\mkern 1.5mu$ as a section of the bundle

`\begin{align*}
\left(A^{0,1} T^{\star} S^{2}\right)^{n}=\Lambda^{0,1} T^{\star} S^{2} \otimes \mathbb{C}^{n} 
.\end{align*}`{=tex}

-   $\mkern 1.5mu\overline{\mkern-1.5muY\mkern-1.5mu}\mkern 1.5mu = 0$ makes $Y$ a holomorphic sphere in ${\mathbb{C}}^n$.

8.7
===

8.7 Outline
-----------

What we're trying to prove

-   8.1.5: $(d{\mathcal{F}})_u$ is a Fredholm operator of index $\mu(x) - \mu(y)$.

```{=tex}
\scriptsize
```
-   Setup `\begin{align*}
    S^\pm(t) &= \lim_{s\to \pm \infty} S(s, t), \\
    R^\pm_t &\text{a solution to the IVP} \\ 
    {\frac{\partial }{\partial t}\,}R &= J_0 S^\pm R,\quad R_0^\pm  = \operatorname{id}
    .\end{align*}`{=tex}

-   Statement: if $\operatorname{det}(\operatorname{id}- R^\pm_1) \neq 0$ then the operator `\begin{align*}
    L: W^{1, p}({\mathbb{R}}\times S^1; {\mathbb{R}}^{2n}) &\to L^p({\mathbb{R}}\times S^1; {\mathbb{R}}^{2n})\\
    L&= \mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu+ S(s, t) &
    .\end{align*}`{=tex} is Fredholm for every $p>1$.

    > *(i.e. index makes sense, $\dim \ker L, \dim \operatorname{coker}L < \infty$)*

-   Most of the work: $\dim(\ker L) < \infty$ and $\operatorname{im}(L)$ closed.

```{=tex}
\normalsize
```
8.7 Outline: Step 1, $\dim \ker L < \infty$ {#outline-step-1-dim-ker-l-infty}
-------------------------------------------

-   Main ingredients:
    -   **Elliptic regularity**: For $Y \in L^p({\mathbb{R}}\times S^1)$ a weak solution of the linearized Floer equation `
        <span class="math display">
        \begin{align*}LY = 0 \implies Y\in W^{1, p}({\mathbb{R}}\times S^1)\cap C^\infty.\end{align*}
        <span>`{=html}
    -   A consequence of the **Calderón-Zygmund (CZ) Inequality**: For $Y\in W^{1, p}({\mathbb{R}}\times S^1; {\mathbb{R}}^{2n})$ and $p>1$, `\begin{align}
        {\left\lVert {Y} \right\rVert}_{W^{1, p}({\mathbb{R}}\times S^1; {\mathbb{R}}^{2n})} \leq C \qty{{\left\lVert {LY} \right\rVert}_{L^p({\mathbb{R}}\times S^1)} + {\left\lVert {Y} \right\rVert}_{L^p({\color{blue}{\mathbb{R}}} \times S^1)}}
        \end{align}`{=tex} for some constant $C$. `\scriptsize`{=tex}
-   Strategy: split into cases
    -   Case 1: $S(s, t) = S(t)$ doesn't depend on $s$.
    -   Case 2: $S(s, t)$ *does* depend on $s$ `\scriptsize`{=tex}

8.7 Outline: $\dim \ker L < \infty$ {#outline-dim-ker-l-infty}
-----------------------------------

CZ inequality: `\begin{align}
{\left\lVert {Y} \right\rVert}_{W^{1, p}({\mathbb{R}}\times S^1; {\mathbb{R}}^{2n})} \leq C \qty{{\left\lVert {LY} \right\rVert}_{L^p({\mathbb{R}}\times S^1)} + {\left\lVert {Y} \right\rVert}_{L^p({\color{blue}{\mathbb{R}}} \times S^1)}}
\end{align}`{=tex}

Step 1: $S(s, t) = S(t)$ doesn't depend on $s$, prove improved estimate.

-   Consider the "asymptotic operator" `\begin{align*}
    D: W^{1, p}({\mathbb{R}}\times S^1; {\mathbb{R}}^{2n}) &\to L^p({\mathbb{R}}\times S^1) \\
    D = \mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu+ S(t) &= \lim_{s\to \pm\infty} L \coloneqq\lim_{s\to \pm\infty} \qty{\mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu+ S(s, t)}
    .\end{align*}`{=tex}
-   Show for $p>1, D$ is invertible.
-   Invertibility improves estimate: replace $\color{blue}{\mathbb{R}}$ with $\color{blue} [-M, M]$.

8.7 Outline: $\dim \ker L < \infty$ {#outline-dim-ker-l-infty-1}
-----------------------------------

-   Step 2: $S(s, t)$ does depend on $s$

-   Improved estimate in Step 1 allows replacing weak soln: `\begin{align*}
    Y \in L^p({\color{blue}{\mathbb{R}}} \times S^1; \cdot) &\leadsto Y\in L^p({\color{blue}[-M, M]} \times S^1, \cdot)
    .\end{align*}`{=tex}

-   Then restrict `\begin{align*}
    L: W^{1, p}({\mathbb{R}}\times S^1; {\mathbb{R}}^{2n}) &\to L^p({\mathbb{R}}\times S^1; {\mathbb{R}}^{2n})\\
    L&\coloneqq\mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu+ S(s, t) & \\ \\
    \leadsto L_M : W^{1, p}({\mathbb{R}}\times S^1) &\to L^p({\color{blue}[-M, M]} \times S^1) 
    .\end{align*}`{=tex}

-   Since the restriction is a *compact* operator, it is "semi-Fredholm", apply a theorem: `
    <span class="math display">
    \begin{align*}
    \text{CZ inequality satisfied} \implies \dim \ker L_M < \infty, \operatorname{im}L_M \text{ closed}
    .\end{align*}
    <span>`{=html}

8.7 Outline: $\dim \ker L < \infty$ {#outline-dim-ker-l-infty-2}
-----------------------------------

-   Will need some real/functional analysis to invert operators:
    -   "Variation of constants"
    -   Hilbert spaces and Spectrum of an operator
    -   *Hille-Yosida* theory: existence and uniqueness for operator IVPs, e.g. ${\frac{\partial Y}{\partial s}\,} = -AY$
    -   Young's Inequality (some convolution integrals)
    -   Holder's Inequality
    -   Distribution theory
    -   Rellich's Theorem (Multiple uses)
    -   Hahn-Banach Theorem
    -   Riesz Representation Theorem
-   Conclude 8.7 by showing $L$ is Fredholm:
    -   $\dim \ker L < \infty$ (long)
    -   $\dim \operatorname{coker}L < \infty$ (very short)

$\hfill\blacksquare$

8.8
===

8.8: Outline {#outline-2}
------------

What we're trying to prove

-   8.1.5: $(d{\mathcal{F}})_u$ is a Fredholm operator of index $\mu(x) - \mu(y)$.

-   Define `\begin{align*}
    L: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
    Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s, t) Y
    \end{align*}`{=tex}

-   8.7: Shows $L$ is Fredholm

-   By the end of 8.8: replace $L$ by $L_1$ with the same *index*

    -   *(not the same kernel/cokernel)*

-   Compute $\mathop{\mathrm{ind}}L_1$: explicitly describe $\ker L_1, \operatorname{coker}L_1$.

8.8: Replacing $L$ {#replacing-l}
------------------

`\begin{align*}
L: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s, t) Y
\end{align*}`{=tex}

-   Replace in two steps:
    -   $L \leadsto L_0$, modified in a $B_{\varepsilon}(0)$ in $s$.
        -   Use invariance of index under small perturbations.
    -   $L_0 \leadsto L_1$ by a homotopy, where $S_\lambda: S \leadsto S(s)$ a diagonal matrix that is a constant matrix *outside* $B_{\varepsilon}(0)$.
        -   Use invariance of index under homotopy.

8.8: Replacing $L$ {#replacing-l-1}
------------------

```{=tex}
\scriptsize
```
`\begin{align*}
  S(s, t) \overset{s\to\pm\infty}\to S^{\pm}(t) \\
R^\pm_t \text{a solution to the IVP} \quad \quad &{\frac{\partial }{\partial t}\,}R = J_0 S^\pm R,\quad R_0^\pm  = \operatorname{id}
.\end{align*}`{=tex}

-   Use the fact $S: {\mathbb{R}}\times S^1 \to \operatorname{Mat}(2n;{\mathbb{R}})$ and $S^\pm(t)$ are symmetric.
-   Take corresponding symplectic paths $R^\pm: I \to {\mathsf{Sp}}(2n; {\mathbb{R}})$.
-   $L$ will be a Fredholm operator if `\begin{align*}
    R^\pm \in {\mathcal{S}}\coloneqq\left\{{R: I \to {\mathsf{Sp}}(2n; {\mathbb{R}}) {~\mathrel{\Big|}~}R(0) = \operatorname{id}, ~~\operatorname{det}(R(1) - \operatorname{id})\neq 0}\right\}
    .\end{align*}`{=tex} `\normalsize`{=tex}
-   Theorem 8.8.1: `
    <span class="math display">
    \begin{align*}\mathop{\mathrm{ind}}(L) = \mu(R^-(t)) - \mu(R^+(t)) = \mu(x) - \mu(y).\end{align*}
    <span>`{=html}

8.8: $L_0 \leadsto L_1$ {#l_0-leadsto-l_1}
-----------------------

```{=tex}
\scriptsize
```
-   Prop 8.8.2: Construct an operator `\begin{align*}
    L_{1}: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
    Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
    \end{align*}`{=tex} where $S: {\mathbb{R}}\to\operatorname{Mat}(2n; {\mathbb{R}})$ is a path of diagonal matrices depending on $\mathop{\mathrm{ind}}(R^\pm(t))$; then `
    <span class="math display">
    \begin{align*}\mathop{\mathrm{ind}}(L) = \mathop{\mathrm{ind}}(L_1) = \mathop{\mathrm{ind}}(R^-(t)) - \mathop{\mathrm{ind}}(R^+(t)).\end{align*}
    <span>`{=html}

-   Idea of proof: take a homotopy of operators `\begin{align*}
    L_{\lambda}: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
    Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S_{\lambda}(s, t) Y
    \end{align*}`{=tex} which are all Fredholm and all have the same index, then take time 1. `\normalsize`{=tex}

8.8: Index of $L_1$ {#index-of-l_1}
-------------------

`\begin{align*}
L_{1}: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
\end{align*}`{=tex}

-   Use the fact that `
    <span class="math display">
    \begin{align*}\operatorname{coker}L_1 \cong \ker L_1^*,\end{align*}
    <span>`{=html} and we can explicitly write the adjoint of $L_1$.
-   Get a formula that resembles the Morse case
    -   *(Counting number of eigenvalues that change sign).*

$\hfill\blacksquare$
