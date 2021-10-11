---
date: 2021-04-26
tags:
- Unfiled
---

-   [Example: Proving the 5 lemma](#example-proving-the-5-lemma)














# Example: Proving the 5 lemma

Recall the definition: if $X\xrightarrow{f} Y$ then $\operatorname{coker}f = \frac{Y}{\operatorname{im}f}$

Expand the usual diagram into a double complex by filling in zeros: `
<span class="math display">
\begin{align*}
\begin{CD}
0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 \\
@VVV @VVV @VVV @VVV @VVV @VVV @VVV \\
0 @<<< E @<<< D @<<< C @<<< B @<<< A @<<< 0 \\
@VVV @VkVV @V-jVV @VhVV @V-gVV @VfVV @VVV \\
0 @<<< E' @<<< D' @<<< C' @<<< B' @<<< A' @<<< 0 \\
@VVV @VVV @VVV @VVV @VVV @VVV @VVV \\
0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 \\
\end{CD}
\end{align*}
<span>`{=html} Here we assume that $k, -j, -g, f$ are all isomorphisms. Since this is the $E_0$ page, we first take homology starting with the vertical arrows as differentials, this yields the $E_1$ page

`
<span class="math display">
\begin{align*}
\begin{CD}
0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 \\
@. @. @. @. @. @. @. \\
0 @<<< 0 @<<< 0 @<<< \frac{\ker h}{\operatorname{im}0 \mapsto C}\cong \frac{\ker h}{0} @<<< 0 @<<< 0 @<<< 0 \\
@. @. @. @. @. @. @. \\
0 @<<< 0 @<<< 0 @<<<\frac{\ker C' \mapsto 0}{\operatorname{im}h}\cong\frac{C'}{\operatorname{im}h} @<<< 0 @<<< 0 @<<< 0 \\
@. @. @. @. @. @. @. \\
0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 \\
\end{CD}
\end{align*}
<span>`{=html}

Making suitable identifications, this page equals

`
<span class="math display">
\begin{align*}
\begin{CD}
0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 \\
@. @. @. @. @. @. @. \\
0 @<<< 0 @<<< 0 @<<< \text{Ker } h @<<< 0 @<<< 0 @<<< 0 \\
@. @. @. @. @. @. @. \\
0 @<<< 0 @<<< 0 @<<< \text{Coker } h @<<< 0 @<<< 0 @<<< 0 \\
@. @. @. @. @. @. @. \\
0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 \\
\end{CD}
\end{align*}
<span>`{=html}

The differentials on this page are now all horizontal arrows - but these are all zero maps, so the spectral sequence has collapsed at this page. We now know this page is the complex that the spectral sequence converges to, even if we don't know what $\ker k$ and $\operatorname{coker}h$ are.

We also know that taking the "dual" spectral sequence converges to the same thing. We start with the same $E_1$ page, but now start with the horizontal arrows as differentials. By exactness of the rows, we have the $E_1$ page `
<span class="math display">
\begin{align*}
\begin{CD}
0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 \\
@. @. @. @. @. @. @. \\
0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 \\
@. @. @. @. @. @. @. \\
0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 \\
@. @. @. @. @. @. @. \\
0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 @<<< 0 \\
\end{CD}
\end{align*}
<span>`{=html} and since the differentials are necessarily at this page, the spectral sequence has collapsed. But this must be equal to what it converged to in the dual setting, so we obtain $\ker h = 0$ and $\operatorname{coker}h = 0$. But $\ker h = 0$ iff $h$ is injective, and $\operatorname{coker}h = 0$ iff $h$ is surjective, so $h$ is an isomorphism.
