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
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {\mathsf{I}} && {\mathsf{A}} \\
    \\
    i && {F(i)} \\
    &&&& \textcolor{rgb,255:red,51;green,109;blue,155}{\exists \widehat{F} } &&& RX \\
    j && {F(j)}
    \arrow["{F{\varepsilon}_{ij}}"', from=3-3, to=5-3]
    \arrow["{R\varphi_i}", curve={height=-30pt}, from=3-3, to=4-8]
    \arrow["{R\varphi_j}"', curve={height=30pt}, from=5-3, to=4-8]
    \arrow["{\exists \tilde \psi_i}", color={rgb,255:red,51;green,109;blue,155}, dashed, from=3-3, to=4-5]
    \arrow["{\exists \tilde\psi_j}", color={rgb,255:red,51;green,109;blue,155}, dashed, from=5-3, to=4-5]
    \arrow["{\exists ! \tilde\eta_{ij}}", color={rgb,255:red,51;green,109;blue,155}, dashed, from=4-5, to=4-8]
    \arrow["{{\varepsilon}_{ij}}", from=3-1, to=5-1]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    0 & {A''} & A & {A'} & 0 \\
    \\
    &&& 0 \\
    & {A''\otimes_R B} & {A\otimes_R B} & {A'\otimes_R B} \\
    \\
    & {\operatorname{Tor}_1^R(A'', B)} & {\operatorname{Tor}_1^R(A, B)} & \textcolor{rgb,255:red,214;green,92;blue,92}{\operatorname{Tor}_1^R(A', B)} \\
    \\
    & {} && \cdots
    \arrow[from=1-1, to=1-2]
    \arrow[from=1-2, to=1-3]
    \arrow[from=1-3, to=1-4]
    \arrow[from=1-4, to=1-5]
    \arrow[from=4-2, to=4-3]
    \arrow[from=6-3, to=6-2]
    \arrow[from=6-4, to=6-3]
    \arrow["{{-}\otimes_R B}"{description, pos=0.3}, shorten <=5pt, shorten >=27pt, Rightarrow, from=1-3, to=4-3]
    \arrow[from=4-3, to=4-4]
    \arrow[from=6-4, to=4-2]
    \arrow[from=8-4, to=6-2]
    \arrow[from=4-4, to=3-4]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    0 & A & B & C & 0 \\
    \\
    &&& 0 \\
    & {X\otimes_R A} & {X\otimes_R B} & {X\otimes_R C} \\
    \\
    & {\operatorname{Tor}_1^R(X, A)} & \textcolor{rgb,255:red,214;green,92;blue,92}{\operatorname{Tor}_1^R(X, B)} & \textcolor{rgb,255:red,214;green,92;blue,92}{\operatorname{Tor}_1^R(X, C)} \\
    \\
    & \cdots & \textcolor{rgb,255:red,214;green,92;blue,92}{\operatorname{Tor}_2^R(X, B)} & \textcolor{rgb,255:red,214;green,92;blue,92}{\operatorname{Tor}_2^R(X, C)}
    \arrow[from=4-3, to=4-4]
    \arrow[from=4-4, to=3-4]
    \arrow[from=4-2, to=4-3]
    \arrow[from=6-2, to=6-3]
    \arrow[from=6-3, to=6-4]
    \arrow[from=6-4, to=4-2]
    \arrow[from=8-4, to=6-2]
    \arrow[from=1-1, to=1-2]
    \arrow[from=1-2, to=1-3]
    \arrow[from=1-3, to=1-4]
    \arrow[from=1-4, to=1-5]
    \arrow["{X\otimes_R {-}}"{description}, shorten <=11pt, shorten >=16pt, Rightarrow, from=1-3, to=4-3]
    \arrow[from=8-3, to=8-4]
    \arrow[from=8-2, to=8-3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    &&&& \textcolor{rgb,255:red,139;green,35;blue,35}{x} && \textcolor{rgb,255:red,139;green,35;blue,35}{ix} \\
    && \textcolor{rgb,255:red,92;green,92;blue,214}{y} && \textcolor{rgb,255:red,92;green,92;blue,214}{py} \\
    0 && {{\mathbb{Z}}/p} && {{\mathbb{Z}}/p^2} && {{\mathbb{Z}}/p} && 0 \\
    \\
    0 && {{\mathbb{Z}}/p} && {{\mathbb{Z}}/p^2} && {{\mathbb{Z}}/p} && 0 \\
    && \textcolor{rgb,255:red,92;green,92;blue,214}{y} && \textcolor{rgb,255:red,92;green,92;blue,214}{py = f(py)} \\
    &&&& \textcolor{rgb,255:red,139;green,35;blue,35}{f(x)} && \textcolor{rgb,255:red,139;green,35;blue,35}{jf(x) }
    \arrow[from=3-1, to=3-3]
    \arrow["p", from=3-3, to=3-5]
    \arrow[from=5-1, to=5-3]
    \arrow["p", from=5-3, to=5-5]
    \arrow["j", from=5-5, to=5-7]
    \arrow["i", from=3-5, to=3-7]
    \arrow[from=3-7, to=3-9]
    \arrow[from=5-7, to=5-9]
    \arrow["\one"', equal, from=3-3, to=5-3]
    \arrow["\one", equal, from=3-7, to=5-7]
    \arrow["f", from=3-5, to=5-5]
    \arrow[draw={rgb,255:red,92;green,92;blue,214}, dashed, maps to, from=2-3, to=2-5]
    \arrow[draw={rgb,255:red,92;green,92;blue,214}, curve={height=30pt}, dashed, maps to, from=2-5, to=6-5]
    \arrow[draw={rgb,255:red,92;green,92;blue,214}, dashed, maps to, from=6-3, to=6-5]
    \arrow[draw={rgb,255:red,92;green,92;blue,214}, curve={height=30pt}, dashed, maps to, from=2-3, to=6-3]
    \arrow[draw={rgb,255:red,139;green,35;blue,35}, dashed, maps to, from=1-5, to=1-7]
    \arrow[draw={rgb,255:red,139;green,35;blue,35}, curve={height=-30pt}, dashed, maps to, from=1-7, to=7-7]
    \arrow[draw={rgb,255:red,139;green,35;blue,35}, curve={height=-30pt}, dashed, from=1-5, to=7-5]
    \arrow[draw={rgb,255:red,139;green,35;blue,35}, dashed, maps to, from=7-5, to=7-7]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    0 && M && P && A && 0 \\
    \\
    && 0 \\
    {} && {\mathop{\mathrm{Hom}}(A, B)} && {\mathop{\mathrm{Hom}}(P, B)} && {\mathop{\mathrm{Hom}}(M, B)} \\
    \\
    && {\operatorname{Ext} ^1(A, B)} && \textcolor{rgb,255:red,184;green,46;blue,46}{\operatorname{Ext} ^1(P, B) = 0} && \cdots
    \arrow["j", from=1-3, to=1-5]
    \arrow[from=1-1, to=1-3]
    \arrow["f", from=1-5, to=1-7]
    \arrow[from=1-7, to=1-9]
    \arrow[from=6-3, to=6-5]
    \arrow[from=3-3, to=4-3]
    \arrow[from=4-3, to=4-5]
    \arrow[from=4-5, to=4-7]
    \arrow["{{\partial}}", from=4-7, to=6-3]
    \arrow[from=6-5, to=6-7]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    M && P \\
    \\
    B && {\exists X}
    \arrow["j", from=1-1, to=1-3]
    \arrow["\beta"', from=1-1, to=3-1]
    \arrow[dotted, from=3-1, to=3-3]
    \arrow[dashed, from=1-3, to=3-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125, rotate=180}, draw=none, from=3-3, to=1-1]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    M && P \\
    \\
    B && A \\
    &&& \textcolor{rgb,255:red,92;green,92;blue,214}{X}
    \arrow["j", from=1-1, to=1-3]
    \arrow["\beta"', from=1-1, to=3-1]
    \arrow["0"', from=3-1, to=3-3]
    \arrow[from=1-3, to=3-3, "f"]
    \arrow["{\exists ! \phi}", color={rgb,255:red,92;green,92;blue,214}, dashed, from=4-4, to=3-3]
    \arrow[draw={rgb,255:red,92;green,92;blue,214}, curve={height=-12pt}, dashed, from=1-3, to=4-4, "\sigma"]
    \arrow[draw={rgb,255:red,92;green,92;blue,214}, curve={height=12pt}, dashed, from=3-1, to=4-4, "i"]
    \arrow["\lrcorner"{anchor=center, pos=0.125, rotate=180}, draw=none, from=3-3, to=1-1]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    0 && M && P && A && 0 \\
    &&&&&& {} \\
    0 && B && X && A && 0
    \arrow[from=1-1, to=1-3]
    \arrow["j", from=1-3, to=1-5]
    \arrow["f", from=1-5, to=1-7]
    \arrow[from=3-1, to=3-3]
    \arrow["i", from=3-3, to=3-5]
    \arrow["\varphi", from=3-5, to=3-7]
    \arrow[from=1-7, to=1-9]
    \arrow[from=3-7, to=3-9]
    \arrow[equal, from=1-7, to=3-7]
    \arrow["\sigma"', from=1-5, to=3-5]
    \arrow["\beta"', from=1-3, to=3-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125, rotate=180}, draw=none, from=3-5, to=1-3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    0 & {\mathop{\mathrm{Hom}}(A, B)} & {\mathop{\mathrm{Hom}}(P, B)} & {\mathop{\mathrm{Hom}}(M, B)} & {\operatorname{Ext} ^1(A, B)} & \cdots \\
    \\
    0 & {\mathop{\mathrm{Hom}}(A, B)} & {\mathop{\mathrm{Hom}}(X, B)} & {\mathop{\mathrm{Hom}}(B, B)} & {\operatorname{Ext} ^1(A, B)} & \cdots
    \arrow["{{\partial}}", from=1-4, to=1-5]
    \arrow[from=1-1, to=1-2]
    \arrow[from=1-2, to=1-3]
    \arrow[from=1-3, to=1-4]
    \arrow[from=3-1, to=3-2]
    \arrow[from=3-2, to=3-3]
    \arrow[from=3-3, to=3-4]
    \arrow["{{{\partial}}'}", from=3-4, to=3-5]
    \arrow[from=3-2, to=1-2]
    \arrow[from=3-3, to=1-3]
    \arrow["\beta^*"', from=3-4, to=1-4]
    \arrow[from=3-5, to=3-6]
    \arrow[from=1-5, to=1-6]
    \arrow[equal, from=3-5, to=1-5]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    M && P \\
    \\
    B && \textcolor{rgb,255:red,92;green,92;blue,214}{X = \operatorname{coker}F} && {P \oplus B} && M \\
    \\
    & {}
    \arrow["j", from=1-1, to=1-3]
    \arrow["\beta"', from=1-1, to=3-1]
    \arrow["{\sigma(p) = \pi(p, 0)}"{pos=0.7}, draw={rgb,255:red,92;green,92;blue,214}, dashed, from=1-3, to=3-3]
    \arrow["{i(b) = \pi(0, b)}", draw={rgb,255:red,92;green,92;blue,214}, dashed, from=3-1, to=3-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125, rotate=180}, draw=none, from=3-3, to=1-1]
    \arrow["\pi"', from=3-5, to=3-3]
    \arrow["{b \mapsto (0, b)}"', curve={height=24pt}, dashed, from=3-1, to=3-5]
    \arrow["{p \mapsto(p, 0)}", curve={height=-12pt}, dashed, from=1-3, to=3-5]
    \arrow["F"', from=3-7, to=3-5]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    && \textcolor{rgb,255:red,39;green,155;blue,39}{\exists m} && \textcolor{rgb,255:red,176;green,33;blue,28}{p} && \textcolor{rgb,255:red,176;green,33;blue,28}{0_A} \\
    0 && M && P && A && 0 \\
    \\
    0 && B && X \\
    && \textcolor{rgb,255:red,39;green,155;blue,39}{\beta(m)} && \textcolor{rgb,255:red,176;green,33;blue,28}{x\coloneqq(p, b) + F(M)} \\
    \\
    &&&& \textcolor{rgb,255:red,39;green,155;blue,39}{(0, \beta(m))}
    \arrow[from=2-1, to=2-3]
    \arrow["j", from=2-3, to=2-5]
    \arrow["f", from=2-5, to=2-7]
    \arrow[from=4-1, to=4-3]
    \arrow["i", from=4-3, to=4-5]
    \arrow[from=2-7, to=2-9]
    \arrow["\sigma"', from=2-5, to=4-5]
    \arrow["\beta"', from=2-3, to=4-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125, rotate=180}, draw=none, from=4-5, to=2-3]
    \arrow["\varphi", from=4-5, to=2-7]
    \arrow[color={rgb,255:red,176;green,33;blue,28}, dashed, maps to, from=1-5, to=1-7]
    \arrow[color={rgb,255:red,176;green,33;blue,28}, curve={height=30pt}, dashed, maps to, from=5-5, to=1-7]
    \arrow[color={rgb,255:red,176;green,33;blue,28}, curve={height=30pt}, dashed, maps to, from=1-5, to=5-5]
    \arrow[color={rgb,255:red,39;green,155;blue,39}, dashed, maps to, from=1-3, to=1-5]
    \arrow[color={rgb,255:red,39;green,155;blue,39}, curve={height=30pt}, dashed, maps to, from=1-3, to=5-3]
    \arrow["i"{description}, color={rgb,255:red,39;green,155;blue,39}, dashed, maps to, from=5-3, to=7-5]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    0 && M && P && A && 0 \\
    \\
    && 0 \\
    {} && {\mathop{\mathrm{Hom}}(A, B)} && {\mathop{\mathrm{Hom}}(P, B)} && {\mathop{\mathrm{Hom}}(M, B)} \\
    \\
    && {\operatorname{Ext} ^1(A, B)} && 0 && \cdots
    \arrow["j", from=1-3, to=1-5]
    \arrow[from=1-1, to=1-3]
    \arrow["f", from=1-5, to=1-7]
    \arrow[from=1-7, to=1-9]
    \arrow[from=6-3, to=6-5]
    \arrow[from=3-3, to=4-3]
    \arrow[from=4-3, to=4-5]
    \arrow["{j^*}", from=4-5, to=4-7]
    \arrow["{{\partial}}", from=4-7, to=6-3]
    \arrow[from=6-5, to=6-7]
    \arrow["{\mathop{\mathrm{Hom}}({-}, B)}", shorten <=16pt, shorten >=16pt, Rightarrow, from=1-5, to=4-5]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd