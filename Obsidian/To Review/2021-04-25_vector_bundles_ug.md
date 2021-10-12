---
date: '2021-04-26T10:41'
---

-   [Vector Bundles](#vector-bundles)














\#bundles \#algebraic_topology

Vector Bundles
==============

**Definition:** A *rank $n$ vector bundle* is a fiber bundle in which the fibers $F$ have the structure of a vector space $k^n$ for some field $k$; the structure group of such a bundle is a subset of $\operatorname{GL}(n, k)$.

Note that a vector bundle always has one global section: namely, since every fiber is a vector space, you can canonically choose the 0 element to obtain a global zero section.

**Proposition**: A rank $n$ vector bundle is trivial iff it admits $k$ linearly independent global sections.

**Example:** The tangent bundle of a manifold is an ${\mathbb{R}}$-vector bundle. Let $M^n$ be an $n{\hbox{-}}$ dimensional manifold. For any point $x\in M$, the tangent space $T_xM$ exists, and so we can define `
<span class="math display">
\begin{align*}
TM = \coprod_{x\in M} T_xM = \left\{{(x, t) \mathrel{\Big|}x\in M, t \in T_xM}\right\}
\end{align*}
<span>`{=html} Then $TM$ is a manifold of dimension $2n$ and there is a corresponding fiber bundle `
<span class="math display">
\begin{align*}
{\mathbb{R}}^n \to TM \xrightarrow{\pi} M
\end{align*}
<span>`{=html} given by a natural projection $\pi:(x, t) \mapsto x$

**Example** A circle bundle is a fiber bundle in which the fiber is isomorphic to $S^1$ as a topological group. Consider circle bundles over a circle, which are of the form `
<span class="math display">
\begin{align*}
S^1 \to E \xrightarrow{\pi} S^1
\end{align*}
<span>`{=html} There is a trivial bundle, when $E = S^1 \times S^1 = T^2$, the torus:

There is also a nontrivial bundle, $E = K$, the Klein bottle:

As in the earlier example involving the Mobius strip, since $K$ is nonorientable, $T^2 \not\cong K$ and there are thus at least two distinct bundles of this type.

------------------------------------------------------------------------

*Remark*: A section of the tangent bundle $TM$ is equivalent to a *vector field* on $M$.

**Definition**: If the tangent bundle of a manifold is trivial, the manifold is said to be *parallelizable.*

**Proposition:** The circle $S^1$ is parallelizable.

*Proof* Let $M = S^1$, then there is a rank 1 vector bundle\
`
<span class="math display">
\begin{align*}{\mathbb{R}}\to TM \to M\end{align*}
<span>`{=html} and since $TM = S^1 \times{\mathbb{R}}$ (why?), we find that $S^1$ is parallelizable.

**Proposition:** The sphere $S^2$ is not parallelizable.

*Proof*: Let $M = S^2$, which is associated to the rank 2 vector bundle `
<span class="math display">
\begin{align*}{\mathbb{R}}^2 \to TM \to M\end{align*}
<span>`{=html}

Then $TM$ is trivial iff there are 2 independent global sections. Since there is a zero section, a second independent section must be everywhere-nonzero - however, this would be a nowhere vanishing vector field on $S^2$, which by the Hairy Ball theorem does not exist.

Alternate proof: such a vector field would allow a homotopy between the identity and the antipodal map on $S^2$, contradiction by basic homotopy theory.

> See next: [[../2021-04-25_classifying_spaces_ug | ../2021-04-25_classifying_spaces_ug.html]]
