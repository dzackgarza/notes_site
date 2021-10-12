Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    A && B \\
    \\
    & {\operatorname{cone}(f)}
    \arrow["f", from=1-1, to=1-3]
    \arrow[from=1-3, to=3-2]
    \arrow["{[1]}", from=3-2, to=1-1]
\end{tikzcd}
\end{document}
-   [Chain Complexes](#chain-complexes)














Chain Complexes
===============

For $f\in \mathsf{Ch}_{{\mathsf{R}{\hbox{-}}\mathsf{Mod}}}(A, B)$ a morphism of chain complex of $R{\hbox{-}}$modules, the **mapping cone** complex is `
<span class="math display">
\begin{align*}
\operatorname{cone}(f) := A[1] \oplus B, 
\quad d =
\begin{bmatrix}
d_A & 0 
\\
f & d_B
\end{bmatrix}
\end{align*}
<span>`{=html}

Results

-   If $\operatorname{cone}(f) \simeq 0$, i.e $\operatorname{cone}(f)$ is an [quasi-isomorphism)](quasi-isomorphism)).


`<p style="text-align:center;"> <img class="tikzcd" src="figures/72adf49211fce14431c63f29838745d2835f5e38.svg"></p>`{=html}
