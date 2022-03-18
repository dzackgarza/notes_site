Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    A && B \\
    \\
    {A^{\operatorname{ab}}}
    \arrow["f", from=1-1, to=1-3]
    \arrow["{\mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu}"', dashed, from=3-1, to=1-3]
    \arrow["{\pi_A}"', from=1-1, to=3-1]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    A && B \\
    \\
    {A^{\operatorname{ab}}}
    \arrow["g"', from=3-1, to=1-3]
    \arrow["{\pi_A}"', from=1-1, to=3-1]
    \arrow["{\tau_{AB}^{-1}(g) \coloneqq g\circ \pi_A}", from=1-1, to=1-3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {\mathop{\mathrm{Hom}}_{\mathsf{Ab}}(A_0^{\operatorname{ab}}, B_0)} && {\mathop{\mathrm{Hom}}_{\mathsf{Ab}}(A_1^{\operatorname{ab}}, B_0)} && {\mathop{\mathrm{Hom}}_{\mathsf{Ab}}(A_1^{\operatorname{ab}}, B_1)} \\
    \\
    {\mathop{\mathrm{Hom}}_{\mathsf{Grp}}(A_0, B_0)} && {\mathop{\mathrm{Hom}}_{\mathsf{Grp}}(A_1, B_0)} && {\mathop{\mathrm{Hom}}_{\mathsf{Grp}}(A_1, B_1)}
    \arrow["{\tau{A_1 B_0}}"', from=3-3, to=1-3]
    \arrow["{\tau{A_0 B_0}}"', from=3-1, to=1-1]
    \arrow["{{\operatorname{ab}}(f^*)}", from=1-1, to=1-3]
    \arrow["{f^*}"', from=3-1, to=3-3]
    \arrow["{g_*}", from=1-3, to=1-5]
    \arrow["{(\iota g)_*}"', from=3-3, to=3-5]
    \arrow["{\tau{A_1 B_1}}"', from=3-5, to=1-5]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {A_1} && {A_0} && {B_0} \\
    \\
    {A_1^{\operatorname{ab}}} && {A_0^{\operatorname{ab}}}
    \arrow["f", color={rgb,255:red,51;green,116;blue,255}, from=1-1, to=1-3]
    \arrow["{\pi_{A_1}}"', from=1-1, to=3-1]
    \arrow["{\pi_{A_0}}"', from=1-3, to=3-3]
    \arrow["{f^{\operatorname{ab}}}"', color={rgb,255:red,198;green,42;blue,21}, from=3-1, to=3-3]
    \arrow["g", color={rgb,255:red,51;green,116;blue,255}, from=1-3, to=1-5]
    \arrow["{\mkern 1.5mu\overline{\mkern-1.5mug\mkern-1.5mu}\mkern 1.5mu}"', color={rgb,255:red,198;green,42;blue,21}, from=3-3, to=1-5]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {A_1} && {B_0} && {B_1} \\
    \\
    {A_1^{\operatorname{ab}}}
    \arrow["h", from=1-1, to=1-3]
    \arrow["g", color={rgb,255:red,66;green,107;blue,240}, from=1-3, to=1-5]
    \arrow["{\pi_{A_1}}"', from=1-1, to=3-1]
    \arrow["{\mkern 1.5mu\overline{\mkern-1.5muh\mkern-1.5mu}\mkern 1.5mu}"', color={rgb,255:red,66;green,107;blue,240}, from=3-1, to=1-3]
    \arrow["{\mkern 1.5mu\overline{\mkern-1.5mugh\mkern-1.5mu}\mkern 1.5mu}"', color={rgb,255:red,155;green,39;blue,39}, curve={height=12pt}, from=3-1, to=1-5]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {\mathsf{I}} && {\mathsf{B}} \\
    \\
    i && {LF(i)} \\
    &&&& \textcolor{rgb,255:red,51;green,109;blue,255}{\exists \widehat{LF}} &&& X \\
    j && {LF(j)}
    \arrow["{LF{\varepsilon}_{ij}}"', from=3-3, to=5-3]
    \arrow["{\varphi_i}", curve={height=-30pt}, from=3-3, to=4-8]
    \arrow["{\varphi_j}"', curve={height=30pt}, from=5-3, to=4-8]
    \arrow["{\exists \psi_i}", color={rgb,255:red,51;green,109;blue,255}, dashed, from=3-3, to=4-5]
    \arrow["{\exists\psi_j}", color={rgb,255:red,51;green,109;blue,255}, dashed, from=5-3, to=4-5]
    \arrow["{\exists ! \eta_{ij}}", color={rgb,255:red,51;green,109;blue,255}, dashed, from=4-5, to=4-8]
    \arrow["{{\varepsilon}_{ij}}", from=3-1, to=5-1]
\end{tikzcd}
\end{document}
Error