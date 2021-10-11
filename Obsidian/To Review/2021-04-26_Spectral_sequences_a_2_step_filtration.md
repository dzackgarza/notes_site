---
date: 2021-04-26
tags:
- Algebraic Topology
---

-   [A 2 Step Filtration](#a-2-step-filtration)
    -   [Goal](#goal)
    -   [Setup: Space and Filtration](#setup-space-and-filtration)
-   [Setup: Spectral Sequence](#setup-spectral-sequence)
-   [Computation of Pages](#computation-of-pages)
    -   [$E_{-1}$](#e_-1)
    -   [$E_0$](#e_0)
    -   [$E_1$](#e_1)
    -   [$E_2$](#e_2)














\#spectral_sequences \#algebraic_topology

# A 2 Step Filtration

## Goal

We want to explicitly consider all of the objects, maps, and differentials in a particular spectral sequence arising from a space that admits a filtration that terminates in two steps. There are several concrete examples that should fit into this framework:

-   $0 \hookrightarrow S^k \hookrightarrow S^n$ for any $k < n$
-   $0 \hookrightarrow S^n \hookrightarrow{\mathbb{CP}}^n$
-   $0 \hookrightarrow{\mathbb{RP}}^n \hookrightarrow S^n$
    -   Using $S^n$ as a double cover of ${\mathbb{RP}}^n$

## Setup: Space and Filtration

Let $X$ be a space and let $A\subset X$ be a subspace, inducing the inclusion $A\xrightarrow{i} X$, so we have the following inclusions of spaces:

`
<span class="math display">
\begin{align*}0 \hookrightarrow A \hookrightarrow B\end{align*}
<span>`{=html}

Then consider applying the "chain functor" $C_*(\cdot): \textbf{Top} \to\textbf{Ab}$ that sends a space $X$ to a singular chain complex `
<span class="math display">
\begin{align*}C_*(X) \coloneqq\cdots \xrightarrow{{\partial}_{i-1}} C_i(X) \xrightarrow{{\partial}_i} C_{i+1}(X) \xrightarrow{{\partial}_{i+1}} \cdots\end{align*}
<span>`{=html}

Applying this functor to the above inclusion induces an inclusion of chain complexes:

$0 \hookrightarrow C_*(A) \hookrightarrow C_*(X)$

We regard this as a two step filtration on $C^*(X)$ by making the following identifications:

-   $F_0C_*(X) \coloneqq C_*(X)$
-   $F_1C_*(X) \coloneqq C_*(A)$
-   $F_2C_*(X) \coloneqq 0$

And we obtain the primary object of interest for this spectral sequence:

$0 = F_2C_*(X) \hookrightarrow F_1C_*(X) \hookrightarrow F_0C_*(X) = C_*(X)$

This process is roughly summarized in the following diagram: `
<span class="math display">
\begin{align*}
\begin{CD}
0 @>>\hookrightarrow> A @>i>\hookrightarrow> X \\
@VVV @VVC_*(\cdot)V @VVV\\
0 @>>\hookrightarrow> C_*(A) @>i_*>\hookrightarrow> C_*(X)\\
@| @| @|\\
F_2C_*(X) @>>\hookrightarrow> F_1C_*(X) @>i_*>\hookrightarrow> F_0C_*(X)
\end{CD}
\end{align*}
<span>`{=html}

# Setup: Spectral Sequence

A few definitions to recall:

$G_iC_*(X) \coloneqq\frac{F_iC_*(X)}{F_{i+1}C_*(X)}$

$E_0^{p,q} = G_pC_{p+q}(X)$

$E_1^{p,q} = H(E_0^{p,q}, d_0)$

# Computation of Pages

## $E_{-1}$ {#e_-1}

Not standard usage, here I consider the "$E_{-1}$ page" to be simply a presentation of the double complex itself. The formula works out to be something like $E_{-1}^{p,q} = F_pC_q(X)$

`
<span class="math display">
\begin{align*}
\begin{array}{l:r|cccc}
q= n &\hspace{4em} 0 & F_0C_n(X) &  F_1C_n(X) &  F_2C_n(X) \\
\vdots & \vdots & \vdots & \vdots \\
q=3 &0 &  F_0C_3(X) & F_1C_3(X) &  F_2C_3(X) \\
q=2 &0 &  F_0C_2(X) & F_1C_2(X) &  F_2C_2(X) \\
q=1 &0 & F_0C_1(X) & F_1C_1(X) &  F_2C_1(X) \\
q=0 &0 & F_0C_0(X) &  F_1C_0(X) & F_2C_0(X) \\
\hline \\
q=-1 &0 & 0 & 0 & 0 \\
q-2 &0 & 0 & 0 & 0 \\
\\\hdashline\\
p = -2 & p=-1& p=0 & p=1 & p=2 \\
\end{array}
\end{align*}
<span>`{=html}

For clarity, we unpack definitions here to show how the actual original chain complexes sit inside of this page: `
<span class="math display">
\begin{align*}
\begin{array}{l:r|cccc}
q= n &\hspace{4em} 0 & C_n(X) &  C_n(A) &  0 \\
\vdots & \vdots & \vdots & \vdots \\
q=3 &0 &  C_3(X) & C_3(A) &  0 \\
q=2 &0 &  C_2(X) & C_2(A) &  0 \\
q=1 &0 & C_1(X) & C_1(A) &  0 \\
q=0 &0 & C_0(X) &  C_0(A) & 0 \\
\hline \\
q=-1 &0 & 0 & 0 & 0 \\
q-2 &0 & 0 & 0 & 0 \\
\\\hdashline\\
p = -2 & p=-1& p=0 & p=1 & p=2 \\
\end{array}
\end{align*}
<span>`{=html}

Focusing on the area $p,q >= -1$, we use the fact that the chain complexes come with natural boundary maps to define the differentials $d_{-1}\coloneqq{\partial}_n: C_n(X) \to C_{n-1}(X)$. `
<span class="math display">
\begin{align*}
\begin{CD}
0 @<<< 0 @<<< 0 @<<< 0 \\
@VVV @VVV @VVV @VVV \\
0 @<<< C_n(X) @<<i_*< C_n(A) @<<< 0 \\
@VVV @VV{\partial}_nV @VV {\left.{{{\partial}_n}} \right|_{{A}} } V @VVV \\
0 @<<< C_{n-1}(X) @<<i_*< C_{n-1}(A) @<<< 0 \\
@VVV @VV{\partial}_{n-1}V @VV {\left.{{{\partial}_{n-1}}} \right|_{{A}} } V @VVV \\
0 @<<< C_{n-2}(X) @<<i_*< C_{n-2}(A) @<<< 0 \\
@VVV @VVV \vdots @VVV \vdots@VVV\\
0 @<<< C_2(X) @<<i_*< C_2(A) @<<< 0 \\
@VVV @VV{\partial}_{2}V @VV {\left.{{{\partial}_2}} \right|_{{A}} } V @VVV \\
0 @<<< C_1(X) @<<i_*< C_1(A) @<<< 0 \\
@VVV @VV{\partial}_{1}V @VV {\left.{{{\partial}_1}} \right|_{{A}} } V @VVV \\
0 @<<< C_0(X) @<<i_*< C_0(A) @<<< 0 \\
@VVV @VV{\partial}_{0}V @VV {\left.{{{\partial}_0}} \right|_{{A}} } V @VVV \\
0 @<<< 0 @<<< 0 @<<< 0 \\
\end{CD}
\end{align*}
<span>`{=html}

## $E_0$ {#e_0}

Here we use the following formulas/facts:

-   $G_iC_*(X) \coloneqq\frac{F_iC_*(X)}{F_{i+1}C_*(X)}$
-   $E_0^{p,q} \coloneqq G_pC_{p+q}(X)$
-   $C_n(X, A) \coloneqq\frac{C_n(X)}{C_n(A)}$
    -   This can be done because there is a SES $0 \to C_*(A) \to C_*(X) \to\frac{C_*(X)}{C_*(A)} \to 0$ Then since ${\partial}_n : C_n(X) \to C_{n-1}(X)$ has the property that ${\partial}_n(C_*(A)) = C_*(A)$, it factors through the quotient $\frac{C_*(X)}{C_*(A)}$ to yield a map $\widehat{{\partial}}_n: \frac{C_n(X)}{C_n(A)} \to\frac{C_{n-1}(X)}{C_{n-1}(A)}$. Shorten notation by calling $\frac{C_*(X)}{C_*(A)} \coloneqq C_*(X, A)$ the relative chain complex; this yields relative homology with respect to $\widehat{{\partial}}$, i.e. $H_n(X,A) \coloneqq\frac{\ker {\partial}_n}{\operatorname{im}{\partial}_{n+1}} \subset C_n(X, A)$.

which explicitly yields `
<span class="math display">
\begin{align*}
G_0C_*(X) = \frac{F_0C_*(X)}{F_1C_*(X)} = \frac{C_*(X)}{C_*(A)} \coloneqq C_*(X, A) \\
G_1C_*(X) = \frac{F_1C_*(X)}{F_2C_*(X)} = \frac{C_*(A)}{ 0 } = C_*(A) \\
G_2C_*(X) = \frac{0}{0} = 0
\end{align*}
<span>`{=html} $E_0^{p,q} \coloneqq G_pC_q(X)$

$C_n(X, A) \coloneqq\frac{C_n(X)}{C_n(A)}$

`
<span class="math display">
\begin{align*}
\begin{array}{l:r|cccc}
q= n &\hspace{4em} 0 & G_0C_n(X) &  G_1C_{n+1}(X) &  0 \\
\vdots & \vdots & \vdots & \vdots \\
q=3 &0 &  G_0C_3(X) & G_1C_4(X) &  0 \\
q=2 &0 &  G_0C_2(X) & G_1C_3(X) &  0 \\
q=1 &0 & G_0C_1(X) & G_1C_2(X) &  0 \\
q=0 &0 & G_0C_0(X) &  G_1C_1(X) & 0 \\
\hline \\
q=-1 &0 & 0 & G_1C_0(X) & 0 \\
q-2 &0 & 0 & 0 & 0 \\
\\\hdashline\\
p = -2 & p=-1& p=0 & p=1 & p=2 \\
\end{array}
\end{align*}
<span>`{=html}

Which unpacks as `
<span class="math display">
\begin{align*}
\begin{array}{l:r|cccc}
q= n &\hspace{4em} 0 & \frac{F_0C_n(X)}{F_1C_n(X)} &  \frac{F_1C_{n+1}(X)}{F_2C_{n+1}(X)} &  0 \\
\vdots & \vdots & \vdots & \vdots \\
q=3 &0 &  \frac{F_0C_3(X)}{F_1C_3(X)} & \frac{F_1C_4(X)}{F_2C_4(X)} &  0 \\
q=2 &0 & \frac{F_0C_2(X)}{F_1C_2(X)} & \frac{F_1C_3(X)}{F_2C_3(X)} &  0 \\
q=1 &0 &\frac{F_0C_1(X)}{F_1C_1(X)} & \frac{F_1C_2(X)}{F_2C_2(X)} &  0 \\
q=0 &0 & \frac{F_0C_0(X)}{F_1C_0(X)} &  \frac{F_1C_1(X)}{F_2C_1(X)} & 0 \\
\hline \\
q=-1 &0 & 0 & \frac{F_1C_0(X)}{F_2C_0(X)} & 0 \\
q-2 &0 & 0 & 0 & 0 \\
\\\hdashline\\
p = -2 & p=-1& p=0 & p=1 & p=2 \\
\end{array}
\end{align*}
<span>`{=html}

Which further unpacks as `
<span class="math display">
\begin{align*}
\begin{array}{l:r|cccc}
q= n &\hspace{4em} 0 & \frac{C_n(X)}{C_n(A)} & \frac{C_{n+1}(A)}{0} &  0 \\
\vdots & \vdots & \vdots & \vdots \\
q=3 &0 &  \frac{C_3(X)}{C_3(A)} &\frac{C_4(A)}{0} &  0 \\
q=2 &0 & \frac{C_2(X)}{C_2(A)} & \frac{C_3(A)}{0} &  0 \\
q=1 &0 &\frac{C_1(X)}{C_1(A)} &\frac{C_2(A)}{0} &  0 \\
q=0 &0 & \frac{C_0(X)}{C_0(A)} &  \frac{C_1(A)}{0} & 0 \\
\hline \\
q=-1 &0 & 0 & \frac{C_0(A)}{0} & 0 \\
q-2 &0 & 0 & 0 & 0 \\
\\\hdashline\\
p = -2 & p=-1& p=0 & p=1 & p=2 \\
\end{array}
\end{align*}
<span>`{=html}

Which by definition is `
<span class="math display">
\begin{align*}
\begin{array}{l:r|cccc}
q= n &\hspace{4em} 0 & C_n(X, A) & C_{n+1}(A) &  0 \\
\vdots & \vdots & \vdots & \vdots \\
q=3 &0 & C_3(X, A) & C_4(A) &  0 \\
q=2 &0 & C_2(X, A) &  C_3(A)&  0 \\
q=1 &0 &C_1(X, A) &C_2(A) &  0 \\
q=0 &0 &C_0(X, A) &  C_1(A) & 0 \\
\hline \\
q=-1 &0 & 0 & C_0(A) & 0 \\
q-2 &0 & 0 & 0 & 0 \\
\\\hdashline\\
p = -2 & p=-1& p=0 & p=1 & p=2 \\
\end{array}
\end{align*}
<span>`{=html}

For any pair $(X, A)$, there is a long exact sequence

$\cdots H_n(A) \xrightarrow{} H_n(X) \xrightarrow{} H_n(X, A) \xrightarrow{\delta_n} H_{n-1}(A) \cdots$ `
<span class="math display">
\begin{align*}
\begin{CD}
0 @<<< 0 @<<< 0 @<<< 0 \\
@VVV @VVV @VVV @VVV \\
0 @<<< C_n(X, A) @<<i_*< C_{n+1}(A) @<<< 0 \\
@VVV @VV\delta_nV @VV {\left.{{\delta_n}} \right|_{{A}} } V @VVV \\
0 @<<< C_{n-1}(X, A) @<<i_*< C_{n}(A) @<<< 0 \\
@VVV @VV\delta_{n-1}V @VV {\left.{{\delta_{n-1}}} \right|_{{A}} } V @VVV \\
0 @<<< C_{n-2}(X, A) @<<i_*< C_{n-1}(A) @<<< 0 \\
@VVV @VVV \vdots @VVV \vdots@VVV\\
0 @<<< C_1(X, A) @<<i_*< C_2(A) @<<< 0 \\
@VVV @VV\delta_{2}V @VV {\left.{{\delta_2}} \right|_{{A}} } V @VVV \\
0 @<<< C_0(X, A) @<<i_*< C_1(A) @<<< 0 \\
@VVV @VV\delta_{1}V @VV {\left.{{\delta_1}} \right|_{{A}} } V @VVV \\
0 @<<< 0 @<<i_*< C_0(A) @<<< 0 \\
@VVV @VV\delta_{0}V @VV {\left.{{\delta_0}} \right|_{{A}} } V @VVV \\
0 @<<< 0 @<<< 0 @<<< 0 \\
\end{CD}
\end{align*}
<span>`{=html}

## $E_1$ {#e_1}

## $E_2$ {#e_2}
