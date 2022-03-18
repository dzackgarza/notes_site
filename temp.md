Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}[column sep=1.2em]
    & \vdots && \vdots && \vdots && \vdots && \vdots \\
    & 0 && \textcolor{rgb,255:red,92;green,92;blue,214}{B_p(P, d^h)_q} && {Z_p(P, d^h)_q} && \textcolor{rgb,255:red,92;green,92;blue,214}{H_p(P, d^h)_q} && 0 \\
    & 0 && \textcolor{rgb,255:red,92;green,92;blue,214}{B_p(P, d^h)_{q-1}} && {Z_p(P, d^h)_{q-1}} && \textcolor{rgb,255:red,92;green,92;blue,214}{H_p(P, d^h)_{q-1}} && 0 \\
    &&& \textcolor{rgb,255:red,92;green,92;blue,214}{\vdots} && \vdots && \textcolor{rgb,255:red,92;green,92;blue,214}{\vdots} \\
    & 0 && \textcolor{rgb,255:red,92;green,92;blue,214}{B_p(P, d^h)_1} && {Z_p(P, d^h)_1} && \textcolor{rgb,255:red,92;green,92;blue,214}{H_p(P, d^h)_1} && 0 \\
    & 0 && \textcolor{rgb,255:red,92;green,92;blue,214}{B_p(P, d^h)_0} && {Z_p(P, d^h)_0} && \textcolor{rgb,255:red,92;green,92;blue,214}{H_p(P, d^h)_0} && 0 \\
    {} &&&&&&&&&& {} \\
    & 0 && \textcolor{rgb,255:red,92;green,92;blue,214}{B_p(A)} && {Z_p(A)} && \textcolor{rgb,255:red,92;green,92;blue,214}{H_p(A)} && 0
    \arrow[from=8-2, to=8-4]
    \arrow[from=8-4, to=8-6]
    \arrow[from=8-6, to=8-8]
    \arrow[from=6-2, to=6-4]
    \arrow[from=5-2, to=5-4]
    \arrow[from=5-4, to=5-6]
    \arrow[from=6-4, to=6-6]
    \arrow[from=5-6, to=5-8]
    \arrow[from=6-6, to=6-8]
    \arrow[from=8-8, to=8-10]
    \arrow[from=6-8, to=6-10]
    \arrow[from=5-8, to=5-10]
    \arrow[from=3-2, to=3-4]
    \arrow[from=3-4, to=3-6]
    \arrow[from=3-6, to=3-8]
    \arrow[from=3-8, to=3-10]
    \arrow[from=2-2, to=2-4]
    \arrow[from=2-4, to=2-6]
    \arrow[from=2-6, to=2-8]
    \arrow[from=2-8, to=2-10]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, from=2-4, to=3-4]
    \arrow[from=2-6, to=3-6]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, from=2-8, to=3-8]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, from=3-8, to=4-8]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, from=4-8, to=5-8]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, from=3-4, to=4-4]
    \arrow[from=3-6, to=4-6]
    \arrow[from=4-6, to=5-6]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, from=5-4, to=6-4]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, from=4-4, to=5-4]
    \arrow[from=5-6, to=6-6]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, from=5-8, to=6-8]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, from=6-4, to=8-4]
    \arrow[from=6-6, to=8-6]
    \arrow[color={rgb,255:red,92;green,92;blue,214}, from=6-8, to=8-8]
    \arrow[dashed, no head, from=7-1, to=7-11]
    \arrow[from=1-4, to=2-4]
    \arrow[from=1-6, to=2-6]
    \arrow[from=1-8, to=2-8]
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
    {} \\
    {\mathcal{H}_1 B_p(P, d^h)} && {\mathcal{H}_1 Z_p(P, d^h)} && {\mathcal{H}_1 H_p(P, d^h)} \\
    \\
    {\mathcal{H}_0 B_p(P, d^h)} && {\mathcal{H}_0 Z_p(P, d^h)} && {\mathcal{H}_0 H_p(P, d^h)} \\
    &&&& 0
    \arrow[from=3-5, to=5-1]
    \arrow[from=5-1, to=5-3]
    \arrow[from=5-3, to=5-5]
    \arrow[from=5-5, to=6-5]
    \arrow[from=3-3, to=3-5]
    \arrow[from=3-1, to=3-3]
    \arrow[from=1-5, to=3-1]
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
    0 && {\mathcal{H}_2 Z_p(P, d^h)} && 0 \\
    {} \\
    0 && {\mathcal{H}_1 Z_p(P, d^h)} && 0 \\
    \\
    {B_p(P, d^h)} && {Z_p(P, d^h)} && {H_p(P, d^h)} \\
    &&&& 0
    \arrow[from=5-5, to=7-1]
    \arrow[from=7-1, to=7-3]
    \arrow[from=7-3, to=7-5]
    \arrow[from=7-5, to=8-5]
    \arrow[from=5-3, to=5-5]
    \arrow[from=5-1, to=5-3]
    \arrow[from=3-5, to=5-1]
    \arrow[from=3-1, to=3-3]
    \arrow[from=3-3, to=3-5]
    \arrow[from=1-5, to=3-1]
\end{tikzcd}
\end{document