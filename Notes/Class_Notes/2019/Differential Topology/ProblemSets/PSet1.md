---
title: Problem Set 1
---

# Problem 1

We'll use the following definition of a smooth map between manifolds:

> Definition: Let $M, N$ be smooth manifolds of dimensions $m,n$ respectively and $f: M \to N$ a continuous map. Then $f$ is *smooth* iff for every $p \in M$, there exists a chart $(U, \phi)$ with $p \in U$ and a chart $(V, \psi)$ with $f(p) \in V$ such that $f(U) \subseteq V$, and the induced map 
  $$
  \overline f: \phi(U) \to \psi(V) \\ 
  \overline f = \psi \circ f \circ \phi\inv
  $$ 
  is smooth as a map from $\RR^m \to \RR^n$.

We will thus show that both $\tilde f: \CP^1 \to \CP^1$ and $\tilde f\inv: \CP^1 \to \CP^1$ are both smooth bijections, from which we can conclude that $f$ is a diffeomorphism.

So identify $0 = [0, 1]$ and $\infty = [1, 0]$ in $\CP^1$ and choose the following charts on $\CP^1$ in terms of homogeneous coordinates:
$$
(U, \phi) \definedas \\
U = \CP^1 \setminus \theset{\infty} = \theset{[x, y] \mid x,y \in \CC,~ y\neq 0}  \\
\phi: \CP^1 \to \CC \\
[x, y] \mapsto x/y. \\ \\
\phi\inv: \CC \to \CP^1 \\
z \mapsto [z, 1]. \\
$$

and 
$$
(V, \psi) \definedas \\
V = \CP^1 \setminus \theset{0} = \theset{[x, y] \mid x,y \in \CC,~ x\neq 0}\\
\psi: \CP^1 \to \CC \\
[x, y] \mapsto y/x. \\ \\
\psi\inv: \CC \to \CP^1 \\
z \mapsto [1, z]. \\
$$

Now define
$$
\tilde f: \CP^1 \to \CP^1 \\
p \mapsto \begin{cases}
p, & p = \infty \\ 
p + c & \text{otherwise}
\end{cases}
$$

We then need to determine a formula for $\tilde f$ in homogeneous coordinates. We compute

\begin{align*}
p \in U \implies p = [a, b],~a,b,\in \CC, &~b\neq 0 \\
\implies \tilde f([a, b]) \Bigm|_{U}
&= (\phi\inv \circ f \circ \phi)([a, b]) \\
&= (\phi\inv \circ f)(\frac a b) \\
&= \phi\inv(\frac a b + c) \\
&= [\frac a b + c, 1] \\
&= [a + bc, b]
\end{align*}

and
\begin{align*}
p \in V \implies p = [a, b],~a,b,\in \CC, &~a\neq 0 \\
\implies \tilde f([a, b]) \Bigm|_{V} 
&= (\psi\inv \circ f \circ \psi)([a, b]) \\
&= (\psi\inv \circ f)(\frac b a) \\
&= (\psi \inv)(\frac b a + c) \\
&= [1, \frac b a + c] \\
&= [a, b + ac]
\end{align*}

Since $\CP^1 = U \union V$, we can note that if $p\in M$ then either $p\in U$ or $p\in V$. Moreover, $p\in U \implies \tilde f(p) \in \tilde f(U) = U$, since $p = [a, b]$ with $b\neq 0 \implies f(p) = [a + bc, b]$ where $b\neq 0$ as well, so $\tilde f(p) \in U$ and $\tilde f(U) \subseteq U$. Similarly, $\tilde f(V) \subseteq V$. So it only remains to check that the following two compositions are smooth:

- $f_U: \CC \to \CC, f_U \definedas \phi \circ \tilde f \circ \phi\inv$, and
- $f_V: \CC \to \CC, f_V \definedas \psi \circ \tilde f \circ \psi\inv$.

We can compute
\begin{align*}
f_U(z) &\definedas (\phi \circ \tilde f \circ \phi\inv) (z)\\ 
&= (\phi \circ \tilde f) ([z, 1]) \\
&= \phi([z + c, 1]) \\
&= z + c
\end{align*}

\begin{align*}
f_V(z) &\definedas (\phi \circ \tilde f \circ \phi\inv) (z) \\
&= (\phi \circ \tilde f) ([1, z]) \\
&= \phi([1, z+c]) \\
&= z + c
\end{align*}

And $\dd{}{z} f_U(z) = \dd{}{z}f_V(z) = 1$, so these are smooth maps on their domains.

