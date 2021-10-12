Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    X \\
    \\
    && {X{ \underset{\scriptscriptstyle {S} }{\times} } X} && X \\
    \\
    && X && S
    \arrow["f", from=3-5, to=5-5]
    \arrow["f"', from=5-3, to=5-5]
    \arrow["{\pi_1}"', from=3-3, to=5-3]
    \arrow["{\pi_2}", from=3-3, to=3-5]
    \arrow["{\operatorname{id}_X}"', curve={height=30pt}, from=1-1, to=5-3]
    \arrow["{\operatorname{id}_X}", curve={height=-30pt}, from=1-1, to=3-5]
    \arrow["{\exists \Delta_X}", dashed, from=1-1, to=3-3]
\end{tikzcd}
\end{document}













Given $X\in {\mathsf{Sch}}_{/S}$, define the **diagonal morphism** as $\Delta_{X/S}: X\to X { \underset{\scriptscriptstyle {S} }{\times} } X$:

`<p style="text-align:center;"> <img class="tikzcd" src="figures/81f849c3941ac2b7e225a355717e56334f00e325.svg"></p>`{=html}

> <https://q.uiver.app/?q=WzAsNSxbMiw0LCJYIl0sWzQsNCwiUyJdLFs0LDIsIlgiXSxbMiwyLCJYXFxmaWJlcnByb2R7U30gWCJdLFswLDAsIlgiXSxbMiwxLCJmIl0sWzAsMSwiZiIsMl0sWzMsMCwiXFxwaV8xIiwyXSxbMywyLCJcXHBpXzIiXSxbNCwwLCJcXGlkX1giLDIseyJjdXJ2ZSI6NX1dLFs0LDIsIlxcaWRfWCIsMCx7ImN1cnZlIjotNX1dLFs0LDMsIlxcZXhpc3RzIFxcRGVsdGFfWCIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==>
