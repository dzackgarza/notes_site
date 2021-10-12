












For $\left\{{a_k}\right\}$ a sequence in ${\mathbb{R}}$, define `
<span class="math display">
\begin{align*}
A(t) := \sum_{0\leq k \leq t} a_k
\end{align*}
<span>`{=html} For $\phi\in C^1({\mathbb{R}})$ continuously differentiable, `
<span class="math display">
\begin{align*}
\sum_{x <k \leq y} a_{k} \phi(n)=A(y) \phi(y)-A(x) \phi(x)-\int_{x}^{y} A(u) \phi^{\prime}(u) \,du
\end{align*}
<span>`{=html}

Fix $s\in {\mathbb{C}}, a_{k} = 1$ for $k\geq 1$, and $\phi(x) := x^{-s}$. Then $A(t) = {\left\lfloor t \right\rfloor}$, and `
<span class="math display">
\begin{align*}
\sum_{n=1}^{\lfloor x\rfloor} \frac{1}{n^{s}}=\frac{\lfloor x\rfloor}{x^{s}}+s \int_{1}^{x} \frac{\lfloor u\rfloor}{u^{1+s}} \,du
\end{align*}
<span>`{=html} Now take $\Re(s) > 1$ and $\lim_{x\to\infty}$ to yield `
<span class="math display">
\begin{align*}
\zeta(s)=s \int_{1}^{\infty} \frac{\lfloor u\rfloor}{u^{1+s}} \,du
\end{align*}
<span>`{=html} Use this to derive [[Dirichlet's%20theorem.md): $\zeta(s)$ has a simple pole at $s=1$ with \$`\mathop{\mathrm{Res}}`{=tex}\_{s=1} `\zeta`{=tex}(s](Dirichlet's%20theorem.md):%20$/zeta(s)$%20has%20a%20simple%20pole%20at%20$s=1$%20with%20$/Res_{s=1}%20/zeta(s) = 1$. This works for other [Dirichlet%20series | Dirichlet%20series.html]].