**To Summarize**:
Let $p\in M$ be arbitrary. The map $\tilde f$ will be smooth iff there are charts $(U_\alpha, \varphi_\alpha: U_\alpha \to \CC), (U_\beta, \varphi_\beta: U_\beta \to \CC)$ with $U_\alpha, \beta \subseteq \CP^1$ such that

- $p\in U_\alpha$,
- $\tilde f(p) \in U_\beta$,
- $\tilde f(U_\alpha) \subseteq U_\beta$
- $\varphi_\beta \circ \tilde f \circ \varphi_\alpha\inv$ is smooth.

By cases, 

- If $p \neq \infty$, then choose $U_\alpha = U_\beta = U$ and $\varphi_\alpha = \varphi_\beta = \phi$. Then $\tilde f(p) \neq \infty$, so $\tilde f(U) \subseteq U$, and the composition $\phi \circ \tilde f \circ \phi \inv (z) = z + c$ is smooth.
- If $p = \infty$, then choose $U_\alpha = U_\beta = V$ and $\varphi_\alpha = \varphi_\beta = \psi$. Then $\tilde f(p) \neq 0$, so $\tilde f(V) \subseteq V$, and the composition $\psi \circ \tilde f \circ \psi \inv (z) = z + c$ is again smooth.

> Note: I'm almost certain this argument is *not* correct, but I do not know why.

# Problem 2

Following the example in Lee's Smooth Manifolds (pp. 63), we want to show the following:

\begin{align*}
d\left(\psi \circ \varphi^{-1}\right)_{\varphi(p)} \left(
  \frac{\partial}{\partial x^{i}} \Biggm|_{\varphi(p)} 
  \right) = 
  \left.\frac{\partial {y}^{j}}{\partial x^{i}}(\varphi(p)) 
  \frac{\partial}{\partial {y}^{j}}\right|_{\psi(p)}
\end{align*}

where 

- $(U, \phi)$ and $(V, \psi)$ are charts containing $p$, 
- $\psi \circ \phi\inv: \phi(U) \to \psi(V)$ is the corresponding change of coordinates,
- $\theset{\dd{}{x_i}}_{i=1}^n$ are the vectors spanning $T_pM$,
- $\theset{\frac{\partial}{\partial x^{i}} \Bigm|_{\varphi(p)}}_{i=1}^n$ are the basis vectors spanning $T\varphi(U \intersect V) \cong T\RR^n$ at the point $\varphi(p) \in \varphi(U \intersect V)$, and
- $\theset{\frac{\partial}{\partial {y}^{j}} \bigm|_{\psi(p)}}_{i=1}^n$ are the basis vector spanning $T\psi(U\intersect V)$ at the point $\psi(p) \in \psi(U \intersect V)$.

Define 
$$
F: \varphi(U) \to \psi(V) \\
F(v) = (\psi \circ \phi\inv)(v)
$$

which, at the point $\varphi(p)$, induces a map
$$
dF_p: T_{\varphi(p)}\RR^n \to T_{\psi(p)}\RR^n \\
dF(v) = d(\psi \circ \varphi\inv)(v)
$$

since $F(\varphi(p)) = \psi(p)$.

Identifying elements in the tangent space as derivations, we first note that given any $F: M_1 \to M_2$, at a point $p\in M_1$ we define

\begin{align}
dF_p: T_p M_1 &\to T_{F(p)}M_2 \nonumber \\
dF_p(v) \actson (f: M_2 \to \RR) &\definedas v(f \circ F: M_1 \to \RR) 
\end{align}

which is well-defined because $v\in T_p M_1$ means that $v: C^\infty(M_1) \to \RR$ is a derivation, and $f\circ F \in C^\infty(M_1)$, so it makes sense to evaluate $v$ on this composition.

We can then compute a formula for $F$ in coordinates by computing its action on smooth functions $f: M \to \RR$ where $f \in C^\infty(M)$:

\begin{align*}
dF_p (\dd{}{x_i} \Bigm|_{\varphi(p)} ) \actson f 
&\definedas \dd{}{x_i} (f \circ F) &\text{by equation (1)}\\
&= \sum_k \dd{f}{y_k}(F(p)) ~~\dd{F_k}{x_i}(p) &\text{by the chain rule} \\
&= \sum_k \dd{F_k}{x_i}(p) ~~\dd{f}{y_k}(F(p)) &\\
&\definedas \left(
  \sum_k \dd{F_k}{x_i}(p) ~~\dd{}{y_k}\Bigm|_{F(p)}
  \right) \actson f
