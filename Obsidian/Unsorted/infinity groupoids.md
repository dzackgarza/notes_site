Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {F_b} && E \\
    \\
    \one && B
    \arrow["p", from=1-3, to=3-3]
    \arrow[dashed, from=1-1, to=1-3]
    \arrow["{s_b}"', from=3-1, to=3-3]
    \arrow[dashed, from=1-1, to=3-1]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
\end{tikzcd}
\end{document}













-   An ∞-groupoid is an [[infinity%20categories.md | infinity%20categories.html]] in which all morphisms are invertible.
-   0-groupoid: A set -1-groupoid: An ordinary [[groupoid.md | groupoid.html]], -Play the role analogous to sets in classical category theory
    -   Have homs that are again infinity groupoids.
-   Pullbacks in ${\infty{\hbox{-}}\mathsf{Grpd}}$: limits over morphisms in ${\infty{\hbox{-}}\mathsf{Grpd}}$ of $A_1 \to B \leftarrow A_2$
-   Fibers in ${\infty{\hbox{-}}\mathsf{Grpd}}$: for an object $b\in B \in {\infty{\hbox{-}}\mathsf{Grpd}}$, fibers are pullbacks over the morphism $s_b: \one \to B$ that selects the object $b\in B$

`<p style="text-align:center;"> <img class="tikzcd" src="figures/8c2519ad2a320fbd33b438ef145c5ceff6c8f577.svg"></p>`{=html}

> \% https://q.uiver.app/?q=WzAsNCxbMCwwLCJGX2IiXSxbMiwwLCJFIl0sWzIsMiwiQiJdLFswLDIsIlxcb25lIl0sWzEsMiwicCJdLFswLDEsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDIsInNfYiIsMl0sWzAsMywiIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzAsMiwiIiwxLHsic3R5bGUiOnsibmFtZSI6ImNvcm5lciJ9fV1d

-   See [[homotopy%20sum.md | homotopy%20sum.html]]
-   Maps of ∞-groupoids with codomain $\mathsf{B}$ form the objects of a [slice%20category](slice%20category) ${\infty{\hbox{-}}\mathsf{Grpd}}_{/B}$
-   A morphism of ∞-groupoids $X \to B$ can be interpreted as a [family](family) of ∞-groupoids parametrised by $B$, namely the fibres $X_b$.
    -   Equivalently, a presheaf $B\to {\infty{\hbox{-}}\mathsf{Grpd}}$
-   [operads](operads).
-   Simplicial ${\infty{\hbox{-}}\mathsf{Grpd}}= {\mathsf{Fun}}(\Delta^{\operatorname{op}}, {\infty{\hbox{-}}\mathsf{Grpd}})$
-   ∞-groupoids form a (large) ∞-category denoted ${\infty{\hbox{-}}\mathsf{Grpd}}$
    -   It can be described explicitly as the [[Kan%20complex.md | Kan%20complex.html]].
