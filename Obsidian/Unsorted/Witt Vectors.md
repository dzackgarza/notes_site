---
aliases:
- Witt
- Witt vector
date: '2021-04-28 17:04:58'
---

-   [Witt Vectors](#witt-vectors)














> Reference: AWS 2019 Background Notes

Witt Vectors
============

General idea: given a commutative ring $R$, a \[\[Unsorted/Witt Vectors\|Witt vector\]\] $w$ will be an infinite sequence of elements of $R$. Taking $W(R)$ to be a collection of such $w$, we will equip $W(R)$ with its own ring structure.

One useful fact will be that $W({\mathbb{F}}_p) = {\mathbb{Z}}_p$, the ring of \[\[p-adic integers\]\]. The construction essentially mirrors a way of obtaining ${\mathbb{Z}}_p$ from the finite field ${\mathbb{F}}_p$.

The initial application of Witt vectors comes from the problem of finding "nice" expressions for the sums and products of $p{\hbox{-}}$adic integers. In general, if $x\in {\mathbb{Z}}_p$, one can write $x = \sum_{i=0}^\infty a_i p^i$ with $a_i \in {\mathbb{F}}_p$, which is a convergent power series in the $p{\hbox{-}}$adic metric.

One can thus represent $x$ an element of $\prod_{i=1}^\infty {\mathbb{F}}_p$, where we just need to find the appropriate ring structure. However, this particular representation proves difficult to compute with. As it turns out, an alternative choice that works well is taking coefficients from a particular subset of ${\mathbb{Z}}_p$.

There is a map called the \[\[Teichmüller character\]\],

`
<span class="math display">
\begin{align*}
\omega: {\mathbb{F}}_p^\times \to {\mathbb{Z}}_p^\times,
\end{align*}
<span>`{=html}

and so another choice of $a_i$ can be obtained by looking at `
<span class="math display">
\begin{align*}
U \coloneqq\left\{{x \in {\mathbb{Z}}_p {~\mathrel{\Big|}~}x^{p}-x=0}\right\},
\end{align*}
<span>`{=html} the $(p-1){\hbox{-}}$th roots of unity in ${\mathbb{Z}}_p$. This arises from the fact that ${\mathbb{F}}_p^\times \cong {\mathbb{Z}}/(p-1){\mathbb{Z}}$, and so every nonzero element of ${\mathbb{F}}_p$ is a root of $x^{p-1}-1$. Using \[\[Hensel's Lemma\]\], these lift to representatives in ${\mathbb{Z}}_p$ satisfying the same equation.

If we then let $a_i \in U \cup\left\{{0}\right\}$; we can pull $U$ back along $\omega$ to map the latter choices of $a_i$ to the former, so this yields an alternative representation of $x$. These characters can be computed explicitly in the forward direction: to find $x =[x_1, x_2, \cdots ]$ on the Teichmüller side, one simply computes $x_i$ recursively via the conditions `
<span class="math display">
\begin{align*}x_0 = x \\ x_i = x_{i-1} \operatorname{mod}p^i,\\ x_i^{p-1}-1=0 \operatorname{mod}p^{i+1}.\end{align*}
<span>`{=html}

Now instead of looking at infinite sequences of elements of ${\mathbb{F}}_p$, we can look at infinite sequences of elements in $\omega({\mathbb{F}}_p) \subseteq {\mathbb{Z}}_{p}$, and Witt vectors allow us to explicitly compute with such things.

One can find explicit expression for the sums and products of such things, and it turns out these are "functorial enough" to be generalized to arbitrary rings. In general, one can produce $W(R)$, the big Witt ring with coefficients in $R$, by first defining a *divisor-stable set* $P$, which satisfy \$n`\in `{=tex}P `\implies `{=tex}\$ all proper divisors of $n$ are in $P$. Examples includes $P=\left\{{1,2,\cdots n}\right\}$ and $P = \left\{{1,p,p^2, \cdots}\right\}$.

One then defines `
<span class="math display">
\begin{align*}
W_P(R) = R^P \coloneqq\prod_{i\in P} R ,
\end{align*}
<span>`{=html}

and $W(R) = W_{\mathbb{N}}(R)$.

A final important part of the definition are the *Witt polynomials* `
<span class="math display">
\begin{align*}
w_n: W_P(R) \to R \\
w _ { n } = \sum _ { d | n } d x _ { d } ^ { n / d } \in {\mathbb{Z}}\left[ \left\{ x_ { d } {~\mathrel{\Big|}~}d \divides n \right\} \right],
\end{align*}
<span>`{=html}

which, if we write $x = [x_i]_{i\in P}$ (the *Witt components of $x$*), yields a map `
<span class="math display">
\begin{align*}
w_{-}:W_P(R) \to R^P \\
x \mapsto [w_i(x)]_{i\in P}
\end{align*}
<span>`{=html}

where the $w_i(x)$ are referred to as the *ghost components* of $x$.

Given all of this, for any such $P$, we obtain a covariant endofunctor on ${\mathbb{Z}}{\hbox{-}}$algebras.