\end{align*}

But then we can write 
\begin{align*}
\dd{}{x_i} \Bigm|_{p}
&\definedas d(\varphi\inv) \Bigm|_{\varphi(p)} \left(\dd{}{x_i} \Bigm|_{\varphi(p)}\right) \\
&= d(\id \circ \varphi\inv) \Bigm|_{\varphi(p)} \left(\dd{}{x_i} \Bigm|_{\varphi(p)}\right)\\
&= d((\psi\inv\circ \psi) \circ \varphi\inv) \Bigm|_{\varphi(p)} \left(\dd{}{x_i} \Bigm|_{\varphi(p)}\right)\\
&= d(\psi\inv) \Bigm|_{\psi(p)} \circ ~d(\psi \circ \varphi\inv) \Bigm|_{\varphi(p)} \left(\dd{}{x_i} \Bigm|_{\varphi(p)}\right) \quad\text{by Lee Proposition 3.6b}\\
&= d(\psi\inv) \left( \sum_k \dd{F_k}{x_i}(p) ~~\dd{}{y_k}\Bigm|_{F(p)} \right) \quad\text{by previous computation} \\
&\definedas
\sum_k \dd{F_k}{x_i}(p) ~~\dd{}{y_k}\Bigm|_{p}
\end{align*}

which is what we wanted to show. $\qed$

# Problem 3

> Note: Throughout this question, we will identify $\theset{f: C^\infty(M) \to \RR} \cong C^\infty(M)\dual$ as vector spaces.

Let $M, N$ be smooth manifolds and $f: M \to N$ be a fixed smooth map, and define a map
$$
\phi: C^\infty(N) \cross TM \to \RR \\
(h, v) \mapsto v(h \circ f)
$$

## Part 1

Using the derivation definition, we can identify this assignment as a map
$$
\phi: C^\infty(N) \cross C^\infty(M)\dual \to \RR \\
(h, v) \mapsto v(h \circ f)
$$

We'd like to show that this yields a well-defined element of $T_p M = C^\infty(M)$. So for some fixed $v \in T_pM$, define a map
$$
\phi_v: C^\infty(N) \to \RR \\
h \mapsto v(h \circ f),
$$

which will be an element of $TM$ if it is a derivation. For $x\in N$, we have

\begin{align*}
\phi_v(h_1\cdot h_2)(x) &\definedas v( (h_1 h_2) \circ f)(x) \\
&= v((h_1 \circ f) (h_2 \circ f))(x) \\
&= v(h_1 \circ f)(x) \cdot h_2(x) + h_1(x) \cdot v(h_2 \circ f)(x) \quad \text{since $v$ is a derivation} \\
&= \phi_v(h_1)(x) \cdot h_2(x) + h_1(x) \cdot \phi_v(h_2)(x),
\end{align*}

so this is indeed a derivation.

## Part 2

Given $c(t): I \to M$, we define the map
$$
\psi: TM \to TN \\
v \definedas [c(t)] \mapsto v_c \definedas [(f \circ c)(t)]
$$

where $c_1 \sim c_2 \iff \dd{}{t}c_1(t)\Bigm|_{t=0} = \dd{}{t}c_2(t)\Bigm|_{t=0}$. We can then associate $[c(t)]$ with the derivation 

$$
D_c: C^\infty(M) \to \RR \\
g \mapsto \dd{}{t}(g \circ c)(t)\Bigm|_{t=0}
$$

and similarly we can define
$$
D_{f\circ c}: C^\infty(N) \to \RR \\
h \mapsto \dd{}{t}(h \circ (f\circ c))(t)\Bigm|_{t=0}
$$

and the question now is whether $v_c(h\circ f) = \dd{}{t}(h \circ (f\circ c))(t)\Bigm|_{t=0}$, where $v_c \in TN$ is the tangent vector obtained by applying $\psi$. 

Thus the preimage of $v_c$ under $\psi$ is a class $[c(t)]$, and by definition we have

\begin{align*}
v(h \circ f) &= \dd{}{t} ((h \circ f) \circ c)(t) \Bigm|_{t=0} \\
&= \dd{}{t} (h \circ (f \circ c))(t) \Bigm|_{t=0} \\
&= D_{f\circ c}(h),
\end{align*}

which is what we wanted to show.

## Part 3

> Not sure how to proceed.

# Problem 4

## Part 1

