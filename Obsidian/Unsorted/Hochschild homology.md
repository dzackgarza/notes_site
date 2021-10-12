---
aliases:
- HH
date: '2021-04-26'
---

-   [Hochschild Homology](#hochschild-homology)
-   [Defining THH](#defining-thh)
-   [Unsorted](#unsorted)














References: [cyclic%20homology](cyclic%20homology)

![[../attachments/1214427886.pdf]]

Hochschild Homology
===================

Let $A \in {\mathsf{Alg}}_{/R}$ such that $A$ is projective as an $R{\hbox{-}}$module and $M\in ({A}, {A}){\hbox{-}}\mathsf{biMod}$. Then define the **Hochschild complex** as `
<span class="math display">
\begin{align*}
C_n(A, M) := M \otimes A^{\otimes n}
\end{align*}
<span>`{=html}

The Hochschild homology of an $R{\hbox{-}}R{\hbox{-}}$bimodule reflects some ring-theoretic stuff.

-   For $R\in{\mathsf{Alg}}_{/k}$, $H_1(R,R) = \Omega_R/k$, the module of differentials . If $Q\subseteq R$ then there is an algebraic decomposition of this homology analogous to the [Hodge%20decomposition](Hodge%20decomposition) of complex manifolds.

-   If $k\in \mathsf{Ring}$ and $X\in {\mathsf{sSet}}$ a [[geometric%20realization.md | geometric%20realization.html]] ${\left\lvert {X} \right\rvert}$ with coefficients in $k$.

Defining THH
============

-   Take $A \in \mathsf{C}$, where $\mathcal C$ is a "nice" [[Monoidal%20category.md | Monoidal%20category.html]], and $A$ is an algebra object in it. We'll call the monoidal operation $\otimes$.
-   We'll make a simplicial object ${THH}_{*}(A)$:
    -   $THH_n(A) = A^{\otimes n+1}$. If it's to be simplicial, need to specify the face/degeneracy maps:
    -   Face maps: collapse by cyclic multiplication
    -   Degeneracy maps: use the unit of $A$, can replace any tensor symbol with it. Have a unit map that goes from the unit to $A$, so somehow this gets you "up" one level (?)
-   Now take its geometric realization ${\left\lvert {THH_{-}(A)} \right\rvert}$
    -   In general, take $\mathrm{hocolim}_\Delta THH_{-}(A)$

Unsorted
========

Computing various homological invariants of associative algebras (such as Tor and Ext of various modules, Hochschild (co)homology, cyclic homology etc.) has been an active research topic in ring theory for many years. More recently (about 15 years ago), ring theorists became interested in associative algebras up to homotopy, or [Yoneda%20Ext](Yoneda%20Ext)-algebras.

This offers two different perspectives on associative algebras: homological invariants are "abelian" (i. e. arise when one works with [additive%20category), e.g. chain complexes of modules over a ring), while homotopical invariants are "non-abelian" (i. e. arise from non-additive categories, like the category of all differential graded associative algebras). However, these two perspectives are closely related, and it is often possible to recover homological information from the homotopical one, and the other way round. For experts in homotopical algebra on a larger scale (beyond the associative ring theory](additive%20category),%20e.g.%20chain%20complexes%20of%20modules%20over%20a%20ring),%20while%20homotopical%20invariants%20are%20"non-abelian"%20(i.%20e.%20arise%20from%20non-additive%20categories,%20like%20the%20category%20of%20all%20differential%20graded%20associative%20algebras).%20However,%20these%20two%20perspectives%20are%20closely%20related,%20and%20it%20is%20often%20possible%20to%20recover%20homological%20information%20from%20the%20homotopical%20one,%20and%20the%20other%20way%20round.%20For%20experts%20in%20homotopical%20algebra%20on%20a%20larger%20scale%20(beyond%20the%20associative%20ring%20theory), this philosophy is already present in works of Stasheff and Hinich on homotopy algebras.

-   See the [[HKR.md | HKR.html]] theorem

-   When proving stuff about algebras -- try with polynomial algebras first, essentially the simplest case.

-   Simplest [[Hopf%20algebra.md) | Hopf%20algebra.html]])
