-   [Sunday, September 13](#sunday-september-13)
    -   [General Notes](#general-notes)
    -   [1.a](#a)
    -   [3.a](#a-1)
    -   [3.b](#b)
    -   [4.a](#a-2)
    -   [4.c](#c)














Sunday, September 13
====================

Tags: \#advice \#undergraduate

General Notes
-------------

-   Say what you're assuming at the start of the proof.

    -   If flipping logic and not using a direct proof (contradiction, contrapositive, etc), then signpost/announce it near the beginning of the proof.
    -   Examples: for $P\implies Q$,
        -   Direct proof: "Suppose $P \cdots$"

        -   Contradiction: "Suppose toward a contradiction $P$ but not $Q\cdots$"

            (Usually show $\lnot P$. If you show $Q$, a direct proof might be simpler.)

        -   Contrapositive: "Suppose by contrapositive that $\lnot Q$ holds, $\cdots$"

-   Put any important equations (i.e. major steps of the proof) on their own lines or in displaymath environments.

-   Use some whitespace to separate parts of the proof and increase readability.

-   Remember that limits of sequences need not exist, but liminfs/limsups always do

    (just may be $\pm \infty$).

-   Try to avoid abbreviating the names of major theorems (example: "AP" can stand for many results, not just the Archimedean property!)

-   It's not generally true that $a\leq M \implies {\left\lvert {a} \right\rvert} \leq M$, e.g. take $a=-1 \leq M = 0$. This only holds for $a\geq 0$.

-   A generic set **may not** contain its inf or sup. Example: $\inf \left\{{1\over n}\right\} = 0$ and $0\not\in \left\{{1\over n}\right\}$, or $\sup \left\{{1-{1\over n}}\right\} = 1$ with $1\not \in \left\{{1-{1\over n}}\right\}$.

-   If there exists some element of a set or sequence with a given property, try to say where it comes from and why the property holds for it.

-   Similarly, if a property holds for all elements of a set or sequence, try to say why.

-   The crux of many proofs are certain inequalities, so try to justify every inequality that appears.

-   If you use a theorem, be sure to mention it by its full name.

-   Useful counterexamples:

    -   $x_n = (-1)^n$
    -   Literal lists of numbers: $[0, 1, 0, 2, \cdots]$.

1.a
---

::: {.proof .proofenv title="$A \\implies B$"}
```{=tex}
\hfill
```
-   Suppose $\left\{{a_n}\right\}$ is not bounded above.
-   Then any $k\in {\mathbb{N}}$ is not an upper bound for $\left\{{a_n}\right\}$.
-   So choose a subsequence $a_{n_k} > k$, then by order-limit laws, `
    <span class="math display">
    \begin{align*}  
    a_{n_k} > k \implies \liminf_{k\to\infty} a_{n_k} > \liminf_{k\to\infty} k = \infty
    .\end{align*}
    <span>`{=html}
:::

::: {.proof .proofenv title="$\\not A \\implies \\not B$"}
```{=tex}
\hfill
```
-   Suppose $\left\{{a_n}\right\}$ is bounded by $M$, so $a_n < M < \infty$ for all $n\in {\mathbb{N}}$.

-   Then if $\left\{{a_{n_k}}\right\}$ is a subsequence, we have $a_{n_k} \in \left\{{a_n}\right\}$, so $a_{n_k} < M$ for all $k\in {\mathbb{N}}$.

-   But then `
    <span class="math display">
    \begin{align*}  
    a_{n_k} < M \implies \limsup_{k\to\infty} a_{n_k} \leq M 
    ,\end{align*}
    <span>`{=html}

-   Now note that if $\lim_{k\to\infty} a_{n_k}$ exists, `
    <span class="math display">
    \begin{align*}  
    \lim_{k\to\infty} a_{n_k} < \limsup_{k\to\infty} a_{n_k} \leq M < \infty
    ,\end{align*}
    <span>`{=html} so every subsequence is bounded and thus can not converge to $\infty$.
:::

3.a
---

::: {.proof .proofenv title="Using definition (i)"}
```{=tex}
\hfill
```
-   Suppose $x_n \leq M$ for all $n$, we will show that every subsequential limit is also bounded by $M$.

-   Let `
    <span class="math display">
    \begin{align*}S \coloneqq\left\{{x\in {\mathbb{R}}{~\mathrel{\Big|}~}x \text{ is a subsequential limit of } \left\{{x_n}\right\}}\right\}\end{align*}
    <span>`{=html} be the set of subsequential limits.

    -   Note that $\inf S \coloneqq\liminf_{n\to\infty} x_n$ by definition (i).

-   Let $\left\{{x_{n_k}}\right\}\in S$ be an arbitrary convergent subsequence (since we are only concerned about subsequences with well-defined limits).

-   Then for every $k$ we have $x_{n_k} \in \left\{{x_n}\right\}$, so `
    <span class="math display">
    \begin{align*}  
    {\left\lvert {x_{n_k}} \right\rvert} \leq M
    .\end{align*}
    <span>`{=html}

-   By order limit laws, `
    <span class="math display">
    \begin{align*}  
    {\left\lvert {x_{n_k}} \right\rvert} \leq M \implies 
    \lim_{k\to\infty} {\left\lvert {x_{n_k}} \right\rvert} \leq M
    ,\end{align*}
    <span>`{=html}

-   Since the map $x\mapsto {\left\lvert {x} \right\rvert}$ is continuous, using the sequential definition of continuity we can pass the limit through the absolute value to obtain `
    <span class="math display">
    \begin{align*}  
    {\left\lvert { \lim_{k\to\infty} x_{n_k}} \right\rvert} \leq M
    .\end{align*}
    <span>`{=html}

-   Since the subsequence was arbitrary, we find that $M$ is an upper bound for $S$ and so $\sup S \leq M$.

-   But `
    <span class="math display">
    \begin{align*}  
    \inf S \leq \sup S \leq M \implies \inf S \leq M
    .\end{align*}
    <span>`{=html}
:::

::: {.proof .proofenv title="Using definition (ii)"}
```{=tex}
\hfill
```
-   Suppose ${\left\lvert {x_n} \right\rvert} \leq M$ for every $n$, we will directly show that ${\left\lvert {\lim_{n\to\infty}\inf_{k\geq n} x_n} \right\rvert} \leq M$.\

-   By order-limit laws, for every fixed $n$ we have `
    <span class="math display">
    \begin{align*}  
    {\left\lvert {x_{n}} \right\rvert} \leq M \iff -M \leq x_{n} \leq M \implies -M \leq \inf_{k>n} {x_{k}} \leq M 
    ,\end{align*}
    <span>`{=html} where we've used the fact that $x_n \geq -M$ for all $n$ implies that $\inf_{k\geq n} x_k \geq -M$.

-   Again applying order-limit laws, `
    <span class="math display">
    \begin{align*}  
    -M \leq \inf_{k\geq n} {x_{k}} \leq M  \implies 
    -M \leq 
    \lim_{n\to\infty} \inf_{k\geq n} {x_{k}} \leq M 
    \iff 
    {\left\lvert {\lim_{n\to\infty} \inf_{k\geq n} x_{n_k}  } \right\rvert} \leq M
    .\end{align*}
    <span>`{=html}
:::

3.b
---

::: {.proof .proofenv title="Using definition (i)"}
```{=tex}
\hfill
```
> Note that here we define $S$ to be the set of all subsequential limits of $\left\{{x_n}\right\}$ and `
> <span class="math display">
> \begin{align*}\liminf_n x_n \coloneqq\inf S.\end{align*}
> <span>`{=html}

-   Suppose toward a contradiction that $\beta < \liminf_{n} x_n$ **but** there does not exist any $N$ such that $n\geq N \implies x_n > \beta$.

-   Then for all $N$ there exists an $n> N$ with $x_n \leq \beta$, so the set `
    <span class="math display">
    \begin{align*}B \coloneqq\left\{{n \in {\mathbb{N}}{~\mathrel{\Big|}~}x_n \leq \beta}\right\}\end{align*}
    <span>`{=html} is countably infinite.

-   Then by Bolzano-Weierstrass, since $B$ is bounded it contains a convergent subsequence $x_{n_k}$ which satisfies `
    <span class="math display">
    \begin{align*}  
    x_{n_k} \leq \beta \quad \forall k \implies L\coloneqq\lim_{k\to\infty} x_{n_k} \leq \beta
    \end{align*}
    <span>`{=html} where we've used order-limit laws.

-   We now have $L\in S$, a subsequential limit satisfying $L\leq \beta$ and since $\inf S$ is a lower bound for $S$, `
    <span class="math display">
    \begin{align*}  
    \inf S \leq L \leq \beta
    .\end{align*}
    <span>`{=html} which contradicts $\beta < \liminf_n x_n$.
:::

::: {.proof .proofenv title="Using definition (ii)"}
```{=tex}
\hfill
```
> Note that here we define `
> <span class="math display">
> \begin{align*}  
> \liminf_n x_n \coloneqq\lim_{n\to\infty} S_n {\quad \operatorname{where } \quad} S_n \coloneqq\inf \left\{{x_k {~\mathrel{\Big|}~}k\geq n}\right\}
> .\end{align*}
> <span>`{=html}

-   Write $L\coloneqq\lim_{n\to\infty} S_n$ and suppose $\beta < L$.

-   Then we have `
    <span class="math display">
    \begin{align*}  
    \forall{\varepsilon}>0,\, \exists N{\quad \operatorname{such that} \quad} n\neq N \implies {\left\lvert {S_n - L} \right\rvert} < {\varepsilon}
    .\end{align*}
    <span>`{=html}

-   Since $\beta < L \iff L-\beta > 0$, we can set ${\varepsilon}\coloneqq L-\beta$ to produce an $N$ such that `
    <span class="math display">
    \begin{align*}  
    n\geq N \implies {\left\lvert {L-S_n} \right\rvert} < L-\beta \iff \beta - L < S_n - L < L-\beta
    .\end{align*}
    <span>`{=html}

-   Just taking the first part of this composite inequality we have `
    <span class="math display">
    \begin{align*}  
    n\geq N \implies \beta - L < S_n - L \iff \beta < S_n \coloneqq\inf_{k\geq n} x_k \leq x_n
    ,\end{align*}
    <span>`{=html} supplying the $N$ for which $n\geq N \implies \beta < x_n$ as desired.
:::

::: {.proof .proofenv title="Using definition (ii), alternative"}
```{=tex}
\hfill
```
-   Suppose toward a contradiction that $\beta < \liminf_n x_n$ **but** there is no $N$ such that $n\geq N \implies x_n> \beta$.

-   Then for all $N$ there exists an $n$ with $x_n \leq \beta$, so if we form the set `
    <span class="math display">
    \begin{align*}  
    B_n \coloneqq\left\{{k\in {\mathbb{N}}{~\mathrel{\Big|}~}k\geq n \text{ and } x_k \leq \beta}\right\}
    ,\end{align*}
    <span>`{=html} then $B_n$ is countably infinite for every $n$

-   But then $B_n\subseteq \left\{{k\in {\mathbb{N}}{~\mathrel{\Big|}~}k\geq n}\right\}$ for every $n$ implies that `
    <span class="math display">
    \begin{align*}  
    \inf_{k\geq n} x_k \leq \inf_{k\in B_n} x_k \leq \beta \qquad \forall n
    ,\end{align*}
    <span>`{=html} since an infimum over a larger set can only get smaller.

-   Applying order-limit laws, we then have `
    <span class="math display">
    \begin{align*}  
    \inf_{k\geq n} \leq \beta \,\,\forall n \implies \lim_{n\to \infty}\inf_{k\geq n} x_n \leq \beta
    ,\end{align*}
    <span>`{=html} but this contradicts $\liminf_{n} x_n > \beta$.
:::

4.a
---

::: {.proof .proofenv}
```{=tex}
\hfill
```
-   Suppose $\left\{{x_n}\right\}$ is bounded and $\limsup {\left\lvert {x_n} \right\rvert} = 0$.
-   Then using the supremum definition, $\lim_{n\to\infty} \sup_{k\geq n} {\left\lvert {x_k} \right\rvert} = 0$.
-   Note that `
    <span class="math display">
    \begin{align*}  
    \lim_{n\to\infty} x_n = 0 \iff \forall {\varepsilon}\quad \exists N \text{ such that } n\geq N \implies {\left\lvert {x_n} \right\rvert} < {\varepsilon}
    .\end{align*}
    <span>`{=html}
-   So let ${\varepsilon}>0$ be arbitrary.
-   By the definition of the limit appearing in the $\limsup$, there exists an $N_0$ such that `
    <span class="math display">
    \begin{align*}n\geq N_0 \implies \sup_{k\geq n} {\left\lvert {x_k} \right\rvert} < {\varepsilon}.\end{align*}
    <span>`{=html}
-   But then taking $N = N_0$ in the first equation yields the result, since `
    <span class="math display">
    \begin{align*}  
    n\geq N_0 \implies {\left\lvert {x_n} \right\rvert} \leq \sup_{k\geq n} {\left\lvert {x_k} \right\rvert} < {\varepsilon}
    .\end{align*}
    <span>`{=html}
:::

4.c
---

::: {.proof .proofenv}
```{=tex}
\hfill
```
-   Note that $-1 \leq \sin(x) \leq 1$ and $\sin(x) = \pm 1 \iff x = 2k\pi \pm {\pi \over 2}$.
-   Since $\pi$ is irrational, $\sin(n)$ will never be of this form, so $-1 < \sin(n) < 1$.
-   Taking floors, we have $-1 \leq {\left\lfloor \sin(n) \right\rfloor} \leq 0$, which in fact means that $\sin(n) \in \left\{{-1, 0}\right\}$ can only take on one of two values.
-   The set of subsequential limits is then just $\left\{{-1, 0}\right\}$.
-   **Claim**: $\limsup {\left\lfloor \sin(n) \right\rfloor} = 0$.
    -   It suffices to show that ${\left\lfloor \sin(n) \right\rfloor} = 0$ infinitely often
    -   But note that there is an integer in any interval of the form $[2k\pi, 2k\pi + \pi]$ for $k\in {\mathbb{N}}$, since it is of length $\pi > 1$.
    -   In these intervals, $0 < \sin(n) < 1$, and so ${\left\lfloor \sin(n) \right\rfloor} = 0$, and there infinitely many such intervals.
    -   So form a subsequence $x_{n_k} = {\left\lfloor \sin(n_k) \right\rfloor}$ by choosing $n_k$ to be any integer in
-   **Claim**: $\liminf {\left\lfloor \sin(n) \right\rfloor} = -1$.
    -   By the exact same argument applied to intervals of the form $[3k\pi,3k\pi + \pi]$ where $-1 < \sin(n) < 0$, we find that ${\left\lfloor \sin(n) \right\rfloor} = -1$ infinitely often.
:::
