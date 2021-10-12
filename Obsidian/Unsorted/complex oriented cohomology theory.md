Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {\mathbb{S}}&& {X \coloneqq\Sigma^{\infty-2}{\mathbb{CP}}^{\infty}} && E
    \arrow["{x^E}", from=1-3, to=1-5]
    \arrow["{\eta_E}"', curve={height=30pt}, from=1-1, to=1-5]
    \arrow["{\eta_X}", from=1-1, to=1-3]
\end{tikzcd}
\end{document}













-   A condition on a [[cohomolology%20theories.md | cohomolology%20theories.html]]

![[_attachments/Pasted%20image%2020210511201541.png]]

Think of this as a factorization of the (co?)unit

`<p style="text-align:center;"> <img class="tikzcd" src="figures/894bf9c9c9a9ce4437eea9ddbcb3997c1d3c1f0a.svg"></p>`{=html}

> <https://q.uiver.app/?q=WzAsMyxbMCwwLCJcXFNTIl0sWzIsMCwiWCBcXGRhIFxcU2lnbWFee1xcaW5mdHktMn1cXENQXntcXGluZnR5fSJdLFs0LDAsIkUiXSxbMSwyLCJ4XkUiXSxbMCwyLCJcXGV0YV9FIiwyLHsiY3VydmUiOjV9XSxbMCwxLCJcXGV0YV9YIl1d>

A ring spectrum $E$ is complex orientable iff the [[Atiyah%20Hirzebruch%20spectral%20sequence.md | Atiyah%20Hirzebruch%20spectral%20sequence.html]] collapses at $E_2$: `
<span class="math display">
\begin{align*}
E_{2}^{p, q}=H^{p}\left(\mathbb{C} P^{\infty} ; \pi_{q}(E)\right) \Longrightarrow E^{p+q}\left(\mathbb{C} P^{\infty}\right)
\end{align*}
<span>`{=html}
