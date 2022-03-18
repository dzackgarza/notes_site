Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    0 && J && R \\
    \\
    && A
    \arrow[from=1-1, to=1-3]
    \arrow["f", from=1-3, to=3-3]
    \arrow["\iota", hook, from=1-3, to=1-5]
    \arrow["{\exists \tilde f}"{description}, dashed, from=1-5, to=3-3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    0 && jR && R \\
    \\
    && A
    \arrow[from=1-1, to=1-3]
    \arrow["f", from=1-3, to=3-3]
    \arrow["\iota", hook, from=1-3, to=1-5]
    \arrow["{\exists \tilde f}"{description}, dashed, from=1-5, to=3-3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    0 && J && R \\
    \\
    && A
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=3-3]
    \arrow[dashed, from=1-5, to=3-3]
    \arrow[hook, from=1-3, to=1-5]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    0 && jR && R \\
    \\
    && A
    \arrow[from=1-1, to=1-3]
    \arrow["{f_a}", from=1-3, to=3-3]
    \arrow["\iota", hook, from=1-3, to=1-5]
    \arrow["{\exists \tilde f_a}"{description}, dashed, from=1-5, to=3-3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {\mathbb{Z}}&& {{\mathbb{Q}}/{\mathbb{Z}}} \\
    \\
    {{\mathbb{Z}}/n}
    \arrow["{\exists \tilde f}"', color={rgb,255:red,92;green,92;blue,214}, dashed, from=3-1, to=1-3]
    \arrow["{\pi_m}"', from=1-1, to=3-1]
    \arrow["f", from=1-1, to=1-3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {1 } && {{\mathbb{Z}}/q} && {{\mathbb{Q}}/{\mathbb{Z}}} && {{\mathbb{Q}}/{\mathbb{Z}}} && 1 \\
    && {[1]_q} && {\left[1\over q \right]} \\
    \\
    &&&& {[x]} && {[qx]}
    \arrow[from=1-1, to=1-3]
    \arrow["{d^{-1}}", from=1-3, to=1-5]
    \arrow["{d^0}", from=1-5, to=1-7]
    \arrow["{d^1}", from=1-7, to=1-9]
    \arrow[from=2-3, to=2-5]
    \arrow[from=4-5, to=4-7]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    1 && {I^0\coloneqq{\mathbb{Q}}/{\mathbb{Z}}} && {I^1 \coloneqq{\mathbb{Q}}/{\mathbb{Z}}} && 1 \\
    \\
    \\
    1 && {F(I^0) \coloneqq\mathop{\mathrm{Hom}}_{\mathbb{Z}}({\mathbb{Z}}/p, {\mathbb{Q}}/{\mathbb{Z}})} && {F(I^1) \coloneqq\mathop{\mathrm{Hom}}_{\mathbb{Z}}({\mathbb{Z}}/p, {\mathbb{Q}}/{\mathbb{Z}})} && 1 \\
    \\
    1 && {{\mathbb{Z}}/p} && {{\mathbb{Z}}/p} && 1
    \arrow[from=1-1, to=1-3]
    \arrow[""{name=0, anchor=center, inner sep=0}, "{d^0}", from=1-3, to=1-5]
    \arrow["{d^1}", from=1-5, to=1-7]
    \arrow[from=4-1, to=4-3]
    \arrow[""{name=1, anchor=center, inner sep=0}, "{{{\partial}}^0 \coloneqq F(d^0)}", from=4-3, to=4-5]
    \arrow["{{{\partial}}^1 \coloneqq F(d^1)}", from=4-5, to=4-7]
    \arrow["{\tilde {{\partial}}^1}", from=6-5, to=6-7]
    \arrow["{\tilde {{\partial}}^0}", from=6-3, to=6-5]
    \arrow[from=6-1, to=6-3]
    \arrow["{\Psi \cong}"{description}, from=6-3, to=4-3]
    \arrow["{\Psi \cong}"{description}, from=6-5, to=4-5]
    \arrow[equal, from=6-1, to=4-1]
    \arrow[equal, from=6-7, to=4-7]
    \arrow["{F({-})}", shorten <=13pt, shorten >=13pt, Rightarrow, from=0, to=1]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    a{\mathbb{Z}}&& {\mathbb{Z}}&& {\mathbb{Q}}&& {\mathbb{Q}}&& {{\mathbb{Q}}/{\mathbb{Z}}} \\
    an && n && n && {{n \over \ell}} && {\left[ n\over \ell \right]} \\
    a &&&&&&&& {\left[1\over \ell\right]}
    \arrow["{f_a}", from=1-1, to=1-3]
    \arrow["\iota", hook, from=1-3, to=1-5]
    \arrow["{x\mapsto {x\over \ell}}", from=1-5, to=1-7]
    \arrow["\pi", from=1-7, to=1-9]
    \arrow[maps to, from=2-1, to=2-3]
    \arrow[maps to, from=2-3, to=2-5]
    \arrow[maps to, from=2-5, to=2-7]
    \arrow[maps to, from=2-7, to=2-9]
    \arrow[color={rgb,255:red,92;green,214;blue,92}, curve={height=-30pt}, dashed, from=1-1, to=1-9, "{f}"]
    \arrow[color={rgb,255:red,92;green,214;blue,92}, dashed, from=3-1, to=3-9]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    A \\
    \\
    a{\mathbb{Z}}&& {{\mathbb{Q}}/{\mathbb{Z}}}
    \arrow["f", from=3-1, to=3-3]
    \arrow[hook, from=3-1, to=1-1]
    \arrow["{\exists \tilde f}", dashed, from=1-1, to=3-3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    \cdots && {P_2} && {P_1} && {P_0} && X && 0 \\
    \\
    \cdots && {FP_2} && {FP_1} && {FP_0} && 0
    \arrow["{\varepsilon}", from=1-7, to=1-9]
    \arrow["0", from=1-9, to=1-11]
    \arrow[""{name=0, anchor=center, inner sep=0}, "{{{\partial}}_1}", from=1-5, to=1-7]
    \arrow["{{{\partial}}_2}", from=1-3, to=1-5]
    \arrow[from=1-1, to=1-3]
    \arrow[from=3-1, to=3-3]
    \arrow["{F({{\partial}}_2)}"', from=3-3, to=3-5]
    \arrow[""{name=1, anchor=center, inner sep=0}, "{F({{\partial}}_1)}"', from=3-5, to=3-7]
    \arrow["0"', from=3-7, to=3-9]
    \arrow["{F({-})}", shorten <=9pt, shorten >=9pt, Rightarrow, from=0, to=1]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    \cdots && {P_2} && {P_1} && {P_0} && X && 0 \\
    \\
    \cdots && {UFP_2} && {UFP_1} && {UFP_0} && 0
    \arrow["{\varepsilon}", from=1-7, to=1-9]
    \arrow["0", from=1-9, to=1-11]
    \arrow[""{name=0, anchor=center, inner sep=0}, "{{{\partial}}_1}", from=1-5, to=1-7]
    \arrow["{{{\partial}}_2}", from=1-3, to=1-5]
    \arrow[from=1-1, to=1-3]
    \arrow[from=3-1, to=3-3]
    \arrow["{(UF)({{\partial}}_2)}"', from=3-3, to=3-5]
    \arrow[""{name=1, anchor=center, inner sep=0}, "{(UF)({{\partial}}_1)}"', from=3-5, to=3-7]
    \arrow["0"', from=3-7, to=3-9]
    \arrow["{(U\circ F)({-})}", shorten <=9pt, shorten >=9pt, Rightarrow, from=0, to=1]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}[column sep=1em]
    0 && {\operatorname{im}F({{\partial}}_{i+1})} && {\ker F({{\partial}}_{i})} && {{\ker F({{\partial}}_{i}) \over \operatorname{im}F({{\partial}}_{i+1})}} && 0 \\
    \\
    0 && {U\qty{\operatorname{im}F({{\partial}}_{i+1})}} && {U\qty{\ker F({{\partial}}_{i})}} && \textcolor{rgb,255:red,92;green,92;blue,214}{U\qty{\ker F({{\partial}}_{i}) \over \operatorname{im}F({{\partial}}_{i+1})}} && 0 \\
    \\
    0 && {U\qty{\operatorname{im}F({{\partial}}_{i+1})}} && {U\qty{\ker F({{\partial}}_{i})}} && \textcolor{rgb,255:red,92;green,92;blue,214}{{U(\ker F({{\partial}}_{i})) \over U(\operatorname{im}F({{\partial}}_{i+1}))}} && 0
    \arrow[from=1-1, to=1-3]
    \arrow["{\iota_i}", from=1-3, to=1-5]
    \arrow["{\pi_i}", from=1-5, to=1-7]
    \arrow[from=1-7, to=1-9]
    \arrow[from=3-1, to=3-3]
    \arrow["{U(\iota_i)}", from=3-3, to=3-5]
    \arrow["{U(\pi_i)}", from=3-5, to=3-7]
    \arrow[from=3-7, to=3-9]
    \arrow[equal, from=3-5, to=5-5]
    \arrow[equal, from=3-3, to=5-3]
    \arrow["f", color={rgb,255:red,92;green,214;blue,92}, from=3-7, to=5-7]
    \arrow[from=5-1, to=5-3]
    \arrow["{U(\iota_i)}", from=5-3, to=5-5]
    \arrow["{\tilde \pi_i}", from=5-5, to=5-7]
    \arrow[from=5-7, to=5-9]
    \arrow["U", color={rgb,255:red,214;green,92;blue,92}, shorten <=6pt, shorten >=6pt, Rightarrow, from=1-5, to=3-5]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    &&&& \cdots \\
    \\
    {L_iFM} && \textcolor{rgb,255:red,214;green,92;blue,92}{L_iFP} && {L_iFA} \\
    \\
    {L_{i-1}FM} && \textcolor{rgb,255:red,214;green,92;blue,92}{L_{i-1}FP} && \cdots
    \arrow[from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow["{{{\partial}}_i}", from=3-5, to=5-1, in=180, out=0]
    \arrow[from=5-1, to=5-3]
    \arrow[from=5-3, to=5-5]
    \arrow["{{{\partial}}_{i+1}}", from=1-5, to=3-1, in=180, out=0]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    &&&& \cdots \\
    \\
    {L_1FM} && \textcolor{rgb,255:red,92;green,214;blue,92}{L_1FP = 0} && \textcolor{rgb,255:red,92;green,214;blue,92}{L_1FA} \\
    \\
    \textcolor{rgb,255:red,92;green,214;blue,92}{L_{0}FM} && \textcolor{rgb,255:red,92;green,214;blue,92}{L_{0}FP} && \textcolor{rgb,255:red,92;green,214;blue,92}{L_0FA} & \textcolor{rgb,255:red,92;green,214;blue,92}{0}
    \arrow[from=3-1, to=3-3]
    \arrow[color={rgb,255:red,92;green,214;blue,92}, from=3-3, to=3-5]
    \arrow["{{{\partial}}_1}", color={rgb,255:red,92;green,214;blue,92}, from=3-5, to=5-1]
    \arrow[color={rgb,255:red,92;green,214;blue,92}, from=5-1, to=5-3]
    \arrow[color={rgb,255:red,92;green,214;blue,92}, from=5-3, to=5-5]
    \arrow[from=5-5, to=5-6]
    \arrow["{{{\partial}}_2}", from=1-5, to=3-1]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}[column sep=1em]
    &&&&&&&& {} \\
    \\
    0 && \textcolor{rgb,255:red,92;green,214;blue,92}{L_1FA} && \textcolor{rgb,255:red,92;green,214;blue,92}{L_{0}FM} && \textcolor{rgb,255:red,92;green,214;blue,92}{L_{0}FP} && \textcolor{rgb,255:red,92;green,214;blue,92}{L_0FA} && \textcolor{rgb,255:red,92;green,214;blue,92}{0} \\
    \\
    0 && {\ker(L_0 FM \to L_0FP)} && {L_{0}FM} && {L_{0}FP} && {L_0FA} && 0
    \arrow[color={rgb,255:red,92;green,214;blue,92}, from=3-5, to=3-7]
    \arrow[color={rgb,255:red,92;green,214;blue,92}, from=3-7, to=3-9]
    \arrow["{{{\partial}}_1}", color={rgb,255:red,92;green,214;blue,92}, from=3-3, to=3-5]
    \arrow[from=3-1, to=3-3]
    \arrow[color={rgb,255:red,92;green,214;blue,92}, from=3-9, to=3-11]
    \arrow[from=5-1, to=5-3]
    \arrow[from=5-3, to=5-5]
    \arrow[from=5-5, to=5-7]
    \arrow[from=5-7, to=5-9]
    \arrow[from=5-9, to=5-11]
    \arrow[equal, from=3-9, to=5-9]
    \arrow[equal, from=3-7, to=5-7]
    \arrow[equal, from=3-5, to=5-5]
    \arrow[dashed, from=3-3, to=5-3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    0 && {M_1} && {M_2} && {M_3} && 0 \\
    \\
    0 && {FM_1} && {FM_2} && {FM_3} && {}
    \arrow[from=1-1, to=1-3]
    \arrow["f", from=1-3, to=1-5]
    \arrow["g", from=1-5, to=1-7]
    \arrow[from=1-7, to=1-9]
    \arrow[from=3-1, to=3-3]
    \arrow["{F(f): \lambda \mapsto f\circ \lambda}"', from=3-3, to=3-5]
    \arrow["{F(g): \lambda \mapsto g\circ \lambda}"', from=3-5, to=3-7]
    \arrow["{F({-}) \coloneqq\mathop{\mathrm{Hom}}_R(A, {-})}"{description}, Rightarrow, from=1-5, to=3-5]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    && A \\
    \\
    {M_2} && {M_3} && 0
    \arrow["g", from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow["\phi", from=1-3, to=3-3]
    \arrow["{\