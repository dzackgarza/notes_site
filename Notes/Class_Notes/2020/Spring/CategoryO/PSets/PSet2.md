---
title: Problem Set 2
---

# Humphreys 1.5

**Proposition:**
Let $\lieg = \liesl(2, \CC)$ and $M(\lambda), M(\mu)$ Verma modules.
Then $M(\lambda) \tensor M(\mu)$ may not lie in $\OO$.


**Proof:**

Let $M(\lambda), M(\mu)$ be arbitrary Verma modules with highest weight vectors $v = 1 \tensor 1_\lambda, w = 1\tensor 1_\mu$ respectively.
We can then consider the weight of $v \tensor w$ in $N\definedas M(\lambda) \tensor_{\CC} M(\mu)$:

\begin{align*}
h\cdot(v\tensor w) 
&= h\cdot v \tensor w + v \tensor h\cdot w \\
&= \lambda(h)v \tensor w + v \tensor \mu(h) w\\
&= \lambda(h)\qty{ v \tensor w } + \mu(h)\qty{v\tensor w} \\
&= \qty{ \lambda(h) + \mu(h) } \qty{v\tensor w}
.\end{align*}

Letting $\lieg = \liesl(2, \CC)$, so $\lambda, \mu \in \lieh^* \cong \CC$, the claim is that it is possible for $N$ to *not* be finitely-generated as a $U(\lieg)\dash$module.

Let $\theset{y, h, x}$ be the usual basis for $\lieg$, for which $U(\lieg)$ has the usual associated PBW basis.
We can use the fact that $\dim M(z) < \infty \iff z \in \ZZ^+$, so if we pick $\mu, \lambda \in \ZZ^{\leq 0}$ we have weight space decompositions

\begin{align*}
M(\lambda) &= \bigoplus_{i\in \ZZ^+} M(\lambda)_{\lambda - 2i} \definedas \bigoplus_{\substack{i\in \ZZ^+ \\ \lambda_i \definedas \lambda - 2i}} M(\lambda)_{\lambda_i} \\
M(\mu) &= \bigoplus_{j\in \ZZ^+} M(\mu)_{\mu - 2j} \definedas \bigoplus_{\substack{j\in \ZZ^+ \\ \mu_i \definedas \mu - 2j}} M(\mu)_{\mu_j} 
\end{align*}

where we can explicitly identify $\CC\dash$bases $M(\lambda)_{\lambda_i} = \spanof_\CC\theset{y^i~v^+}$ and $M(\mu)_{\mu_i} = \spanof_\CC\theset{y^i w^+}$ where $v^+, w^+$ are maximal weight vectors for $M(\lambda), M(\mu)$ respectively.

By the initial observation, this yields a weight space decomposition for $N$ given by 

\begin{align*}
N = M(\lambda) \tensor_\CC M(\mu) = \bigoplus_{\nu \in \ZZ^{+}} \qty{ \bigoplus_{\lambda_i + \mu_i = \nu} M(\lambda)_{\lambda_i} \tensor_\CC M(\mu)_{\mu_i}  } \definedas \bigoplus_{\nu \in \ZZ^{+}} N_\nu
.\end{align*}

Since each weight space $N_\nu = \spanof_\CC\theset{y^i v^+ \tensor y^j w^+ \suchthat i+j=\nu}$ has dimension $p_2(\nu)$, the (combinatorial) number of partitions of $\nu$ into two parts. 
In particular, $p_2(\nu)$ takes on arbitrarily large values as $\nu$ ranges over $\ZZ^+$, and thus $N$ has weight spaces of arbitrarily large dimension.

Now suppose toward a contradiction that $N$ is finitely generated as a $U(\lieg)\dash$module, say by the $n$ generators $\theset{m_1, \cdots, m_n}$.
Then the $\CC\dash$vector spaces spanned by the $m_i$ is of dimension no larger than $n^2$ -- however, picking $\nu > n^2$ yields $p_2(\nu) > n^2$, and thus there is a $\CC\dash$subspace of dimension greater than $n^2$ by the above argument -- a contradiction.


$\qed$

# Humphreys 1.9

**Proposition:**
Let $\psi: Z(\lieg) \to S(\lieh)$ be the twisted Harish-Chandra homomorphism.
Then $\psi$ is independent of the choice of a simple system in $\Phi$.

> Hint: any simple system has the form $w\Delta$ for some $w\in W$.

**Proof:**

For a given simple root system $\Delta_1 = \theset{\alpha_1, \cdots, \alpha_\ell}$, we can choose a PBW basis $\theset{h_i^{t_j} \mid 1\leq i \leq \ell, j\in \ZZ^+}$ for $U(\lieh)$.
Then if $z\in \mcz(\lieg)$, we can write $z = \sum_{i, j} c_{ij} h_i^{t_j}$ for some $c_{ij} \in \CC$.
We can then identify the (twisted) Harish-Chandra morphism as follows:

\begin{align*}
\psi: \mcz(\lieg) &&\mapsvia{\xi} U(\lieh) &&\to S(\lieh) = \CC[\theset{h_i}] = P(\lieh^*) &&\mapsvia{\tau_\rho} \CC[\theset{h_i}] \\
z &&\mapsto z = \sum_{i, j} c_{ij} h_i^{t_j} &&\mapsto \qty{ \lambda \mapsto \sum_{i, j} c_{ij} \lambda(h_i)^{t_j} }  &&\mapsto   \psi(z) = \sum_{i, j} \qty{\lambda - \rho}(h_i)^{t_j} 
,\end{align*}

where $\xi$ is the Harish-Chandra morphism and $\tau_p$ is the twist sending $f(\lambda)$ to $f(\lambda - \rho)$.
We thus find that $\psi$ explicitly depends only on $\rho$ and potentially the basis $\theset{h_i^{t_j}}$

The claim is that if an alternative simple root system $\Delta_2 = \theset{\alpha_1', \cdots, \alpha_\ell'}$ is chosen, $\psi(z)$ does not change.
By the hint, there exists some uniform $w\in W$ such that $w\alpha_i = \alpha_i'$.

We can denote the positive root system induced by $\Delta_1$ as $\Phi_1^+$ and similarly $\Delta_2$ induces $\Phi_2^+$.
From this, a priori we may have two distinct weyl vectors:

\begin{align*}
\rho_1 &= \sum_{\beta \in \Phi_1^+} \beta \\
\rho_2 &= \sum_{\beta' \in \Phi_2^+} \beta' \\
.\end{align*}

However, since $W$ acts transitively on the Weyl chambers, it only permutes the elements in such a sum, and since $\Delta_1 = w\Delta_2$ we in fact obtain $\rho_1 = \rho_2 \definedas \rho$.

> Not entirely sure how to show this, or if checking $\rho$ and basis-invariance is sufficient here.
