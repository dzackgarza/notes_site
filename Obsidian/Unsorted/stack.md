---
aliases:
- stack
- stacks
---

-   [References](#references)
-   [Topics](#topics)
-   [Notes](#notes)














Tags: \#algebraicgeometry

# References

-   <http://www.ams.org/notices/200304/what-is.pdf>
-   <https://www.math.uni-bielefeld.de/~rehmann/ECM/cdrom/3ecm/pdfs/pant3/fantechi.pdf>
-   [Homotopy theory for stacks](https://arxiv.org/abs/math/0110247)

# Topics

-   Moduli stack
    -   [[moduli%20stack%20of%20elliptic%20curves.md | moduli%20stack%20of%20elliptic%20curves.html]]
    -   [[moduli%20stack%20of%20Higgs%20bundles.md | moduli%20stack%20of%20Higgs%20bundles.html]]
-   [Quotient%20stack](Quotient%20stack)
-   [Gerbe](Gerbe)
-   [Algebraic%20space](Algebraic%20space)
-   [Artin%20stack](Artin%20stack)
-   [Deligne-Mumford%20stack](Deligne-Mumford%20stack)
-   [[category%20fibered%20in%20groupoids.md | category%20fibered%20in%20groupoids.html]]
-   Proper: ?
-   [Homotopy%20quotient](Homotopy%20quotient)

> 'Of course, here I'm working with the moduli stack rather than with the moduli space. For those of you who aren't familiar with stacks, don't worry: basically, all it means is that I'm allowed to pretend that the moduli space is smooth and there's a universal family over it.'

# Notes

Neat trick from algebraic geometry: For a stack $\mathcal M =X/G$ where $X$ is a ${\mathbb{C}}{\hbox{-}}$variety and $G$ is a finite group, then `
<span class="math display">
\begin{align*}
H^{-}(\mathcal M; {\mathbb{Q}}) \cong \left( H^{-}(X; {\mathbb{Q}})\right)^G
\end{align*}
<span>`{=html} where the RHS denotes the taking the $G{\hbox{-}}$ invariant part. Seems to only work over ${\mathbb{Q}}$. The quotient is scheme-theoretic. The actual definition involves [[Equivariant%20cohomology.md | Equivariant%20cohomology.html]].

-   A prestack is a functor ${\mathsf{Aff}}{\mathsf{Sch}}_{/k}^{\operatorname{op}}\to {\mathsf{hoType}}$
    -   Source: the infinity category of derived rings over $k$...?
    -   Target: the infinity category of spaces.
