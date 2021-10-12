---
aliases:
- surgery theory
---

-   [References](#references)
-   [Motivation: CW Cell Attachment](#motivation-cw-cell-attachment)
-   [Definitions](#definitions)
-   [Examples](#examples)
-   [Results](#results)














References
==========

-   Lück's Basic introduction to surgery theory

-   Recommended by Akram

    -   Using surgery theory to study \[\[\_attachments/1970128.pdf\]\] \#papers \#recommendations
    -   Killing homotopy smoothly: <https://www.maths.ed.ac.uk/~v1ranick/papers/milnorsurg.pdf> \#papers \#recommendations

Motivation: CW Cell Attachment
==============================

Given $X$, we can form $\tilde X = X^n {\textstyle\coprod}_\phi e^n$ where $e^n \cong {\mathbb{D}}^n$ is an $n{\hbox{-}}$cell and $\phi: S^{n-1} \to X$ is the characteristic/attaching map.

> Remark: Why $S^{n-1}$? This just comes from the fact that ${{\partial}}e^n = {{\partial}}{\mathbb{D}}^n = S^{n-1}$.

![[_attachments/2020-02-05-00-22-18.png]]

**Problem**: This doesn't "see" the smooth structure, and CW complexes can have singular points, e.g. $S^2 = e^0 {\textstyle\coprod}e^2$.

**Solution**: Use \[\[tubular neighborhood\]\], for each sphere, thicken with a disc of its codimension.

Definitions
===========

**Definition (Surgery):** Given a manifold $M^n$ where $n=p+q$, then $p{\hbox{-}}$surgery on $M$, denoted $\mathcal{S}(M)$, result of cutting out $S^p \times D^q$ and gluing back in $D^{p+1} \times S^{q-1}$.

Let $\Gamma_{p, q} = S^p \times D^q$, call this our "surgery cell". As in the CW case, we want to attach this cell via an embedding of its boundary into $M$.

We can compute `
<span class="math display">
\begin{align*}
{{\partial}}(S^p\times D^q) = S^p \times S^{q-1} = {{\partial}}(\mathbf{D^{p+1} \times S^{q-1}})
\end{align*}
<span>`{=html}

then the above says `
<span class="math display">
\begin{align*}
{{\partial}}\Gamma_{p, q} = S^p \times S^q = {{\partial}}\Gamma_{p+1, q-1}
\end{align*}
<span>`{=html}

So fix any \[\[embedding\]\] `
<span class="math display">
\begin{align*}\phi: \Gamma_{p, q} \to M\end{align*}
<span>`{=html}

Note that this restricts to some map (abusing notation) `
<span class="math display">
\begin{align*}\phi: {{\partial}}\Gamma_{p, q} \to M\end{align*}
<span>`{=html}

So by the above observation, we can trade this in for a map `\begin{align*}
\phi: {{\partial}}\Gamma_{p+1, q-1} \to M
.\end{align*}`{=tex}

And so we can use this as an attaching map: `\begin{align*}
\mathcal{S}_p(M) \coloneqq M\setminus \phi(\Gamma_{p, q})^\circ {\textstyle\coprod}_\phi \Gamma_{p+1, q-1} 
.\end{align*}`{=tex}

**Definition (Handle Attachment)** Given a manifold $(M^n, {{\partial}}M^n)$ with boundary, attaching a $p{\hbox{-}}$[handle) to $M$, denoted \$H_p(M](handle)%20to%20$M$,%20denoted%20$H_p(M)$, is given by $p{\hbox{-}}$surgery on ${{\partial}}M$, i.e.  `\begin{align*}
H_p(M)^\circ    &= M \\
{{\partial}}H_p(M)      &= \mathcal{S}_k({{\partial}}M)
.\end{align*}`{=tex}

Remark: we need conditions on the embedding of the \[\[normal bundle\]\] for this to work.

Examples
========

**Examples of Handles :** $S^1 \times D^2 \cong \mkern 1.5mu\overline{\mkern-1.5muT\mkern-1.5mu}\mkern 1.5mu$, a solid torus.

A useful table:

![[_attachments/2020-02-05-00-59-19.png]]

> See examples of surgery

![[_attachments/2020-02-05-12-25-15.png]]

Results
=======

-   Every compact manifold is surgery on a \[\[contact structure\]\].
