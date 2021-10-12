Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {\mathcal{O}_{X, p}} && {\mathcal{O}_X} \\
    \\
    {\left\{ p\right\}} && X
    \arrow[hook, from=3-1, to=3-3]
    \arrow[from=1-3, to=3-3]
    \arrow[dashed, from=1-1, to=3-1]
    \arrow[dashed, from=1-1, to=1-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
\end{tikzcd}
\end{document}













Pick $R\in \mathsf{CRing}$. Put a sheaf of rings on $\operatorname{Spec}R$ by [global%20sections](global%20sections).


`<p style="text-align:center;"> <img class="tikzcd" src="figures/a374ad63d70255dc097d7c8750472236388d566c.svg"></p>`{=html}
