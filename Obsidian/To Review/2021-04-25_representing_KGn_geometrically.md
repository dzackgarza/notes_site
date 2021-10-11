---
date: "2021-04-23T20:09"
---

-   [Representing $K(G, n)$ Geometrically](#representing-kg-n-geometrically)














\#classifying_spaces \#algebraic_topology

# Representing $K(G, n)$ Geometrically {#representing-kg-n-geometrically}

[(Summary of full material found here)](http://math.ucr.edu/home/baez/week151.html)

Starting with a low-dimensional example, using the fact that $K({\mathbb{Z}}, 2) = {\mathbb{CP}}^\infty = \varinjlim {\mathbb{CP}}^n$.

We want to make this into an abelian topological group, so let `
<span class="math display">
\begin{align*}
X = \left\{{{\mathbb{C}}\to {\mathbb{C}}\mathrel{\Big|}f~\text{is rational}}\right\}
\end{align*}
<span>`{=html}

Note that as a vector space, this is isomorphic to ${\mathbb{C}}^\infty$, and there is a way to topologize $X$ such that this is a homeomorphism as well.

Then let `
<span class="math display">
\begin{align*}
\widehat{X} = \left\{{f \in X \mathrel{\Big|}f~\text{is nonzero}}\right\} / \left\{{f = \lambda f \mathrel{\Big|}\lambda \in {\mathbb{C}}^*}\right\}
\end{align*}
<span>`{=html}

which is the set of rational, nonzero, complex functions, modulo multiplication by constants. This is the "projectivization" of $X$, and is isomorphic to ${\mathbb{CP}}^\infty$ as abelian topological groups.

Then every function $f\in \widehat{X}$ has (say) $n$ zeros and $m$ poles, which corresponds to $n+m$ points in ${\mathbb{C}}\cup \infty = {\mathbb{CP}}^1 = S^2$. If we attach an integer to every point, we can encode the difference between zeros and poles while simultaneously encoding their orders. So we then define

`
<span class="math display">
\begin{align*}
Y_n = \left\{{\left\{{(z_i, k_i)}\right\}_{i=1}^n \mathrel{\Big|}\sum_{i=1}^n k_i = 0}\right\}\subset {\mathbb{CP}}^1 \times{\mathbb{Z}}
\end{align*}
<span>`{=html}

in which each element is a collections of $n$ points on the Riemann sphere, each with an integer attached, such that these integers sum to zero.

Then any rational complex function $f: {\mathbb{C}}\to {\mathbb{C}}$ with a total of $n$ combined zeros and poles can be uniquely recovered as some $y\in Y_n$, so we have

`
<span class="math display">
\begin{align*}
\widehat{X} \cong \cup_{n=1}^\infty Y_n
\end{align*}
<span>`{=html}

In other words, we perform the following procedure: each rational function has a finite number of zeros and poles, so we imagine these as points on the Riemann sphere, each with an integer attached such that the sum of these integers equals zero.

Then, we imagine wiggling these functions continuously - this induces movement of the points on the sphere. When any two points coincide, they "coalesce" and their correspdoning integer labels are added together.

We thus envision points in $K({\mathbb{Z}}, 2) = {\mathbb{CP}}^\infty$ as collections of "particle-antiparticle" swarms on $S^2$:

There are two immediate generalizations:

-   First, replace $S^2$ with $S^n$ to obtain a corresponding picture for $K({\mathbb{Z}}, n)$
-   Then, replace ${\mathbb{Z}}$ with an arbitrary abelian group. We then require that the aggregate word formed by all of the points multiples to the identity, and that coaslescing corresponds to multiplication of elements.

This yields a geometric picture for $K(G, n)$ for any abelian group $G$.