Let $V = \RR^n$ as a vector space, let $g$ be a nonsingular matrix, and define a map
\begin{align*}
\phi: V &\to V\dual \\
v &\mapsto (\phi_v: w \mapsto \inner{v}{gw})
\end{align*}

The claim is that $\phi$ is a natural isomorphism. It is clearly linear (following from the linearity of the inner product and matrix multiplication), so it remains to check that it is a bijection.

To see that $\ker \phi = 0$, so that only the zero gets sent to the zero map, we can suppose that $x \in \ker \phi$. Then $\phi_x: w \to \inner{x}{gw}$ is the zero map. But the inner product is nondegenerate by definition, i.e. $\inner{x}{y} = 0 ~~\forall y \implies x = 0$. So $x$ could only have been the zero vector to begin with.

But $\dim V = \dim V\dual$, so any injective linear map will necessarily be surjective as well.

## Part 2

Let $g: TM \tensor TM \to \RR$ be a metric, and consider the tangent space $TM$. By definition, the cotangent space $T^*_pM = (T_p M)\dual$

# Problem 5

## Part 1

Let $A \in \mathrm{Mat}(n, n)$ be a positive definite $n\times n$ matrix, so 
$$
\inner{v}{Av} > 0 \quad \forall v\in \RR^n,
$$
and $B\in \mathrm{Math}(n, n)$ be positive semi-definite, so
$$
\inner{v}{Bv} \geq 0 \quad \forall v\in \RR^n.
$$

We'd like to show
$$
\inner{v}{(A + B)v} \geq 0 \quad \forall v\in \RR^n,
$$

which follows directly from
\begin{align*}
\inner{v}{(A + B)v} &= \inner{v}{Av} + \inner{v}{Bv} \\
&> \inner{v}{Av} + 0 \\
&\geq 0 + 0 \\
&= 0.
\end{align*}

## Part 2

Let $M$ be a smooth manifold with tangent bundle $TM$ and a maximal smooth atlas $\mathcal{A}$. Choose a covering of $M$ by charts $\mathcal C = \theset{(U_i, \phi_i) \mid i\in I} \subseteq \mathcal A$ such that $M \subseteq \union_{i\in I} U_i$.Then choose a partition of unity $\theset{f_i}_{i\in I}$ subordinate to $\mathcal C$, so for each $i$ we have
$$
f_i: M \to I \\
\forall p\in M, \quad \sum_{i\in I} f_i(p) = 1
$$

In each copy of $\phi_i(U_i) \cong \RR^n$, let $g^i$ be the Euclidean metric given by the identity matrix, i.e. $g^i_{jk} \definedas \delta_{jk}$. We then have
$$
g^i: T\phi_i(U_i) \tensor T\phi_i(U_i) \to \RR \\
(\partial x_i, \partial x_j) \mapsto \begin{cases} 1 & i = j \\ 0 & \text{otherwise} \end{cases}
$$
which is defined for pairs of vectors in $T \phi_i(U_i) \cong T \RR^n = \mathrm{span}_\RR \theset{\partial x_i}_{i=1}^n$ on basis vectors as the Kronecker delta and extended linearly.

Note that each coordinate function $\phi_i: U_i \to \RR^n$ induces a map $\tilde \phi_i: TU_i \to T\RR^n$.

Let $G^i$ be the pullback of $g^i$ along these induced maps $\tilde \phi_i$, so 
$$
G^i: T U_i \tensor TU_i \to \RR \\
G^i(x, y) \definedas \left( \left(\tilde \phi_i\right)^*g^i\right) (x, y) \definedas g^i(\tilde \phi_i(x), \tilde \phi_i(y))
$$

Then, for a point $p \in M$, define the following map:
$$
g_p: T_pM \tensor T_pM \to \RR\\
(x, y) \mapsto \sum_{i\in I} f_i(p) G^i(x, y).
$$

The claim is that $g_p$ defines a metric on $M$, and thus the family $\theset{g_p \mid p \in M}$ yields a tensor field and thus a Riemannian metric on $M$. If we define the map
$$
g: M \to (TM \tensor TM)\dual \\
p \mapsto g_p
$$

then $g$ can be expressed as 
$$g = \sum_{i\in I} f_i G^i.$$

We can check that this is positive definite by considering $x\in T_p M$ and computing
\begin{align*}
g(x, x) &\definedas g_p(x, x) \\
&= \sum_{i\in I} f_i(p) ~G^i(v, v) \\ 
&= \sum_{i\in I} f_i(p) ~g^i(\tilde \phi_i(x), \tilde \phi_i(y)),
\end{align*}

