Pick $R\in \CRing$. Put a sheaf of rings on $\spec R$ by [global%20sections](global%20sections).

% https://q.uiver.app/?q=WzAsNCxbMCwyLCJcXGxlZnRcXHsgcFxccmlnaHRcXH0iXSxbMiwyLCJYIl0sWzIsMCwiXFxtYXRoY2Fse099X1giXSxbMCwwLCJcXG1hdGhjYWx7T31fe1gsIHB9Il0sWzAsMSwiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMiwxXSxbMywwLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMywyLCIiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMywxLCIiLDEseyJzdHlsZSI6eyJuYW1lIjoiY29ybmVyIn19XV0=
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