Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    & \bullet \\
    \vdots && \vdots \\
    {U_1} && {F(U_1)} \\
    &&&& {\forall O} && {\colim_{i} F(U_i)} \\
    {U_2} && {F(U_2)} \\
    \vdots && \vdots \\
    & \bullet
    \arrow["f", from=5-1, to=3-1]
    \arrow["{F(f)}"', from=3-3, to=5-3]
    \arrow["{\psi_2}"', from=5-3, to=4-7]
    \arrow["{\psi_1}", from=3-3, to=4-7]
    \arrow["{\psi'_1}"', from=3-3, to=4-5]
    \arrow["{\psi'_2}", from=5-3, to=4-5]
    \arrow["{\exists !}", dashed, from=4-5, to=4-7]
    \arrow[dotted, no head, from=1-2, to=7-2]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    && {f(U)} && f \\
    && {a_0} && { \begin{aligned} \varphi_{a_0}: U &\to A \\ x &\mapsto a_0 \end{aligned} } \\
    U && {(\underline{A}^{\mathsf{pre}})(U) = A} && {\mathop{\mathrm{Hom}}_{\mathsf{Top}}(U, A)} \\
    \\
    V && {(\underline{A}^{\mathsf{pre}})(V) = A} && {\mathop{\mathrm{Hom}}_{\mathsf{Top}}(V, A)} \\
    && {a_0} && { \begin{aligned} \varphi_{a_0}: V &\to A \\ x &\mapsto a_0 \end{aligned} } \\
    && {f(V)} && f
    \arrow[hook, from=5-1, to=3-1]
    \arrow["{\Psi_U}", from=3-3, to=3-5]
    \arrow["{\Psi_V}", from=5-3, to=5-5]
    \arrow["{\operatorname{res}^1(U, V)}"', from=3-3, to=5-3]
    \arrow["{\operatorname{res}^2(U, V)}", from=3-5, to=5-5]
    \arrow[maps to, from=2-3, to=2-5]
    \arrow[maps to, from=1-5, to=1-3]
    \arrow[maps to, from=7-5, to=7-3]
    \arrow[maps to, from=6-3, to=6-5]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {\underline{A}^{{\mathsf{pre}}}} && {{ \left.{{{\mathcal{G}}}} \right|_{{{\mathsf{pre}}}} }} && {\in  \underset{ \mathsf{pre} } {\mathsf{Sh} }(X)} \\
    \\
    {\underline{A}} && {\mathcal{G}}&& {\in{\mathsf{Sh}}(X)}
    \arrow["\varphi", from=1-1, to=1-3]
    \arrow["\theta"', from=1-1, to=3-1]
    \arrow["{{ \left.{{{-}}} \right|_{{{\mathsf{pre}}}} }}"', from=3-3, to=1-3]
    \arrow["{\exists! \tilde \varphi}"', dashed, from=3-1, to=3-3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {a_i} &&& {b_i \coloneqq\varphi(U_i)(a_i)} \\
    & {\underline{A}^{{\mathsf{pre}}}(U_i) = A} && {{ \left.{{{\mathcal{G}}}} \right|_{{{\mathsf{pre}}}} }(U_i)} && {\in  \underset{ \mathsf{pre} } {\mathsf{Sh} }(X)} \\
    \\
    & {\mathop{\mathrm{Hom}}(U_i, A)} && {{\mathcal{G}}(U_i)} && {\in{\mathsf{Sh}}(X)} \\
    & f && {b_i} && {}
    \arrow["{\varphi(U_i)}", from=2-2, to=2-4]
    \arrow["\theta"', from=2-2, to=4-2]
    \arrow["{{ \left.{{{-}}} \right|_{{{\mathsf{pre}}}} }}"', from=4-4, to=2-4]
    \arrow["{\exists! \tilde \varphi}"', dashed, from=4-2, to=4-4]
    \arrow[curve={height=-24pt}, dashed, maps to, from=5-2, to=1-1]
    \arrow[dashed, maps to, from=1-1, to=1-4]
    \arrow[maps to, from=5-2, to=5-4]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    & {{\mathsf{Open}}(X)} &&&& {\underline{A}} &&&& {\underline{A}(a) \times \underline{A}(b)} \\
    & {X = \left\{{a,b,c}\right\}} &&&& A &&&& {A^{\times 2}} \\
    & {\left\{{a,b}\right\}} &&&& A &&&& {A^{\times 2}} \\
    {\left\{{a}\right\}} && {\left\{{b}\right\}} && A && A && {A\times 0} && {0\times A} \\
    & \emptyset &&&& 0 &&&& 0
    \arrow[from=5-2, to=4-1]
    \arrow[from=5-2, to=4-3]
    \arrow[from=4-1, to=3-2]
    \arrow[from=4-3, to=3-2]
    \arrow[from=3-2, to=2-2]
    \arrow[from=2-6, to=3-6]
    \arrow[from=3-6, to=4-5]
    \arrow[from=3-6, to=4-7]
    \arrow[from=4-7, to=5-6]
    \arrow[from=4-5, to=5-6]
    \arrow[from=2-