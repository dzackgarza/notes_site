Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    G && EG \\
    \\
    && BG
    \arrow["\pi", from=1-3, to=3-3]
    \arrow[from=1-1, to=1-3]
\end{tikzcd}
\end{document}
---
aliases:
- classifying spaces
- BG
date: '2021-04-26T10:40'
---

-   [Topics](#topics)
-   [Definitions](#definitions)
-   [Notes](#notes)
    -   [Constructions](#constructions)
-   [Further Reading](#further-reading)
-   [Unknown?](#unknown)
-   [Examples](#examples)














Tags: \#homotopy

Topics
======

-   [[classifying%20stack.md | classifying%20stack.html]]
-   [[principal%20bundle.md | principal%20bundle.html]]
-   [[classifying%20space%20of%20a%20category.md | classifying%20space%20of%20a%20category.html]]

Definitions
===========

::: {.definition .proofenv title="?"}
The **classifying space** of a category is given by `
<span class="math display">
\begin{align*}
{\mathbf{B}}\mathsf{C} \coloneqq{ {\left\lvert {{ \mathcal{N}({\mathsf{C}}) }} \right\rvert} }
,\end{align*}
<span>`{=html} the [[geometric realization](geometric%20realization.md) of the [nerve | nerve.html]] of $\mathsf{C}$.
:::

-   If $M$ is a monoid, then $\pi_1 {\mathbf{B}}M \cong M{ {}^{ \widehat{ {\operatorname{gp} } } } }$ is the group completion of $M$.

::: {.definition .proofenv title="?"}
Given $G\in {\mathsf{Top}}{\mathsf{Grp}}$, a **classifying space** for $G$, denoted ${\mathbf{B}}G$, is the base space of a universal [[principal%20bundle.md | principal%20bundle.html]] $G{\hbox{-}}$ bundle making ${\mathbf{B}}G$ a quotient of the contractible space $EG$ by a free $G{\hbox{-}}$ action, so ${\mathbf{B}}G \cong EG/G$. Call this the **the classifying bundle**:

`<p style="text-align:center;"> <img class="tikzcd" src="figures/eff36353b76c25b69e97d6f04871b99fac9ca297.svg"></p>`{=html}

> <https://q.uiver.app/?q=WzAsMyxbMCwwLCJHIl0sWzIsMCwiRUciXSxbMiwyLCJCRyJdLFsxLDIsIlxccGkiXSxbMCwxXV0=>
:::

Any other [[pullback.md | pullback.html]] of the classifying bundle along a map $X \to {\mathbf{B}}G$.

Let $I(G, X)$ denote the set of isomorphism classes of principal $G{\hbox{-}}$ bundles over a base space $X$, then `
<span class="math display">
\begin{align*}
I(G, X) \cong {\mathsf{hoTop}}(X, {\mathbf{B}}G)
\end{align*}
<span>`{=html} So in other words, isomorphism classes of principal $G{\hbox{-}}$ bundles over a base $X$ are equivalent to homotopy classes of maps from $X$ into the classifying space of $G$.

**Proposition**: [[vector%20bundles.md | vector%20bundles.html]]. That is, there is a bijection: `
<span class="math display">
\begin{align*}
{\mathsf{hoTop}}(X, {\operatorname{Gr}}_n({\mathbb{R}})) \cong \left\{{\text{rank $n$ ${\mathbb{R}}{\hbox{-}}$vector bundles over $X$}}\right\} / \sim
\end{align*}
<span>`{=html} - Every such vector bundle is a pullback of the principal bundle `
<span class="math display">
\begin{align*}
\operatorname{GL}(n, {\mathbb{R}}) \to V_n({\mathbb{R}}^\infty) \to {\operatorname{Gr}}(n, {\mathbb{R}})
\end{align*}
<span>`{=html}

Notes
=====

-   ${\mathbf{B}}G = K(G, 1)$ when $G$ is discrete.

-   $\pi_1({\mathbf{B}}G) = G$ and $\pi_n({\mathbf{B}}G) = \pi_n EG = 1$. ![[_attachments/Pasted%20image%2020210505015056.png) ![](_attachments/Pasted%20image%2020210505015233.png]]

-   $X/G$ may fail to be a nice space if points have nontrivial stabilizers.

-   It is useful to think of ${\mathbf{B}}G$ as a space whose points are copies of $G$, so the classifying map $f\in {\mathsf{hoTop}}(X,{\mathbf{B}}G)$ assigns each $x \in X$ to the fiber above $x$, which is a copy of $G$.

-   For a discrete group $G$, we have ${\mathbf{B}}G = K(G,1)$, so that $\pi_1({\mathbf{B}}G) = G$ and $\pi_k({\mathbf{B}}G) = 0$ for $k \neq 1$.

    -   Follows from contractibility of $EG$ ?

-   For $X\in {\mathsf{Top}}{\mathsf{Grp}}$, there is a weak equivalence ${\Omega}{\mathbf{B}}X \underset{\scriptscriptstyle W}{\rightarrow}X$

    -   How to prove: show they both represent the functor $\mathop{\mathrm{Prin}}_G(S^1 \wedge({-}){ {}_{{\operatorname{pt}}} }$

![[_attachments/Pasted%20image%2020210613124743.png]]

Constructions
-------------

-   Standard procedure for constructing a classifying space for any group:
    -   Construct a 2-complex with the given fundamental group, and then one inductively attaches higher dimensional cells to kill all higher homotopy groups.
    -   Each element $c\in \pi_n(X_{n−1})$ is represented by some continuous map $\gamma_c:S^n\to X_{n−1}$ with image in the $n{\hbox{-}}$-skeleton.
    -   Let $X_n$ be obtained from $X_{n−1}$ by attaching an $(n+1){\hbox{-}}$cell along $\gamma_c$, for each $c\in π_n(X_{n−1})$.

Further Reading
===============

-   Any [[classifying%20space.md | classifying%20space.html]].

-   $\pi_{i+k}{\mathbf{B}}^k G = \pi_i G$.

    -   Proof: If $G$ is a topological group, there is a universal principal $G{\hbox{-}}$bundle $EG \to BG$ which induces a LES in homotopy.
    -   Since $EG$ is contractible, `
        <span class="math display">
        \begin{align*}\pi_i EG = \pi_{i+1}EG = 0\implies \pi_{i+1}BG \cong \pi_i G.\end{align*}
        <span>`{=html}
    -   When $G$ is an $E_2$ space, $BG$ is a topological group, and so `
        <span class="math display">
        \begin{align*}\pi_{i+2}(B^2G) = \pi_{i+2}(B(BG)) = \pi_{i+1}(BG) = \pi_i(G).\end{align*}
        <span>`{=html}

-   Corollary: If $G$ is a discrete group, ${\mathbf{B}}^k G \simeq K(G, n)$.

    -   Proof: $\pi_0 G = G$ and $\pi_i G = 0$ for $i > 0$, so $\pi_k {\mathbf{B}}^k G = G$.

-   One can take classifying spaces of [[stack.md | stack.html]].

    -   There is a stack that classifies [[connection.md | connection.html]]\*, but it has issues:
    -   It is not a [representable](representable).

-   $EG$ can be constructed as `
    <span class="math display">
    \begin{align*}
    EG \cong \bigcup_n G \ast G \ast \cdots \ast G
    ,\end{align*}
    <span>`{=html} where $\ast$ is join of two spaces: the suspension of the smash product. For example, $G = {\mathbb{Z}}_2$ implies `
    <span class="math display">
    \begin{align*}
    EG \cong \bigcup_n {\mathbb{Z}}_2 \ast \cdots = \bigcup_n S^{n-1} = S^\infty
    .\end{align*}
    <span>`{=html}

Unknown?
========

-   What is $\pi_* {\mathbf{B}}G$?
    -   What is the stable homotopy $\pi_* {\Sigma}^\infty {\mathbf{B}}G$?
-   Conjecture: ${\mathbf{B}}(G \oplus H) = {\mathbf{B}}G \times{\mathbf{B}}H$
    -   Proof outline: $EG \times EH$ is contractible, and $G \times H$ acts freely on it with quotient equal to the RHS?
-   Conjecture: ${\mathbf{B}}(G \ast H) = BG \vee BH$
-   Conjecture: ${\mathbf{B}}(G \otimes_{\mathbb{Z}}H) = ?$ for $G, H\in {\mathsf{Ab}}$?
-   Conjecture: ${\mathbf{B}}(G \rtimes_\phi H) = ?$

Examples
========

-   ${\mathbf{B}}\operatorname{GL}_n({\mathbb{R}})$ classifies $k{\hbox{-}}$dimensional vector bundles.
-   ${\mathbf{B}}\mathop{\mathrm{Aut}}_{\mathsf{Top}}(M)$ classifies fiber bundles with fiber $M$
-   ${\mathbf{B}}S_n$ classifies $n{\hbox{-}}$sheeted covering spaces
