---
date: 2020-01-27
tags:
- Unfiled
---

-   [Examples](#examples)














[[../../00_Talks Index | 000_Talks%20Index.html]]

Tags: \#zeta_functions \#L_functions \#number_theory \#algebraic_geometry

Recall that the Riemann-Zeta function has a product expansion

`\begin{align*}
\zeta(s) = \sum n^{-s} = \prod_{p\in P} (1-p^{-s})^{-1}
\end{align*}`{=tex}

where the product is taken over all primes $P$.

Let $X = V(\left\{{f_i}\right\})\coloneqq V(f)$ be the vanishing locus of a family of polynomials in $F = {\mathbb{F}}_q[x_1, \cdots, x_n]$ for some prime power $q$.

Let $N_m = {\left\lvert {\left\{{ \mathbf{x} \in X({\mathbb{F}}_q) {~\mathrel{\Big|}~}f_i(\mathbf{x}) = 0 }\right\}} \right\rvert} = {\left\lvert {V(f)} \right\rvert} \subset F$, the number of ${\mathbb{F}}_q$ points, or equivalently just the size of this variety.

Then the Hasse-Weil Zeta function is defined as

`\begin{align*}
\zeta_X(t) = \exp{\displaystyle\sum_{m\geq 1} \frac {N_m} m  t^m}
\end{align*}`{=tex}

We immediately make a change of variables and send $t\to q^{-s}$ to obtain

`\begin{align*}
\zeta_X(s) = \exp{\sum_{m\geq 1} \frac {N_m} m \qty{q^{-s}}^m }
.\end{align*}`{=tex}

> Why? Turns the zeta function into a Dirichlet series in $s$. Yields ${\left\lvert {t} \right\rvert} = q^{-\Re(s)}$. Defined for ${\left\lvert {t} \right\rvert} < \frac 1 q$ in ${\mathbb{C}}$, extended to all of ${\mathbb{C}}$ as a rational function in $x$. Converts "All zeros of $\zeta_X$ have absolute value $\frac{1}{\sqrt q}$" to "All zeros of $\zeta_X$ have real part $\frac 1 2$".

[Explanation of why exponential appears](https://mathoverflow.net/questions/325186/motivation-for-zeta-function-of-an-algebraic-variety)

Rough explanation: Take a bad first approximation and then correct. Let $X$ be a fixed variety, for $p\in X$ define ${\left\lVert {p} \right\rVert}_X = q^n$ where $n$ is the $n$ occurring in the minimal field of definition of $p$, which is ${\mathbb{F}}_{q^n}$.

Attempt to define `\begin{align*}
\zeta_{X, q}(s) = \prod_{p\in X} \frac{1}{1-{\left\lVert {p} \right\rVert}_X^{-s}}
.\end{align*}`{=tex}

Note that $-\log(x+1) = \sum_{n\geq 1} \frac{x^n}{n}$.

Now fix one $p\in X$ and consider the factor it contributes, and take its logarithm:

`\begin{align*}
\log\qty{\frac{1}{1-{\left\lVert {p} \right\rVert}_X^{-s}}} 
&= - \log(1-{\left\lVert {p} \right\rVert}_X^{-s}) \\
&=  - \log(-{\left\lVert {p} \right\rVert}_X^{-s} + 1) \\
&= \sum_{j\geq 1} \frac{{\left\lVert {p} \right\rVert}_X^{-js}}{k} \\
&= \sum_{j\geq 1} \frac{q^{-nks}}{k} \\
&= \sum_{j\geq 1} \frac{n}{nk}(q^{-s})^{nk} \\
(m=nk)\quad &= \sum_{j\geq 1} \frac{n}{m}(q^{-s})^{m}
,\end{align*}`{=tex}

so we see this single point contributes $n$ to $N_m$, when instead we'd like it to contribute exactly 1.

Fix: If $p$ is minimally defined over ${\mathbb{F}}_{q^n}$, consider its Galois orbit (taking automorphisms of ${\mathbb{F}}_{q^n}$). There are exactly $n$ points in the orbit of $p$ -- namely, the conjugates of $p$ -- so if we redefine

`\begin{align*}
\zeta_{X, q}(s) = \prod_{\text{One } p \text{ in each Galois orbit}} \frac{1}{1-{\left\lVert {p} \right\rVert}_{X}^{-s} }
.\end{align*}`{=tex}

Then the above argument shows that each orbit now contributes $n$, and each orbit is of size $n$, so the contribution now accurately reflects the number of points.

# Examples

1: $f(x) = x$ over ${\mathbb{F}}_q$.

Define $X_q = V(f)$, then this has exactly \$q points over ${\mathbb{F}}_q^{n}$ point for every $n$, so $N_n = 1$ and

`\begin{align*}
\zeta_{X_q}(s) = \exp{\sum_{n\geq 1} \frac 1 n  (p^{-sn})} &= e^{-\log(1 - p^{-s})}= (1-p^{-s})^{-1}
.\end{align*}`{=tex}

> Note that the usual $\zeta_s = \prod_{p\text{ prime}} \zeta_{X_p}(s)$, i.e. Riemann Zeta is a product of Hasse-Weil zetas over all primes.

2.  $V = {\mathbb{CP}}^1$ the projective line.

Here `\begin{align*}
\zeta_V(s) = \frac{1}{(1-q^{-s})(1-q^{1-s})}
.\end{align*}`{=tex}

Corresponds to Riemann sphere, can check Betti numbers.

3.  $V = {\mathbb{CP}}^n$:

`\begin{align*}
\zeta_V(s) = \prod_{j=0}^n \frac{1}{1-q^{j-s}}
.\end{align*}`{=tex}

4.  An elliptic curve:

$N_m$ is given by $1 - \alpha^m - \beta^m + q^m$ where $\alpha = \mkern 1.5mu\overline{\mkern-1.5mu\beta\mkern-1.5mu}\mkern 1.5mu$ are complex conjugates with absolute value $\sqrt{q}$.

`\begin{align*}
\zeta(E, s)=\frac{\left(1-\alpha q^{-s}\right)\left(1-\beta q^{-s}\right)}{\left(1-q^{-s}\right)\left(1-q^{1-s}\right)}
.\end{align*}`{=tex}
