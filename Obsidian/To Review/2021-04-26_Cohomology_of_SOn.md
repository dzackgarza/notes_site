---
date: 2021-04-26
tags:
- Unfiled
---

-   [1) Cohomology of SO3](#cohomology-of-so3)














Basically, all of these computations are based on the fact that $SO^n$ acts transitively on $S^{n-1}$ with stabilizer $SO^{n-1}$, producing fibrations of the form $SO^{n-1} \to SO^n \to S^{n-1}$. The overall question: can this be used to inductively determine $H^*(SO^n)$ for all $n$?

# 1) Cohomology of SO3

A priori, we can use the fact that $SO^3$ is diffeomorphic to ${\mathbb{RP}}^3$ to obtain

`
<span class="math display">
\begin{align*}H^*(SO^3) = H^*({\mathbb{RP}}^3) = [{\mathbb{Z}}, 0, {\mathbb{Z}}_2, {\mathbb{Z}}, 0, 0, \cdots]\end{align*}
<span>`{=html}

But supposing we didn't know the cohomology of the total space, the Serre spectral sequence can be applied by using the fibration

`
<span class="math display">
\begin{align*} S^1 \to SO^3 \to S^2\end{align*}
<span>`{=html}

and then the usual theorems give the formula (in cohomology)

`
<span class="math display">
\begin{align*} E_2^{p,q} = H^p(S^2) \otimes H^q(S^1).\end{align*}
<span>`{=html}

This yields the following $E_2$ and $E_3$ pages respectively (indexing columns with $p$ and rows with $q$):

\`\`\`latex{cmd=true hide=true run_on_save=true}
