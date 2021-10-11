- Unit: $e: \pt \to G$
- Inverses: $(\wait)\inv: G\to G$
- Pairing: $(\wait)\cdot(\wait): G\cartpower{2}\to G$
	- Associativity:
	% https://q.uiver.app/?q=WzAsNCxbMCwwLCJHXFxjYXJ0cG93ZXJ7M30iXSxbMiwwLCJHXFxjYXJ0cG93ZXJ7Mn0iXSxbMCwyLCJHXFxjYXJ0cG93ZXJ7Mn0iXSxbMiwyLCJHIl0sWzIsMywibSJdLFsxLDMsIm0iLDJdLFswLDEsIihcXGlkX0csICBtKSJdLFswLDIsIihtLCBcXGlkX0cpIiwyXV0= 
	
	\begin{tikzcd} {G\cartpower{3}} && {G\cartpower{2}} \\ \\ {G\cartpower{2}} && G \arrow["m", from=3-1, to=3-3] \arrow["m"', from=1-3, to=3-3] \arrow["{(\id_G, m)}", from=1-1, to=1-3] \arrow["{(m, \id_G)}"', from=1-1, to=3-1] \end{tikzcd}
	
	- Left and right identities: existence of sections
	% https://q.uiver.app/?q=WzAsMyxbMiwwLCJHIl0sWzQsMiwiR1xcY2FydHBvd2VyezJ9Il0sWzAsMiwiR1xcY2FydHBvd2VyezJ9Il0sWzAsMSwiKFxcaWRfRywgZSkiLDJdLFswLDIsIihlLCBcXGlkX0cpIl0sWzIsMCwibSIsMix7ImN1cnZlIjotNX1dLFsxLDAsIm0iLDAseyJjdXJ2ZSI6NX1dXQ== 
	
	\begin{tikzcd} && G \\ \\ {G\cartpower{2}} &&&& {G\cartpower{2}} \arrow["{(\id_G, e)}"', from=1-3, to=3-5] \arrow["{(e, \id_G)}", from=1-3, to=3-1] \arrow["m"', curve={height=-30pt}, from=3-1, to=1-3] \arrow["m", curve={height=30pt}, from=3-5, to=1-3] \end{tikzcd}
	
	- Inversion:
	% https://q.uiver.app/?q=WzAsNSxbMiwwLCJHIl0sWzQsMF0sWzIsMiwiR1xcY2FydHBvd2VyezJ9Il0sWzQsMiwiR1xcY2FydHBvd2VyezJ9Il0sWzAsMiwiR1xcY2FydHBvd2VyezJ9Il0sWzAsMiwiXFxEZWx0YSJdLFsyLDMsIihcXGlkX0csIChcXHdhaXQpXFxpbnYpIiwyXSxbMiw0LCIoKFxcd2FpdClcXGludiwgXFxpZF9HKSJdLFs0LDAsIm0iXSxbMywwLCJtIl1d 
	
	\begin{tikzcd} && G && {} \\ \\ {G\cartpower{2}} && {G\cartpower{2}} && {G\cartpower{2}} \arrow["\Delta", from=1-3, to=3-3] \arrow["{(\id_G, (\wait)\inv)}"', from=3-3, to=3-5] \arrow["{((\wait)\inv, \id_G)}", from=3-3, to=3-1] \arrow["m", from=3-1, to=1-3] \arrow["m", from=3-5, to=1-3] \end{tikzcd}
	
	An equivalent characterization: $X\in \co\Presh(\cat{C}, \Grp)$ where $\tilde X\in \co\Presh(\cat{C}, \Set)$ is representable.
	
	Equivalently, $X\in \cat{C}$ is a group object if $\Mor(\wait, X): \cat{C} \to \Grp$ represents a functor to groups.