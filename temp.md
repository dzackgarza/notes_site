Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {A_1} && {A_2} && {A_3} && {A_4} && {A_5} \\
    \\
{B_1} && {B_2} && {B_3} && {B_4} && {B_5}
    \arrow[from=1-1, to=1-3, "{{{\partial}}_1^A}"]
    \arrow[from=1-3, to=1-5, "{{{\partial}}_2^A}"]
    \arrow[from=1-5, to=1-7, "{{{\partial}}_3^A}"]
    \arrow[from=1-7, to=1-9, "{{{\partial}}_4^A}"]
    \arrow[from=3-1, to=3-3, "{{{\partial}}_1^B}"]
    \arrow[from=3-3, to=3-5, "{{{\partial}}_2^B}"]
    \arrow[from=3-5, to=3-7, "{{{\partial}}_3^B}"]
    \arrow[from=3-7, to=3-9, "{{{\partial}}_4^B}"]
    \arrow["{f_1}"{description}, from=1-1, to=3-1]
    \arrow["{f_2}"{description}, from=1-3, to=3-3]
    \arrow["{f_3}"{description}, from=1-5, to=3-5]
    \arrow["{f_4}"{description}, from=1-7, to=3-7]
    \arrow["{f_5}"{description}, from=1-9, to=3-9]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {A_1} && {A_2} && {A_3} && {A_4} \\
    \\
    {B_1} && {B_2} && {B_3} && {B_4}
    \arrow["{{{\partial}}_1^A}", from=1-1, to=1-3]
    \arrow["{{{\partial}}_2^A}", from=1-3, to=1-5]
    \arrow["{{{\partial}}_3^A}", from=1-5, to=1-7]
    \arrow["{{{\partial}}_1^B}", from=3-1, to=3-3]
    \arrow["{{{\partial}}_2^B}", from=3-3, to=3-5]
    \arrow["{{{\partial}}_3^B}", from=3-5, to=3-7]
    \arrow["{f_1}"{description}, two heads, from=1-1, to=3-1]
    \arrow["{f_2}"{description}, hook, from=1-3, to=3-3]
    \arrow["{f_3}"{description}, color={rgb,255:red,92;green,214;blue,92}, from=1-5, to=3-5]
    \arrow["{f_4}"{description}, hook, from=1-7, to=3-7]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {y_5 \in A_1} && {y_2 \in A_2} && {x\in A_3} && {y_1\in A_4} \\
    & 3 && 2 && 1 \\
    {y_4 \in B_1} && {y_3 \in B_2} && {0\in B_3} && {0\in B_4}
    \arrow["{{{\partial}}_1^A}", from=1-1, to=1-3]
    \arrow["{{{\partial}}_2^A}", from=1-3, to=1-5]
    \arrow["{{{\partial}}_3^A}", from=1-5, to=1-7]
    \arrow["{{{\partial}}_1^B}", from=3-1, to=3-3]
    \arrow["{{{\partial}}_2^B}", from=3-3, to=3-5]
    \arrow["{{{\partial}}_3^B}", from=3-5, to=3-7]
    \arrow["{f_1}"{description}, two heads, from=1-1, to=3-1]
    \arrow["{f_2}"{description}, hook, from=1-3, to=3-3]
    \arrow["{f_3}"{description}, color={rgb,255:red,92;green,214;blue,92}, from=1-5, to=3-5]
    \arrow["{f_4}"{description}, hook, from=1-7, to=3-7]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {A_2} && {A_3} && {A_4} && {A_5} \\
    \\
    {B_2} && {B_3} && {B_4} && {B_5}
    \arrow["{{{\partial}}_2^A}", from=1-1, to=1-3]
    \arrow["{{{\partial}}_3^A}", from=1-3, to=1-5]
    \arrow["{{{\partial}}_4^A}", from=1-5, to=1-7]
    \arrow["{{{\partial}}_2^B}", from=3-1, to=3-3]
    \arrow["{{{\partial}}_3^B}", from=3-3, to=3-5]
    \arrow["{{{\partial}}_4^B}", from=3-5, to=3-7]
    \arrow["{f_2}"{description}, two heads, from=1-1, to=3-1]
    \arrow["{f_3}"{description}, color={rgb,255:red,92;green,214;blue,92}, from=1-3, to=3-3]
    \arrow["{f_4}"{description}, two heads, from=1-5, to=3-5]
    \arrow["{f_5}"{description}, hook, from=1-7, to=3-7]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    && \textcolor{rgb,255:red,51;green,112;blue,255}{\zeta_3} \\
    \textcolor{rgb,255:red,51;green,112;blue,255}{\zeta_2} && \textcolor{rgb,255:red,153;green,92;blue,214}{y_3} && \textcolor{rgb,255:red,153;green,92;blue,214}{y_2} && \textcolor{rgb,255:red,153;green,92;blue,214}{0} \\
    {A_2} && {A_3} && {A_4} && {A_5} \\
    & 3 && 2 && 1 \\
    {B_2} && {B_3} && {B_4} && {B_5} \\
    \textcolor{rgb,255:red,51;green,112;blue,255}{\zeta_1} && \textcolor{rgb,255:red,153;green,92;blue,214}{y} && \textcolor{rgb,255:red,153;green,92;blue,214}{y_1} && \textcolor{rgb,255:red,153;green,92;blue,214}{0} \\
    && \textcolor{rgb,255:red,153;green,92;blue,214}{z} \\
    && \textcolor{rgb,255:red,51;green,112;blue,255}{z-y}
    \arrow["{{{\partial}}_2^A}", from=3-1, to=3-3]
    \arrow["{{{\partial}}_3^A}", from=3-3, to=3-5]
    \arrow["{{{\partial}}_4^A}", from=3-5, to=3-7]
    \arrow["{{{\partial}}_2^B}", from=5-1, to=5-3]
    \arrow["{{{\partial}}_3^B}", from=5-3, to=5-5]
    \arrow["{{{\partial}}_4^B}", from=5-5, to=5-7]
    \arrow["{f_2}"{description}, two heads, from=3-1, to=5-1]
    \arrow["{f_3}"{description}, color={rgb,255:red,92;green,214;blue,92}, from=3-3, to=5-3]
    \arrow["{f_4}"{description}, two heads, from=3-5, to=5-5]
    \arrow["{f_5}"{description}, hook, from=3-7, to=5-7]
    \arrow[color={rgb,255:red,153;green,92;blue,214}, curve={height=-24pt}, dashed, from=2-3, to=7-3]
    \arrow[color={rgb,255:red,153;green,92;blue,214}, dotted, from=6-3, to=6-5]
    \arrow[color={rgb,255:red,153;green,92;blue,214}, curve={height=-18pt}, dotted, from=2-5, to=6-5]
    \arrow[color={rgb,255:red,153;green,92;blue,214}, dotted, from=2-5, to=2-7]
    \arrow[color={rgb,255:red,153;green,92;blue,214}, dotted, from=2-3, to=2-5]
    \arrow[color={rgb,255:red,51;green,112;blue,255}, dotted, from=2-1, to=1-3]
    \arrow[color={rgb,255:red,51;green,112;blue,255}, curve={height=18pt}, dotted, from=2-1, to=6-1]
    \arrow[color={rgb,255:red,51;green,112;blue,255}, dotted, from=6-1, to=8-3]
    \arrow[color={rgb,255:red,153;green,92;blue,214}, dotted, from=6-5, to=6-7]
    \arrow[color={rgb,255:red,153;green,92;blue,214}, curve={height=-12pt}, dotted, from=2-7, to=6-7]
    \arrow[color={rgb,255:red,51;green,112;blue,255}, curve={height=18pt}, dashed, from=1-3, to=8-3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    \cdots && {C_{n+1}} & {} & {C_n} && \cdots \\
    \\
    &&&& {Z_n} \\
    \\
    &&&& {B_n}
    \arrow[from=1-1, to=1-3]
    \arrow["{{{\partial}}_{n+1}}", from=1-3, to=1-5]
    \arrow[from=1-5, to=1-7]
    \arrow["{\iota_{BZ}}"', hook', from=5-5, to=3-5]
    \arrow["{\iota_{Z}}"', hook', from=3-5, to=1-5]
    \arrow["{s_{n}}"', curve={height=18pt}, dashed, from=1-5, to=1-3]
    \arrow["{{{\partial}}_{n+1}}"', two heads, from=1-3, to=5-5]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    \cdots && {C_{n+1}} && {C_{n}} && {C_{n-1}} && \cdots \\
    \\
    \cdots && {C_{n+1}} && {C_{n}} && {C_{n-1}} && \cdots
    \arrow["{{{\partial}}_{n+1}}", color={rgb,255:red,92;green,214;blue,92}, from=1-3, to=1-5]
    \arrow["{{{\partial}}_{n+1}}", color={rgb,255:red,214;green,92;blue,92}, from=3-3, to=3-5]
    \arrow[from=1-1, to=1-3]
    \arrow[from=3-1, to=3-3]
    \arrow["{{{\partial}}_{n}}", color={rgb,255:red,214;green,92;blue,92}, from=1-5, to=1-7]
    \arrow["{{{\partial}}_{n}}", from=3-5, to=3-7]
    \arrow["{\one_{C_n}}", color={rgb,255:red,92;green,214;blue,92}, from=1-5, to=3-5]
    \arrow["{\one_{C_{n+1}}}"', from=1-3, to=3-3]
    \arrow["{s_n}", color={rgb,255:red,214;green,92;blue,92}, from=1-5, to=3-3]
    \arrow["{s_n}"{description}, curve={height=24pt}, dashed, from=1-5, to=1-3]
    \arrow[from=1-7, to=1-9]
    \arrow[from=3-7, to=3-9]
    \arrow["{\one_{C_{n-1}}}", from=1-7, to=3-7]
    \arrow["{s_{n-1}}", color={rgb,255:red,214;green,92;blue,92}, from=1-7, to=3-5]
    \arrow["{s_{n-1}}"{description}, curve={height=24pt}, dashed, from=1-7, to=1-5]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {C_n} && {C_{n-1}} \\
    \\
    {B_n} && {B_{n-1}} \\
    \oplus && \oplus \\
    {B_{n-1}} && {B_{n-2}}
    \arrow["{{{\partial}}_n}", from=1-1, to=1-3]
    \arrow["{=}"{marking}, draw=none, from=1-1, to=3-1]
    \arrow["{=}"{marking}, draw=none, from=1-3, to=3-3]
    \arrow["{\one_{n}}"{description, pos=0.3}, from=5-1, to=3-3]
    \arrow["0"{description, pos=0.2}, dashed, from=3-1, to=3-3]
    \arrow["0"{description, pos=0.2}, dashed, from=3-1, to=5-3]
    \arrow["0"{description, pos=0.2}, dashed, from=5-1, to=5-3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {C_n} && {C_{n+1}} \\
    \\
    {B_n} && {B_{n+1}} \\
    \oplus && \oplus \\
    {B_{n-1}} && {B_{n}}
    \arrow["{s_n}", from=1-1, to=1-3]
    \arrow["{=}"{marking}, draw=none, from=1-1, to=3-1]
    \arrow["{=}"{marking}, draw=none, from=1-3, to=3-3]
    \arrow["{\one_n}"{description, pos=0.3}, from=3-1, to=5-3]
    \arrow["0"{description, pos=0.2}, dashed, from=3-1, to=3-3]
    \arrow["0"{description, pos=0.2}, dashed, from=5-1, to=5-3]
    \arrow["0"{description, pos=0.2}, dashed, from=5-1, to=3-3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    C &&& D \\
    \\
    B &&& E
    \arrow[""{name=0, anchor=center, inner sep=0}, "f"{description}, curve={height=-18pt}, from=1-1, to=1-4]
    \arrow[""{name=1, anchor=center, inner sep=0}, "g"{description}, curve={height=12pt}, from=1-1, to=1-4]
    \arrow["u", from=3-1, to=1-1]
    \arrow["v", from=1-4, to=3-4]
    \arrow[""{name=2, anchor=center, inner sep=0}, "vfu"{description}, curve={height=-18pt}, from=3-1, to=3-4]
    \arrow[""{name=3, anchor=center, inner sep=0}, "vgu"{description}, curve={height=18pt}, from=3-1, to=3-4]
    \arrow[shorten <=4pt, shorten >=4pt, Rightarrow, from=0, to=1]
    \arrow["\exists"', shorten <=5pt, shorten >=5pt, Rightarrow, dashed, from=2, to=3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {\operatorname{cone}(C)_{n+1}} &&& {\operatorname{cone}(C)_n} \\
    \\
    {C_n} &&& {C_{n-1}} \\
    \oplus &&& \oplus \\
    {C_{n+1}} &&& {C_n}
    \arrow["{\widehat{{{\partial}}}_{n+1}}", from=1-1, to=1-4]
    \arrow["{-{{\partial}}_n}"{pos=0.2}, from=3-1, to=3-4]
    \arrow["{-\one_n}"'{pos=0.2}, from=3-1, to=5-4]
    \arrow["0"'{pos=0.2}, dashed, from=5-1, to=3-4]
    \arrow["{{{\partial}}_{n+1}}"'{pos=0.3}, from=5-1, to=5-4]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    && \cdots && {C_n} && {C_{n-1}} && \cdots \\
    \\
    \cdots && {D_{n+1}} && {D_n} && \cdots
    \arrow["{{{\partial}}_n^C}", from=1-5, to=1-7]
    \arrow["{f_n}"', from=1-5, to=3-5]
    \arrow["{s_n}"{description}, color={rgb,255:red,92;green,92;blue,214}, dashed, from=1-5, to=3-3]
    \arrow["{{{\partial}}^D_{n+1}}"{description}, from=3-3, to=3-5]
    \arrow["{s_{n-1}}"{description}, color={rgb,255:red,92;green,92;blue,214}, dashed, from=1-7, to=3-5]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-7, to=1-9]
    \arrow[from=3-5, to=3-7]
    \arrow[from=3-1, to=3-3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {\widehat{C}} & {} \\
    \\
    C && D
    \arrow["f", from=3-1, to=3-3]
    \arrow["{{\iota}_{\widehat{C}}}", from=3-1, to=1-1]
    \arrow["{\widehat{f}}", dashed, from=1-1, to=3-3]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {C_n} &&& {\widehat{C}_n} \\
    \\
    {C_n} &&& {C_{n-1}} \\
    