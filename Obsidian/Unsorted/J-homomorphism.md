---
aliases:
- image of J
---

-   [References](#references)
-   [What is the $J$ homomorphism?](#what-is-the-j-homomorphism)














# References

-   <https://www.youtube.com/watch?v=Ix4pg87LKVk>

# What is the $J$ homomorphism? {#what-is-the-j-homomorphism}

The $J$ homomorphism seems to link the [[Homotopy%20Groups%20of%20Spheres.md | Homotopy%20Groups%20of%20Spheres.html]]. For example $J$ takes $\pi_k(SL^n(R))$ to $\pi_{n}^k S^n$.

Look at the map `
<span class="math display">
\begin{align*}
\begin{align*}
SO(n) &\to \Omega^n S^n\\
A: ({\mathbb{R}}^n \to {\mathbb{R}}^n) &\mapsto A^+
.\end{align*}
\end{align*}
<span>`{=html}

AKA `
<span class="math display">
\begin{align*}
J: \pi_n(SO(k)) \to \pi_{n+k}(S_k)
\end{align*}
<span>`{=html}

Where we view a matrix as a linear function on ${\mathbb{R}}^n$, and take it to its compactification which is a map $S^n\to S^n$. Taking the limit yields a map from ${\operatorname{SO}}^\infty \to QS^0 = \Omega^\infty \Sigma^\infty S^0$, and taking $\pi_0$ of both sides induces the $J$ homomorphism. The RHS is equal to $\pi_*^s$, the [[stable%20homotopy%20groups%20of%20spheres.md | stable%20homotopy%20groups%20of%20spheres.html]]. But the homotopy groups of $SO$ were computed by Bott, and have some 8-fold periodicity.

The image of $J$ was found by Adams in '66 or so, it is a finite group with order the denominator of some function involving Bernoulli numbers. However, the pattern is more apparent by looking at the $p$-stems, then the number of connected dots really just depends on the $p$-adic divisibilty of the horizontal number plus 1. The image of $J$ is just the bottom row in these stem diagrams.