where each term is positive semi-definite, and *at least one term* is positive definite because $\sum_i f_i(p)$ must equal 1. By part 1, this means that the entire expression is positive definite, so $g$ is a metric. $\qed$

# Problem 6

## Part 1

Let $M = S^2$ as a smooth manifold, and consider a vector field on $M$,
$$
X: M \to TM
$$
We want to show that there is a point $p\in M$ such that $X(p) = 0$.

Every vector field on a compact manifold without boundary is complete, and since $S^2$ is compact with $\del S^2 = \emptyset$, $X$ is necessarily a complete vector field.

Thus every integral curve of $X$ exists for all time, yielding a well-defined flow 
$$
\phi: M \cross \RR \to M
$$

given by solving the initial value problems
$$
\dd{}{s} \phi_s(p) \Bigm|_{s = t} = X(\phi_t(p)),\\
\phi_0(p) = p
$$
at every point $p\in M$.

This yields a one-parameter family 
$$
\phi_t: M \to M \in \mathrm{Diff}(M, M).
$$ 

In particular, $\phi_0 = \id_M$, and $\phi_1 \in \mathrm{Diff}(M, M)$. Moreover $\phi_0$ is homotopic to $\phi_1$ via the homotopy

\begin{align*}
H: M \cross I &\to M \\
(p, t) &\mapsto \phi_t(p).
\end{align*}

We can now apply the Lefschetz fixed-point theorem to $\phi_0$ and $\phi_1$. For an arbitrary map $f: M \to M$, we have
$$
\Lambda(f) = \sum_k \Tr\left( f_* \Bigm|_{H_k(X; \QQ)} \right).
$$

where $f_*: H_*(X; \QQ) \to H_*(X; \QQ)$ is the induced map on homology, and 

$$
\Lambda(f) \neq 0 \iff f\text{ has at least one fixed point.}
$$

In particular, we have
\begin{align*}
\Lambda(\id_M) &= \sum_k \Tr(\id_{H_k(X; \QQ)}) \\
&= \sum_k \dim H_k(X; \QQ) \\
&= \chi(M),
\end{align*}
the Euler characteristic of $M$.

Since homotopic maps induce equal maps on homology, we also have $\Lambda(\phi_1) = \chi(M)$.

Since 
$$
H_k(S^2) = \begin{cases}
\ZZ & k = 0, 2 \\
0 & \text{otherwise}
\end{cases}
$$

we have $\chi(S^2) = 2 \neq 0$, and thus $\phi_1$ has a fixed point $p_0$, thus

$\dd{}{t} \phi_t(p_0)\Bigm|_{t=1}$
so 
\begin{align*}
\phi_t(p) =& p  &\\
\implies \dd{}{t} \phi_t(p) =& \dd{}{t} p = 0 &\text{by differentiating wrt $t$}\\
\implies \dd{}{t} \phi_t(p) \Bigm|_{t = 1} &= 0 \Bigm|_{t=0} = 0 &\text{by evaluating at $t=0$}\\
\implies X(\phi_1(p_0)) \definedas \dd{}{t} \phi_t(p) \Bigm|_{t = 1} &= 0 &\text{by definition of $\phi_1$} 
\end{align*}

so $X(\phi_1(p_0)) = 0$, which shows that $p_0$ is a zero of $X$. So $X$ has at least one zero, as desired. $\qed$

## Part 2

The trivial bundle

```{=latex}
\begin{center}
\begin{tikzcd}
\RR^2 \arrow[rr] &  & S^2 \cross \RR^2 \arrow[dd]                         \\
                 &  &                                                     \\
                 &  & S^2 \arrow[uu, "s" description, dotted, bend right]
\end{tikzcd}
\end{center}
```

has a nowhere vanishing section, namely 
$$
s: S^2 \to S^2 \cross \RR^2 \\
\vector x \to (\vector x, [1, 1])
$$

which is the identity on the $S^2$ component and assigns the constant vector $[1, 1]$ to every point. 

However, as part 1 shows, the bundle
```{=latex}
\begin{center}
\begin{tikzcd}
\RR^2 \arrow[rr] &  & TS^2 \arrow[dd]                                     \\
                 &  &                                                     \\
                 &  & S^2 \arrow[uu, "s" description, dotted, bend right]
\end{tikzcd}
\end{center}
```

can *not* have a nowhere vanishing section. $\qed$