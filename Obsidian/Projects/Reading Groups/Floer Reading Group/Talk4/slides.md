Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzpicture}[>=latex',line join=bevel,scale=0.56]
  \pgfsetlinewidth{1bp}
%%
\pgfsetcolor{black}
  % Edge: 8.8.4: \ind(L) = \ind(L_0) -> 8.8.2: \ind(L_1) = \ind(L)
  \draw [->] (118.29bp,143.7bp) .. controls (118.29bp,135.98bp) and (118.29bp,126.71bp)  .. (118.29bp,108.1bp);
  % Edge: 8.8.2: \ind(L_1) = \ind(L) -> 8.8.1: \ind(L) = \mu(R^-(t)) - \mu(R^+(s)) = \mu(x) - \mu(y)
  \draw [->] (153.78bp,72.765bp) .. controls (175.03bp,63.038bp) and (202.29bp,50.567bp)  .. (234.4bp,35.878bp);
  % Edge: 8.8.5: \dim \ker F, F* -> 8.8.3: mathrm{Ind}(L_1) = k- - k+
  \draw [->] (425.29bp,143.7bp) .. controls (425.29bp,135.98bp) and (425.29bp,126.71bp)  .. (425.29bp,108.1bp);
  % Edge: 8.8.3: mathrm{Ind}(L_1) = k- - k+ -> 8.8.1: \ind(L) = \mu(R^-(t)) - \mu(R^+(s)) = \mu(x) - \mu(y)
  \draw [->] (388.79bp,72.411bp) .. controls (367.45bp,62.71bp) and (340.31bp,50.372bp)  .. (308.32bp,35.834bp);
  % Node: 8.8.4: \ind(L) = \ind(L_0)
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (118.29bp,162.0bp) ellipse (118.08bp and 18.0bp);
  \draw (118.29bp,162.0bp) node {8.8.4: $\mathop{\mathrm{ind}}(L_0) = \mathop{\mathrm{ind}}(L)$};
\end{scope}
  % Node: 8.8.2: \ind(L_1) = \ind(L)
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (118.29bp,90.0bp) ellipse (118.08bp and 18.0bp);
  \draw (118.29bp,90.0bp) node {8.8.2: $\mathop{\mathrm{ind}}(L_1) = \mathop{\mathrm{ind}}(L)$};
\end{scope}
  % Node: 8.8.1: \ind(L) = \mu(R^-(t)) - \mu(R^+(s)) = \mu(x) - \mu(y)
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (271.29bp,18.0bp) ellipse (271.05bp and 18.0bp);
  \draw (271.29bp,18.0bp) node {8.8.1: $\mathop{\mathrm{ind}}(L) = k^- - k^+ = \mu(x) - \mu(y)$};
\end{scope}
  % Node: 8.8.5: \dim \ker F, F*
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (425.29bp,162.0bp) ellipse (100.18bp and 18.0bp);
  \draw (425.29bp,162.0bp) node {8.8.5: $\dim \ker F, F^*$};
\end{scope}
  % Node: 8.8.3: mathrm{Ind}(L_1) = k- - k+
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (425.29bp,90.0bp) ellipse (170.87bp and 18.0bp);
  \draw (425.29bp,90.0bp) node {8.8.3: $\mathop{\mathrm{Ind}}(L_1) = k^- - k^+$};
\end{scope}
%
\end{tikzpicture}
\end{document}
---
colortheme: beetle
eader-includes: |
  ```{=tex}
  \usepackage{dot2texi}
  \usepackage{beamerthemesplit}
  ```
theme: Frankfurt
title: 'Section 8.6 - 8.8: Setup for Computing the Index'
---

-   [Summary/Outline](#summaryoutline)
    -   [Outline](#outline)
    -   [Outline](#outline-1)
    -   [From Yesterday](#from-yesterday)
-   [8.8.5: $\dim \ker F, F^*$](#dim-ker-f-f)
    -   [Recall](#recall)
    -   [Reductions](#reductions)
    -   [Setup](#setup)
    -   [Statement of Later Lemma (8.8.5)](#statement-of-later-lemma-8.8.5)
    -   [Statement of Lemma](#statement-of-lemma)
    -   [Statement of Lemma](#statement-of-lemma-1)
    -   [Proof of Assertion 1](#proof-of-assertion-1)
    -   [Assertion 1, Step 1: Reduce to CR](#assertion-1-step-1-reduce-to-cr)
    -   [Assertion 1, Step 1: Reduce to CR](#assertion-1-step-1-reduce-to-cr-1)
    -   [Assertion 1, Step 2: Solve CR](#assertion-1-step-2-solve-cr)
    -   [Assertion 1, Step 2: Solve CR](#assertion-1-step-2-solve-cr-1)
    -   [Condition on $L^p$ Solutions](#condition-on-lp-solutions)
    -   [Condition on $L^p$ Solutions: Small Tails](#condition-on-lp-solutions-small-tails)
    -   [Counting Solutions](#counting-solutions)
    -   [Counting Solutions](#counting-solutions-1)
    -   [Assertion 2](#assertion-2)
    -   [Proof of Assertion 2](#proof-of-assertion-2)
    -   [Proof of Assertion 2](#proof-of-assertion-2-1)
-   [8.8.3: $\mathop{\mathrm{ind}}(L_1) = k^- - k^+$](#mathopmathrmindl_1-k----k)
    -   [Statement and Outline](#statement-and-outline)
    -   [Case 1: $k^+ \equiv k^- \equiv n \operatorname{mod}2$](#case-1-k-equiv-k--equiv-n-operatornamemod2)
    -   [Case 1: $k^- \equiv k^+ \equiv n \operatorname{mod}2$](#case-1-k--equiv-k-equiv-n-operatornamemod2)
    -   [Case 2: $k^+ \not\equiv k^- \equiv n \operatorname{mod}2$](#case-2-k-notequiv-k--equiv-n-operatornamemod2)
    -   [Case 2: $k^+ \not\equiv k^- \equiv n \operatorname{mod}2$](#case-2-k-notequiv-k--equiv-n-operatornamemod2-1)














[[Floer Reading Group Fall 2020 | ../../../../Unsorted/Floer%20Reading%20Group%20Fall%202020.html]]

Summary/Outline
===============

Outline
-------

What we're trying to prove:

-   8.1.5: $(d{\mathcal{F}})_u$ is a Fredholm operator of index $\mu(x) - \mu(y)$.

What we have so far:

-   Define `\begin{align*}
    L: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
    Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s, t) Y
    \end{align*}`{=tex} where `\begin{align*}
    S: {\mathbb{R}}\times S^1 &\to \operatorname{Mat}(2n; {\mathbb{R}}) \\
    S(s, t) &\overset{s\to\pm\infty}\to S^\pm(t)
    .\end{align*}`{=tex}

Outline
-------

-   Took $R^\pm: I \to {\mathsf{Sp}}(2n; {\mathbb{R}})$: symplectic paths associated to $S^\pm$

-   These paths defined $\mu(x), \mu(y)$

-   Section 8.7: `\scriptsize`{=tex} `\begin{align*}
    R^\pm \in {\mathcal{S}}\coloneqq\left\{{R(t) {~\mathrel{\Big|}~}R(0) = \operatorname{id}, ~ \operatorname{det}(R(1) - \operatorname{id})\neq 0}\right\} \implies L \text{ is Fredholm}
    .\end{align*}`{=tex} `\normalsize`{=tex}

-   WTS 8.8.1: `\begin{align*}
    \mathop{\mathrm{ind}}(L)\stackrel{\text{Thm?}}{=} \mu(R^-(t)) - \mu(R^+(t)) = \mu(x) - \mu(y)
    .\end{align*}`{=tex}

From Yesterday
--------------

-   Han proved 8.8.2 and 8.8.4.
    -   So we know $\mathop{\mathrm{ind}}(L) = \mathop{\mathrm{ind}}(L_1)$
-   Today: 8.8.5 and 8.8.3:
    -   Computing $\mathop{\mathrm{ind}}(L_1)$ by computing kernels.

`<p style="text-align:center;"> <img class="tikzpic" src="figures/e6b11b90c4b8e1fd46252a85a72f7b2c767f50f3.svg"></p>`{=html}

8.8.5: $\dim \ker F, F^*$ {#dim-ker-f-f}
=========================

Recall
------

`\begin{align*}
L: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s, t) Y
\\ \\
L_{1}: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
\\ \\ 
L_{1}^{\star}: W^{1, q}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{q}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
Z & \longmapsto-\frac{\partial Z}{\partial s}+J_{0} \frac{\partial Z}{\partial t}+S(s)^t Z
\end{align*}`{=tex}

```{=tex}
\scriptsize
```
Here ${1\over p} + {1\over q} = 1$ are conjugate exponents. `\normalsize`{=tex}

Reductions
----------

`\begin{align*}
L_1^* &= -{\frac{\partial }{\partial s}\,} + J_0 {\frac{\partial }{\partial t}\,} + S(s)^t
.\end{align*}`{=tex}

-   Since $\operatorname{coker}L_1 \cong \ker L_1^*$, it suffices to compute $\ker L_1^*$

-   We have

`\begin{align*}
J_0^1 \coloneqq
\left[\begin{array}{cc}
0 & -1 \\
1 & 0
\end{array}\right]
\implies
J_0 = 
\begin{bmatrix}
J_0^1           &       &        & \\
                & J_0^1 &        & \\
                &       & \ddots & \\
                &       &        & J_0^1
\end{bmatrix} \in \bigoplus_{i=1}^n \operatorname{Mat}(2; {\mathbb{R}}) 
.\end{align*}`{=tex}

-   This allows us to reduce to the $n=1$ case.

Setup
-----

$L_1$ used a path of diagonal matrices constant near $\infty$: `\begin{align*}
S(s) \coloneqq\left(\begin{array}{cc}
a_{1}(s) & 0 \\
0 & a_{2}(s)
\end{array}\right), \quad \text { with } a_{i}(s)\coloneqq\left\{\begin{array}{ll}
a_{i}^{-} & \text {if } s \leq-s_{0} \\
a_{i}^{+} & \text {if } s \geq s_{0}
\end{array}\right.
.\end{align*}`{=tex}

```{=tex}
\begin{center}
\includegraphics[width = \textwidth]{figures/image_2020-05-27-20-10-07.png} 
\end{center}
```
Statement of Later Lemma (8.8.5)
--------------------------------

Let $p>2$ and define `\begin{align*}
F: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) &\longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) \\
Y &\mapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
.\end{align*}`{=tex}

> Note: $F$ is $L_1$ for $n=1$: `\scriptsize`{=tex} `\begin{align*}
> L_{1}: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
> Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
> .\end{align*}`{=tex} `\normalsize`{=tex}

Statement of Lemma
------------------

```{=tex}
\scriptsize
```
`\begin{align*}
F: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) &\longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) \\
Y &\mapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
.\end{align*}`{=tex}

Suppose $a_i^\pm \not \in 2\pi {\mathbb{Z}}$.

1.  Suppose $a_1(s) = a_2(s)$ and set $a^\pm \coloneqq a_1^\pm = a_2^\pm$. Then

`\begin{align*}
\operatorname{dim} \operatorname{Ker} F &=
2 \cdot \#\left\{\ell \in \mathbb{Z} {~\mathrel{\Big|}~}
2\pi \ell \in (a^-, a+) \subset {\mathbb{R}}\right \} \\
\operatorname{dim} \operatorname{Ker} F^{*} &=
2 \cdot \#\left\{\ell \in \mathbb{Z} {~\mathrel{\Big|}~}
2\pi\ell \in (a^+, a^-) \subset{\mathbb{R}}
\right\}
.\end{align*}`{=tex}

2.  Suppose $\sup_{s\in {\mathbb{R}}} {\left\lVert {S(s)} \right\rVert} < 1$, then

`\begin{align*}
\operatorname{dim} \operatorname{Ker} F &= 
\#\left\{i \in\{1,2\} {~\mathrel{\Big|}~}~a_{i}^{-}<0 \text { and } a_{i}^{+}>0\right\}\\
\operatorname{dim} \operatorname{Ker} F^{*} 
&=\#\left\{i \in\{1,2\} {~\mathrel{\Big|}~}~ a_{i}^{+}<0 \text { and } a_{i}^{-}>0\right\}
.\end{align*}`{=tex}

Statement of Lemma
------------------

In words:

1.  If $S(s)$ is a scalar matrix, set $a^\pm = a_1^\pm = a_2^\pm$ to the limiting scalars and count the integer multiples of $2\pi$ between $a^-$ and $a^+$.

2.  Otherwise, if $S$ is uniformly bounded by 1, count the number of entries the flip from positive to negative as $s$ goes from $-\infty\to \infty$.

```{=tex}
\begin{center}
\includegraphics[width = \textwidth]{figures/image_2020-05-27-20-10-07.png} 
\end{center}
```
Proof of Assertion 1
--------------------

```{=tex}
\scriptsize
```
1.  Suppose $a_1(s) = a_2(s)$ and set $a^\pm \coloneqq a_1^\pm = a_2^\pm$. Then

`\begin{align*}
\operatorname{dim} \operatorname{Ker} F &=
2 \cdot \#\left\{\ell \in \mathbb{Z} {~\mathrel{\Big|}~}
2\pi \ell \in (a^-, a+) \subset {\mathbb{R}}\right \} \\
\operatorname{dim} \operatorname{Ker} F^{*} &=
2 \cdot \#\left\{\ell \in \mathbb{Z} {~\mathrel{\Big|}~}
2\pi\ell \in (a^+, a^-) \subset{\mathbb{R}}
\right\}
.\end{align*}`{=tex} `\normalsize`{=tex}

Step 1: Transform to Cauchy-Riemann Equations

-   Write $a(s) \coloneqq a_1(s) = a_2(s)$.
-   Start with equation on ${\mathbb{R}}^2$, `
    <span class="math display">
    \begin{align*}\mathbf{Y}(s, t) = \left[ Y_1(s, t), Y_2(s, t) \right].\end{align*}
    <span>`{=html}
-   Replace with equation on ${\mathbb{C}}$: `
    <span class="math display">
    \begin{align*}\mathbf{Y}(s, t) = Y_1(s, t) + i Y_2(s, t).\end{align*}
    <span>`{=html}

Assertion 1, Step 1: Reduce to CR
---------------------------------

-   Expand definition of the PDE `\begin{align*}
    F(\mathbf{Y}) = 0 \leadsto \mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu\mathbf{Y} + S \mathbf{Y} = 0
    \\ \\ 
    \frac{\partial}{\partial s}
    \mathbf{Y}
    +\left(\begin{array}{cc}
    0 & -1 \\
    1 & 0
    \end{array}\right) \frac{\partial}{\partial t}
    \mathbf{Y}
    +\left(\begin{array}{cc}
    a(s) & 0 \\
    0 & a(s)
    \end{array}\right)
    \mathbf{Y}
    =0
    .\end{align*}`{=tex}

-   Change of variables: want to reduce to $\mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu\tilde Y = 0$

-   Choose $B \in \operatorname{GL}(1, {\mathbb{C}})$ such that $\mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5muB + SB = 0$

-   Set $Y = B\tilde Y$, which (?) reduces the previous equation to `\begin{align*}
    \mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu\tilde Y = 0
    .\end{align*}`{=tex}

Assertion 1, Step 1: Reduce to CR
---------------------------------

Can choose (and then solve) `\begin{align*}
B = \begin{bmatrix}
  b(s) & 0 \\
  0 & b(s)
\end{bmatrix} {\quad \operatorname{where} \quad} {\frac{\partial b}{\partial s}\,} = -a(s)b(s) \\ \\
\implies b(s) = \exp{\int_0^s -a(\sigma) ~d\sigma} \coloneqq\exp{-A(s)}
.\end{align*}`{=tex}

Remarks:

```{=tex}
\scriptsize
```
-   For some constants $C_i$, we have

`\begin{align*}
A(s) = \begin{cases}
C_1 + a^- s, & s \leq -\sigma_0 \\
C_2 + a^+ s, & s \geq \sigma_0 \\
\end{cases}
.\end{align*}`{=tex}

-   The new $\tilde Y$ satisfies CR, is continuous and $L^1_{\text{loc}}$, so elliptic regularity $\implies C^\infty$.

-   The real/imaginary parts of $\tilde Y$ are $C^\infty$ and harmonic.

Assertion 1, Step 2: Solve CR
-----------------------------

-   Identify $s+it \in {\mathbb{R}}\times S^1$ with $u = e^{2\pi z}$

-   Apply Laurent's theorem to $\tilde Y(u)$ on ${\mathbb{C}}\setminus\left\{{0}\right\}$ to obtain an expansion of $\tilde Y$ in $z$.

-   Deduce that the solutions of the system are given by `\begin{align*}
    \tilde Y (u) =\sum_{\ell \in \mathbf{Z}} c_{\ell} u^\ell  
    \implies \tilde{Y}(s+i t)
    =\sum_{\ell \in \mathbf{Z}} c_{\ell} e^{(s+i t) 2 \pi \ell}
    .\end{align*}`{=tex} where $\left\{{c_\ell}\right\}_{\ell\in{\mathbb{Z}}} \subset {\mathbb{C}}$ converges for all $s, t$.

Assertion 1, Step 2: Solve CR
-----------------------------

Use $e^{s+it} = e^s\qty{\cos(t) + i\sin (t)}$ to write in real coordinates: `\scriptsize`{=tex} `\begin{align*}
\tilde{Y}(s, t)=\sum_{\ell \in \mathbb{Z}} e^{2 \pi s \ell}
\begin{bmatrix}
\cos(2\pi\ell t) & -\sin(2\pi \ell t) \\
\sin(2\pi\ell t) & \cos(2\pi \ell t)
\end{bmatrix}
\begin{bmatrix}
\alpha_\ell  \\
\beta_\ell 
\end{bmatrix}
.\end{align*}`{=tex}

Use `\begin{align*}
Y = B\tilde Y = 
\begin{bmatrix}
e^{-A(s)} & 0 \\
0 & e^{-A(s)}
\end{bmatrix} \tilde Y
\end{align*}`{=tex}

to write `\begin{align*}
Y(s, t)=\sum_{\ell \in \mathbb{Z}} e^{2 \pi s \ell}
\begin{bmatrix}
e^{-A(s)} & 0 \\
0 & e^{-A(s)}
\end{bmatrix} 
\begin{bmatrix}
\cos(2\pi\ell t) & -\sin(2\pi \ell t) \\
\sin(2\pi\ell t) & \cos(2\pi \ell t)
\end{bmatrix}
\begin{bmatrix}
\alpha_\ell  \\
\beta_\ell 
\end{bmatrix}
.\end{align*}`{=tex}

For $s\leq s_0$ this yields for some constants $K, K'$: `\begin{align*}
Y(s, t) = \sum_{\ell\in {\mathbb{Z}}}
e^{2\pi\ell - a^-}
\begin{bmatrix}
e^K \qty{\alpha_\ell \cos(2\pi\ell t) - \beta_\ell \sin(2\pi\ell t) }  \\
e^{K'} \qty{ \alpha_\ell \sin(2\pi\ell t) + \beta_\ell \cos(2\pi \ell t)} 
\end{bmatrix}
.\end{align*}`{=tex} `\normalsize`{=tex}

Condition on $L^p$ Solutions {#condition-on-lp-solutions}
----------------------------

For $s\leq s_0$ we had `\begin{align*}
Y(s, t) = \sum_{\ell\in {\mathbb{Z}}}
e^{\qty{2\pi\ell - a^-}s}
\begin{bmatrix}
e^K \qty{\alpha_\ell \cos(2\pi\ell t) - \beta_\ell \sin(2\pi\ell t) }  \\
e^{K'} \qty{ \alpha_\ell \sin(2\pi\ell t) + \beta_\ell \cos(2\pi \ell t)} 
\end{bmatrix}
\end{align*}`{=tex}

and similarly for $s\geq s_0$, for some constants $C, C'$ we have: `\begin{align*}
Y(s, t) = \sum_{\ell\in {\mathbb{Z}}}
e^{\qty{2\pi\ell - a^+}s}
\begin{bmatrix}
e^C \qty{\alpha_\ell \cos(2\pi\ell t) - \beta_\ell \sin(2\pi\ell t) }  \\
e^{C'} \qty{ \alpha_\ell \sin(2\pi\ell t) + \beta_\ell \cos(2\pi \ell t)} 
\end{bmatrix}
.\end{align*}`{=tex}

Then `\begin{align*}
Y\in L^p \iff \text{exponential terms} \overset{\ell\to\infty}\to 0
.\end{align*}`{=tex}

Condition on $L^p$ Solutions: Small Tails {#condition-on-lp-solutions-small-tails}
-----------------------------------------

```{=tex}
\scriptsize
```
`\begin{align*}
Y(s, t) = \sum_{\ell\in {\mathbb{Z}}}
e^{\qty{2\pi\ell - a^-}s}
\begin{bmatrix}
e^K \qty{\alpha_\ell \cos(2\pi\ell t) - \beta_\ell \sin(2\pi\ell t) }  \\
e^{K'} \qty{ \alpha_\ell \sin(2\pi\ell t) + \beta_\ell \cos(2\pi \ell t)} 
\end{bmatrix}
\end{align*}`{=tex} `\normalsize`{=tex}

-   $\ell \neq 0$: Need $\alpha_\ell = \beta_\ell = 0$ **or** $2\pi \ell > a^-$
-   $\ell = 0$: Need both
    -   $\alpha_0 = 0$ or $a^- < 0$ and
    -   $\beta_0 = 0$ or $a^- < 0$.

```{=tex}
\scriptsize
```
`\begin{align*}
Y(s, t) = \sum_{\ell\in {\mathbb{Z}}}
e^{\qty{2\pi\ell - a^+}s}
\begin{bmatrix}
e^C \qty{\alpha_\ell \cos(2\pi\ell t) - \beta_\ell \sin(2\pi\ell t) }  \\
e^{C'} \qty{ \alpha_\ell \sin(2\pi\ell t) + \beta_\ell \cos(2\pi \ell t)} 
\end{bmatrix}
.\end{align*}`{=tex} `\normalsize`{=tex}

-   $\ell \neq 0$: Need $\alpha_\ell = \beta_\ell = 0$ **or** $2\pi \ell < a^+$
-   $\ell = 0$: Need both
    -   $\alpha_0 = 0$ or $a^+ > 0$ and
    -   $\beta_0 = 0$ or $a^+ > 0$.

Counting Solutions
------------------

`\begin{align*}
\begin{cases}
\alpha_\ell = \beta_\ell = 0 \text{ or } 2\pi\ell \in (a^-, a^+) & \ell\neq 0 \\
\qty{\alpha_0 = 0 {\operatorname{ or }}0 \in (a^-, a^+)} {\operatorname{ and }}\qty{\beta_0 = 0 {\operatorname{ or }}0\in (a^-, a^+)} & \ell = 0
\end{cases}
.\end{align*}`{=tex}

-   Finitely many such $\ell$ that satisfy these conditions
-   Sufficient conditions for $Y(s, t) \in W^{1, p}$.

Compute dimension of space of solutions: `\scriptsize`{=tex} `\begin{align*}
\operatorname{dim} \operatorname{Ker} F 
&=2 \cdot \#\left\{{\ell \in \mathbb{Z}^{*} {~\mathrel{\Big|}~}
2\pi\ell \in (a^-, a^+) }\right\} 
+  2\cdot \indic{0 \in (a^-, a^+)}
\\
&=2 \cdot \#\left\{\ell \in \mathbb{Z} {~\mathrel{\Big|}~}2\pi\ell \in (a^-, a^+) \right\}
.\end{align*}`{=tex}

> Note: not sure what ${\mathbb{Z}}^*$ is: most likely ${\mathbb{Z}}\setminus\left\{{0}\right\}$. `\normalsize`{=tex}

Counting Solutions
------------------

Use this to deduce $\dim \ker F^*$:

-   $Y\in \ker F^* \iff Z(s, t) \coloneqq Y(-s, t)$ is in the kernel of the operator `\begin{align*}
    \tilde F: W^{1, q}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) &\longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) \\
    Z &\mapsto \frac{\partial Z}{\partial s}+J_{0} \frac{\partial Z}{\partial t}+S({\color{red}-s}) Y
    .\end{align*}`{=tex}

-   Obtain $\ker F^* \cong \ker \tilde F$.

-   Formula for $\dim \ker \tilde F$ almost identical to previous formula, just swapping $a^-$ and $a^+$.

$\hfill\blacksquare_1$

Assertion 2
-----------

**Assertion 2**: Suppose $\sup_{s\in {\mathbb{R}}} {\left\lVert {S(s)} \right\rVert} < 1$, then `\begin{align*}
  \operatorname{dim} \operatorname{Ker} F &= 
  \#\left\{i \in\{1,2\} {~\mathrel{\Big|}~}~a_{i}^{-}<0 < a_{i}^{+}\right\}\\
  \operatorname{dim} \operatorname{Ker} F^{*} 
  &=\#\left\{i \in\{1,2\} {~\mathrel{\Big|}~}~ a_{i}^{+}<0 <  a_{i}^{-} \right\}
  .\end{align*}`{=tex}

We use the following:

-   Lemma 8.8.7: `\scriptsize`{=tex} `\begin{align*}
    \sup_{s\in {\mathbb{R}}} {\left\lVert { S(s) } \right\rVert} < 1 \implies \text{the elements in }\ker F,~ \ker F^* \text{ are independent of }t
    .\end{align*}`{=tex}

-   Proof: in subsection 10.4.a.

```{=tex}
\normalsize
```
Proof of Assertion 2
--------------------

```{=tex}
\scriptsize
```
`\begin{align*}
F: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) &\longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) \\
Y &\mapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
.\end{align*}`{=tex} `\normalsize`{=tex}

-   Given as a fact: `\begin{align*}
    \mathbf{Y} \in \ker F \implies 
    {\frac{\partial }{\partial s}\,}\mathbf{Y} = 
    \mathbf{a}(s)\mathbf{Y} ~~~
    ~~~\coloneqq\begin{bmatrix}
    -a_1(s) & 0 \\
    0 & -a_2(s)
    \end{bmatrix}
    \mathbf{Y}
    .\end{align*}`{=tex}

-   Therefore we can solve to obtain `\begin{align*}
    \mathbf{Y}(s) = \mathbf{c}_0 \exp{-\mathbf{A}(s)}{\quad \operatorname{where} \quad} \mathbf{A}(s) = \int_0^s -\mathbf{a}(\sigma) ~d\sigma
    .\end{align*}`{=tex}

Proof of Assertion 2
--------------------

-   Explicitly in components: `\scriptsize`{=tex} `\begin{align*}
    \begin{dcases}
    {\frac{\partial Y_1}{\partial s}\,} &= -a_1(s) Y_1 \\
    {\frac{\partial Y_s}{\partial s}\,} &= -a_2(s) Y_2 \\
    \end{dcases}
    \quad \implies \quad
    Y_i(s) = c_i e^{-A_i(s)}, \quad
    A_i(s) &= \int_0^s -a_i(\sigma) ~d\sigma
    .\end{align*}`{=tex}

-   As before, for some constants $C_{j, i}$, `\begin{align*}
    A_i(s) = 
    \begin{dcases}
    C_{1, i} + a_i^-\cdot s & s \leq -\sigma_0 \\
    C_{2, i} + a_i^+\cdot s & s \geq  \sigma_0 \\
    \end{dcases}
    .\end{align*}`{=tex} `\normalsize`{=tex}

-   Thus `\begin{align*}
    Y_i \in W^{1, p} \iff 0 \in (a_i^-, a_i^+)
    ,\end{align*}`{=tex}

    establishing

`\begin{align*}
\dim \ker F = \#\left\{i \in\{1,2\} {~\mathrel{\Big|}~}0 \in (a_i^-, a_i^+)
\right\}
.\end{align*}`{=tex}

$\hfill\blacksquare_2$

8.8.3: $\mathop{\mathrm{ind}}(L_1) = k^- - k^+$ {#mathopmathrmindl_1-k----k}
===============================================

Statement and Outline
---------------------

Statement: let $k^\pm \coloneqq\mathop{\mathrm{ind}}(R^\pm)$; then $\mathop{\mathrm{ind}}(L_1) = k^- - k^+$. `\scriptsize`{=tex}

-   Consider four cases, depending on parity of $k^\pm - n$
-   Show all 4 lead to $\mathop{\mathrm{ind}}(L_1) = k^- - k^+$

1.  $k^- \equiv k^+ \equiv n \operatorname{mod}2$.
2.  $k^- \equiv n, k^+ \equiv n-1 \operatorname{mod}2$
3.  $k^- \equiv n-1, k^+ \equiv n \operatorname{mod}2$.
4.  $k^- \equiv k^+ \equiv n-1 \operatorname{mod}2$ `\normalsize`{=tex}

```{=tex}
\begin{center}
\includegraphics[width = 0.3\textwidth]{figures/image_2020-05-27-22-54-44.png} 
\end{center}
```
Case 1: $k^+ \equiv k^- \equiv n \operatorname{mod}2$ {#case-1-k-equiv-k--equiv-n-operatornamemod2}
-----------------------------------------------------

```{=tex}
\scriptsize
```
`\begin{align*}
S_{k^-}          & = \begin{bmatrix}
-\pi             &                   &        &  &      &      &              & \\
                 & -\pi              &        &  &      &      &              & \\
                 &                   & \ddots &  &      &      &              & \\
                 &                   &        &  & -\pi &      &              & \\
                 &                   &        &  &      & -\pi &              & \\
                 &                   &        &  &      &      & (n-1-k^-)\pi & \\
                 &                   &        &  &      &      &              & (n-1-k^-)\pi \\
\end{bmatrix} \\
S_{k^+}          & = \begin{bmatrix}
-\pi             &                   &        &  &      &      &              & \\
                 & -\pi              &        &  &      &      &              & \\
                 &                   & \ddots &  &      &      &              & \\
                 &                   &        &  & -\pi &      &              & \\
                 &                   &        &  &      & -\pi &              & \\
&                   &        &  &      &      & (n-1-{\color{blue}k^+})\pi & \\
&                   &        &  &      &      &              & (n-1-{\color{blue}k^+})\pi \\
\end{bmatrix}
.\end{align*}`{=tex}

Case 1: $k^- \equiv k^+ \equiv n \operatorname{mod}2$ {#case-1-k--equiv-k-equiv-n-operatornamemod2}
-----------------------------------------------------

-   Take $a_1(s) = a_2(s)$ so $a_1^\pm = a^\pm$
-   Apply the proved lemma to obtain

```{=tex}
\scriptsize
```
`\begin{align*}
\dim \ker L_1 
&= 2\cdot \# \left\{{\ell \in {\mathbb{Z}}{~\mathrel{\Big|}~}2\ell \in (n-1-k^-, n-1-k^+)}\right\} \\
&= \begin{dcases}
k^- - k^+ & k^- > k^+ \\
0 & \text{else}
\end{dcases}  \\ \\
\dim \ker L_1^* &= 2\cdot \#\left\{{ \ell \in {\mathbb{Z}}{~\mathrel{\Big|}~}2\ell \in (k^- - n + 1, k^+ - n + 1)}\right\} \\
&= 
\begin{dcases}
k^+ - k^- & k^+ > k^- \\
0 & \text{otherwise}
\end{dcases} \\ \\
\implies \mathop{\mathrm{ind}}(L_1) &= \qty{k^- - k^+ \over 2} - \qty{k^+ - k^- \over 2} = k^- - k^+
.\end{align*}`{=tex}

Case 2: $k^+ \not\equiv k^- \equiv n \operatorname{mod}2$ {#case-2-k-notequiv-k--equiv-n-operatornamemod2}
---------------------------------------------------------

```{=tex}
\scriptsize
```
`\begin{align*}
S_{k-}           & = \begin{bmatrix}
-\pi             &                   &        &  &          &          &              & \\
                 & -\pi              &        &  &          &          &              & \\
                 &                   & \ddots &  &          &          &              & \\
&                   &        &  & -{\color{red}{\varepsilon}}\pi &          &              & \\
&                   &        &  &          & -{\color{red}{\varepsilon}}\pi &              & \\
&                   &        &  &          &          & (n-1-{\color{red}k^-})\pi & \\
&                   &        &  &          &          &              & (n-1-{\color{red}k^-})\pi \\
\end{bmatrix} \\
S_{k^+}          & = \begin{bmatrix}
-\pi             &                   &        &  &          &          &              & \\
                 & -\pi              &        &  &          &          &              & \\
                 &                   & \ddots &  &          &          &              & \\
&                   &        &  & {\color{red}{\varepsilon}}     &          &              & \\
&                   &        &  &          & -{\color{red}{\varepsilon}}    &              & \\
&                   &        &  &          &          & (n-{\color{red}2}-k^+)\pi & \\
&                   &        &  &          &          &              & (n-{\color{red}2}-k^+)\pi \\
\end{bmatrix}
.\end{align*}`{=tex} `\normalsize`{=tex}

Case 2: $k^+ \not\equiv k^- \equiv n \operatorname{mod}2$ {#case-2-k-notequiv-k--equiv-n-operatornamemod2-1}
---------------------------------------------------------

-   Take $a_1(s) = a_2(s)$ everywhere except the $n-1$st block, where we can assume $\sup_{s\in {\mathbb{R}}} {\left\lVert {S(s)} \right\rVert} < 1$.
-   Assertion 2 applies and we get

```{=tex}
\scriptsize
```
`\begin{align*}
\dim \ker L_1 
&= 2\cdot \# \left\{{\ell \in {\mathbb{Z}}{~\mathrel{\Big|}~}2\ell \in (n-1-k^-, n-2-k^+)}\right\} + 1 \\
&=
\begin{dcases}
\qty{k^- - k^+ - 1} + 1 & k^- > k^+ \\
1 & \text{otherwise}
\end{dcases} \\ \\
\dim \ker L_1^*
&=
2\cdot \#\left\{{\ell \in {\mathbb{Z}}{~\mathrel{\Big|}~}2\ell \in (k^- - n + 1, k^+ - n + 2)}\right\} \\
&=
\begin{dcases}
k^+ - k^- + 1, & k^+ > k^- \\
0 & \text{otherwise}
\end{dcases} \\
\implies \mathop{\mathrm{ind}}(L_1) &= 
\qty{ {k^- - k^+ -1 \over 2} + 1} - \qty{k^+ - k^- + 1 \over 2} =
k^- - k^+
.\end{align*}`{=tex}

> The other 2 cases involve different matrices $S_{k^\pm}$, but proceed similarly.

$\hfill\blacksquare$
