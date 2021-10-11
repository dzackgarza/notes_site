---
aliases:
- fibered
---














> Reference: <http://www.maths.qmul.ac.uk/~noohi/papers/quick.pdf>

-   Fix $\mathsf{C}$, then the data $F: \mathsf{X} \to \mathsf{C}$ is a **category fibered in groupoids** if
    -   Arrows lift: for every morphism $f\in \mathsf{C}(C_1, C_2)$ with $F(X) = C_2$ there is a lift $\tilde f$,

`<p style="text-align:center;"> <img class="tikzcd" src="figures/597de3eb8c22c3fbf4286e92e9331fccb541f15a.svg"></p>`{=html}

> <https://q.uiver.app/?q=WzAsNixbMCwyLCJcXGNhdHtDfSJdLFsyLDIsIkNfMSJdLFs0LDIsIkNfMiJdLFswLDAsIlxcY2F0e1h9Il0sWzQsMCwiWCJdLFsyLDAsIlxcZXhpc3RzIFkiXSxbMSwyLCJnIl0sWzQsMiwiRiIsMV0sWzUsNCwiRyIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs1LDEsIkYiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMywwLCJGIiwyXV0=>

-   Triangles lift:
    `<p style="text-align:center;"> <img class="tikzcd" src="figures/cdbce616c69e88a83a87da0cdded3d6aea68b12a.svg"></p>`{=html}

> <https://q.uiver.app/?q=WzAsOCxbMyw1LCJjIl0sWzIsMywiYSJdLFs0LDMsImIiXSxbMCwzLCJcXGNhdHtDfSJdLFszLDIsIkMiXSxbMiwwLCJBIl0sWzQsMCwiQiJdLFswLDAsIlxcY2F0e1h9Il0sWzEsMCwiZ18xIiwxXSxbMiwwLCJnXzIiLDFdLFsxLDIsImdfMyIsMSx7ImxhYmVsX3Bvc2l0aW9uIjo4MH1dLFs0LDAsIkYiLDFdLFs1LDQsIkdfMSIsMV0sWzYsNCwiR18yIiwxXSxbNSwxLCJGIiwxXSxbNiwyLCJGIiwxXSxbNSw2LCJcXGV4aXN0cyBHXzMiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNywzLCJGIiwyXV0=>

For a fixed object $C\in \mathsf{C}$, define the **fiber of $\mathsf{X}$** or the **$\mathsf{C}{\hbox{-}}$points of $\mathsf{X}$** as $\mathsf{X}(C) \:= F^{-1}(C) \leq \mathsf{X}$ to be the [[groupoid.md) of all objects $X\in \mathsf{X}$ such that $F(X) = C$, where morphisms of fibers are morphisms in the original category $\phi\in \mathsf{X}(X, Y)$ where, noting that $F(X) = F(Y) = C$, we require \$F(`\phi`{=tex} | groupoid.html]]%20of%20all%20objects%20$X/in%20/cat{X}$%20such%20that%20$F(X)%20=%20C$,%20where%20morphisms%20of%20fibers%20are%20morphisms%20in%20the%20original%20category%20$/phi/in%20/cat{X}(X,%20Y)$%20where,%20noting%20that%20$F(X)%20=%20F(Y)%20=%20C$,%20we%20require%20$F(/phi) = \operatorname{id}_C$.

-   View objects $X\in \mathsf{X}(C)$ as a [family](family) parameterized by $C$, or equivalently as a ${C}{\hbox{-}}$valued point of $\mathsf{X}$, i.e. a map $C\to \mathsf{X}$.

-   Categories fibered over $\mathsf{C}$ in sets are equivalent to set-valued [presheaves](presheaves) over $\mathsf{C}$.

-   There is a [2-category](2-category) of categories fibered in groupoids.

    -   1-morphisms $F_i$ between objects are functors $F_i$ over $\mathsf{C}$, and 2-morphisms are natural transformations $\eta: F_1 \to F_2$ where $\eta \circ \pi_{\mathsf{Y}}$ is the identity transformation $\operatorname{id}_{\pi_{\mathsf{X}}}: \pi_{\mathsf{X}} \to \pi_{\mathsf{X}}$:

`<p style="text-align:center;"> <img class="tikzcd" src="figures/cc02ec74ecc490b72199e386a3b1f3642b8247c7.svg"></p>`{=html}

> <https://q.uiver.app/?q=WzAsNCxbMCwxLCJcXGNhdHtYfSJdLFsyLDEsIlxcY2F0e1l9Il0sWzEsNCwiXFxjYXR7Q30iXSxbMSwwXSxbMCwyLCJcXHBpX3tcXGNhdCBYfSIsMl0sWzEsMiwiXFxwaV97XFxjYXQgWX0iXSxbMCwxLCJGXzEiLDEseyJjdXJ2ZSI6LTV9XSxbMCwxLCJGXzIiLDEseyJjdXJ2ZSI6NX1dLFs2LDcsIlxcZXRhIiwwLHsic2hvcnRlbiI6eyJzb3VyY2UiOjIwLCJ0YXJnZXQiOjIwfX1dXQ==>

Variant of [[Yoneda%20lemma.md | Yoneda%20lemma.html]]: for $\mathfrak{Fib}_2$ the category of categories fibered in groupoids, ![[_attachments/Pasted%20image%2020210511204947.png]]
