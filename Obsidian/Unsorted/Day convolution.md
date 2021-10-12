Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {\mathsf{C}^{\times 2}} && {\mathsf{D}^{\times 2}} \\
    \\
    {\mathsf{C}} && {\mathsf{D}}
    \arrow["{(F, G)}", from=1-1, to=1-3]
    \arrow["{{-}\otimes_D{-}}", from=1-3, to=3-3]
    \arrow["{{-}\otimes_C {-}}"', from=1-1, to=3-1]
    \arrow["{F\widehat{\otimes }G}"', dashed, from=3-1, to=3-3]
\end{tikzcd}
\end{document}
---
aliases:
- convolution product
---














-   See [[coend.md | coend.html]].

-   Turns the functor category ${\mathsf{Fun}}(\mathsf{C}^{\operatorname{op}}, \mathsf{D})$ into a monoidal category ${\mathsf{Fun}}_{\widehat{\otimes}}(\mathsf{C}^{\operatorname{op}}, \mathsf{D})$.

For $\mathsf{C}$ be a [[Symmetric%20monoidal%20category.md) category over another monoidal category \$(`\mathsf{D}`{=tex}, `\otimes`{=tex}\_D | Symmetric%20monoidal%20category.html]]%20category%20over%20another%20monoidal%20category%20$(/cat{D},%20/tensor_D)$, and define a convolution product `
<span class="math display">
\begin{align*}
\widehat{\otimes}: {\mathsf{Fun}}(\mathsf{C}^{\operatorname{op}}, \mathsf{D})^{\times 2} &\to {\mathsf{Fun}}(\mathsf{C}^{\operatorname{op}}, \mathsf{D}) \\
(F, G) &\mapsto F\widehat{\otimes }G
\end{align*}
<span>`{=html} where $F\widehat{\otimes }G$ is the following left [[Kan%20extension.md | Kan%20extension.html]]:

`<p style="text-align:center;"> <img class="tikzcd" src="figures/ea7a57cb7007ea370218f5e6694938e2976d4cea.svg"></p>`{=html}

> <https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXGNhdHtDfV57XFx0aW1lcyAyfSJdLFsyLDAsIlxcY2F0e0R9XntcXHRpbWVzIDJ9Il0sWzIsMiwiXFxjYXR7RH0iXSxbMCwyLCJcXGNhdHtDfSJdLFswLDEsIihGLCBHKSJdLFsxLDIsIlxcd2FpdFxcdGVuc29yX0RcXHdhaXQiXSxbMCwzLCJcXHRlbnNvcl9DIiwyXSxbMywyLCJGXFxoYXRcXHRlbnNvciBHIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d>

Here the diagram is not required to commute, but rather satisfy some universal property: there is an equivalence of categories? \#todo

`
<span class="math display">
\begin{align*}
\mathsf{C}\mathsf{D}(F\widehat{\otimes }G, ?) \cong \mathsf{C}^2\mathsf{D}(\otimes_D \circ (F, G), \,\, ? \circ \otimes_C)
.\end{align*}
<span>`{=html}

Equivalently, take the 2-category of cocomplete tensor categories $\mathsf{Cat}_{c\otimes}$, `
<span class="math display">
\begin{align*}
\mathsf{Cat}_{c\otimes}( {\mathsf{Fun}}_{\widehat{\otimes}}(\mathsf{C}^{\operatorname{op}}, \mathsf{D}), ?) \cong \mathsf{Cat}_{c\otimes}(\mathsf{C}, ?) \times \mathsf{Cat}_{\otimes}(\mathsf{D}, ?)
.\end{align*}
<span>`{=html}

Equivalently, define by the following [[coend | coend.html]]: `
<span class="math display">
\begin{align*}
F\widehat{\otimes }G({-}) \coloneqq\int^{x, y\in \mathsf{C}} 
\mathsf{C}(x\otimes_C y, {-}) \otimes_D F(x) \otimes_D G(y)
.\end{align*}
<span>`{=html}
