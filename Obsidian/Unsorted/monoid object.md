Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {M^{\otimes 2} \otimes M } && {M\otimes M^{\otimes 2}} \\
    \\
    {M^{\otimes 2}} && {M^{\otimes 2}} \\
    & M
    \arrow["\alpha", from=1-1, to=1-3]
    \arrow["{\mu\otimes\operatorname{id}}"', from=1-1, to=3-1]
    \arrow["{\operatorname{id}\otimes\mu}", from=1-3, to=3-3]
    \arrow["\mu"', from=3-1, to=4-2]
    \arrow["\mu", from=3-3, to=4-2]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {\one \otimes M} && {M^{\otimes 2}} && {M\otimes\one} \\
    \\
    && M
    \arrow["{\eta \otimes\operatorname{id}}", from=1-1, to=1-3]
    \arrow["\lambda"', from=1-1, to=3-3]
    \arrow["\mu", from=1-3, to=3-3]
    \arrow["\rho", from=1-5, to=3-3]
    \arrow["{\operatorname{id}\otimes\eta}"', from=1-5, to=1-3]
\end{tikzcd}
\end{document}













Equipped with maps $\ mu: M^{\otimes 2}\to M$ and $\eta: \one \to M$ Associative:


`<p style="text-align:center;"> <img class="tikzcd" src="figures/687ffef34f314aa4e428574fa106ca4ead343a0f.svg"></p>`{=html}

Left and right unital: % https://q.uiver.app/?q=WzAsNCxbMiwyLCJNIl0sWzIsMCwiTV57XFx0ZW5zb3IgMn0iXSxbMCwwLCJcXG9uZSBcXHRlbnNvciBNIl0sWzQsMCwiTVxcdGVuc29yIFxcb25lIl0sWzIsMSwiXFxldGEgXFx0ZW5zb3IgXFxpZCJdLFsyLDAsIlxcbGFtYmRhIiwyXSxbMSwwLCJcXG11Il0sWzMsMCwiXFxyaG8iXSxbMywxLCJcXGlkXFx0ZW5zb3IgXFxldGEiLDJdXQ==

`<p style="text-align:center;"> <img class="tikzcd" src="figures/eb4f1944ed892ed9f42e852fd502d1cf3b729698.svg"></p>`{=html}

Monoid structure is preserved by [[lax%20functor.md | lax%20functor.html]] monoidal functors.
