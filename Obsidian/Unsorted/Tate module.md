---
aliases:
- l-adic Tate module, adelic Tate module
- Tate
date: 2021-04-26
---

-   [Motivation](#motivation)














References: [[Number%20theory.md | Number%20theory.html]]

# Motivation

-   Studying [[moduli%20stack%20of%20abelian%20varieties.md | moduli%20stack%20of%20abelian%20varieties.html]] $E$.
-   The most important object is the **$\ell{\hbox{-}}$adic [[Tate module | Tate%20module.html]] of $E$**, $T_\ell(E)$.
-   It is able to detect the ability to lift $E/k$ to the [[ring%20of%20integers.md | ring%20of%20integers.html]] $O_k$.
-   Also captures the [isogeny](isogeny) class of $E$ over a finite field, and the number of points over all finite fields.
-   Fails spectacularly when $E/{\mathbb{F}}_{p^s}$ is a [supersingular](supersingular) elliptic curve, in which case taking $\ell = p$ yields $T_p E = 0$.
-   Leads to considering the [[group%20scheme.md | group%20scheme.html]] $E[\ell^n]$, which is [étale](étale) when $\ell \neq p$, but $E[p^n]$ is never étale.
-   Leads to replacing $T_p E$ with the directed system $\left\{{E[p^n]}\right\}_n$.

Define the l-adic Tate module: `
<span class="math display">
\begin{align*}
T_\ell E := \varprojlim_{n} E[\ell^n]
\end{align*}
<span>`{=html} and the adelic Tate module `
<span class="math display">
\begin{align*}
T_\infty E ;= \varprojlim_{n} E[n]
\end{align*}
<span>`{=html}

![[_attachments/Pasted%20image%2020211005011225.png]]
