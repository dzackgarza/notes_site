---
date: '2021-04-26'
tags:
- Unfiled
---

-   [Spectral Sequence of a Filtration](#spectral-sequence-of-a-filtration)














Spectral Sequence of a Filtration
=================================

Suppose we are given a chain complex $(C^{-}, d^{-})$ and we want to compute its homology. We assume that $C^{<0} = 0$ (where we use homological indexing and $d^{-}$ is of degree $-1$) along with an ascending, bounded filtration $F^{-}C^{-}$ which can be written as

`
<span class="math display">
\begin{align*}0 =F^0C^{-}\subseteq F^1C^{-}\subseteq \ldots \subseteq F^{p-1}C^{-}\subseteq F^pC^{-}= C^{-}\end{align*}
<span>`{=html}

and satisfies $\bigcup_{i} F^i C^{-}= C^{-}$ and $\bigcap_{i} C^{-}= \left\{{0}\right\}$.

Then take the associated graded complex, defined by

`
<span class="math display">
\begin{align*}
G^i C^{-}= \frac{F^i C^{-}}{F^{i-1} C^{-}}
\end{align*}
<span>`{=html}

This yields a collection of short exact sequences of the form `
<span class="math display">
\begin{align*}
0 \to F^{i-1} C^{-}\to F^i C^{-}\to G^i C^{-}\to 0
\end{align*}
<span>`{=html}

We now verify three facts:

1.  Each $F^i C^{-}$ is a chain complex (restrict the differential).
2.  Each $G^i C^{-}$ is a chain complex (differential well-defined on quotient).
3.  $F^{-}$ induces a filtration on $H_*(C^{-})$, which we'll denote $F^{-}H_*(C^{-})$.

Given the induced filtration on homology, we can take its associated graded complex:

`
<span class="math display">
\begin{align*}
F^i H_j(C^{-}) = \frac{?}{?} = \left\{{\alpha \in H_j(C^{-}) \mathrel{\Big|}\alpha = [x] \text{ for some } x \in F^iC^j}\right\}
\end{align*}
<span>`{=html}

Which yields a collection of short exact sequences `
<span class="math display">
\begin{align*} 0 \to F^{i-1}H_j(C^{-}) \to F^iH_j(C^{-}) \to G^iH_j(C^{-}) \to 0\end{align*}
<span>`{=html}

And since $F^pC^{-}= C^{-}$, we have $F^pH_j(C^{-}) = H_j(C^{-})$. Assuming all sequences split and all extensions are unique, we can rewrite the left hand side:

`
<span class="math display">
\begin{align*}
\begin{align}
F^pH_j(C^{-}) &= F^{p-1}H_j(C^{-}) \oplus G^pH_j(C^{-}) \\
&= F^{p-2}H_j(C^{-}) \oplus G^{p-1}H_j(C^{-}) \oplus G^pH_j(C^{-}) \\
&\cdots \\
&= \bigoplus_{0\leq i \leq p}G^iH_j(C^{-})
\end{align}
\end{align*}
<span>`{=html}

So if we are able to compute each $G^iH_j(C^{-})$, we can recover the desired homology.

We proceed by computing $H_j(G^i C^{-})$ instead, which we hope will be related to $G^i H_j (C^{-})$.

By an earlier argument, we know that there exists induced differentials on the associated graded complex

`
<span class="math display">
\begin{align*}
d_{i,j}: G^i C^j \to G^{i} C^{j-1}
\end{align*}
<span>`{=html}

We thus build the 0 page of our spectral sequence by defining

`
<span class="math display">
\begin{align*}E^0_{p,q} = G^p C^{p+q}\end{align*}
<span>`{=html}

with a defined differential

`
<span class="math display">
\begin{align*}d^0_{i,j}: E^0_{i,j} \to E^0_{i-1, j}\end{align*}
<span>`{=html}

and arranging these in columns, yielding the following situation

Now, since each $G^i C^{-}$ is a chain complex, we can take the homology with respect to these differentials, so we define

`
<span class="math display">
\begin{align*}
E^1_{i,j} = \frac
{\ker\left( d^0_{i,j}: E^0_{i,j} \to E^0_{i-1, j} \right)}
{\operatorname{im}\left(d^0_{i+1,j}: E^0_{i+1,j} \to E^0_{i,j} \right)} \coloneqq H_{i+j}(G^i C^{-})
\end{align*}
<span>`{=html}

Which yields the following $E^1$ page:

Which by definition is

We now claim that there is a differential

`
<span class="math display">
\begin{align*}
d_1^{i,j}: H_n(G^i C^{-}) \to H_{n-1}(G^{i-1}C^{-})
\end{align*}
<span>`{=html}
