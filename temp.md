Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    U && {{\mathcal{F}}_1(U)} && {{\mathcal{F}}_2(U)} \\
    \\
    V && {{\mathcal{F}}_1(V)} && {{\mathcal{F}}_2(V)}
    \arrow[""{name=0, anchor=center, inner sep=0}, "{\iota_{UV}}", hook, from=3-1, to=1-1]
    \arrow[""{name=1, anchor=center, inner sep=0}, "{{\mathcal{F}}_1\mathrel{\Big|}^U_V}", from=1-3, to=3-3]
    \arrow["{{\mathcal{F}}_2\mathrel{\Big|}^U_V}", from=1-5, to=3-5]
    \arrow["{f_V}", from=1-3, to=1-5]
    \arrow["{f_U}"', from=3-3, to=3-5]
    \arrow["f", shorten <=14pt, shorten >=14pt, Rightarrow, from=0, to=1]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {\xi:} && 0 && {{\mathcal{F}}_1} && {{\mathcal{F}}_2} && {{\mathcal{F}}_3} && 0 \\
    \\
    {\xi_X:} && {?} && {{\mathcal{F}}_1(X)} && {{\mathcal{F}}_2(X)} && {{\mathcal{F}}_3(X)} && {?} \\
    \\
    {\xi_p:} && 0 && {({\mathcal{F}}_1)_p} && {({\mathcal{F}}_2)_p} && {({\mathcal{F}}_3)_p} && 0
    \arrow[from=5-3, to=5-5]
    \arrow["{f_p}"', hook, from=5-5, to=5-7]
    \arrow["{g_p}"', two heads, from=5-7, to=5-9]
    \arrow[from=5-9, to=5-11]
    \arrow["{{\mathcal{F}}_1\mathrel{\Big|}^X_p}", from=3-5, to=5-5]
    \arrow["{{\mathcal{F}}_2\mathrel{\Big|}^X_p}", from=3-7, to=5-7]
    \arrow["{{\mathcal{F}}_3\mathrel{\Big|}^X_p}", from=3-9, to=5-9]
    \arrow[from=3-3, to=3-5]
    \arrow["{f_X}", from=3-5, to=3-7]
    \arrow["{g_X}", from=3-7, to=3-9]
    \arrow[from=3-9, to=3-11]
    \arrow[from=1-3, to=1-5]
    \arrow["f", hook, from=1-5, to=1-7]
    \arrow["g", two heads, from=1-7, to=1-9]
    \arrow[from=1-9, to=1-11]
    \arrow["{\Gamma(X;{-})}", Rightarrow, from=1-7, to=3-7]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    && \textcolor{rgb,255:red,92;green,92;blue,214}{f_X^{-1}(s)} && \textcolor{rgb,255:red,92;green,92;blue,214}{s} && {\ell \coloneqq g_X(s)} \\
    0 && {{\mathcal{F}}_1(X)} && {{\mathcal{F}}_2(X)} && {{\mathcal{F}}_3(X)} && {?} \\
    \\
    0 && {({\mathcal{F}}_1)_p} && {({\mathcal{F}}_2)_p} && {({\mathcal{F}}_3)_p} \\
    && \textcolor{rgb,255:red,92;green,92;blue,214}{{\mathcal{F}}_1\mathrel{\Big|}^U_p(f_X^{-1}(s))} && \textcolor{rgb,255:red,92;green,92;blue,214}{t \coloneqq{\mathcal{F}}_2\mathrel{\Big|}^U_p(s)} && 0
    \arrow["{f_X}", from=2-3, to=2-5]
    \arrow[from=2-1, to=2-3]
    \arrow["{g_X}", from=2-5, to=2-7]
    \arrow["{{\mathcal{F}}_1\mathrel{\Big|}^U_p}"{description}, from=2-3, to=4-3]
    \arrow[from=4-1, to=4-3]
    \arrow["{f_p}"', from=4-3, to=4-5]
    \arrow["{g_p}"', from=4-5, to=4-7]
    \arrow["{{\mathcal{F}}_3\mathrel{\Big|}^U_p}", from=2-7, to=4-7]
    \arrow["{{\mathcal{F}}_2\mathrel{\Big|}^U_p}"{description}, from=2-5, to=4-5]
    \arrow[from=2-7, to=2-9]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, curve={height=-30pt}, dotted, maps to, from=1-5, to=5-5]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, dashed, maps to, from=1-3, to=1-5]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, curve={height=18pt}, dotted, maps to, from=1-3, to=5-5]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    0 && {\mathbb{Z}}&& {{\mathbb{G}}_a({\mathbb{C}})} && {{\mathbb{G}}_m({\mathbb{C}}^{\times})} && 0 && \in{\mathsf{Grp}}\\
    &&&& {} \\
    0 && {\underline{{\mathbb{Z}}}} && {\mathop{\mathrm{Hol}}_X({-})} && {\mathop{\mathrm{Hol}}_X({-})^{\times}} && 0 && {\in {\mathsf{Sh}}(X, {\mathsf{Grp}}), X \coloneqq{\mathbb{C}}^{\times}} \\
    \\
    0 && {\mathbb{Z}}&& {\mathop{\mathrm{Hol}}_X(X)} && {\mathop{\mathrm{Hol}}_X(X)^{\times}} && 0 && {\in \mathsf{CRing}}
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-