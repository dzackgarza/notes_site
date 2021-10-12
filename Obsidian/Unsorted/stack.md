---
aliases:
- stack
- stacks
---

-   [References](#references)
-   [Topics](#topics)
-   [Notes](#notes)














Tags: \#algebraicgeometry

References
==========

-   <http://www.ams.org/notices/200304/what-is.pdf>
-   <https://www.math.uni-bielefeld.de/~rehmann/ECM/cdrom/3ecm/pdfs/pant3/fantechi.pdf>
-   [Homotopy theory for stacks](https://arxiv.org/abs/math/0110247)

Topics
======

-   Moduli stack
    -   \[\[moduli stack of elliptic curves\]\]
    -   \[\[moduli stack of Higgs bundles\]\]
-   \[\[Quotient stack\]\]
-   \[\[Gerbe\]\]
-   \[\[Algebraic space\]\]
-   \[\[Artin stack\]\]
-   \[\[Deligne-Mumford stack\]\]
-   \[\[category fibered in groupoids\]\]
-   \[\[Unsorted/proper morphism\]\]
-   \[\[stackification\]\]
-   \[\[Homotopy quotient\]\]
    -   How to realize a stack as a homotopy quotient?

> 'Of course, here I'm working with the moduli stack rather than with the moduli space. For those of you who aren't familiar with stacks, don't worry: basically, all it means is that I'm allowed to pretend that the moduli space is smooth and there's a universal family over it.'

Notes
=====

Neat trick from algebraic geometry: For a stack $\mathcal M =X/G$ where $X$ is a ${\mathbb{C}}{\hbox{-}}$variety and $G$ is a finite group, then `
<span class="math display">
\begin{align*}
H^{-}(\mathcal M; {\mathbb{Q}}) \cong \left( H^{-}(X; {\mathbb{Q}})\right)^G
\end{align*}
<span>`{=html} where the RHS denotes the taking the $G{\hbox{-}}$ invariant part. Seems to only work over ${\mathbb{Q}}$. The quotient is scheme-theoretic. The actual definition involves \[\[Equivariant cohomology\]\].

-   A prestack is a functor ${\mathsf{Aff}}{\mathsf{Sch}}_{/k}^{\operatorname{op}}\to {\mathsf{hoType}}$
    -   Source: the infinity category of derived rings over $k$...?
    -   Target: the infinity category of spaces.
