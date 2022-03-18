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
    {B_2} && {B