---
aliases:
- chromatic homotopy
- chromatic
date: '2021-04-26'
---

-   [Topics](#topics)
-   [Notes](#notes)
    -   [The chromatic tower](#the-chromatic-tower)














Tags: \#homotopy \#numbertheory

Topics
======

-   [[chromatic%20homotopy%20theory.md | chromatic%20homotopy%20theory.html]]
-   [Fracture%20theorem](Fracture%20theorem)
-   The chromatic spectral sequence
    -   Is this similar to fracture theorems in stable homotopy..?
-   [[Nishida's%20Theorem.md | Nishida's%20Theorem.html]]
-   [Bousfield%20localization](Bousfield%20localization)
-   [Morava stabilizer group](Morava%20stabilizer%20group)
    -   [[Morava%20E%20theory.md | Morava%20E%20theory.html]]
-   [[Formal%20group.md | Formal%20group.html]]
    -   [[Formal group | Formal%20group.html]]
    -   [Lubin-Tate space](Lubin-Tate%20space)
    -   [[Lubin-Tate theory | Lubin-Tate%20theory.html]]
-   [[Kervaire invariant 1 | Kervaire%20invariant%201.html]]
-   [[Topological%20modular%20forms.md | Topological%20modular%20forms.html]]
-   [Dieudonne%20module](Dieudonne%20module) -[Redshift](Redshift)
-   [[K-Theory.md | K-Theory.html]]
-   [p-divisible%20group](p-divisible%20group)
-   [[Unsorted/ambidexterity | ambidexterity.html]]

Notes
=====

-   The chromatic view-point, which studies stable homotopy theory via its relationships to the moduli of [[Topological%20modular%20forms.md | Topological%20modular%20forms.html]].

<https://www3.nd.edu/~mbehren1/papers/exotic2.pdf> Kervaire and Milnor defined $\Theta_n$ to be the group of [h-cobordism) (where the group operation is given by connect sum](h-cobordism)%20(where%20the%20group%20operation%20is%20given%20by%20connect%20sum).

By the \[[Poincare%20Conjecture.md)\] ($n = 3$\ | Poincare%20Conjecture.html]]\]%20($n%20=%203$).

For $n \neq 4$, $\Theta_n = 0$ if and only if $S^n$ has a unique [[smooth%20structure.md) (i.e. there are no exotic spheres of dimension $n$ | smooth%20structure.html]]%20(i.e.%20there%20are%20no%20exotic%20spheres%20of%20dimension%20$n$).

We wish to consider the following question: For which $n$ is $\Theta_n = 0$? The general belief is that there should be finitely many such $n$, and these n should be concentrated in relatively low dimensions.

The chromatic tower
-------------------

Fix a prime $p$. The **chromatic tower** of a [Bousfield%20localization](Bousfield%20localization) `
<span class="math display">
\begin{align*}
X \rightarrow \cdots \rightarrow X _ { E ( n ) } \rightarrow X _ { E ( n - 1 ) } \rightarrow \cdots \rightarrow X _ { E ( 0 ) }
\end{align*}
<span>`{=html} where $E(n)$ is the $n$th [Johnson-Wilson spectrum](Johnson-Wilson%20spectrum) $(E (0) = { \mathsf{H} }{\mathbb{Q}}$, by convention) with `
<span class="math display">
\begin{align*}
E ( n ) _ { * } = \mathbb { Z } _ { ( p ) } \left[ v _ { 1 } , \dots , v _ { n - 1 } , v _ { n } ^ { \pm } \right]
\end{align*}
<span>`{=html} The fibers of the chromatic tower `
<span class="math display">
\begin{align*}
M _ { n } X \rightarrow X _ { E ( n ) } \rightarrow X _ { E ( n - 1 ) }
\end{align*}
<span>`{=html} are called the monochromatic layers.

The [[spectral%20sequence.md | spectral%20sequence.html]] associated to the chromatic tower is the **chromatic spectral sequence** `
<span class="math display">
\begin{align*}
E _ { 1 } ^ { n , * } = \pi _ { * } M _ { n } X \Rightarrow \pi _ { * } X _ { ( p ) }
\end{align*}
<span>`{=html}

Let $M_\ell$ denote the [[Deligne-Mumford stack](Deligne-Mumford%20stack) of [elliptic curves](elliptic%20curves) over $\operatorname{Spec}({\mathbb{Z}})$. See also [moduli stack of elliptic curves | moduli%20stack%20of%20elliptic%20curves.html]].

For a commutative ring $R$, the [[groupoid.md](groupoid.md) of $R$-points of $M_\ell$ is the groupoid of elliptic curves over $R$. This [stack](stack.md) carries a [line bundle | line%20bundle.html]] $\omega$ where for an elliptic curve $C$, the fiber over $C$ is given by $\omega C = T^∗_e C,$ the tangent space of $C$ at its basepoint $e$.

The stack $M_{\ell}$ admits a compactification $\overline{M}_{ell}$ whose $R$ points are generalized elliptic curves. The space of integral [modular forms](modular%20forms) of [weight](weight) $k$ is defined to be the sections `
<span class="math display">
\begin{align*}
H ^ { 0 } \left( \overline { \mathcal { M } } _ { e l l } , \omega ^ { \otimes k } \right)
\end{align*}
<span>`{=html} Motivated by the definition of integral modular forms and this [descent spectral sequence](descent%20spectral%20sequence) in the case of $U = M_\ell$ , the spectrum $ \mathrm{TMF} $ is defined to be the [global sections](global%20sections) `
<span class="math display">
\begin{align*}
\mathrm { Tmf } : = \mathcal { O } ^ { t o p } \left( \overline { \mathcal { M } } _ { e l l } \right)
\end{align*}
<span>`{=html}
