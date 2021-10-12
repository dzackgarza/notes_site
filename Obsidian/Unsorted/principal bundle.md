---
aliases:
- principal
---

-   [References](#references)
-   [Definitions](#definitions)
-   [Examples](#examples)
-   [Results](#results)
    -   [Classification](#classification)














References
==========

-   <http://math.mit.edu/~mbehrens/18.906spring10/prin.pdf>

Definitions
===========

![[_attachments/Pasted%20image%2020210613123515.png]]

**Definition:** A **principal $G{\hbox{-}}$ bundle** is a [[fiber bundle](fiber%20bundle.md) $F \to E \to B$ for which $G$ acts [freely | freely.html]] and [transitively](transitively) on each fiber $F_b:= \pi^{-1}(b]]$.

I.e. there is a continuous group action `
<span class="math display">
\begin{align*}\cdot \in {\mathsf{Top}}{\mathsf{Grp}}(E\times G, E)\end{align*}
<span>`{=html} such that for every $f \in F_b$ and $g\in G$,

-   $g\cdot f \in F_b$
-   $g\cdot f \neq f$.

A principal $G$ bundle is a locally trivial free $G$-space with orbit space $B$.

**Definition:** A principal bundle $F \to E \xrightarrow{\pi} B$ is **universal** iff $E$ is [[weakly%20contractible.md | weakly%20contractible.html]].

![[_attachments/Pasted%20image%2020210510012449.png) ![](_attachments/Pasted%20image%2020210613123624.png) ![](_attachments/Pasted%20image%2020210613123710.png]]

Examples
========

-   Every [[fiber%20bundle.md) $F\to E\to B$ is a principal \$`\mathop{\mathrm{Aut}}`{=tex}(F | fiber%20bundle.html]]%20$F/to%20E/to%20B$%20is%20a%20principal%20$/Aut(F){\hbox{-}}$ fiber bundle.
    -   In local trivializations, the transition functions are elements of $G$.
-   A [covering%20space) $\widehat{X} \xrightarrow{p} X$ yields a principal \$`\pi`{=tex}\_1(X](covering%20space)%20$/hat%20X%20/mapsvia{p}%20X$%20yields%20a%20principal%20$/pi_1(X){\hbox{-}}$bundle.

Results
=======

-   Every principal $G{\hbox{-}}$bundle is a pullback of $EG \to {\mathbf{B}}G$.
-   A principal bundle is trivial iff it admits a [[section%20of%20a%20bundle.md | section%20of%20a%20bundle.html]].
-   All [[section%20of%20a%20bundle.md | section%20of%20a%20bundle.html]] always exists.
-   Each $F_b \cong G \in \text{TopGrp}$, which may also be taken as the definition.
-   Each $F_b$ is a [[homogeneous%20space.md | homogeneous%20space.html]].
-   Although each fiber $F_b \cong G$, there is no preferred identity element in $F_b$.
    -   Locally, one can form a [[section%20of%20a%20bundle.md | section%20of%20a%20bundle.html]] by choosing some $e\in F_b$ to serve as the identity, but the fibers can only be given a global group structure iff the bundle is trivial.
    -   So each fiber $F_b$ is a $G{\hbox{-}}$ [[torsor.md | torsor.html]].

Classification
--------------

-   If $G$ is discrete, then a principal $G$-bundle over $X$ with total space $\tilde X$ is equivalent to a [[regular](regular) [covering | covering.html]] map with $\mathop{\mathrm{Aut}}(\tilde X) = G$.

Under some hypothesis, there exists a [[classifying%20space.md | classifying%20space.html]] ${\mathbf{B}}G$.
