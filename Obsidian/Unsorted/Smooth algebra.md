Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    &&&& P \\
    \\
    {\substack{I \\ \\ (I^2 = 0)}} && M && A && 0
    \arrow[from=3-1, to=3-3]
    \arrow["\varepsilon", from=3-3, to=3-5]
    \arrow[from=3-5, to=3-7]
    \arrow["\nu", from=1-5, to=3-5]
    \arrow["{\exists u}", dashed, from=1-5, to=3-3]
\end{tikzcd}
\end{document}














`<p style="text-align:center;"> <img class="tikzcd" src="figures/e0bbf7286643416c3073e975a4fa5641cfdf28c6.svg"></p>`{=html}

![[_attachments/Pasted%20image%2020210625203016.png]]
