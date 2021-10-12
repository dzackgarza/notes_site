Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd} {G{ {}^{ \scriptscriptstyle\times^{3} }  }} && {G{ {}^{ \scriptscriptstyle\times^{2} }  }} \\ \\ {G{ {}^{ \scriptscriptstyle\times^{2} }  }} && G \arrow["m", from=3-1, to=3-3] \arrow["m"', from=1-3, to=3-3] \arrow["{(\operatorname{id}_G, m)}", from=1-1, to=1-3] \arrow["{(m, \operatorname{id}_G)}"', from=1-1, to=3-1] \end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd} && G \\ \\ {G{ {}^{ \scriptscriptstyle\times^{2} }  }} &&&& {G{ {}^{ \scriptscriptstyle\times^{2} }  }} \arrow["{(\operatorname{id}_G, e)}"', from=1-3, to=3-5] \arrow["{(e, \operatorname{id}_G)}", from=1-3, to=3-1] \arrow["m"', curve={height=-30pt}, from=3-1, to=1-3] \arrow["m", curve={height=30pt}, from=3-5, to=1-3] \end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd} && G && {} \\ \\ {G{ {}^{ \scriptscriptstyle\times^{2} }  }} && {G{ {}^{ \scriptscriptstyle\times^{2} }  }} && {G{ {}^{ \scriptscriptstyle\times^{2} }  }} \arrow["\Delta", from=1-3, to=3-3] \arrow["{(\operatorname{id}_G, ({-})^{-1})}"', from=3-3, to=3-5] \arrow["{(({-})^{-1}, \operatorname{id}_G)}", from=3-3, to=3-1] \arrow["m", from=3-1, to=1-3] \arrow["m", from=3-5, to=1-3] \end{tikzcd}
\end{document}













-   Unit: $e: {\operatorname{pt}}\to G$

-   Inverses: $({-})^{-1}: G\to G$

-   Pairing: $({-})\cdot({-}): G{ {}^{ \scriptscriptstyle\times^{2} }  }\to G$

    -   Associativity: % https://q.uiver.app/?q=WzAsNCxbMCwwLCJHXFxjYXJ0cG93ZXJ7M30iXSxbMiwwLCJHXFxjYXJ0cG93ZXJ7Mn0iXSxbMCwyLCJHXFxjYXJ0cG93ZXJ7Mn0iXSxbMiwyLCJHIl0sWzIsMywibSJdLFsxLDMsIm0iLDJdLFswLDEsIihcXGlkX0csICBtKSJdLFswLDIsIihtLCBcXGlkX0cpIiwyXV0=

    `<p style="text-align:center;"> <img class="tikzcd" src="figures/5539318d90bea5d7493a63ae9509e36f2e217800.svg"></p>`{=html}

    -   Left and right identities: existence of sections % https://q.uiver.app/?q=WzAsMyxbMiwwLCJHIl0sWzQsMiwiR1xcY2FydHBvd2VyezJ9Il0sWzAsMiwiR1xcY2FydHBvd2VyezJ9Il0sWzAsMSwiKFxcaWRfRywgZSkiLDJdLFswLDIsIihlLCBcXGlkX0cpIl0sWzIsMCwibSIsMix7ImN1cnZlIjotNX1dLFsxLDAsIm0iLDAseyJjdXJ2ZSI6NX1dXQ==

    `<p style="text-align:center;"> <img class="tikzcd" src="figures/a38bf89854b0666ba457da7279dd6386a638dd9f.svg"></p>`{=html}

    -   Inversion: % https://q.uiver.app/?q=WzAsNSxbMiwwLCJHIl0sWzQsMF0sWzIsMiwiR1xcY2FydHBvd2VyezJ9Il0sWzQsMiwiR1xcY2FydHBvd2VyezJ9Il0sWzAsMiwiR1xcY2FydHBvd2VyezJ9Il0sWzAsMiwiXFxEZWx0YSJdLFsyLDMsIihcXGlkX0csIChcXHdhaXQpXFxpbnYpIiwyXSxbMiw0LCIoKFxcd2FpdClcXGludiwgXFxpZF9HKSJdLFs0LDAsIm0iXSxbMywwLCJtIl1d

    `<p style="text-align:center;"> <img class="tikzcd" src="figures/d2b525eb6ca304260136cab3b4e2b1011a111a5b.svg"></p>`{=html}

    An equivalent characterization: $X\in \co \underset{ \mathsf{pre} } {\mathsf{Sh} }(\mathsf{C}, {\mathsf{Grp}})$ where $\tilde X\in \co \underset{ \mathsf{pre} } {\mathsf{Sh} }(\mathsf{C}, {\mathsf{Set}})$ is representable.

    Equivalently, $X\in \mathsf{C}$ is a group object if $\mathop{\mathrm{Mor}}({-}, X): \mathsf{C} \to {\mathsf{Grp}}$ represents a functor to groups.
