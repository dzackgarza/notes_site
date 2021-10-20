












# Preface

See [Youtube Video Playlist](https://www.youtube.com/watch?v=JGLuFkqXIpI&list=PLA0xtXqOUji8fjQysx4k8a6h-hOZ7x5ue).

# Notation

```{=tex}
\todo[inline]{Todo: definitions.}
```
-   \( U({\mathbb{Z}}/k), ({\mathbb{Z}}/k)^{\times} \) denotes the group of
-   \( {\mathbb{Z}}/k \): the integers modulo \( k \).
-   \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu, \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Q}}\mkern-1.5mu}\mkern 1.5mu \): the algebraic closures of \( {\mathbb{Z}}, {\mathbb{Q}} \) respectively.
-   \( K, L \) will generally denote fields, and most likely number fields (so extensions of \( {\mathbb{Q}} \)) \( K/{\mathbb{Q}} \) will denote that \( K \) is a field extension of \( {\mathbb{Q}} \), and \( K/L/{\mathbb{Q}} \) denotes a tower of extensions \( K/L \) and \( L/{\mathbb{Q}} \).
-   \( [K: {\mathbb{Q}}] \) is the degree of the extension \( K/{\mathbb{Q}} \), i.e. the dimension of \( K \) as a \( {\mathbb{Q}}{\hbox{-}} \)vector space.
-   \( K(\alpha) \) will denote adjoining an element \( \alpha \in \mkern 1.5mu\overline{\mkern-1.5muK\mkern-1.5mu}\mkern 1.5mu \) to \( K \) to get a field extension \( K(\alpha)/K \).
-   \( {\mathbb{Z}}_K \coloneqq\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \cap K \), the algebraic integers in \( K \).
-   \( \operatorname{ff}(K) \) is the fraction field of \( K \).
-   \( {\mathsf{Ab}}, \mathsf{{\mathbb{Z}}}{\hbox{-}}\mathsf{Mod} \): the category of abelian groups.
-   \( \zeta_n \) will denote a primitive \( n \)th root of unity, so e.g. for \( n \) prime one can take \( \zeta_n \coloneqq e^{2\pi i \over n} \).
-   \( H\leq G \): \( H \) is a subgroup of \( G \).

# Diophantine Equations (Lec. 1, Thursday, January 14)

## Intro/Logistics

See website for notes on books, intro to class.

-   Youtube Playlist: <https://www.youtube.com/playlist?list=PLA0xtXqOUji8fjQysx4k8a6h-hOZ7x5ue>

-   Free copies of textbook: <https://www.dropbox.com/sh/rv5j222kn74bjhm/AABZ1qcR1rOnpaBsa5CL3P_Ea?dl=0&lst=>

Paul's description of the course:

> This course is an introduction to arithmetic beyond \( {\mathbb{Z}} \), specifically arithmetic in the ring of integers in a finite extension of \( {\mathbb{Q}} \). Among many other things, we'll prove three important theorems about these rings:
>
> -   Unique factorization into ideals.
> -   Finiteness of the group of ideal classes.
> -   Dirichlet's theorem on the structure of the unit group.

## Motivation

::: {.remark}
The main motivation: solving **Diophantine equations**, i.e. polynomial equations over \( {\mathbb{Z}} \).
:::

::: {.example title="of a Diophantine equation"}
Consider \( y^2 = x^3 + x \).

::: {.claim}
\( (x, y) = (0, 0) \) is the only solution.
:::

To see this, write \( y^2 = x(x^2+1) \), which are relatively prime, i.e. no \( D\in {\mathbb{Z}} \) divides both of them. Why? If \( d \divides x \) and \( d \divides x+1 \), then \( d\divides (x^2+1) + (-x) = 1 \). It's also the case that both \( x^2+1 \) and \( x^2 \) are squares (up to a unit), so \( x^2, x^2 + 1 \) are consecutive squares in \( {\mathbb{Z}} \). But the gaps between squares are increasing: \( 1, 2, 4, 9, \cdots \). The only possibilities would be \( x=0, y=1 \), but in this case you can conclude \( y=0 \).
:::

::: {.example title="Fermat"}
Consider \( y^2 = x^3-2 \).

::: {.claim}
\( (3, \pm 5) \) are the only solutions.
:::

Rewrite
\[
x^3 = y^2+2 &= (y+ \sqrt{-2})(y - \sqrt{-2}) \\ 
&\in
{\mathbb{Z}}[\sqrt{-2}] \coloneqq\left\{{a+b\sqrt{-2} {~\mathrel{\Big|}~}a,b,\in {\mathbb{Z}}}\right\} \leq {\mathbb{C}}
.\]
This is a subring of \( {\mathbb{C}} \), and thus at least an integral domain. We want to try the same argument: showing the two factors are relatively prime. A little theory will help here:

::: {.definition title="Norm Map"}
\[
N \alpha \coloneqq\alpha\mkern 1.5mu\overline{\mkern-1.5mu\alpha \mkern-1.5mu}\mkern 1.5mu&& \text{for } \alpha\in {\mathbb{Z}}[ \sqrt{-2} ]
.\]
:::

::: {.lemma title="?"}
Let \( \alpha, \beta \in {\mathbb{Z}}[\sqrt{-2}] \). Then

1.  \( N(\alpha \beta) = N(\alpha) N(\beta) \)

2.  \( N( \alpha) \in {\mathbb{Z}}_{\geq 0} \) and \( N(\alpha) = 0 \) if and only if \( \alpha= 0 \).

3.  \( N(\alpha) = 1 \iff \alpha\in R^{\times} \)
:::

::: {.proof title="?"}
1.  Missing, see video (10:13 AM).

2.  \( N(\alpha) = a^2 + 2b^2 \geq 0 \), so this equals zero if and only if \( \alpha= \beta= 0 \)

3.  Write \( 1 = \alpha\mkern 1.5mu\overline{\mkern-1.5mu\alpha\mkern-1.5mu}\mkern 1.5mu \) if \( N(\alpha) = 1 \in R^{\times} \). Conversely if \( \alpha\in R^{\times} \) write \( \alpha \beta = 1 \), then
    \[ 
    1 = N(1) = N(\alpha \beta) = N(\alpha ) N(\beta ) \in {\mathbb{Z}}_{\geq 0} 
    ,\]
    which forces both to be 1.
:::

::: {.claim}
The two factors \( y \pm \sqrt 2 \) are *coprime* in \( {\mathbb{Z}}[\sqrt{-2}] \), i.e. every common divisor is a unit.
:::

::: {.proof title="?"}
Suppose \( \delta\divides y\pm \sqrt{-2} \), then \( y + \sqrt{-2} = \delta \beta \) for some \( \beta\in {\mathbb{Z}}[\sqrt{-2}] \). Take norms to obtain \( y^2 + 2 = N \delta N \beta \), and in particular

-   \( N \delta y^2 +2 \)
-   \( \delta \divides (y+ \sqrt{-2} ) - (y - \sqrt{-2} ) = 2 \sqrt{-2} \) and thus \( N \delta \divides N(2 \sqrt{-2} ) = 8 \).

In the original equation \( y^2 = x^3-2 \), if \( y \) is even then \( x \) is even, and \( x^3 - 2 \equiv 0-2 \operatorname{mod}4 \equiv 2 \), and so \( y^2 \equiv 2 \operatorname{mod}4 \). But this can't happen, so \( y \) is odd, and we're done: we have \( N \delta\divides 8 \) which is even or 1, but \( N \delta\divides y^2 +2 \) which is odd, so \( N \delta = 1 \).
:::

We can identify the units in this ring:
\[
{\mathbb{Z}}[\sqrt{-2} ]^{\times}= \left\{{ a + b \sqrt{-2} {~\mathrel{\Big|}~}a^2 + 2b^2 = 1}\right\}
\]
which forces \( a^2 \leq 1, b^2 \leq 1 \) and thus this set is \( \left\{{\pm 1}\right\} \). So we have \( x^3 = ab \) which are relatively primes, so \( a,b \) should also be cubes. We don't have to worry about units here, since \( \pm 1 \) are both cubes. So e.g. we can write
\[
y + \sqrt{-2} = (a + b \sqrt{-2} )^3 = (a^3-6ab^2) + (3a^2b -2b^3) \sqrt{-2}
.\]
Comparing coefficients of \( \sqrt{-2} \) yields
\[ 1 = b(3a^2b - 2b^2) \in {\mathbb{Z}}\implies b \divides 1
,\]
and thus \( b\in {\mathbb{Z}}^{\times} \), i.e. \( b\in \left\{{\pm 1}\right\} \). By cases:

-   If \( b=1 \), then \( 1 = 3a^2 -2 \implies a^2 = 1 \implies a = \pm 1 \). So
    \[
    y = \sqrt{-2} = (\pm 1 + \sqrt{-2} )^3 = \pm 5 + \sqrt{-2}
    ,\]
    which forces \( y=\pm 5 \), the solution we already knew.

-   If \( b = -1 \), then \( 1 = -(3a^2 - 1) \) which forces \( 1=3a^2 \in {\mathbb{Z}} \), so there are no solutions.
:::

## Failure of Unique Factorization

::: {.example title="where unique factorization fails"}
Consider \( y^2 = x^3 - 26 \). Rewrite this as
\[
x^3 = y^2 + 26 = (y + \sqrt{-26} )(y - \sqrt{-26} )
,\]
then the same lemma goes through with \( 2 \) replaced by \( 26 \) everywhere where the RHS factors are still coprime. Setting \( y + \sqrt{-26} = (a + b \sqrt{-26} )^3 \) and comparing coefficients, you'll find \( b=1, a = \pm 3 \). This yields \( x=35, y=\pm 207 \). But there are more solutions: \( (x, y) = (3, \pm 1) \)! The issue is that we used unique factorization when showing that \( ab \) is a square implies \( a \) or \( b \) is a square (say by checking prime factorizations and seeing even exponents). In this ring, we can have \( ab \) a cube with *neither* \( a,b \) a cube, even up to a unit.
:::

::: {.question}
When does a ring admit unique factorization? Do you even *need* it?
:::

::: {.remark}
This will lead to a discussion of things like the **class number**, which measure the failure of unique factorization. In general, the above type of proof will work when the class number is 3!
:::

# Number Fields (Lec. 2,Tuesday, January 19)

## Embeddings

::: {.remark}
Today: Ch.2 of the book, "Cast of Characters". Note that all rings will be commutative and unital in this course.

Last time: looked at factorization in \( {\mathbb{Z}}[\sqrt 2], {\mathbb{Z}}[\sqrt{26}] \). Where do rings like this come from?
:::

::: {.definition title="Number Field"}
A **number field** is a subfield \( K \subseteq {\mathbb{C}} \) [^1] such that \( [K: {\mathbb{Q}}] < \infty \).
:::

::: {.example title="of number fields"}
Examples of number fields include

-   \( {\mathbb{Q}}[\sqrt[3]{2}] \),
-   \( {\mathbb{Q}}[\sqrt 2, \sqrt[5]{7}] \), or
-   \( {\mathbb{Q}}(\theta) \) where \( \theta \) is a root of \( x^5 - x - 1 \), which one can check is irreducible.

Note that the round vs. square brackets here won't make a difference, since we're adjoining *algebraic* numbers.
:::

::: {.proposition title="Degree equals number of embeddings for finite extensions"}
Let \( K_{/{\mathbb{Q}}} \) be a finite extension, say of degree \( n\coloneqq[K: {\mathbb{Q}}] \). Then there are \( n \) distinct embeddings [^2] of \( K \) into \( {\mathbb{C}} \)
:::

::: {.proof title="of proposition"}
We have \( K_{/{\mathbb{Q}}} \), which is necessarily separable since \( \operatorname{ch}({\mathbb{Q}}) = 0 \). By the primitive element theorem, we can write \( K = {\mathbb{Q}}(\theta) \) where \( \theta \) is a root of some degree \( n \) irreducible polynomial \( f(x) \in {\mathbb{Q}}[x] \). Since \( {\mathbb{C}} \) is algebraically closed, \( f \) splits completely over \( {\mathbb{C}} \) as
\[
f = \prod_{i=1}^n (x- \theta_i) 
\]
with each \( \theta_i \in {\mathbb{C}} \) distinct since \( f \) was irreducible and we're in characteristic zero. Then for each \( i \) there is an embedding \( K = {\mathbb{Q}}[\theta] \) given by
\[
\iota_i: {\mathbb{Q}}[\theta] &\hookrightarrow{\mathbb{C}}\\
g(\theta) &\mapsto g(\theta_i)
.\]
There are some easy things to check:

-   This is well-defined: elements in \( K \) are polynomials in \( \theta \) but they all differ by a multiple of the minimal polynomial of \( \theta \),
-   This is an injective homomorphism and thus an embedding, and
-   For distinct \( i \) you get distinct embeddings: just look at the image \( \iota_i(\theta) \), these are distinct numbers in \( {\mathbb{C}} \).
:::

::: {.definition title="Real and Nonreal embeddings"}
Let \( K_{/{\mathbb{Q}}} \) be a finite extension of degree \( n = [K : {\mathbb{Q}}] \). We'll say an embedding \( \sigma:K \to {\mathbb{C}} \) is **real** if \( \sigma(K) \subseteq {\mathbb{R}} \) , otherwise we'll say the embedding is **nonreal**.
:::

::: {.remark}
If \( \sigma \) is a nonreal, then \( \mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu \) is a nonreal embedding, so these embeddings come in pairs. As a consequence, the total number of embeddings is given by \( n = r_1 + 2r_2 \), where \( r_1 \) is the number of real embeddings and \( r_2 \) is the number of nonreal embeddings.
:::

::: {.example title="of computing the number of real and nonreal embeddings"}
Let \( K = {\mathbb{Q}}(\sqrt[3]{2}) \). Here \( n=3 \) since this is the root of a degree 3 irreducible polynomial. Using the proof we can find the embeddings: factor
\[
x^3 - 2 = (x - \sqrt[3]{2})(x - \omega \sqrt[3]{2}) (x - \omega^2 \sqrt[3]{2})
.\]
where \( \omega = e^{2\pi i / 3} \) is a complex cube root of unity. We can form an embedding by sending \( \sqrt[3]{2} \to \omega^j \sqrt[3]{2} \) for \( j=0,1,2 \). The case \( j=0 \) sends \( K \) to a subset of \( {\mathbb{R}} \) and yields a real embedding, but the other two will be nonreal. So \( r_1 = 1, r_2 = 1 \), and we have \( 3 = 1 + 2(1) \), which is consistent.
:::

## Algebraic Closures

::: {.remark}
We've only been talking about fields, where unique factorization is trivial since there are no primes. There are thus "too many" units in fields when compared to the rings we were considering before, so we'll restrict to subrings of fields. The question is: where is the arithmetic? Given a number field \( K \), we want a ring \( {\mathbb{Z}}_K \) that fits this analogy:

```{=tex}
\begin{tikzcd}
{\mathbb{Q}}\ar[dd] & \leadsto & K\ar[dd] \\
\\
{\mathbb{Z}}& \leadsto & {\mathbb{Z}}_K = ?
\end{tikzcd}
```
:::

::: {.definition title="Algebraic Numbers"}
Given \( \alpha\in {\mathbb{C}} \) we say \( \alpha \) is an **algebraic number** if and only if \( \alpha \) is algebraic over \( {\mathbb{Q}} \), i.e. the root of some polynomial in \( {\mathbb{Q}}[x] \).
:::

::: {.remark}
We know that if we define \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Q}}\mkern-1.5mu}\mkern 1.5mu\coloneqq\left\{{\alpha\in {\mathbb{C}}{~\mathrel{\Big|}~}\alpha \text{ is algebraic over } {\mathbb{Q}}}\right\} \), we can alternatively describe this as \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Q}}\mkern-1.5mu}\mkern 1.5mu= \left\{{ \alpha\in {\mathbb{C}}{~\mathrel{\Big|}~}[{\mathbb{Q}}(\alpha) : {\mathbb{Q}}] < \infty }\right\} \). This is convenient because it's easy to see that algebraic numbers are closed under sums and products, just using the ways degrees behave in towers.
:::

::: {.corollary title="Every number field is a subfield of $\\bar\\QQ$"}
\( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Q}}\mkern-1.5mu}\mkern 1.5mu\hookrightarrow{\mathbb{C}} \) is a subfield and every number field is a subfield of \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Q}}\mkern-1.5mu}\mkern 1.5mu \).
:::

::: {.remark}
These are still fields, so lets define some interesting subrings.
:::

::: {.definition title="$\\bar \\ZZ$ "}
Define \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu\coloneqq\left\{{ \alpha\in {\mathbb{C}}{~\mathrel{\Big|}~}\alpha\text{ is the root of a monic polynomial }f\in {\mathbb{Z}}[x]}\right\} \).
:::

::: {.theorem title="$\\bar \\ZZ$ is a ring"}
\( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) is a ring, and in fact a domain since it's a subring of \( {\mathbb{C}} \).
:::

::: {.remark}
We'll use an intermediate criterion to prove this:
:::

::: {.proposition title="Integrality Criterion"}
Let \( \alpha\in {\mathbb{C}} \) and suppose there is a finitely generated \( {\mathbb{Z}}{\hbox{-}} \)submodule of \( {\mathbb{C}} \) with \( \alpha M \subseteq M \neq 0 \). Then \( \alpha\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \), i.e. \( \alpha \) is the root of a monic polynomial with integer coefficients.
:::

::: {.proof title="of integrality criterion"}
Chasing definitions, take \( M \) and choose a finite list of generators \( \beta_1, \beta_2, \cdots, \beta_m \) for \( M \). Then \( \alpha M \subseteq M \implies \alpha \beta_i \in M \) for all \( M \), and each \( \alpha \beta_i \) is a \( {\mathbb{Z}}{\hbox{-}} \)linear combination of the \( \beta_i \) . I.e. we have
\[
\alpha 
\begin{bmatrix}
\beta_1 
\\
\vdots  
\\
\beta_n  
\end{bmatrix}
= 
\begin{bmatrix}
a_{11} & a_{12} & \cdots
\\
a_{21} &  a_{22} & 
\\
 \vdots &  &\ddots  
\end{bmatrix}
\begin{bmatrix}
\beta_1 
\\
\vdots  
\\
\beta_n  
\end{bmatrix}
\coloneqq A \vec{\beta}
,\]
where \( A \in \operatorname{Mat}(n\times m, {\mathbb{Z}}) \). We can rearrange this to say that
\[
\qty{ \alpha I - A} 
\begin{bmatrix}
\beta_1 
\\
\vdots  
\\
\beta_n  
\end{bmatrix}
=
\mathbf{0}
.\]
Not all of the \( \beta_i \) can be zero since \( M\neq 0 \), and thus \( \alpha I - A \) is singular and has determinant zero, so \( \operatorname{det}(x I - A)\Big|_{x=\alpha} = 0 \). We have
\[
x\operatorname{id}- A = 
\begin{bmatrix}
x - a_{1,1} &  & &
\\
&  x - a_{2, 2} & & 
\\
&  & \ddots &
\\
& &  & x - a_{m, m}
\end{bmatrix}
,\]
where the off-diagonal components are constants in \( {\mathbb{Z}} \) coming from \( A \). Taking the determinant yields a monic polynomial: the term of leading degree comes from multiplying the diagonal components, and expanding over the remaining minors only yields terms of smaller degree. So \( \operatorname{det}(x I - A) \in {\mathbb{Z}}[x] \) is monic.
:::

::: {.proof title="of theorem"}
We want to show that \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) is a ring, and it's enough to show that

-   \( 1\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \), which is true since \( x-1 \) is monic.
-   It's closed under addition \( (+) \) and multiplication \( (\cdot) \).

Note that the first property generalizes to \( {\mathbb{Z}}\subseteq \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \), since \( x-n \) is monic for any \( n\in {\mathbb{Z}} \). For the second, let \( \alpha, \beta \in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \). Define \( M \coloneqq{\mathbb{Z}}[\alpha, \beta] \), then it's clear that \( (\alpha + \beta)M \subseteq M \) and \( (\alpha \beta)M \subseteq M \) since \( {\mathbb{Z}}[\alpha, \beta] \) are polynomials in \( \alpha, \beta \) and multiplying by these expression still yields such polynomials. It only remains to check the following:

::: {.claim}
\( M \) is finitely-generated.
:::

::: {.proof title="?"}
Let \( \alpha \) be a root of \( f \in {\mathbb{Z}}[x] \) and \( \beta \) a root of \( g \), both monic with \( \deg f = n, \deg g = m \). We want to produce a finite generating set for \( M\coloneqq{\mathbb{Z}}[\alpha, \beta] \), and the claim is that the following works: \( \left\{{ \alpha^i \beta^j}\right\} _{\substack{0\leq i < n \\ 0 \leq j < m} } \), i.e. every element of \( M \) is some \( {\mathbb{Z}}{\hbox{-}} \)linear combination of these.

\

Note that this is clearly true if we were to include \( n, m \) in the indices by collecting terms of any polynomial in \( \alpha, \beta \), so the restrictions are nontrivial. It's enough to show that for any \( 0 \leq I, J \in {\mathbb{Z}} \), the term \( \alpha^I \beta^J \) is a \( {\mathbb{Z}}{\hbox{-}} \)linear combination of the restricted elements above. Divide by \( f \) and \( g \) to obtain
\[
x^I &= f(x) q(x) + r(x) \\
x^J &= g(x) \tilde q(x) \tilde r(x)
\]
where \( r(x) = 0 \) or \( \deg r < n \) and similarly for \( \tilde r \), where (importantly) all of these polynomials are in \( {\mathbb{Z}}[x] \).

\

We're not over a field: \( {\mathbb{Z}}[x] \) doesn't necessarily have a division algorithm, so why is this okay? The division algorithm only requires inverting the leading coefficient, so in general \( R[x] \) admits the usual division algorithm whenever the leading coefficient is in \( R^{\times} \). Now plug \( \alpha \) into the first equation to obtain \( \alpha^I = r(\alpha) \) where \( \deg r < n \), which rewrite \( \alpha^I \) as a sum of lower-degree terms. Similarly writing \( \beta^J = r(\beta) \), we can express
\[
\alpha^I \beta^J = r(\alpha) r(\beta)
,\]
which is what we wanted.
:::
:::

::: {.remark}
We've just filled in another part of the previous picture:

```{=tex}
\begin{tikzcd}
{\mathbb{Q}}\ar[dd] & K\ar[dd] & \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Q}}\mkern-1.5mu}\mkern 1.5mu\ar[dd]\\
\\
{\mathbb{Z}}& {\mathbb{Z}}_K & \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu
\end{tikzcd}
```
:::

## Rings of Integers and Fraction Fields

::: {.definition title="Ring of Integers"}
Define \( {\mathbb{Z}}_K = \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu\cap K \), the **ring of integers** of \( K \). Note that this makes sense since the intersection of rings is again a ring.
:::

::: {.remark}
Why not just work in \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \)? It doesn't have the factorization properties we want, e.g. there are no irreducible elements. Consider \( \sqrt 2 \), we can factor is into two non-units as \( \sqrt{2} = \sqrt{\sqrt 2} \cdot \sqrt{\sqrt 2} \), noting that \( \sqrt 2 \) is not a unit, and it's easy to check that if \( a \) is not a unit then \( \sqrt a \) is not a unit. So this would yield arbitrarily long factorizations, and a non-Noetherian ring. The following is a reality check, and certainly a property we would want:
:::

::: {.proposition title="The ring of integers of $\\QQ$ is $\\ZZ$ "}
\( {\mathbb{Z}}_{\mathbb{Q}}= {\mathbb{Z}} \).
:::

::: {.proof title="of proposition"}
\( \subseteq \): Easy, since \( {\mathbb{Z}}\subseteq \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) and \( {\mathbb{Z}}\subseteq {\mathbb{Q}} \), and is thus in their intersection \( {\mathbb{Z}}_{\mathbb{Q}} \) .

\

\( \supseteq \) : Let \( \alpha\in {\mathbb{Z}}_{\mathbb{Q}}= {\mathbb{Q}}\cap\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) , so \( \alpha \) is a root of \( x^n - a_{n-1}x^{n-1} + \cdots + a_1x + a_0 \in {\mathbb{Z}}[x] \). We know \( \alpha= a/b \) with \( a,b \in {\mathbb{Z}} \), and we can use the rational root test which tells us that \( a\divides a_0 \) and \( b\divides 1 \), so \( b = \pm 1 \) and \( \alpha = a/\pm 1 = \pm a \in {\mathbb{Z}} \) and thus \( \alpha \in {\mathbb{Z}} \).
:::

::: {.remark}
We'll want to study \( {\mathbb{Z}}_K \) for various number fields \( K \), but we'll need more groundwork.
:::

::: {.proposition title="Easy criterion to check if an integer is algebraic"}
Let \( \alpha \in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Q}}\mkern-1.5mu}\mkern 1.5mu \), then
\[ \alpha\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu\iff \min_ \alpha \in {\mathbb{Z}}[x], \]
where \( \min_ \alpha(x) \) is the unique monic irreducible polynomial in \( {\mathbb{Q}}[x] \) which vanishes at \( \alpha \).
:::

::: {.proof title="?"}
\( \impliedby \): Trivial, if the minimal polynomial already has integer coefficients, just note that it's already monic and thus \( \alpha \in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) by definition.\

\( \implies \): Why should the minimal polynomial have *integer* coefficients? Choose a monic \( f(x) \in {\mathbb{Z}}[x] \) with \( f(\alpha) = 0 \), using the fact that \( \alpha\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) , and factor \( f(x) = \prod_{i=1}^n (x- \alpha_i) \in {\mathbb{C}}[x] \). Note that each \( \alpha_i \in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) since they are all roots of \( f \) (a monic polynomial in \( {\mathbb{Z}}[x] \)). Use the fact that \( \min_ \alpha(x) \) divides every polynomial which vanishes on \( \alpha \) over \( {\mathbb{Q}} \), and thus divides \( f \) (noting that this still divides over \( {\mathbb{C}} \)). Moreover, every root of \( \min_ \alpha(x) \) is a root of \( f \), and so every such root is some \( \alpha_i \).

\

Now factor \( \min_ \alpha(x) \) over \( {\mathbb{C}} \) to obtain \( \min_ \alpha(x) = \prod_{i=1}^m (x - \beta_i) \) with all of the \( \beta_i \in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \). What coefficients appear after multiplying things out? Just sums and products of the \( \beta_i \), so all of the coefficients are in \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) . Thus \( \min_ \alpha(x) \in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu[x] \). But the coefficients are also in \( {\mathbb{Q}} \) by definition, so the coefficients are in \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu\cap{\mathbb{Q}}= {\mathbb{Z}} \) and thus \( \min_ \alpha(x) \in {\mathbb{Z}}[x] \).
:::

::: {.example title="Showing an integer is not algebraic using minimal polynomials"}
\( \sqrt{5}/ 3 \not\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) since \( \min_ \alpha(x) = x^2 - 5/9 \not\in {\mathbb{Z}}[x] \), so this is not an algebraic integer.
:::

::: {.proposition title="$\\ff(\\ZZ_K) = K$ "}
```{=tex}
\envlist
```
a.  \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) has \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Q}}\mkern-1.5mu}\mkern 1.5mu \) as its fraction field, and
b.  For any number field \( K \), the fraction field of \( {\mathbb{Z}}_K \) is \( K \).
c.  If \( \alpha\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Q}}\mkern-1.5mu}\mkern 1.5mu \) then \( d \alpha\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) for some \( d\in {\mathbb{Z}}^{\geq 0} \)

Moreover, both (a) and (b) follow from (c).
:::

::: {.remark}
Thus the subring is "big" in the sense that if you allow taking quotients, you recover the entire field. That \( c\implies a,b \): suppose you want to write \( \alpha \in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Q}}\mkern-1.5mu}\mkern 1.5mu \) as \( \alpha=p/q \) with \( p,q \in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \). Use \( c \) to produce \( d\alpha\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \), then just take \( d\alpha /d \). The same argument works for \( b \).
:::

::: {.exercise title="?"}
Prove the proposition!
:::

::: {.proposition title="The ring $\\bar{\\ZZ}$ contains all roots of monic polynomials with integer coefficients"}
Suppose \( \alpha\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{C}}\mkern-1.5mu}\mkern 1.5mu \) and \( \alpha \) is a root of a monic polynomial in \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu [x] \). Then \( \alpha\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \).
:::

::: {.remark}
This says that if a number \( \alpha \) is the root of a monic polynomial whose coefficients are *algebraic* integers, then \( \alpha \) itself is an algebraic integer coefficients. This corresponds to the fact that integral over integral implies integral in commutative algebra.
:::

::: {.exercise title="Prove the proposition."}
Prove this! One can use the integrality criterion (slightly challenging), or alternatively Galois theory.
:::

# Quadratic Fields (Lec. 3, Thursday, January 21)

::: {.remark}
Today: roughly corresponds to chapter 3 in the book. Goal: do all of the big theorems in the setting of quadratic number fields, then redo everything for general number fields.
:::

## Quadratic Number Fields

::: {.remark}
Simplest case: \( {\mathbb{Q}} \), a degree 1 number field, so the next simplest case is degree 2.
:::

::: {.definition title="Quadratic Number Fields"}
A field \( K \) is a **quadratic number field** if and only if \( K \) is a number field and \( [K: {\mathbb{Q}}] = 2 \).
:::

::: {.remark}
Some notation: if \( d\in {\mathbb{R}}^{\times} \), then \( \sqrt d \) means the *positive* square root of \( d \) if \( d \geq 0 \), and if \( d<0 \) this denotes \( i\sqrt{{\left\lvert {d} \right\rvert}} \).
:::

::: {.proposition title="Quadratic fields are parameterized by squarefree integers"}
If \( K \) is a quadratic number field, then \( K = {\mathbb{Q}}(\sqrt{d}) \) for some squarefree [^3] integer \( d\in {\mathbb{Z}} \). Moreover, this \( d \) is uniquely determined by \( K \), so all quadratic number fields are parameterized by the set of squarefree integers.
:::

::: {.proof title="of proposition, existence"}
**Existence**: Since \( [K: {\mathbb{Q}}] = 2 \), we have \( K\supsetneq {\mathbb{Q}} \) so pick \( \alpha\in K\setminus{\mathbb{Q}} \) then \( K = {\mathbb{Q}}(\alpha) \). Note that we could also furnish this \( \alpha \) from the primitive element theorem, although this is overkill here. So \( \alpha \) is a root of some degree 2 \( p\in {\mathbb{Q}}[x] \), and by scaling coefficients we can replace this by \( p\in {\mathbb{Z}}[x] \). So write \( p(x) = Ax^2 + Bx + C \), in which case we can always write
\[
\alpha = {-B \pm \sqrt{B^2 - 4AC} \over 2A} 
\]
where \( A\neq 0 \), since this would imply that \( \alpha\in{\mathbb{Q}} \). Writing \( \Delta\coloneqq B^2 - 4AC \), we have \( K = {\mathbb{Q}}(\alpha) = {\mathbb{Q}}(\sqrt{\Delta}) \). This is close to what we want -- it's \( {\mathbb{Q}} \) adjoin some integer -- but we'd like that integer to be squarefree.

\

Now let \( f\in {\mathbb{Z}}^{\geq 0} \) be chosen such that \( f^2 \divides \Delta \) and \( f \) is as large as possible, i.e. the largest square factor of \( \Delta \). Writing \( \Delta = f^2 - d \) where \( d \) is whatever remains. Then \( d \) must be squarefree, otherwise if \( d \) had a square factor bigger than 1, say \( d = r^2 d' \), in which case \( f^2 r^2 > f^2 \) would be a larger factor of \( \Delta \). So \( d \) is squarefree, and \( \Delta = f \sqrt d \) and thus \( {\mathbb{Q}}(\Delta) = {\mathbb{Q}}(\sqrt{d}) \).

**Uniqueness**: Well use some extra machinery.
:::

## Norm and Trace

::: {.definition title="Norm and Trace"}
Let \( K \) be a number field with \( K_{/{\mathbb{Q}}} \) Galois. For each \( \alpha\in K \) define
\[
N(\alpha) &\coloneqq\prod_{\sigma\in { \mathsf{Gal}} (K_{/{\mathbb{Q}}})} \sigma(\alpha) && \text{the norm} \\
\operatorname{Tr}(\alpha) &\coloneqq\sum_{\sigma\in { \mathsf{Gal}} (K_{/{\mathbb{Q}}})} \sigma(\alpha) && \text{the trace}
.\]
:::

::: {.remark}
Why use these kind of sum at all? Applying any element in the Galois group just permutes the elements. Note that \( N( \alpha), \operatorname{Tr}( \alpha) \) are \( G(K_{/{\mathbb{Q}}}){\hbox{-}} \)invariant, and thus rational numbers in \( {\mathbb{Q}} \). The norm is multiplicative, and the trace is additive and in fact \( {\mathbb{Q}}{\hbox{-}} \)linear: \( \operatorname{Tr}(a \alpha + b \beta) = a \operatorname{Tr}( \alpha) + b \operatorname{Tr}( \beta) \) for all \( \alpha, \beta\in K \) and all \( a,b \in {\mathbb{Q}} \).
:::

::: {.remark}
What do the norm and trace look like for a quadratic field? We can write \( K = \left\{{a + b \sqrt d {~\mathrel{\Big|}~}a,b \in {\mathbb{Q}}}\right\} \) and there is a unique (non-identity) element \( g\in { \mathsf{Gal}} (K_{/{\mathbb{Q}}}) \) with \( \sigma(a + b \sqrt d) = a - b \sqrt{d} \). We'll refer to this automorphism as **conjugation**. We can compute
\[
N(a + b \sqrt{d} ) &= a^2 - db^2 \\
\operatorname{Tr}(a + b \sqrt{d} ) &= 2a
.\]
:::

::: {.proof title="of proposition, uniqueness continued"}
Returning to the proof, suppose otherwise that \( K = {\mathbb{Q}}(\sqrt{d_1} ) = {\mathbb{Q}}( \sqrt{d_2} ) \) with \( d_1\neq d_2 \) squarefree integers. Note that they must have the same sign, otherwise one of these extensions would not be a subfield of \( {\mathbb{R}} \). We know \( \sqrt{d_1} \in {\mathbb{Q}}( \sqrt{d_2} ) \) and thus \( \sqrt{d_1} = a + b \sqrt{d_2} \) for some \( a, b\in {\mathbb{Q}} \).

\

Taking the trace of both sides, the LHS is zero and the RHS is \( 2a \) and we get \( a=0 \) and \( \sqrt{d_1} = b \sqrt{d_2} \). Write \( b = u/v \) with \( u,v\in {\mathbb{Q}} \). Squaring both sides yields \( v^2 d_1 = u^2 d_2 \). Let \( p \) be a prime dividing \( d_1 \); then since \( d_1 \) is squarefree there is only one copy of \( p \) occurring in its factorization. Moreover there are an even number of copies of \( p \) coming from \( v^2 \), thus forcing \( d_2 \) to have an odd power of \( p \). This forces \( p\divides d_2 \), and since this holds for every prime factor \( p \) of \( d_1 \), we get \( d_1 \divides d_2 \) since \( d_1 \) is squarefree. The same argument shows that \( d_2 \divides d_1 \), so they're the same up to sign: but the signs must match and we get \( d_1 = d_2 \).
:::

::: {.remark}
Note that this results holds for every squarefree number not equal to 1. If \( K = {\mathbb{Q}}( \sqrt{d} ) \), what is the ring of integers \( {\mathbb{Z}}_K \)? Some more machinery will help here.
:::

## The Field Polynomial

::: {.definition title="The Field Polynomial of an Element"}
Assume \( K_{/{\mathbb{Q}}} \) is a Galois number field and for \( \alpha\in K \) define the **field polynomial of \( \alpha \)** as
\[
\varphi_{\alpha}(x) \coloneqq\prod_{ \sigma\in { \mathsf{Gal}} (K_{/{\mathbb{Q}}})} \qty{ x - \sigma(\alpha)}
.\]
:::

::: {.remark}
For the same reasons mentioned for the norm/trace, we get \( \varphi_{\alpha} \in {\mathbb{Q}}[x] \), and moreover \( \varphi_{ \alpha } (\alpha) = 0 \). When is \( \alpha\in {\mathbb{Z}}_K \)? We have the following criterion:
:::

::: {.proposition title="The field polynomial detects integrality"}
\[
\alpha\in {\mathbb{Z}}_K \iff \varphi_{ \alpha } (x) \in {\mathbb{Z}}[x]
.\]
:::

::: {.proof title="of proposition"}
\( \impliedby \): This is easy, since if \( \varphi_\alpha \) is a monic polynomial with integer coefficients, meaning that \( \alpha \) is an algebraic integer and thus in \( {\mathbb{Z}}_K \).

\

\( \implies \): If \( \alpha \in {\mathbb{Z}}_K \) then it's the root of some monic polynomial in \( {\mathbb{Z}}[x] \), and the same is true for \( \sigma(\alpha) \) and thus each \( \sigma(\alpha) \in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \). So \( \varphi_{ \alpha}(x) \in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu[x] \). We said \( \varphi_{ \alpha} \) has coefficients in \( {\mathbb{Q}} \) too, and thus in \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu\cap{\mathbb{Q}}= {\mathbb{Z}} \). So the problem is reduced to finding out when \( \varphi_{\alpha}(x) \) has integer coefficients.

If \( \deg(K_{/{\mathbb{Q}}}) = n \), then
\[
\varphi_{ \alpha}( \alpha) = \prod x- \sigma(\alpha) = x^n - \operatorname{Tr}(\alpha)x^{n-1} + \cdots + (-1)^n N( \alpha)
.\]
If \( n=2 \), these are the only terms, and so if \( K \) is a quadratic number field then \( \alpha\in K \) is in \( {\mathbb{Z}}_K \) if and only if \( \operatorname{Tr}( \alpha), N(\alpha) \in {\mathbb{Z}} \).
:::

::: {.example title="of nonintuitive rings of integers"}
Let \( K = {\mathbb{Q}}( \sqrt{5} ) \), then is it true that \( {\mathbb{Z}}_K = {\mathbb{Z}}[\sqrt{5} ] \)? Since \( 1, \sqrt{5} \in {\mathbb{Z}}_K \), we have \( \supseteq \) since \( 1, \sqrt{5} \) are algebraic. The answer is **no**: take \( \alpha\coloneqq{1 + \sqrt{5} \over 2} \), then \( N( \alpha) -4/4 = -1 \) and \( \operatorname{Tr}( \alpha) = 1 \). These are integers, so \( \alpha\in {\mathbb{Z}}_K \), and in fact \( \alpha \) is a root of \( x^2 - x - 1 \in {\mathbb{Z}}[x] \).
:::

## Classification of \( {\mathbb{Z}}_K \) {#classification-of-mathbbz_k}

::: {.theorem title="Classification of $\\ZZ_K$ for quadratic fields"}
Let \( K = {\mathbb{Q}}( \sqrt{d} ) \) be a quadratic number field. Then

-   If \( d = 2,3 \operatorname{mod}4 \), then \( {\mathbb{Z}}_K = \left\{{ a + b \sqrt{d} {~\mathrel{\Big|}~}a, b\in {\mathbb{Z}}}\right\} \).

-   If \( d=1 \operatorname{mod}4 \), then \( {\mathbb{Z}}_K = \left\{{ {1 + b \sqrt{d} \over 2} {~\mathrel{\Big|}~}a,b\in {\mathbb{Z}},\, a\equiv b \operatorname{mod}2}\right\} \).
:::

::: {.remark}
For \( d=1 \), if \( a, b \) are even then we just recover the \( d=2,3 \) case, so we're picking up extra elements from when \( a,b \) both odd.
:::

::: {.proof title="?"}
Let \( \alpha\in K \) and write \( \alpha = A + B \sqrt{d} \) with \( A, B\in {\mathbb{Q}} \).

::: {.exercise title="?"}
Check that \( N( \alpha), \operatorname{Tr}( \alpha) \in {\mathbb{Z}} \) for both cases.
:::

Assuming now that \( N( \alpha), \operatorname{Tr}( \alpha) \in {\mathbb{Z}} \), then \( A^2 - dB^2 \in {\mathbb{Z}} \). Multiply this by 2 to get \( (2A)^2 - d(2B)^2 \in 4{\mathbb{Z}} \). Recalling that \( \operatorname{Tr}( \alpha) = 2 A \), we have \( (2A)^2 \in {\mathbb{Z}} \) and thus \( d(2B)^2 \in {\mathbb{Z}} \) as well. The claim now is that \( 2B \in {\mathbb{Z}} \): we know \( 2B\in {\mathbb{Q}} \). If \( 2B\not\in {\mathbb{Z}} \), then the denominator has some prime factor. This prime factor appears twice in \( (2B)^2 \), and \( d(2B)^2 \in {\mathbb{Z}} \) then means that two copies of \( p \) appear in \( d \) in order to cancel -- however, we assumed \( d \) was squarefree. We now know that \( A, B \in {1\over 2}{\mathbb{Z}} \), so write \( A = (1/2)a' \) and \( B = (1/2)b' \). Thus
\[ 
\alpha= (1/2)a' + (1/2)b' \sqrt{d} 
\implies
N( \alpha) = ((a')^2 - d(b')^2) / 4 \in {\mathbb{Z}}
.\]
So the numerator is a multiple of 4, which yields \( (a')^2 \equiv d(b')^2 \operatorname{mod}4 \). We proceed by cases.

\

**Case 1:** \( d = 2,3 \operatorname{mod}4 \). If \( b' \) is odd then \( (b')^2 = 1\operatorname{mod}4 \), which holds for any odd number. But then \( (a')^2 = d(b')^2 = d \operatorname{mod}4 \), which is a problem -- squares modulo 4 can only be \( 0 \) or \( 1 \). This is a contradiction, so \( b' \) must be even. Then \( (b')^2 \operatorname{mod}4 = 0 \), which forces \( a' \equiv 0 \operatorname{mod}4 \) and \( a' \) must be even. But if \( a', b' \) are both even, \( (1/2)a', (1/2)b'\in {\mathbb{Z}} \) and we obtain \( \alpha\in {\mathbb{Z}}+ \sqrt{d} {\mathbb{Z}} \) .

\

**Case 2:** If \( d\equiv 1 \operatorname{mod}4 \), then \( (a')^2 \equiv (b')^2 \operatorname{mod}4 \). We can conclude that \( a', b' \) are either both odd or both even, otherwise we'd get \( 0\equiv 1 \operatorname{mod}4 \), and thus we can write \( a' \equiv b' \operatorname{mod}2 \). But this was exactly the condition appearing in the theorem.
:::

::: {.remark}
Let \( K \) be a quadratic number field. Then we can reformulate the previous results as:

\[
{\mathbb{Z}}_K = 
\begin{cases}
{\mathbb{Z}}[ \sqrt{d} ] &  d \equiv 2,3 \operatorname{mod}4
\\
{\mathbb{Z}}\left[{1 + \sqrt{d} \over 2}\right] & d \equiv 1 \operatorname{mod}4.
\end{cases}
\]

We've also shown that \( {\mathbb{Z}}_K \) is a free \( {\mathbb{Z}}{\hbox{-}} \)module of rank 2, with basis either \( \left\{{ 1, \sqrt{d} }\right\} \) or \( \left\{{ 1, {1 + \sqrt{d} \over 2 } }\right\} \).
:::

::: {.remark}
What is true for general number fields? Important theorem: \( {\mathbb{Z}}_K \) is always a free \( {\mathbb{Z}}{\hbox{-}} \)module, i.e. there always exists an *integral basis*. Surprisingly, the it's not always true that \( {\mathbb{Z}}_K = {\mathbb{Z}}[\ell] \) for \( \ell \) a single element.
:::

# Failure of Unique Factorization (Lec. 4, Wednesday, January 27)

## Revisiting a Counterexample to Unique Factorization

::: {.remark}
Today roughly corresponds to chapter 4: "Paradise Lost"! Setup: \( K \) is a quadratic field, a degree 2 extension of \( {\mathbb{Q}} \), which can be written as \( K = {\mathbb{Q}}(\sqrt{d}) \) with \( d \) squarefree. Last time, we completely described \( {\mathbb{Z}}_K \) (the algebraic integers in \( K \)):
\[
{\mathbb{Z}}_K = 
\begin{cases}
{\mathbb{Z}}[ \sqrt{d} ] &  d \equiv 2,3 \operatorname{mod}4
\\
{\mathbb{Z}}\left[{1 + \sqrt{d} \over 2}\right] & d \equiv 1 \operatorname{mod}4.
\end{cases}
\]
We saw that the second admitted a different description as \( \left\{{ {a + b \sqrt{d} \over 2}}\right\} \) where \( a,b \) are either both even or both odd. Note that we can do interesting arithmetic in \( {\mathbb{Z}}_K \), but it's not necessarily well-behaved: \( {\mathbb{Z}}_K \) is not always a UFD.
:::

::: {.example title="A counterexample to unique factorization"}
Letting \( d=-5 \), we have \( {\mathbb{Z}}_K = {\mathbb{Z}}[ \sqrt{-5} ] \) where \( 6 \) factors in two ways:
\[
6 = (1 + \sqrt{5} )(1 - \sqrt{-5} ) = (2)(3) = 6
.\]

Note that this isn't quite enough to show failure of unique factorization, e.g. we can factor \( 16 = (4)(4) = (2)(8) \). Here you should check that all 4 factors are irreducible, and that the factors on the right aren't unit multiples of the ones on the left. For example, \( 21 = (-7)(-3) = (7)(3) \), but the factors only differ by the unit \( -1\in {\mathbb{Z}}^{\times} \). The key to checking all of those: the **norm map**:
\[
N(a + b \sqrt{-5} ) = (a + b \sqrt{-5} ) (a - \sqrt{-5} ) = a^2 + 5b^2
.\]
where the second factor was the *conjugate*, i.e. the image of the element under the nontrivial element of the Galois group of \( K_{/{\mathbb{Q}}} \). If \( a + b \sqrt{-5} \in {\mathbb{Z}}_K \), then \( N(a + b \sqrt{-5} \in {\mathbb{Z}}_{\geq 0}) \) and is equal to zero if and only if \( a + b \sqrt{-5} = 0 \). Moreover, this is a unit if and only if its norm is 1, [^4] i.e. \( a^2 + 5b^2 = 1 \), which forces \( b=0 \) and \( a=\pm 1 \). So \( U({\mathbb{Z}}[ \sqrt{-5} ] ) = \left\{{\pm 1}\right\} \).

We'll show one of the factors is irreducible, \( 1 + \sqrt{-5} \). Recall that \( x\in R \) a domain is **irreducible** if and only if whenever \( x = ab \), one of \( a,b \) is a unit. It itself is not a unit, since \( N(1 + \sqrt{-5 }) = 6 \neq 1 \). So suppose \( 1 + \sqrt{-5} = \alpha \beta \). Then
\[
6 = N(\alpha \beta ) = N( \alpha) N( \beta)
,\]
and so up to reordering, we have \( N \alpha = 2, N \beta= 3 \). Writing \( \alpha= a + b \sqrt{-5} \) and taking norms yields \( 2 = a^2 + 5b^2 \), which has no solutions: considering the equation \( \operatorname{mod}5 \) yields \( 2\equiv a^2 \), but \( 2 \) is not a square in \( {\mathbb{Z}}/5{\mathbb{Z}} \). \( \contradiction \)

Note that the only other way of factoring \( 6 \) is \( 6=(1)(6) \), and taking norms shows that one factor is a unit. So if we assume \( \alpha, \beta \) aren't units, both \( N \alpha, N \beta > 1 \), which leads to the previous situation. By similar arguments, all 4 factors are irreducible.

To see that the LHS factors aren't unit multiples of the RHS factors, we can use the fact that the units are \( \pm 1 \), and multiplying the LHS by \( \pm 1 \) can't yield \( 2 \) or \( 3 \). So this is a genuine counterexample to unique factorization.
:::

## Factorization Theory

::: {.remark}
What went wrong in the previous example? We'll use a big of terminology from an area of algebra called *factorization theory*. Many concepts related to divisibility can be discussed in this language!
:::

::: {.definition title="Monoid"}
A **monoid** is a nonempty set with a commutative associative binary operation \( \cdot \) with an identity \( 1 \). We say a monoid is **cancellative** if and only if whenever \( \alpha \beta= \beta \alpha \) or \( \beta \alpha = \gamma \alpha \) then \( \beta = \gamma \).
:::

::: {.definition title="Terminology for Cancellative Monoids"}
Let \( M \) be a cancellative monoid. Then

-   \( \alpha\divides \beta \) if and only if \( \beta= \alpha \gamma \) for some \( \gamma \).

-   \( \epsilon \) is a **unit** if \( \epsilon\divides 1 \).

-   \( \alpha , \beta \) are **associates** if \( \alpha = \epsilon \beta \) for some unit \( \epsilon \)

-   \( \pi\in M \) is **irreducible** if and only if \( \pi \) is a unit and whenever \( \pi= \alpha \beta \) then either \( \alpha \) or \( \beta \) is a unit.

-   \( \pi \in M \) is **prime** whenever \( \pi\divides \alpha \beta \) then \( \pi\divides \alpha \) or \( \pi\divides \beta \).

-   \( \delta \in M \) is a greatest common divisor of \( \alpha, \beta \) if and only if \( \delta \) is a common divisor that is divisible by every other common divisor.

-   \( M \) is a **unique factorization monoid** if and only if every nonunit element in \( M \) factors uniquely (up to order and associates) as a product of irreducibles.
:::

::: {.remark}
Given \( R \) an integral domain, then \( R\setminus\left\{{0}\right\} \) with multiplication is a cancellative monoid. Moreover, \( R\setminus\left\{{0}\right\} \) is a unique factorization monoid if and only if \( R \) is a UFD.
:::

::: {.question}
How do you show something is a UFD?
:::

::: {.answer}
Recall how this proof went for \( {\mathbb{Z}} \):

-   Use existence of a division algorithm.
-   Prove Euclid's lemma: every irreducible is prime.
-   Use factorization into irreducibles and proceed by induction, writing out two factorizations and cancelling things out in a combinatorial way.

So we'd like

1.  To know that irreducibles are prime, and
2.  Everything to factor into irreducibles.
:::

::: {.definition title="Atomic"}
For \( M \) a cancellative monoid, \( M \) is **atomic** if every nonunit element of \( M \) is a product of irreducibles.
:::

::: {.proposition title="Monoids have unique factorization iff atomic and irreducibles are prime"}
Let \( M \) be a cancellative monoid, then \( M \) is a UFM if and only if \( M \) is atomic and every irreducible is prime in \( M \).
:::

::: {.proof title="of proposition"}
Omitted -- no new ideas when compared to proof of unique factorization in \( {\mathbb{Z}} \).
:::

::: {.remark}
Note that in \( {\mathbb{Z}} \), working in \( {\mathbb{Z}}_{\geq 0} \) is useful because the only positive unit is \( 1 \), and so any elements differing by a unit are in fact equal. Can we emulate this for cancellative monoids? The answer is yes, by modding out by the equivalence relation of being equivalent up to a unit.
:::

::: {.definition title="Reduced Monoid"}
Define \( M_{{ \text{red} }}\coloneqq M/\sim \) where \( a\sim b \iff a-b\in M^{\times} \). The operation on \( M \) descends to well-defined operation on \( M_{{ \text{red} }} \), and irreducibles and primes are the same in \( M \) and \( M_{{ \text{red} }} \).
:::

::: {.example title="of a more familiar reduced monoid"}
This is supposed to look like \( {\mathbb{Z}}_{\geq 0} \), where \( -7\in M \mapsto 7 \in M_{{ \text{red} }} \).
:::

::: {.proposition title="A monoid has unique factorizations iff its reduced monoid does"}
\( M \) is a UFM if and only if \( M_{{ \text{red} }} \) is a UFM if and only if every element of \( M_{{ \text{red} }} \) factors uniquely as a product of irreducibles, up to order.
:::

::: {.remark}
What did this buy us? We didn't have to worry about associates in the above statement, and the only unit is 1.
:::

::: {.remark}
Why isn't \( {\mathbb{Z}}[ \sqrt{-5} ] \) is UFD? It doesn't have enough elements to make unique factorization work!
:::

::: {.example title="of common refinements"}
In \( {\mathbb{Z}}^+ \), write \( 210 = 21\cdot 10 = 14 \cdot 15 \). These two factorizations differ but admit a common refinement to \( (7\cdot 3)(2\cdot 5) = (7\cdot 2)(3\cdot 5) \), where it becomes clear that these factorizations are equal up to ordering. This is **Euler's Four Number Theorem**, which turns out to be equivalent to unique factorization.
:::

::: {.theorem title="Characterization of unique factorization monoids"}
Let \( M \) be a cancellative atomic reduced monoid. Then \( M \) is a UFM if and only if whenever \( \alpha, \beta, \gamma, \delta \in M \) such that \( \alpha \beta = \gamma \delta \), there are \( \rho, \sigma, \tau, \nu \) with
\[
\alpha &= \rho \sigma \\
\beta &= \tau \nu \\
\gamma &= \rho \tau \\
\delta &= \sigma \nu
.\]

Note that plugging these in on the LHS and RHS respectively yield the same factors, just reordered.
:::

::: {.proof title="of theorem"}
Omitted, exercise in chasing definitions. The interesting part is that you can go backward!
:::

::: {.remark}
Let \( M_{{ \text{red} }} \coloneqq\qty{{\mathbb{Z}}[ \sqrt{5} ] \setminus\left\{{0}\right\}}_{{ \text{red} }} \), motivated by the fact that \( {\mathbb{Z}}[ \sqrt{-5} ] \) is not a UFD if \( {\mathbb{Z}}[ \sqrt{-5} ] \setminus\left\{{0}\right\} \) is not a UFM, or equivalently its reduction is not a UFM. Then \( M \) is a not a UFM. Noting that \( M \) is reduced under an equivalence relation, write \( \left\langle{ \alpha}\right\rangle \) for the class of \( \alpha \) in \( M \) for any \( \alpha\in {\mathbb{Z}}[ \sqrt{-5} ] \).

Our original counterexample for unique factorization now reads
\[
\left\langle{ 1 + \sqrt{-5} }\right\rangle \left\langle{ 1 - \sqrt{5} }\right\rangle = \left\langle{2}\right\rangle \left\langle{3}\right\rangle
.\]
This is still a counterexample since these pairs admit no common refinement.

Why are there "not enough elements" in \( {\mathbb{Z}}[ \sqrt{-5} ] \)? Recall that for integral domains (as rings), two elements differ by a unit precisely when they generate the same ideal. So we can think of elements of \( M_{{ \text{red} }} \) as nonzero principal ideals of \( M \), which we'll write as \( \mathop{\mathrm{Prin}}( {\mathbb{Z}}[ \sqrt{-5} ]) \). To make this set of ideals into a monoid, one define \( \left\langle{ \alpha }\right\rangle \left\langle{ \beta }\right\rangle= \left\langle{ \alpha \beta }\right\rangle \), where it's easy to check that this is well-defined. So the failure of unique factorization is a failure of factorization in this set of ideals. We can embed this in a larger collection of ideals by just deleting the word "principal", which will restore unique factorization.
:::

::: {.definition title="Multiplication of Ideals"}
Let \( R \) be a commutative ring (always with 1). If \( I, J {~\trianglelefteq~}R \) are ideals, we define
\[
IJ \coloneqq\left\langle{ \left\{{ \alpha_i \beta_i {~\mathrel{\Big|}~}\alpha_i \in I, \beta_i \in J }\right\}}\right\rangle = \left\{{ \sum \alpha_i \beta_i {~\mathrel{\Big|}~}\alpha_i \in I, \beta_i \in J}\right\}
.\]

If \( R \) is a domain, define the monoid \( \operatorname{Id}(R) \) the collection of nonzero ideals of \( R \) with the above multiplication.
:::

::: {.remark}
Note that the naive definition \( IJ \coloneqq\left\{{ij{~\mathrel{\Big|}~}i\in I, j\in J}\right\} \) is not necessarily an ideal, since it may not be closed under addition. Taking the smallest ideal containing all products fixes this.
:::

::: {.proposition title="If $R$ is a domain, then $\\Id(R)$ is a monoid"}
Let \( R \) be a commutative ring. Then

-   Multiplication \( \cdot \) for ideals is commutative,
-   Multiplication \( \cdot \) for ideals is associative,
-   The identity is \( \left\langle{ 1 }\right\rangle= R \),
-   Multiplication distributes over addition of ideals, i.e. \( I(J+K) = IJ + IK \),
-   \( IJ \subseteq I \cap J \),
-   If \( I = \left\langle{ \alpha_1, \cdots, \alpha_j }\right\rangle \) and \( J = \left\langle{ \beta_1, \cdots, \beta_k }\right\rangle \) then \( IJ = \left\langle{ \alpha_1 \beta_1, \cdots, \alpha_j \beta_k }\right\rangle \) is generated by all of the \( jk \) pairwise products,
-   If \( R \) is a domain and \( I, J \) are nonzero then \( IJ \) is nonzero,

As a consequence, \( \operatorname{Id}(R) \) is a monoid when \( R \) is a domain.
:::

::: {.remark}
So instead of working in \( \mathop{\mathrm{Prin}}( {\mathbb{Z}}[\sqrt{-5} ]) \), we'll work in \( \operatorname{Id}({\mathbb{Z}}[\sqrt{-5} ]) \). The claim is that we can refine our bad factorizations. Define

-   \( I\coloneqq\left\langle{ 1 + \sqrt{-5} , 2 }\right\rangle \)
-   \( I'\coloneqq\left\langle{ 1 - \sqrt{-5} , 2 }\right\rangle \)
-   \( J\coloneqq\left\langle{ 1 + \sqrt{-5} , 3 }\right\rangle \)
-   \( J'\coloneqq\left\langle{ 1 - \sqrt{-5} , 3 }\right\rangle \)

Then

-   \( IJ = \left\langle{ 1 + \sqrt{-5} }\right\rangle \)\
-   \( I'J' = \left\langle{ 1 - \sqrt{-5} }\right\rangle \)\
-   \( JJ' = \left\langle{ 3 }\right\rangle \)
-   \( II' = \left\langle{ 2 }\right\rangle \)

We can then write
\[
\left\langle{ 1 + \sqrt{-5} }\right\rangle \left\langle{ 1 - \sqrt{-5} }\right\rangle = \left\langle{ 2 }\right\rangle \left\langle{ 3 }\right\rangle \implies (IJ)(I'J') = (II')(JJ')    
,\]
where the same terms are occurring in a different order. For an example of how to work these out, let's compute \( IJ \). We get
\[
IJ 
&= \left\langle{ (1 + \sqrt{-5} )^2, 3(1 + \sqrt{-5} ), 2(1 + \sqrt{-5} ), 6 }\right\rangle  \\
&= \left\langle{ 1 + \sqrt{-5} }\right\rangle \left\langle{ 1 + \sqrt{-5} , 3, 2, 1 - \sqrt{-5} }\right\rangle \\  
&= \left\langle{ 1 + \sqrt{-5} }\right\rangle \left\langle{ 1 }\right\rangle  \\
&= \left\langle{ 1 + \sqrt{-5} }\right\rangle
,\]
using the fact that \( 3-2=1 \) is in the ideal on the second line.

\

We'll see later that this process allows you to recover unique factorization in \( {\mathbb{Z}}_K \) for any number field \( K \).
:::

# Euclidean Quadratic Fields (Lec. 5, Thursday, January 28)

## Setup

::: {.remark}
Today: roughly corresponds to Chapter 5. In a first algebra course, one shows that if \( R \) is a Euclidean domain, then the arithmetic of \( R \) is very interesting:

-   \( R \) is a PID, and as a consequence
-   \( R \) is a UFD
:::

::: {.definition title="Euclidean Domain"}
A domain \( R \) is **Euclidean** if and only if there is a function \( \varphi R\setminus\left\{{0}\right\}\to {\mathbb{Z}}^{\geq 0} \) such that for all \( a,b\in R \) with \( b\neq 0 \) there are \( q, r\in R \) with \( a = bq + r \) with \( r=0 \) or \( \varphi(r) < \varphi(b) \). \( \varphi \) is referred to as a **Euclidean function**.
:::

::: {.example title="Examples of Euclidean functions"}
```{=tex}
\envlist
```
-   For \( R={\mathbb{Z}} \), one can take \( \varphi({-}) \coloneqq{\left\lvert {{-}} \right\rvert} \).
-   \( R = {\mathbb{F}}[t] \) for \( {\mathbb{F}} \) a field with \( \varphi({-}) = \deg({-}) \).
:::

::: {.remark}
Given a number field \( K \), does \( {\mathbb{Z}}_K \) have nice factorization, i.e. is it a UFD? Not always, as we saw last time. If it were Euclidean, then yes!
:::

::: {.question}
Which quadratic fields \( K \) have a Euclidean ring of integers \( {\mathbb{Z}}_K \)?
:::

::: {.definition title="Euclidean and Norm-Euclidean Number Fields"}
If \( K \) is a quadratic field, then

-   \( K \) is **Euclidean** if and only if \( {\mathbb{Z}}_K \) is a Euclidean domain,

-   \( K \) is **norm-Euclidean** if and only if \( {\mathbb{Z}}_K \) is Euclidean with respect to \( \varphi({-}) \coloneqq{\left\lvert {N({-})} \right\rvert} \).
:::

::: {.proposition title="Characterization of norm-Euclidean quadratic fields"}
Let \( K \) be a quadratic field. Then \( K \) is norm-Euclidean if and only if for all \( \beta\in K \) there is a \( \gamma\in {\mathbb{Z}}_K \) such that \( {\left\lvert { N(\beta- \gamma) } \right\rvert} < 1 \). In other words, \( K \) is norm-Euclidean if and only if every element can be approximated by an element in \( {\mathbb{Z}}_K \).
:::

::: {.proof title="of proposition"}
\( \impliedby \): Let \( a,b \in {\mathbb{Z}}_k \) with \( b\neq 0 \). Define \( \beta\coloneqq a/b \in K \), then by assumption choose \( \gamma \) such that \( {\left\lvert {N \qty{ {a\over b} - \gamma} } \right\rvert}< 1 \). Multiplying both sides by \( N(b) \) and using the fact that \( N({-}), {\left\lvert {{-}} \right\rvert} \) are multiplicative, we have
\[
{\left\lvert {N(a - b \gamma)} \right\rvert} < {\left\lvert {N(b)} \right\rvert} 
.\]
Then \( a = bq + r \coloneqq b \gamma + (a - b \gamma) \).
:::

## Norm-Euclidean Imaginary Quadratic Fields

::: {.remark}
Suppose \( K = {\mathbb{Q}}( \sqrt{d} ) \) with \( d<0 \) squarefree, so we can write
\[
K = \left\{{ a + b \sqrt{d} {~\mathrel{\Big|}~}a,b, \in {\mathbb{Q}}}\right\}
= \left\{{ a + b i\sqrt{{\left\lvert {d} \right\rvert}} {~\mathrel{\Big|}~}a,b, \in {\mathbb{Q}}}\right\} \subseteq {\mathbb{C}}
.\]
Geometrically, this is a dense subset of \( {\mathbb{C}} \), so it's not easy to draw. But we can draw \( {\mathbb{Z}}_K \) -- what does it look like? We know that \( d=2,3 \operatorname{mod}4 \) then \( {\mathbb{Z}}_K = \left\{{a + b \sqrt{d} {~\mathrel{\Big|}~}a,b,\in {\mathbb{Z}}}\right\} \):

```{=tex}
\begin{tikzpicture}
    \draw [thick, gray,-latex] (-5, 0) -- (7, 0);% Draw x axis
    \draw [thick, gray,-latex] (0, -5) -- (0, 5);% Draw y axis

    \clip (-5,-5) rectangle (10cm,10cm); % Clips the picture...
    %\pgftransformcm{1}{0.6}{0.7}{1}{\pgfpoint{0cm}{0cm}}
          % This is actually the transformation matrix entries that
          % gives the slanted unit vectors. 
    \draw[style=help lines,dashed] (-14,-14) grid[step=2cm] (6,5);
          % Draws a grid in the new coordinates.
          %\filldraw[fill=gray, fill opacity=0.3, draw=black] (0,0) rectangle (2,2);
              % Puts the shaded rectangle
    \foreach \x in {--3,-2,-1,0,1,2}{% Two indices running over each
      \foreach \y in {-2,-1, ..., 2}{% node on the grid we have drawn 
        \node[draw,circle,inner sep=2pt,fill] at (2*\x,2*\y) {};
            % Places a dot at those points
      }
    }
        \node[draw,red, circle,inner sep=2pt,fill] at (0, 0) {};

    \draw [decorate,decoration={brace,amplitude=10pt},xshift=-4pt,yshift=0pt] (6.5,2.0) -- (6.5,0.1) node [black,midway,xshift=25pt] {\footnotesize $\sqrt{{\left\lvert {d} \right\rvert}}$};
    \draw [decorate,decoration={brace,amplitude=10pt},xshift=-4pt,yshift=0pt] (6.5,-0.1) -- (6.5,-2) node [black,midway,xshift=25pt] {\footnotesize $\sqrt{{\left\lvert {d} \right\rvert}}$};

\end{tikzpicture}
```
When \( d \equiv 1 \operatorname{mod}4 \), we have \( {\mathbb{Z}}_k = \left\{{ {1\over 2}(a + b \sqrt{d} ) {~\mathrel{\Big|}~}a,b,\in {\mathbb{Z}},\, a\equiv b \operatorname{mod}2}\right\} \). On the real axis, if \( b=0 \) then \( a \) is an even integer and \( \left\{{(1/2)a}\right\} \) is all integers. To get the remaining elements, we don't just shift up and down: setting \( b=1 \) yields elements that look like \( (1/2)a + \sqrt{d} \) where \( a \) is odd, so we get the following:

```{=tex}
\begin{tikzpicture}
    \draw [thick, gray,-latex] (-5, 0) -- (7, 0);% Draw x axis
    \draw [thick, gray,-latex] (0, -5) -- (0, 5);% Draw y axis

    \clip (-5,-5) rectangle (10cm,10cm); % Clips the picture...
    %\pgftransformcm{1}{0.6}{0.7}{1}{\pgfpoint{0cm}{0cm}}
          % This is actually the transformation matrix entries that
          % gives the slanted unit vectors. 
    \draw[style=help lines,dashed] (-14,-14) grid[step=2cm] (6,5);
          % Draws a grid in the new coordinates.
          %\filldraw[fill=gray, fill opacity=0.3, draw=black] (0,0) rectangle (2,2);
              % Puts the shaded rectangle
    \foreach \x in {--3,-2,-1,0,1,2}{% Two indices running over each
      \foreach \y in {-2,-1, ..., 2}{% node on the grid we have drawn 
        \node[draw,circle,inner sep=2pt,fill] at (2*\x,2*\y) {};
            % Places a dot at those points
      }
    }
\foreach \x in {--2,-3,-1,0,1,2,-2}{% Two indices running over each
      \foreach \y in {-2,-1, ..., 2}{% node on the grid we have drawn 
        \node[draw, circle,inner sep=2pt,fill] at (2*\x+1,2*\y+1) {};
            % Places a dot at those points
      }
    }
        \node[draw,red, circle,inner sep=2pt,fill] at (0, 0) {};

    \draw [decorate,decoration={brace,amplitude=10pt},xshift=-4pt,yshift=0pt] (6.5,1.0) -- (6.5,0.1) node [black,midway,xshift=25pt] {\footnotesize ${1\over 2} \sqrt{{\left\lvert {d} \right\rvert}}$};
    \draw [decorate,decoration={brace,amplitude=10pt},xshift=-4pt,yshift=0pt] (6.5,-0.1) -- (6.5,-1) node [black,midway,xshift=25pt] {\footnotesize ${1\over 2} \sqrt{{\left\lvert {d} \right\rvert}}$};
\draw [decorate,decoration={brace,amplitude=10pt},xshift=-4pt,yshift=0pt] (6.5,1.95) -- (6.5,1.05) node [black,midway,xshift=25pt] {\footnotesize ${1\over 2} \sqrt{{\left\lvert {d} \right\rvert}}$};

\end{tikzpicture}
```
Now we can think of the criterion for an imaginary quadratic field to be norm-Euclidean: what does it mean to be within norm 1 of an element of \( {\mathbb{Z}}_K \)? If \( z\in K \), we can write \( N(z) = z \mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu = {\left\lvert {z} \right\rvert}^2 \), and thus reformulate our criterion: \( K \) is norm-Euclidean if and only if for all \( \beta\in K \) there exists a \( \gamma\in {\mathbb{Z}}_K \) such that \( {\left\lvert {\beta- \gamma} \right\rvert}<1 \). Note this this is the familiar geometric distance in \( {\mathbb{C}} \).
:::

::: {.example title="?"}
\( {\mathbb{Q}}(i) \) is norm-Euclidean: the ring of integers is \( {\mathbb{Z}}(i) \), which is the integer lattice in \( {\mathbb{C}} \). Note one can cover \( {\mathbb{C}} \) by open circles of radius 1:

```{=tex}
\begin{tikzpicture}
    \draw [thick, gray,-latex] (-5, 0) -- (7, 0);% Draw x axis
    \draw [thick, gray,-latex] (0, -5) -- (0, 5);% Draw y axis

    \clip (-5,-5) rectangle (10cm,10cm); % Clips the picture...
    %\pgftransformcm{1}{0.6}{0.7}{1}{\pgfpoint{0cm}{0cm}}
          % This is actually the transformation matrix entries that
          % gives the slanted unit vectors. 
    \draw[style=help lines,dashed] (-14,-14) grid[step=2cm] (6,5);
          % Draws a grid in the new coordinates.
          %\filldraw[fill=gray, fill opacity=0.3, draw=black] (0,0) rectangle (2,2);
              % Puts the shaded rectangle
    \foreach \x in {--3,-2,-1,0,1,2}{% Two indices running over each
      \foreach \y in {-2,-1, ..., 2}{% node on the grid we have drawn 
        \node[draw,circle,inner sep=2pt,fill] at (2*\x,2*\y) {};
            % Places a dot at those points
      }
    }
        \node[draw,red, circle,inner sep=2pt,fill] at (0, 0) {};

\filldraw[dotted, fill=blue!50, draw=blue, very thick, fill opacity=0.2] (2,0) circle (2cm);
\filldraw[dotted, fill=blue!50, draw=blue, very thick, fill opacity=0.2] (0,0) circle (2cm);
\filldraw[dotted, fill=blue!50, draw=blue, very thick, fill opacity=0.2] (-2,0) circle (2cm);
\node at (5, 1) {$\cdots$};
\end{tikzpicture}
```
Continuing this way, every point with rational coordinates can be covered by some open disc of radius 1:

```{=tex}
\begin{tikzpicture}
    \draw [thick, gray,-latex] (-5, 0) -- (7, 0);% Draw x axis
    \draw [thick, gray,-latex] (0, -5) -- (0, 5);% Draw y axis

    \clip (-5,-5) rectangle (10cm,10cm); % Clips the picture...
    %\pgftransformcm{1}{0.6}{0.7}{1}{\pgfpoint{0cm}{0cm}}
          % This is actually the transformation matrix entries that
          % gives the slanted unit vectors. 
    \draw[style=help lines,dashed] (-14,-14) grid[step=2cm] (6,5);
          % Draws a grid in the new coordinates.
          %\filldraw[fill=gray, fill opacity=0.3, draw=black] (0,0) rectangle (2,2);
              % Puts the shaded rectangle
    \foreach \x in {--3,-2,-1,0,1,2}{% Two indices running over each
      \foreach \y in {-2,-1, ..., 2}{% node on the grid we have drawn 
        \node[draw,circle,inner sep=2pt,fill] at (2*\x,2*\y) {};
\filldraw[dotted, fill=blue!50, draw=blue, very thick, fill opacity=0.2] (2*\x,2*\y) circle (2cm);

            % Places a dot at those points
      }
    }
        \node[draw,red, circle,inner sep=2pt,fill] at (0, 0) {};


\node at (5, 1) {$\cdots$};
\end{tikzpicture}
```
:::

::: {.remark}
Note that this doesn't work for arbitrary \( d \), since the distance between the horizontal lines grows with \( d \). It's not hard to work out the exact list where everything *is* covered:
:::

::: {.theorem title="When quadratic fields are norm-Euclidean"}
\( K \) is norm-Euclidean if and only if \( d\in \left\{{-1,-2,-3,-7,-11}\right\} \).
:::

::: {.corollary title="When rings of integers are PIDs/UFDs"}
For these \( d \), \( {\mathbb{Z}}_K \) is a PID and thus a UFD.
:::

::: {.remark}
So we've classified all norm-Euclidean imaginary quadratic fields. What about removing the word "norm"? We restricted to \( {\left\lvert {N({-})} \right\rvert} \) because there was a particularly nice geometric interpretation, whereas being Euclidean involves a mysterious \( \varphi \). Remarkably, it can be done, and it's the same list!
:::

::: {.theorem title="Motzkin"}
For \( K \) an imaginary quadratic field, \( K \) is Euclidean if and only if \( d\in \left\{{-1,-2,-3,-7,-11}\right\} \).
:::

::: {.remark}
If \( {\mathbb{Z}}_K \) were never a PID in these cases, we could immediately conclude it wasn't Euclidean either. But there are values of \( d \) not on this list for which \( {\mathbb{Z}}_K \) is a PID, e.g. \( d=-19 \). Since \( -19 \equiv 1 \operatorname{mod}4 \), one can write \( {\mathbb{Z}}_K = {\mathbb{Z}}\left[ {1 + \sqrt{-19} \over 2}\right] \), and by Motzkin's theorem this is a PID which is not a Euclidean domain.
:::

::: {.remark}
We'll prove this theorem! First we need a few lemmas.
:::

::: {.lemma title="Most imaginary quadratic fields have only two units"}
Let \( K \) be an imaginary quadratic field, then \( U({\mathbb{Z}}_K) = \left\{{\pm 1 }\right\} \) except if \( d=-1, -3 \).
:::

::: {.proof title="of lemma (Important!)"}
We know that the units \( u \) satisfy \( {\left\lvert {N(u)} \right\rvert} = 1 \), and for imaginary quadratic fields norms are non-negative, so we know \( N(u) = 1 \). What are the solutions this equation? Suppose \( d=2,3 \operatorname{mod}4 \), then we can write \( \alpha = a + b \sqrt{d} \) with \( a,b\in {\mathbb{Z}} \) and \( 1 = N \alpha = a^2 - db^2 = a^2 + {\left\lvert {d} \right\rvert}b^2 \). If \( {\left\lvert {d} \right\rvert}= 1 \) then this will have four solutions: \( (a, b) = (\pm 1, 0), (0, \pm 1) \).

\

Otherwise if \( {\left\lvert {d} \right\rvert}> 1 \) then \( b=0 \) and \( a^2=1 \implies a = \pm 1 \) and thus \( \alpha = \pm 1 \). So in this case, the only units are \( \pm 1 \), unless \( {\left\lvert {d} \right\rvert} = 1 \). But the only negative squarefree integer of absolute value 1 is \( -1 \).

Suppose \( d \equiv 1 \operatorname{mod}4 \). In this case, we need
\[
1 = {a^2 + {\left\lvert {d} \right\rvert} b^2 \over 4} \implies a^2 + {\left\lvert {d} \right\rvert}b^2 = 4  
.\]
Note that \( d<0 \) is \( 1\operatorname{mod}4 \), so it's possible that \( d=-3 \) -- but this was one of the exceptions in the theorem, so assume otherwise. Thus \( {\left\lvert {d} \right\rvert}\geq 7 \), which forces \( b=0 \implies a^2 = 4 \implies a = \pm 2 \). Then \( \alpha= \pm 1 \).
:::

::: {.remark}
For the excluded cases, the units can be explicitly computed. When \( d=-1 \), \( U({\mathbb{Z}}[i]) =\left\{{\pm 1, \pm i}\right\} \), yielding 4 units. When \( d=-3 \),
\[
U\qty{{\mathbb{Z}}\left[ {1 + \sqrt{-3} \over 2 } \right]} = \left\{{\pm 1, {\pm 1 \pm \sqrt{-3} \over 2}}\right\}
,\]
yielding 6 units. Note that in the first case, these are exactly the 4th roots of unity, and in the second case these are the sixth roots. This is a general phenomenon that will appear again!
:::

::: {.lemma title="Norm of generator of principal ideal equals size of quotient"}
Let \( K \) be any quadratic field and \( \alpha\in {\mathbb{Z}}_K \). Then \( \# {\mathbb{Z}}_k / \left\langle{ \alpha }\right\rangle = {\left\lvert {N( \alpha )} \right\rvert} \).
:::

## Proof of Motzkin's Theorem

::: {.proof title="of Motzkin's Theorem"}
We want to show that being Euclidean implies \( d=-1,-2,-3,-7,-11 \). Suppose \( {\mathbb{Z}}_K \) is Euclidean with respect to \( \varphi \). Choose \( \beta\in {\mathbb{Z}}_K \) nonzero and not a unit with \( \varphi(\beta) \) minimal among all such \( \beta \).

::: {.claim}
\[
\# {\mathbb{Z}}_K / \left\langle{ \beta }\right\rangle \leq 3 
.\]
:::

::: {.proof title="of claim"}
For any \( \alpha\in {\mathbb{Z}}_K \) and consider it in the quotient. Since \( {\mathbb{Z}}_K \) is Euclidean, we can write \( \alpha = \beta + \gamma+ \rho \) where either \( \rho=0 \) or \( \varphi(\rho ) < \varphi (\beta ) \). How can the second possibility occur? \( \beta \) was chosen to have a minimal \( \varphi \) value, so the only smaller elements are units. So \( \rho = 0 \) or \( \rho \) is a unit. Reducing \( \operatorname{mod}\beta \), we obtain \( \alpha= \rho \operatorname{mod}\beta \), and hence \( \# {\mathbb{Z}}_K / \left\langle{ \beta }\right\rangle \leq 1 + \# U({\mathbb{Z}}_K) \) where the 1 comes from the zero element and everything else in the quotient has a representative that is a unit. This is bounded above by \( 3 \) when \( d\neq -1, -3 \), which is one of the exclusions in the theorem.
:::

Now we have \( N( \beta) \leq 3 \) and this can be solved -- if \( d \) is large, these solutions are widely distributed. If \( d = 2, 3 \operatorname{mod}4 \) then \( \beta= a + b \sqrt{d} \) with \( a, b \in ZZ \) and \( a^2 + {\left\lvert {d} \right\rvert}b^2 \leq 3 \). We can assume \( {\left\lvert {d} \right\rvert}> 3 \), since \( d=-1, -2 \) are excluded. Then \( b=0 \) is forced, and \( a = 0, \pm 1 \). But why can't \( \beta=0, \pm 1 \)? It was chosen to be minimal among *nonzero nonunits*. \( \contradiction \)

If \( d \equiv 1 \operatorname{mod}4 \), then \( \beta= {a + b \sqrt{d} \over 2} \) where \( a,b\in {\mathbb{Z}},\, a\equiv b \operatorname{mod}2 \). Then
\[
{a^2 + {\left\lvert {d} \right\rvert}b^2 \over 4} \leq 3 \implies a^2 + {\left\lvert {d} \right\rvert}b^2 \leq 12  
.\]
Now considering that \( -d\equiv 1 \operatorname{mod}4 \implies -d \in \left\{{ -3, -7, -11, \cdots}\right\} \), the first three of which are on our list of exclusions. So we can assume \( {\left\lvert {d} \right\rvert}\geq 15 \), which forces \( b=0 \), \( a \) must be even, and \( a^2 \leq 12 \). So \( a=0, \pm 2 \implies \beta= 0, \pm 1 \). \( \contradiction \)
:::

::: {.remark}
What's the story for real quadratic fields? We understand norm-Euclidean ones, although the proofs aren't nearly as simple. Things worked out nicely here because we had circles in the plane; in the real case these end up being complicated hyperbolas. One can prove that if \( d > 73 \) then \( K \coloneqq{\mathbb{Q}}(\sqrt d) \) is not norm-Euclidean. What are the Euclidean real quadratic fields? The situation is much different, and there are two open conjectures.
:::

::: {.conjecture}
For real quadratic fields \( K \), \( {\mathbb{Z}}_K \) is a PID for infinitely many \( d> 0 \). We don't even know about to prove there are just infinitely many *number* fields satisfying this condition! We believe this is true since it happens a positive proportion of the time experimentally.
:::

::: {.conjecture}
If \( {\mathbb{Z}}_K \) is a PID, then \( {\mathbb{Z}}_K \) is Euclidean with respect to some norm function. This is a consequence of a certain generalization of the RH. This is not true for imaginary quadratic fields. Why is it different here? The unit group plays a large role, and is infinite here. The real conjecture is that for \( K \) any number field, if \( {\mathbb{Z}}_K \) is a PID with infinitely many units then \( {\mathbb{Z}}_K \) is Euclidean.
:::

::: {.remark}
There has been some progress, a result along the lines of there being at most two exceptions, but we don't know if those exceptions exist.
:::

# Ideal Theory and Quadratic Fields (Lec. 6, Tuesday, February 02)

## Prime Factorization in \( \operatorname{Id}({\mathbb{Z}}_K) \) {#prime-factorization-in-operatornameidmathbbz_k}

::: {.remark}
Today: roughly chapter 6. Recall that if \( R \) is a domain, we defined \( \operatorname{Id}(R) \) as the set of nonzero ideals of \( R \), which is a monoid. We want to get to the following theorem:
:::

::: {.theorem title="Fundamental Theorem of Ideal Theory (for Quadratic Fields)"}
Let \( K \) be a quadratic field, then \( \operatorname{Id}({\mathbb{Z}}_K) \) is a UFM.
:::

::: {.remark}
This means that everything factors into irreducibles, and when you have unique factorization, irreducible is the same as prime. Note that "prime" here means in this monoidal sense -- does this match up with the existing notion of a prime ideal? I.e. that \( \mathfrak{p} \) is prime if and only if \( R/ \mathfrak{p} \) is a domain, or \( ab\in \mathfrak{p}\implies a,b \in \mathfrak{p} \)?
:::

::: {.proposition title="Prime in monoids equals prime in rings for $\\Id(\\ZZ_K)$"}
"Prime" in the usual ring-theoretic sense is equivalent to "prime" in the monoidal sense for \( \operatorname{Id}({\mathbb{Z}}_K) \).
:::

::: {.remark}
Recall though that \( \operatorname{Id}({\mathbb{Z}}_K) \) is a reduced monoid, so the only unit is the identity, so uniqueness is just up to ordering and doesn't involve additional units. We can restart the unique factorization theorem:
:::

::: {.proposition title="$\\Id(\\ZZ_K)$ has prime factorization"}
Every nonzero ideal of \( {\mathbb{Z}}_K \) factors uniquely as a product of prime ideals in \( {\mathbb{Z}}_K \).
:::

::: {.remark}
Can we explicitly understand what ideals of \( {\mathbb{Z}}_K \) look like for quadratic fields?
:::

::: {.definition title="Standard Bases of Ideals"}
Let \( K = {\mathbb{Q}}(\sqrt{d}) \), so \( {\mathbb{Z}}_K = {\mathbb{Z}}[\sqrt d] \) if \( d=2,3 \operatorname{mod}4 \) or \( {\mathbb{Z}}\left[ {1 + \sqrt{d} \over 2} \right] \) if \( d=1 \operatorname{mod}4 \). Define \( \tau = \sqrt{d} \) or \( (1 + \sqrt{d}) /2 \) accordingly and write \( {\mathbb{Z}}_k = {\mathbb{Z}}[\tau] \).
:::

::: {.remark}
Note that \( \left\{{ 1, \tau }\right\} \) is a \( {\mathbb{Z}}{\hbox{-}} \)basis of \( {\mathbb{Z}}_K \). An ideal of \( {\mathbb{Z}}_K \) is a submodule as a \( {\mathbb{Z}}{\hbox{-}} \)module, which is free, so any ideal is free of rank at most 2. Can we write down such a basis?
:::

::: {.lemma title="Existence of $\\tau$"}
Let \( I \) be a nonzero ideal of \( {\mathbb{Z}}_K \), then \( I \) contains a nonzero integer and an element of the form \( a + b \tau \) where \( b\neq 0 \).
:::

::: {.proof title="of lemma"}
How to produce a nonzero rational integer: let \( \alpha\in I \) be nonzero and take the norm. Then \( N \alpha \) is a nonzero integer, and since \( \mkern 1.5mu\overline{\mkern-1.5mu\alpha\mkern-1.5mu}\mkern 1.5mu\in {\mathbb{Z}}_K \) we have \( N \alpha = \alpha \mkern 1.5mu\overline{\mkern-1.5mu \alpha\mkern-1.5mu}\mkern 1.5mu \in I \). Now since \( \tau\in {\mathbb{Z}}_K \) and \( I \) absorbs multiplication we can set \( b \coloneqq N \alpha(\tau) \in I \).
:::

::: {.remark}
We wanted a nice description of bases for ideals -- here it is!
:::

::: {.proposition title="Existence of a standard basis for an ideal"}
Let \( I {~\trianglelefteq~}{\mathbb{Z}}_K \) be a nonzero ideal. Choose \( n\in {\mathbb{Z}}^+ \) such that \( I \cap{\mathbb{Z}}= n{\mathbb{Z}} \).[^5] Choosing \( B \in {\mathbb{Z}}^+ \) such that \( \left\{{ b\in {\mathbb{Z}}{~\mathrel{\Big|}~}a + b \tau\in I \text{ for some } a \in {\mathbb{Z}}}\right\} = B{\mathbb{Z}} \).[^6] Since \( B \) is in the LHS, pick \( A\in {\mathbb{Z}} \) with \( A + B\tau \in I \). Then \( \left\{{n, A+B\tau}\right\} \) is a \( {\mathbb{Z}}{\hbox{-}} \)basis for \( I \).

\

Any such basis is referred to as a **standard basis** for \( I \)
:::

::: {.remark}
Note that this is only determined up to \( A \operatorname{mod}n \).
:::

::: {.proof title="of proposition"}
Take any element in \( I \), which can be represented as \( a + b \tau \), we want to show that this can be expressed in terms of the proposed basis. Note that \( B\divides b \) by its definition, since \( B \) generated the ideal of \( \tau \) coefficients. So write \( b = Bs \), then
\[
( a + b \tau) - (A + b \tau)s \in {\mathbb{Z}}\cap I = \left\langle{ n }\right\rangle 
.\]
So write this difference as \( nr \) for some \( r\in {\mathbb{Z}} \), then rearranging yields
\[
a + b \tau = nr + (A + B \tau)s
,\]
which is a \( {\mathbb{Z}}{\hbox{-}} \)linear combination of the standard basis elements. Uniqueness is easy and follows from the fact that every element in \( {\mathbb{Z}}_K \) has a unique representation in terms of \( 1, \tau \).
:::

## Ideal Norms

::: {.remark}
In the previous section, we used the fact that for \( a\in {\mathbb{Z}}_k \), the number of elements in \( {\mathbb{Z}}_K / \left\langle{ n }\right\rangle \) is \( {\left\lvert { N a } \right\rvert} \). That will be a consequence of the theory we develop here.
:::

::: {.definition title="Norm of an ideal"}
If \( I{~\trianglelefteq~}{\mathbb{Z}}_K \) is a nonzero ideal, define the **norm of \( I \)** as \( N(I) = {\left\lvert {{\mathbb{Z}}_K / I} \right\rvert} \).
:::

::: {.remark}
It's not completely obvious, but this quotient is always finite. We can use the fact that \( I\leq {\mathbb{Z}}_K \) is a \( {\mathbb{Z}}{\hbox{-}} \)submodule of rank exactly 2. It's then a general fact from algebra that \( A/B \) is finite when \( \operatorname{rank}(A) = \operatorname{rank}(B) \), and there are ways of figuring out the number of elements (see normal forms).
:::

::: {.proposition title="Norms can be computed in terms of a basis with respect to $\\tau$"}
Suppose that \( I{~\trianglelefteq~}{\mathbb{Z}}_K \) is a nonzero ideal and let \( n, A+B \tau \) be a standard basis for \( I \). Then \( N(I) = nB \in {\mathbb{Z}}^+ \).
:::

::: {.proof title="of proposition"}
Check that \( \left\{{ a + b \tau {~\mathrel{\Big|}~}0\leq a \leq n,\, 0 \leq b \leq B}\right\} \) is a complete and irredundant set of representatives for \( {\mathbb{Z}}_K/I \).
:::

::: {.remark}
So given a standard basis, it's easy to compute norms! What does this have to do with the previous notion of norms for elements?
:::

::: {.theorem title="The ideal that the norm generates"}
Let \( I {~\trianglelefteq~}{\mathbb{Z}}_K \) be nonzero and define \( \mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu = \left\{{ \mkern 1.5mu\overline{\mkern-1.5mu\alpha \mkern-1.5mu}\mkern 1.5mu{~\mathrel{\Big|}~}\alpha \in I }\right\} {~\trianglelefteq~}{\mathbb{Z}}_K \). Then \( I \mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu = \left\langle{ N(I) }\right\rangle \).
:::

::: {.lemma title="The $\\tau$ coefficient divides the remaining coefficient"}
Let \( n \) be as above and let \( A + B \tau \) be a standard basis for \( I \). Then \( B\divides n \) and \( B\divides A \).
:::

::: {.proof title="of lemma"}
Recall that \( B \) was a generator for \( \tau \) components of elements of \( I \), so we just need to find an element of \( I \) with \( \tau \) component \( n \), and \( n \tau \in I \) works. Now compute \( (A + B \tau) \tau\in I \). This is equal to
\[
A \tau + B \tau^2
.\]
Note that this could in principle be done in cases: if \( \tau = \sqrt{d} \), the quantity \( Bd \) would be an integer and \( A \) would be the \( \tau \) coordinate. Then since \( B \) divides every \( \tau \) coefficient, we'd be done. But let's try this in a more unified way: we know \( \tau \) is a root of a monic degree 2 polynomial, namely \( (x - \tau) (x - \mkern 1.5mu\overline{\mkern-1.5mu\tau\mkern-1.5mu}\mkern 1.5mu) = x^2 - \operatorname{Tr}( \tau)x + N( \tau) \), and thus we can write
\[
\tau^2 = \operatorname{Tr}( \tau) \tau - N( \tau)
.\]
Substituting yields
\[
(A + B \tau) \tau
&= A \tau + B \tau^2 \\
&= A \tau + B ( \operatorname{Tr}( \tau) \tau - N( \tau) ) \\
&= - B N( \tau) + (A + B \operatorname{Tr}( \tau ) ) \tau
.\]
The coefficient of \( \tau \) must be a multiple of \( B \), which forces \( B\divides A \).
:::

::: {.proof title="of theorem"}
Let \( n, A + B \tau \) be a standard basis for \( I \). Then \( I = \left\langle{ n, A+ B \tau }\right\rangle \), which is a generating set as a \( {\mathbb{Z}}_K{\hbox{-}} \)module since they generate \( I \) over \( {\mathbb{Z}} \) and subset containment both ways can be readily checked. We can then write \( \mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu = \left\langle{ n, A+B \mkern 1.5mu\overline{\mkern-1.5mu\tau \mkern-1.5mu}\mkern 1.5mu}\right\rangle \), since conjugating ordinary integers doesn't change them. Using the lemma, we can write
\[
I &= \left\langle{ Bn', BA' + B \tau }\right\rangle\\
\mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu &= \left\langle{ Bn', BA' + B \mkern 1.5mu\overline{\mkern-1.5mu\tau\mkern-1.5mu}\mkern 1.5mu }\right\rangle
.\]

We can factor out a \( B \) to get
\[
I &= \left\langle{ B }\right\rangle \left\langle{ n', A' + \tau}\right\rangle \\  
\mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu &= \left\langle{ B }\right\rangle \left\langle{ n', A' + \mkern 1.5mu\overline{\mkern-1.5mu\tau\mkern-1.5mu}\mkern 1.5mu }\right\rangle 
.\]

Now multiplying the two yields
\[
I \mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu = \left\langle{ B^2 }\right\rangle \left\langle{ (n')^2, n'(A' + \mkern 1.5mu\overline{\mkern-1.5mu \tau\mkern-1.5mu}\mkern 1.5mu ), n'(A' + \tau), N(A' + \tau) }\right\rangle  
.\]
It's tempting to factor out \( n' \), but it isn't obviously in the last factor. But it is! Note that \( N(A' + \tau) \in \left\langle{ A' + \tau, n' }\right\rangle \) and thus \( B N(A' + gt) \in \left\langle{ B }\right\rangle \left\langle{ A' + \tau, n' }\right\rangle = I \). But the first expression is an ordinary integer, i.e. in \( I \cap{\mathbb{Z}}= \left\langle{ n }\right\rangle \) and thus a multiple of \( n \). So \( Bn' = n \divides BN(A' + \tau) \), and thus \( n' \divides N(A' + \tau) \). So we can rewrite
\[
I \mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu 
&= \left\langle{ B^2 }\right\rangle \left\langle{ n' }\right\rangle \left\langle{ n', A' + \mkern 1.5mu\overline{\mkern-1.5mu \tau\mkern-1.5mu}\mkern 1.5mu , A' + \tau, { N(A' + \tau) \over n'} }\right\rangle   \\
&= \left\langle{ B^2 n' }\right\rangle 
\left\langle{ n', A' + \mkern 1.5mu\overline{\mkern-1.5mu \tau\mkern-1.5mu}\mkern 1.5mu , A' + \tau, { N(A' + \tau) \over  n'} }\right\rangle   
.\]

We can now note that \( B^2 n' = B^2(n/B) = nB = N(I) \). We've thus shown that
\[
I \mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu 
= \left\langle{ N(I) }\right\rangle 
\left\langle{ n', A' + \mkern 1.5mu\overline{\mkern-1.5mu \tau\mkern-1.5mu}\mkern 1.5mu , A' + \tau, { N(A' + \tau) \over  n'} }\right\rangle   
.\]
We'd really like the second term to just be \( \left\langle{ 1 }\right\rangle \). Note that this factor contains some integers: \( n', N(A' + \tau)/n' \), and \( (A' + \mkern 1.5mu\overline{\mkern-1.5mu\tau\mkern-1.5mu}\mkern 1.5mu) + (A' + \tau) = \operatorname{Tr}(A' + \tau) \). So let
\[
J \coloneqq\left\langle{ n, N(A' + \tau)/n', \operatorname{Tr}(A' + \tau) }\right\rangle {~\trianglelefteq~}{\mathbb{Z}}
,\]
then it's enough to show \( J = \left\langle{ 1 }\right\rangle {~\trianglelefteq~}{\mathbb{Z}} \). Why? If so, \( 1 \) is a \( {\mathbb{Z}}{\hbox{-}} \)linear combination of these elements, but every \( {\mathbb{Z}}{\hbox{-}} \)linear combination is also a \( {\mathbb{Z}}_K{\hbox{-}} \)linear combination. Every such combination will be in the original ideal appearing in \( I \mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu \), which we want to show is the unit ideal. We can write \( J = d{\mathbb{Z}} \) where \( d\in {\mathbb{Z}}^+ \) and suppose toward a contradiction that \( d>1 \).

\

Consider \( \alpha \coloneqq(A' + \tau) / d \in K \). Taking the trace is \( {\mathbb{Q}}{\hbox{-}} \)linear, so \( \operatorname{Tr}( \alpha) = (1/d) \operatorname{Tr}(A' + \tau) \in {\mathbb{Z}} \). This follows because the trace \( \operatorname{Tr}(A' + \tau) \) is in \( J \), thus a multiple of \( d \). We can also compute \( N \alpha = N(A' + \tau) / d^2 \) using that \( d\mkern 1.5mu\overline{\mkern-1.5mud\mkern-1.5mu}\mkern 1.5mu = d^2 \) since \( d \) is rational.

\

The claim is that \( N \alpha \) is also an integer: since \( N(A' + \tau)/n', \operatorname{Tr}(A' + \tau) \) are in \( J \), \( d \) divides both. So we know that \( d^2 \divides (n') (N(A' + \tau) / n') = N(A' + \tau) \), which forces \( N \alpha\in {\mathbb{Z}} \). So we know \( N \alpha, \operatorname{Tr}\alpha \in {\mathbb{Z}} \), which forces \( \alpha\in {\mathbb{Z}}_K \) since \( \alpha \) is a root of \( x^2 - \operatorname{Tr}(\alpha) + N \alpha \). But \( \alpha \) can't be in \( {\mathbb{Z}}_K \), since these consist only of \( {\mathbb{Z}}{\hbox{-}} \)linear combinations of \( 1, \tau \) -- however here the coefficient of \( \tau \) is \( 1/d \not \in {\mathbb{Z}} \), and thus \( \alpha = A'/d + (1/d) \tau \not\in {\mathbb{Z}}_K \).
:::

::: {.remark}
This is a long proof! It's nice in that it's direct, but less nice in that it required some clever steps. When we do the case for general number fields, we'll be able to use a more conceptual approach that avoids some of these computations. Many other facts fall out of these theorem -- in fact, there are nice results as long as \( I \mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu \) is a principal ideal.
:::

# Fundamental Theorem of Ideal Theory (Lec. 7, Thursday, February 04)

## Norms: Multiplicativity and Computations

::: {.remark}
Today: roughly chapter 6. Goal: establish unique factorization of ideals for quadratic fields. Let \( K = {\mathbb{Q}}(\sqrt d) \) be a quadratic field and we let
\[
\tau = 
\begin{cases}
\sqrt d & d \equiv 2,3 \operatorname{mod}4  
\\
{1 + \sqrt{d} \over 2} & d \equiv 1 \operatorname{mod}4.
\end{cases}
\]
In this case we saw that \( {\mathbb{Z}}_K = {\mathbb{Z}}+ {\mathbb{Z}}\tau = {\mathbb{Z}}[\tau] \). We defined the norm of a nonzero ideal \( I{~\trianglelefteq~}{\mathbb{Z}}_K \) by \( N(I) = {\left\lvert {{\mathbb{Z}}_K/I} \right\rvert} \). The main theorem was that \( I \mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu = \left\langle{ N(I)}\right\rangle \), so the two definitions of norms are closely related. Some corollaries of this theorem:
:::

::: {.corollary title="The norm is multiplicative"}
Let \( I, J {~\trianglelefteq~}{\mathbb{Z}}_K \) be nonzero, then \( N(IJ) = N(I) N(J) \).
:::

::: {.proof title="of corollary"}
Note that \( IJ \mkern 1.5mu\overline{\mkern-1.5muIJ\mkern-1.5mu}\mkern 1.5mu = \left\langle{ N(IJ) }\right\rangle \) on one hand, and on the other hand we can write this as
\[
IJ \mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu \mkern 1.5mu\overline{\mkern-1.5muJ\mkern-1.5mu}\mkern 1.5mu = I\mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu J \mkern 1.5mu\overline{\mkern-1.5muJ\mkern-1.5mu}\mkern 1.5mu = \left\langle{ N(I) }\right\rangle \left\langle{ N(J) }\right\rangle = \left\langle{ N(I) N(J) }\right\rangle
.\]
So we know that \( \left\langle{ N(IJ) }\right\rangle = \left\langle{ N(I) N(J) }\right\rangle \) in \( {\mathbb{Z}}_K \), how can we conclude that the generators are the same? In a domain, they are the same up to a unit, so
\[
{ N(IJ) \over N(I) N(J) } \in U({\mathbb{Z}}_K)
,\]
and thus this quotient is in \( {\mathbb{Z}}_K \cap{\mathbb{Q}}= {\mathbb{Z}} \). The same argument shows that its reciprocal is also in \( {\mathbb{Z}} \), so the ratio must be a unit in \( {\mathbb{Z}} \) and we have \( N(IJ) = \pm N(I) N(J) \). But the norm counts something, so both sides must be positive.
:::

::: {.remark}
Note that if we knew \( I, J \) were comaximal, we could appeal to the Chinese Remainder Theorem, but we don't need any assumptions on the ideals for this proof.
:::

::: {.corollary title="Computing norms of principal ideals"}
Let \( \alpha\in {\mathbb{Z}}_K \setminus\left\{{0}\right\} \), then
\[
N( \left\langle{ \alpha }\right\rangle ) = {\left\lvert {N(\alpha)} \right\rvert}  = {\left\lvert {\alpha\mkern 1.5mu\overline{\mkern-1.5mu\alpha\mkern-1.5mu}\mkern 1.5mu} \right\rvert} 
.\]
:::

::: {.proof title="of corollary"}
We have
\[
\left\langle{ N( \left\langle{ \alpha }\right\rangle  )}\right\rangle 
\left\langle{ \alpha }\right\rangle \left\langle{ \mkern 1.5mu\overline{\mkern-1.5mu\alpha \mkern-1.5mu}\mkern 1.5mu}\right\rangle 
&=
\left\langle{ \alpha }\right\rangle \left\langle{ \mkern 1.5mu\overline{\mkern-1.5mu\alpha \mkern-1.5mu}\mkern 1.5mu}\right\rangle \\
&=
\left\langle{ \alpha\mkern 1.5mu\overline{\mkern-1.5mu\alpha \mkern-1.5mu}\mkern 1.5mu}\right\rangle\\
&= \left\langle{ N \alpha }\right\rangle 
.\]
By the same argument as the previous corollary, this can only be true if the generators are the same up to sign, so \( N( \left\langle{ \alpha }\right\rangle = \pm N \alpha \).
:::

## Unique Factorization for Ideals

::: {.lemma title="Principal Multiple Lemma"}
Let \( I {~\trianglelefteq~}{\mathbb{Z}}_K\setminus\left\{{0}\right\} \), then there is another ideal \( \tilde I {~\trianglelefteq~}{\mathbb{Z}}_K\setminus\left\{{0}\right\} \) such that \( I \tilde I \) is principal.
:::

::: {.proof title="of Principal Multiple Lemma"}
Take \( \tilde I \coloneqq\mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu \), since we proved that this is principal and generated by the norm.
:::

::: {.remark}
Why write this down when it's weaker than the previous theorem? In the next proofs, we'll only really use that \( I \) times something is principal.
:::

::: {.lemma title="Cancellation in the Monoid of Ideals"}
Suppose that \( IJ = IJ' \) is an equation of nonzero ideals in \( {\mathbb{Z}}_K \) with \( I \) principal. Then \( J = J' \), so principal ideals can be cancelled from both sides.
:::

::: {.definition title="Dilation of Ideals"}
If \( I {~\trianglelefteq~}{\mathbb{Z}}_K \), for any \( \alpha\in K \) define
\[
\alpha I \coloneqq\left\{{ \alpha \beta {~\mathrel{\Big|}~}\beta \in I }\right\} 
,\]
i.e. scale or dilate the ideal \( I \) by the factor \( \alpha \). We'll refer to this as the **dilation of \( I \) by \( \alpha \)**.
:::

::: {.remark}
Is this still an ideal in \( {\mathbb{Z}}_K \)? It still contains zero, is still closed under addition, and still absorbs multiplication by elements in \( O_K \) -- however, it may not be a subset of \( {\mathbb{Z}}_K \), since we can dilate by any element in \( K \). For example, for \( I \coloneqq 2{\mathbb{Z}} \) take \( \alpha\coloneqq 1/5 \). These are referred to as **fractional ideal**, i.e. a \( {\mathbb{Z}}_K{\hbox{-}} \)submodule of \( K \). It is an ideal in \( {\mathbb{Z}}_K \) when it is contained in \( {\mathbb{Z}}_K \).
:::

::: {.proof title="of cancellation in the monoid of ideals"}
Write \( I = \left\langle{ \alpha }\right\rangle \). Then \( \left\langle{ \alpha }\right\rangle J = \left\langle{ \alpha }\right\rangle J' \), however the RHS is equal to the dilated ideal \( \alpha J' \) and the LHS is \( \alpha J \). So dilate both sides by \( 1/ \alpha \) to get \( J = J' \).
:::

::: {.remark}
This was the easy case, when \( I \) was principal. What if \( I \) is not principal?
:::

::: {.proposition title="The monoid $\\Id(\\ZZ_K)$ is Cancellative"}
If \( IJ = IJ' \) then \( J = J' \), with no assumptions on \( I \).
:::

::: {.proof title="?"}
Choose \( \tilde I \) using the previous lemma and multiply it to both sides to obtain
\[
(I \tilde I) J = (I \tilde I) J'
.\]
Then since \( I\tilde I \) is principal, it can be cancelled using the previous lemma.
:::

### Proving Unique Factorization

::: {.theorem title="To divide is to contain"}
Let \( I, J \) be nonzero ideals of \( {\mathbb{Z}}_K \), then
\[
I \divides J \iff I \supseteq J
.\]
:::

::: {.proof title="of theorem"}
\( \implies \): This is true in any ring! If \( I\divides J \), then \( J = IM \) where \( M {~\trianglelefteq~}{\mathbb{Z}}_K \), and by definition \( IM \subseteq I \) and so \( J \subseteq I \).

\

\( \impliedby \): Suppose \( I \supseteq J \), we then want to find \( B {~\trianglelefteq~}{\mathbb{Z}}_K \) with \( J = IB \). We'll proceed by pretending we had such a \( B \) and seeing what it must be! If \( B \) satisfies this equation, pick \( \tilde I \) where \( I\tilde I = \left\langle{ \alpha}\right\rangle \), then
\[
\tilde I J = \tilde I I B = \left\langle{ \alpha }\right\rangle B = \alpha B 
.\]
From here we can solve for \( B \) by dilating by \( 1/ \alpha \), so \( B = \alpha ^{-1} (\tilde I J) \). If we make this definition, does it work?

\

First, do we have \( B \subseteq {\mathbb{Z}}_K \)? This amounts to check that \( \tilde I H \subseteq \left\langle{ \alpha }\right\rangle \). This is true, using the assumption \( J \subseteq I \), since \( \tilde I J \subseteq \tilde I I = \left\langle{ \alpha }\right\rangle \). So \( B \) is not a fractional ideal, and is an honest ideal of \( {\mathbb{Z}}_K \). We can also check that
\[
IB 
&= I( \alpha ^{-1} \tilde I J) \\
& = \alpha^{-1}(I \tilde I J) \\
&= \alpha^{-1}( \left\langle{ \alpha }\right\rangle J ) \\
&= \alpha ^{-1} ( \alpha J) \\
&= J
,\]
using that dilation commutes with ideal multiplication.
:::

::: {.remark}
We now want to prove that \( \operatorname{Id}({\mathbb{Z}}_K) \) is a UFM. If it's cancellative, we just need to check factorization into irreducibles and that irreducibles are prime, i.e. the analog of Euclid's lemma.
:::

::: {.remark}
We'll use the fact that \( \operatorname{Id}({\mathbb{Z}}_K) \) is a *reduced* monoid, i.e. the only unit is the identity \( \left\langle{ 1 }\right\rangle \), the entire ring. This follows from the fact that the product of ideals is contained in both factors, so each factor would contain 1 and thus be the entire ring. We'll proceed in two steps:
:::

::: {.proposition title="Unique Factorization"}
```{=tex}
\envlist
```
1.  Every element of \( \operatorname{Id}({\mathbb{Z}}_K) \) factors into irreducibles in \( \operatorname{Id}({\mathbb{Z}}_K) \), and

2.  (Euclid's Lemma) Irreducibles in \( \operatorname{Id}({\mathbb{Z}}_K) \) are prime.
:::

::: {.remark}
We'll use the fact that it's reduced to avoid having to say "non-unit element" in (1), since we have only one unit and we'll think of it as the empty product.\

How do you prove (1)? The same way you prove it for the integers: suppose you have a smallest counterexample. That can't be prime, since a product of 1 prime is an allowable factorization, so this factors into a product of two smaller things which necessarily can *not* be counterexamples by minimality. So the smaller factors break up into primes -- but then so does their product, the original counterexample, contradiction. The tricky part here is choosing what "smaller" should mean.
:::

::: {.proof title="of 1"}
If not, choose \( I \) of smallest norm where \( I \) has no such factorization. Then \( I \neq \left\langle{ 1 }\right\rangle \) since by convention this does factor as the product of zero irreducibles, and \( I \) is not irreducible since irreducibles count as their own factorization. So we can factor \( I = AB \) with \( A, B \neq \left\langle{ 1 }\right\rangle \). Taking norms yields
\[
N(I) = N(AB) = N(A) N(B)
.\]
We'd like the norms of \( A, B \) to be smaller, since then we could apply the inductive hypothesis. The only obstruction to this would be if \( N(A) = 1 \) and \( N(B) = N(I) \). But having norm 1 means that \( A = \left\langle{ 1 }\right\rangle \), since this means the quotient has one element, forcing it to be the zero ring. So everything in the ring is zero mod the ideal, i.e. in the ideal. So \( 1 < N(A), N(B) < N(I) \). Since \( I \) was the smallest counterexample, both \( A \) and \( B \) can be factored into irreducibles, but then concatenating the two factorizations yields a factorization for \( AB \). \( \contradiction \)
:::

::: {.proof title="of 2: Euclid's Lemma"}
Suppose \( P \) is irreducible in \( \operatorname{Id}({\mathbb{Z}}_K) \) and suppose \( P \divides IJ \), we want to show \( P \) divides one of these two. Suppose \( P\notdivides I \), then \( P \) does not contain \( I \) and \( P+I \supsetneq P \). This means that \( P+I \) is a *proper divisor* of \( P \), i.e. it divides \( P \) but is not equal to \( P \). But \( P \) was irreducible, so \( P+I \) is a unit, which forces \( P + I = \left\langle{ 1 }\right\rangle \). Multiplying by \( J \) yields \( PJ + IJ = J \). We said that \( P \divides IJ \) by assumption, so \( IJ = PA \) for some nonzero ideal \( A \). So
\[
J 
&= PJ + IJ \\
&= PJ + PA \\ 
&= P(J + A)
,\]
which shows that \( P\divides J \).
:::

::: {.remark}
Now running the exact same proof as for \( {\mathbb{Z}} \) yields unique factorization.
:::

::: {.exercise title="?"}
Let \( P \) be a nonzero ideal of \( \operatorname{Id}({\mathbb{Z}}_K) \), then \( P \) is monoidally prime in \( \operatorname{Id}({\mathbb{Z}}_K) \) if and only if \( P \) is prime in the usual sense of prime ideals.

> *Hint: use "to divide is to contain".*
:::

## Preview: Ramification

::: {.remark}
This chapter is about understanding prime ideals in quadratic number rings, i.e. \( {\mathbb{Z}}_K \) for quadratic fields. What are the building blocks of the nonzero prime ideals?
:::

::: {.definition title="Prime ideal above a prime number"}
Let \( P \) be a nonzero prime ideal, then \( P \) **lies above** the rational prime \( p \) if and only if \( P \supseteq \left\langle{ p }\right\rangle \). Equivalently, \( p\in P \), or \( P\divides \left\langle{ p }\right\rangle \).
:::

::: {.theorem title="Lying above unique primes"}
Every nonzero prime ideal of \( {\mathbb{Z}}_K \) lies above a unique rational prime \( p \).
:::

::: {.proof title="of theorem"}
Consider \( P \cap{\mathbb{Z}}{~\trianglelefteq~}{\mathbb{Z}} \). Tracing through the definitions, if \( P \) is a prime ideal in \( {\mathbb{Z}}_K \), then this intersection is also prime in \( {\mathbb{Z}} \). Moreover \( P \cap Z \neq \left\{{ 0 }\right\} \), since we can take any nonzero element \( \alpha \in P \), then \( 0\neq \alpha\mkern 1.5mu\overline{\mkern-1.5mu\alpha \mkern-1.5mu}\mkern 1.5mu\in {\mathbb{Z}} \) and since \( P \) absorbs multiplication, this is still in \( P \). The nonzero prime ideals of \( {\mathbb{Z}} \) are of the form \( n{\mathbb{Z}} \) with \( n \) prime, so \( P \cap{\mathbb{Z}}= p{\mathbb{Z}} \) for some prime \( p \). But then \( p\in P \) and \( P \) lies above \( p \). Why is this unique? If \( P \) lies above \( q \), we would have \( q\in P \cap{\mathbb{Z}}= p {\mathbb{Z}} \) and thus \( p\divides q \). But since these are both primes, \( p=q \).
:::

::: {.remark}
If we want to figure out all of the prime ideals \( P \) of \( {\mathbb{Z}}_K \), we should see how \( \left\langle{ p }\right\rangle \) factors, since each \( P \) shows up as a factor of some \( \left\langle{ p }\right\rangle \). Thus the major question will be: given \( p \), how does \( \left\langle{ p }\right\rangle \) factor into prime ideals in \( {\mathbb{Z}}_K \)?
:::

# Prime Ideals of \( {\mathbb{Z}}_K \) (Lec. 8, Tuesday, February 09) {#prime-ideals-of-mathbbz_k-lec.-8-tuesday-february-09}

## Dedekind-Kummer Mirroring

::: {.remark}
Today: chapter 7. Let \( K \) be a quadratic number field. Recall that if \( P {~\trianglelefteq~}{\mathbb{Z}}_K \) is a prime then \( P \) **lies above** \( p\in {\mathbb{Z}} \) if \( P \supseteq \left\langle{ p }\right\rangle \). Equivalently,

-   \( P \) contains \( p \), or
-   \( P \divides \left\langle{ p }\right\rangle \)

Last time we saw that every \( P \) lies above a unique \( p \). The following diagram illustrates the situation:

```{=tex}
\begin{tikzcd}
    K && {{\mathbb{Z}}_K} && P \\
    \\
    {\mathbb{Q}}&& {\mathbb{Z}}&& p
    \arrow[no head, from=1-1, to=3-1]
    \arrow[no head, from=1-3, to=3-3]
    \arrow[no head, from=1-5, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJLIl0sWzAsMiwiXFxRUSJdLFsyLDAsIlxcWlpfSyJdLFsyLDIsIlxcWloiXSxbNCwwLCJQIl0sWzQsMiwicCJdLFswLDEsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiwzLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsNSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==)

If we want to determine all of the primes \( P \), we should consider factoring all of the ideals \( \left\langle{ p }\right\rangle \) into prime ideals of \( {\mathbb{Z}}_K \). We have unique factorization for prime ideals, so we can write \( \left\langle{ p }\right\rangle = P_1 \cdots P_g \). Taking norms yields
\[
N( \left\langle{ p }\right\rangle ) = \prod N(P_i) 
,\]
where we can identify the LHS as \( p^2 \), since the norm for principal ideals is the square of the generating element. Alternatively, we can check the size of \( {\mathbb{Z}}_K/ \left\langle{ p }\right\rangle \). Note that \( {\mathbb{Z}}_K \) is a free \( {\mathbb{Z}}{\hbox{-}} \)module on 2 generators, and we take both coordinates mod \( p \) to get \( ({\mathbb{Z}}/p{\mathbb{Z}})^2 \). Since none of the terms on the RHS are the unit ideal, none have norm 1, and we make the following definition based on the possible cases:

::: {.definition title="Inert, Split, and Ramified Primes"}
```{=tex}
\envlist
```
a.  \( g=1 \) and \( P_1 = \left\langle{ g }\right\rangle \) and \( \left\langle{ p }\right\rangle \) is prime. In this case we say \( p \) **is inert**.

b.  If \( g=2 \) and \( P_1 \neq P_2 \), then we say \( p \) **is split**.

c.  If \( g=2 \) and \( P_1 = P_2 \)\< then we say \( p \) **is ramified**.
:::

Let \( K = {\mathbb{Q}}( \sqrt{d} ) \) and \( \tau \) as usual. We can compute its minimal polynomial:
\[
\min_\tau(x) = 
\begin{cases}
x^2 - d & d \equiv 2,3 \operatorname{mod}4  
\\
x^2 - x + \qty{1-d \over 4} & d \equiv 1 \operatorname{mod}4.
\end{cases}
\]
:::

::: {.theorem title="Dedekind-Kummer, Prime Factorization Mirroring Theorem"}
Let \( p\in {\mathbb{Z}} \) be prime. Then the factorization of \( \left\langle{ p }\right\rangle \) into prime ideals in \( {\mathbb{Z}}_K \) mirrors the factorization of \( \min_\tau(x) \) into irreducibles mod \( p \), i.e. in \( {\mathbb{F}}_p[x] \). If \( \min_\tau(x) \) is irreducibles, then \( p \) is inert. Otherwise,
\[
\min_\tau(x) \equiv (x-a)(x-b) \operatorname{mod}p
\]
for some \( a, b\in {\mathbb{Z}} \), since this is a monic quadratic. In this case \( \left\langle{ p }\right\rangle= P_1 P_2 \) where

-   \( P_1 \coloneqq\left\langle{ p, \tau - a }\right\rangle \),
-   \( P_2 \coloneqq\left\langle{ p, \tau - b}\right\rangle \),

and both ideals have norm \( p \). Finally, \( P_1 = P_2 \iff a\equiv b \operatorname{mod}p \).
:::

::: {.example title="of inert, split, and ramified cases"}
Let \( K = {\mathbb{Q}}( \sqrt{5} ) \), then \( \tau= \sqrt{-5} \) and \( \min_\tau(x) = x^2 + 5 \). We can check how this factors modulo small primes
\[
x^2 + 5 = (x+1)^2 \in {\mathbb{F}}_2[x]
,\]
and we're in the ramified case. In this case,
\[
\left\langle{ 2 }\right\rangle = \left\langle{ 2, \sqrt{ -5} -1 }\right\rangle^2  
.\]
We also have
\[
x^2 + 5 \equiv (x-1)(x+1) \in {\mathbb{F}}_3[x]
,\]
which is the split case, so
\[
\left\langle{ 3 }\right\rangle= \left\langle{ 3, \sqrt{-5} -1 }\right\rangle \left\langle{ 3, \sqrt{-5} + 1 }\right\rangle   
.\]
Taken mod 5, we have
\[
x^2 + 5 \equiv x^2 \in {\mathbb{F}}_5[x]
,\]
so
\[
\left\langle{ 5 }\right\rangle = \left\langle{ 5, \sqrt{-5} }\right\rangle^2 = \left\langle{ \sqrt{-5} }\right\rangle ^2 
.\]
Similarly,
\[
x^2 + 5 \text{ is irreducible } \in {\mathbb{F}}_{11}[x]
,\]
so \( \left\langle{ 11 }\right\rangle \) is inert.
:::

::: {.lemma title="Characterization of $\\ZZ_K$ as a quotient of a polynomial ring"}
There is a surjective morphism
\[
{\mathbb{Z}}[x] &\to {\mathbb{Z}}_K = {\mathbb{Z}}[ \tau ] \\
f( \alpha) &\mapsto f( \tau)
,\]
so by the first isomorphism theorem,
\[
{\mathbb{Z}}[x] / \left\langle{ \min_\tau(x) }\right\rangle \cong {\mathbb{Z}}_K 
.\]
:::

::: {.proof title="of Dedekind-Kummer mirroring"}
Note that \( {\mathbb{Z}}_K / \left\langle{ p }\right\rangle = {\mathbb{Z}}[ \tau] / \left\langle{ p }\right\rangle \), and using the lemma, this is isomorphic to \( {\mathbb{Z}}[x] / \left\langle{ \min_{ \tau} (x), p }\right\rangle \cong {\mathbb{F}}_p[x] / \left\langle{ \min_\tau(x) \operatorname{mod}p }\right\rangle \). In this case, if \( \min_\tau \) is irreducible mod \( p \), then the quotient is a field. Why? The numerator is a polynomial ring over a field and the denominator is generated by an irreducible, and a PID mod an irreducible is always a field. Thus \( \left\langle{ p }\right\rangle \) must be a maximal ideal by considering the first expression above, and maximals are prime here, so \( p \) is inert.

Now suppose it's not irreducible, so
\[
\min_\tau(x) = (x-a)(x-b) \operatorname{mod}p
.\]
Define \( P_1, P_2 \) as in the theorem. Why are these of norm \( p \)? Consider
\[
{\mathbb{Z}}_K/P^1 
&\cong { {\mathbb{Z}}[x] / \left\langle{ \min_\tau(x) }\right\rangle \over \left\langle{ p, x-a }\right\rangle } \\
&\cong {\mathbb{Z}}/p{\mathbb{Z}}[x] / \left\langle{ \min_\tau(x), x-a}\right\rangle \\
&\cong {\mathbb{Z}}/p{\mathbb{Z}}[x] / \left\langle{ \min_\tau(x), x-a}\right\rangle \\
&\cong {\mathbb{Z}}/p{\mathbb{Z}}[x] / \left\langle{ x-a}\right\rangle && \text{since } x-a \divides \min_\tau(x)\\
&\cong {\mathbb{Z}}/p{\mathbb{Z}}
.\]
So \( P_1 \) is maximal and thus prime, and moreover \( N(P_1) = p \) since there are \( p \) elements in \( {\mathbb{Z}}/p{\mathbb{Z}} \). The same argument works for \( P_2 \). Now multiplying them yields
\[
P_1 P_2 
&= \left\langle{ p, p(\tau - a), p (\tau - b), (\tau -a)(\tau -b) }\right\rangle
.\]
Note that
\[
\min_\tau(x) &\equiv (x-a)(x-b) \operatorname{mod}p \\
\implies
\min_\tau(x) &= (x-a)(x-b) + pG(x)
\]
for some \( G\in {\mathbb{Z}}[x] \). Plugging in \( \tau \), the LHS is zero, while on the RHS yields \( \cdots + pG(\tau) \). This last term is \( pr \) for some \( r\in R \), which is zero mod \( p \in {\mathbb{Z}}[\tau] = {\mathbb{Z}}_K \) So \( p \) now divides every term in the generating set above, and since to contain is to divide, we have \( P_1 P_2 \subseteq \left\langle{ p }\right\rangle \) and \( \left\langle{ p }\right\rangle \divides P_1 P_2 \). Write \( P_1 P_2 = \left\langle{ p }\right\rangle I \) for some ideal \( I \), taking norms yields
\[
N(P_1) N(P_2) = N( \left\langle{ p }\right\rangle) N(I) 
.\]
The LHS is \( p^2 \) as shown above, and the RHS is \( p^2 N(I) \) which forces \( N(I) = 1 \iff I = \left\langle{ 1 }\right\rangle = {\mathbb{Z}}_K \) (the entire ring)

\

We now want to show \( P_1 = P_2 \iff a\equiv b \operatorname{mod}p \). The reverse direction is clear, since generators in \( P_1, P_2 \) can be adjusted by \( p \) without changing the ideal. Conversely, suppose \( P_1 = P_2 \). Then \( P_1 \) contains \( \tau - a, \tau - b \), and thus their difference \( a-b = (\tau -b ) - (\tau - a) \in P_1 \). Moreover \( p\in P_1 \), and so \( P_1 \) contains the \( {\mathbb{Z}} \) ideals generated by \( p \) and \( a-b \) and thus \( \gcd(p, a-b) \). If \( a \not\equiv b\operatorname{mod}p \), this greatest common divisor must be 1, forcing \( 1\in P_1 \). This is a contradiction since \( P_1 \) is prime and thus can't be the unit ideal, so \( a \equiv b \operatorname{mod}p \).
:::

::: {.question}
Can we be more explicit about how \( \min_\tau \) factors?
:::

::: {.proposition title="Characterization of inert/split/ramified primes"}
Let \( p \) be an odd prime, then

-   \( p \) is inert \( \iff d \) is not a square \( \operatorname{mod}p \),
-   \( p \) splits \( \iff d \) is a nonzero square \( \operatorname{mod}p \),
-   \( p \) ramifies \( \iff d \equiv 0 \operatorname{mod}p \).
:::

::: {.proposition title="Inert/Split/Ramified primes for quadratic fields"}
```{=tex}
\envlist
```
-   \( d \equiv 5 \operatorname{mod}8 \implies \) 2 is inert.
-   \( d \equiv 1 \operatorname{mod}8 \implies \) 2 is split.
-   \( d \equiv 2, 3 \operatorname{mod}4 \implies \) 2 is ramified.
:::

::: {.remark}
The proof follows from looking at how \( \min_\tau(x) \) factors \( \operatorname{mod}2 \), and there aren't many possibilities.
:::

## Units in \( {\mathbb{Z}}_K \) {#units-in-mathbbz_k}

::: {.remark}
Roughly chapter 8. For the imaginary quadratic case, we can write down the unit group explicitly.
:::

::: {.proposition title="Imaginary quadratic fields have at most 6 units"}
If \( d<0 \) (i.e. the imaginary quadratic case) then \( {\left\lvert { U({\mathbb{Z}}_J)} \right\rvert} \leq 6 \).
:::

::: {.remark}
"Usually" \( U({\mathbb{Z}}_K) = \left\{{ \pm 1 }\right\} \). Here "usually" means there are only two exceptions:

-   For \( {\mathbb{Q}}( \sqrt{-1} ) \) then the units are \( \left\{{ \pm 1, \pm i }\right\} \).

-   For \( d=-3 \), there were 6 units.

In every other case, there are only two.
:::

::: {.proposition title="Existence of the fundamental unit"}
Suppose \( d>0 \), then there is a unit \( \epsilon_0 > 1 \in {\mathbb{Z}}_K \) such that \( U({\mathbb{Z}}_K) = \left\{{ \pm \epsilon_0 ^k {~\mathrel{\Big|}~}k\in {\mathbb{Z}}}\right\} \). Moreover \( \epsilon_0 \) is unique, and we'll refer to this as the **fundamental unit**.
:::

::: {.corollary title="The unit group is infinite for real quadratic fields"}
When \( d>0 \), \( U({\mathbb{Z}}_K) \) is infinite and in fact isomorphic to \( {\mathbb{Z}}/2{\mathbb{Z}}\oplus {\mathbb{Z}} \).
:::

::: {.remark}
Here the \( {\mathbb{Z}}/2{\mathbb{Z}} \) corresponds to the \( \pm \) and the \( {\mathbb{Z}} \) to the exponent.
:::

::: {.example title="of the fundamental unit"}
```{=tex}
\envlist
```
-   For \( d=2 \), we have \( {\varepsilon}_0 = 1 + \sqrt{2} \). This is a unit because it has inverse \( \sqrt{2} -1 \).

-   For \( d=43 \), it turns out that \( {\varepsilon}_0 = 531 \sqrt{43} \).
:::

::: {.lemma title="Computation of norm of the fundamental unit"}
Let \( \epsilon\in {\mathbb{Z}}_K \), then \( \epsilon \in U({\mathbb{Z}}_K) \iff N( \epsilon) = \pm 1 \).
:::

::: {.remark}
Note that norms were positive in the imaginary quadratic case, but can be negative for real quadratics.
:::

::: {.proof title="of computation of norm"}
\( \impliedby \): This means \( \epsilon \mkern 1.5mu\overline{\mkern-1.5mu \epsilon \mkern-1.5mu}\mkern 1.5mu = \pm 1 \), so one of \( \pm \mkern 1.5mu\overline{\mkern-1.5mu\epsilon\mkern-1.5mu}\mkern 1.5mu \) is the inverse.

\( \implies \): Write \( \epsilon \epsilon ^{-1} = 1 \) and take norms of both sides.
:::

::: {.remark}
Our strategy: show that the group of positive units \( U({\mathbb{Z}}_K)^+ \) is infinite cyclic. If we get a generator \( {\varepsilon}_0 > 1 \), replace it with its reciprocal, and note that we don't want \( {\varepsilon}_) = 1 \) since this wouldn't yield an infinite group. If we can generate all of the positive units, all of the negative units are negatives of positive units. How we'll do this: we'll look at the map
\[
\log: {\mathbb{G}}_m({\mathbb{R}}^+) \xrightarrow{} {\mathbb{G}}_a({\mathbb{R}})
.\]
and consider the image \( \log( U( {\mathbb{Z}}_K)^+) \), which will be an infinite cyclic subgroup of \( {\mathbb{G}}_a({\mathbb{R}}) \).
:::

::: {.proposition title="The log subgroup is discrete"}
The subgroup \( \log( U ({\mathbb{Z}}_K)^+ ) \) is discrete, i.e. it has finite intersection with \( [-X, X] \subseteq {\mathbb{R}} \) for every \( X>0 \).
:::

::: {.proof title="of proposition"}
It's enough to show finite intersection with \( [0, X] \) for all \( X>0 \). Why? Any subgroup \( H\leq {\mathbb{G}}_a({\mathbb{R}}) \) is symmetric about 0, i.e. \( a\in H \iff -a\in H \), and so having finite intersection with the positive interval implies finite intersection with both. So let \( \epsilon \in U({\mathbb{Z}}_K)^+ \) with \( \log( \epsilon) \in [0, X] \), we'll show there are only finitely many choices for \( \epsilon \), since every \( \log({\varepsilon}) \) correspond to a point in the intersection.

::: {.claim}
Write \( \epsilon = u + v \sqrt{d} \) with \( u,v \in {\mathbb{Z}} \) or \( {1\over 2}{\mathbb{Z}} \), then \( u, v \geq 0 \).
:::

If we have this, we're done since \( \log( u + v \sqrt{d}) \leq X \). Exponentiating yields \( u + v\sqrt {d} \leq e^X \), and so we must have \( u, v \leq e^X \). But there are only finitely many possibilities, since these are integers or half-integers.

::: {.proof title="of claim"}
We have \( \epsilon \geq 1 \) since \( u, v \geq 0 \). There are now two cases:

1.  \( N( \epsilon) = 1 \). In this case, \( \epsilon \mkern 1.5mu\overline{\mkern-1.5mu\epsilon \mkern-1.5mu}\mkern 1.5mu= 1 \) and so \( \epsilon ^{-1} \epsilon \). We can write \( u = (1/2)( \epsilon + \mkern 1.5mu\overline{\mkern-1.5mu\epsilon\mkern-1.5mu}\mkern 1.5mu) = (1/2)(\epsilon + \epsilon ^{-1} ) > 0 \). Similarly,
    \[ 
      v = (\epsilon - \mkern 1.5mu\overline{\mkern-1.5mu\epsilon\mkern-1.5mu}\mkern 1.5mu)/2 \sqrt{d} = (\epsilon - \epsilon ^{-1} ) / 2 \sqrt{d} \geq 0
      .\]

2.  \( N(\epsilon) = -1 \). This case proceed similarly.
:::

This completes the proof.
:::

::: {.question}
What do the discrete subgroups of \( {\mathbb{G}}_a({\mathbb{R}}) \) look like?
:::

::: {.answer}
Some examples are \( \left\{{0}\right\}, {\mathbb{Z}}, \lambda {\mathbb{Z}} \) for \( \lambda \in {\mathbb{R}} \), etc. It turns out that these are the only ones. Knowing that these must be the image of the log map, if we're in the \( \alpha{\mathbb{Z}} \) case we're fine because this is infinite cyclic, but the case \( \left\{{ 0 }\right\} \) is an issue: this would mean that the only positive unit is \( e^0 = 1 \), and the only units are \( \pm 1 \). So we just need to show that there are units other than \( \pm 1 \).
:::

# Units in \( {\mathbb{Z}}_K \) (Lec. 9, Monday, February 15) {#units-in-mathbbz_k-lec.-9-monday-february-15}

## Review

::: {.remark}
Today: chapter 8. We'll continue with the statements from last time:
:::

::: {.proposition title="Subgroups of $\\RR$ are either discrete or infinite cyclic"}
A discrete subgroup \( \Lambda \leq {\mathbb{R}} \) is either \( 0 \) or infinite cyclic, where *discrete* means having finite intersection with every interval \( [-x, x] \).
:::

::: {.proof title="of proposition"}
Suppose \( \Lambda \neq 0 \), then we can choose a smallest positive element \( \alpha\in \Lambda \). Why does this exist? There are only finitely many elements in \( [0, \alpha] \), so there is a smallest, and we could replace \( \alpha \) with it. The claim is that \( \Lambda = {\mathbb{Z}}\alpha \). The reverse containment is clear because the RHS is necessarily a subgroup. Toward a contradiction, suppose there is some \( \beta\in \Lambda\setminus{\mathbb{Z}}\alpha \) with \( n \alpha < \beta < (n+1) \alpha \) for some \( n\in {\mathbb{Z}} \). This can't happen: subtracting \( n \) from both sides yields
\[
0 < \beta - n \alpha < \alpha
,\]
where the middle term is necessarily in \( \Lambda \), contradicting minimality of \( \alpha \).

```{=tex}
\begin{tikzpicture}
\fontsize{6pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Spring/NumberTheory/sections/figures}{2021-02-15_21-44.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.remark}
Recall that to show the theorem we wanted, it was enough to show \( \log U({\mathbb{Z}}_K)^+ \) is an infinite cyclic subgroup of \( {\mathbb{G}}_a({\mathbb{R}}) \). We proved that this was a discrete subgroup. If this were just the zero element, the only possible units would be \( \pm 1 \), so it suffices to find a unit \( \epsilon \in U({\mathbb{Z}}_K) \) with \( \epsilon>0 \) and \( \epsilon\neq 1 \).
:::

## An Aside: Diophantine approximation

::: {.remark}
Let \( \alpha\in {\mathbb{R}} \) and let \( Q \in {\mathbb{Z}}^+ \). How well can we approximate \( \alpha \) with a fraction with denominator bounded by \( Q \)?
:::

::: {.theorem title="Dirichlet's Approximation Theorem"}
There is a \( q \leq Q \in {\mathbb{Z}}^+ \) with
\[ 
{\left\lVert {q \alpha } \right\rVert} \leq {1 \over Q+1} 
,\]
where \( {\left\lVert {{-}} \right\rVert} \) denotes the distance to the nearest integer.
:::

::: {.remark}
The way to think about this inequality: if the LHS is close to an integer \( p \), then \( \alpha \) is close to \( p/q \).
:::

::: {.proof title="of Dirichlet's theorem"}
Chop the interval into \( Q+1 \) pieces, and think of the inequality as a condition on the fractional part of \( \alpha \), denoted \( \left\{{ qa }\right\} \coloneqq qa - {\left\lfloor  qa  \right\rfloor}\in [0, 1) \). Note that if \( \left\{{ qa }\right\} \in [0, 1/Q+1) \) or \( [Q/Q+1, Q) \) for some \( q \), then we are done. If not, it must land in one of the \( q-1 \) middle intervals
\[
[1/Q+1, 2/Q+1), 
[2/Q+1, 3/Q+1), 
\cdots,
[Q-1/Q+1, Q/Q+1)
\]
for all all \( q\leq Q \). But we have \( Q \) choices for \( q \) and only \( Q-1 \) intervals, so there are two values of \( q \) with fractional part in the same interval. So choose these, say \( q_1<q_2 \leq Q \), and consider \( q \coloneqq q_2 - q_1 \). Since \( \left\{{q_1 \alpha}\right\}, \left\{{q_2 \alpha}\right\} \) are in the same interval, we have \( \left\{{q \alpha}\right\} \in [0, 1/Q+1) \), putting it close to an integer.
:::

::: {.corollary title="Infinitude of elements of bounded norm"}
There are infinitely many pairs of positive integers \( (p, q) \) such that
\[
{\left\lvert {p^2 - dq^2} \right\rvert}\leq 1 + 2 \sqrt{d}  
,\]
where \( d \) was the squarefree integer for which \( K = {\mathbb{Q}}( \sqrt{d} ) \).
:::

::: {.remark}
Note that the RHS does not depend on \( p \) or \( q \), and only depends on the field. Moreover, this proof is also true with the 1 removed.
:::

::: {.proof title="of corollary"}
Using Dirichlet's approximation theorem, choose \( Q \in {\mathbb{Z}}^+ \) and \( 1\leq q\leq Q \) such that
\[
{\left\lVert { q \sqrt{d} } \right\rVert} \leq {1 \over Q+1}
,\]
then there is a \( p \in {\mathbb{Z}} \) such that
\[
{\left\lvert { p - q \sqrt{d} } \right\rvert} \leq {1 \over Q+1}
.\]
We know \( q \) is positive by Dirichlet's theorem, and \( p \) is positive since \( q\sqrt{d} \geq \sqrt{d} \geq 1 \), and the distance from \( p \) to \( q \) is at most \( 1/2 \). We can now check
\[
{\left\lvert {p^2 - dq^2} \right\rvert} 
&= {\left\lvert {p - q \sqrt{d}} \right\rvert} {\left\lvert {p + q \sqrt{d}} \right\rvert}    \\
&= {\left\lvert {p - q \sqrt{d}} \right\rvert} {\left\lvert {(p- q \sqrt{d} ) + 2q \sqrt{d} } \right\rvert}    \\
&\leq {\left\lvert {p - q \sqrt{d}} \right\rvert} {\left\lvert {p- q \sqrt{d}} \right\rvert} + {\left\lvert {2q \sqrt{d} } \right\rvert}    \\
&\leq {1\over Q+1} \qty{ {1\over Q+1} + 2Q \sqrt{d} }\\
&= \qty{1\over Q+1}^2 + {2Q \over Q+1} \sqrt{d} \\
&< 1 + 2\sqrt{d}
,\]
where we've applied the triangle inequality and used the bound twice. How do we know that this results in infinitely many distinct pairs? Things could also go wrong if the same pairs resulted from all but finitely many choices of \( Q \). However, the bound from Dirichlet's theorem prevents this: any pair \( (p, q) \) can arise for ay most *finitely* many starting values for \( Q \). Pick a \( Q \), then produce \( q \) satisfying the bound. Then \( {\left\lVert { q \sqrt{d} } \right\rVert} \neq 0 \) since \( \sqrt{d} \) is irrational, and thus the LHS is some positive irrational number. For a fixed \( q \), choosing \( Q' \) big enough can make the RHS smaller than the LHS, meaning that \( q \) can not occur for that value of \( Q' \) or anything larger. In other words, we're using
\[
{\left\lVert { q \sqrt{d} } \right\rVert} \leq {1\over Q+1} \overset{Q \to \infty } \to 0
,\]
and there can't be any infinite sequences of \( Q_i \) yielding the same fixed \( q \), since the RHS would go to zero while the LHS does not.
:::

::: {.remark}
Choosing a pair \( (p, q) \) as above, we'll have \( p + q \sqrt{d} \in {\mathbb{Z}}_K \) and
\[
{\left\lvert { N( p + q \sqrt{d} ) } \right\rvert} 
= {\left\lvert { p^2 - d q^2 } \right\rvert} \\
< 1 + 2 \sqrt{d} 
.\]
So we have many elements in \( {\mathbb{Z}}_K \) whose norm is bounded, which will force the existence of a nontrivial unit.
:::

::: {.lemma title="Finitely many ideals of bounded norm"}
For all real \( x> 0 \) there are finitely many nonzero ideals \( I{~\trianglelefteq~}{\mathbb{Z}}_K \) with \( N(I) \coloneqq{\left\lvert { {\mathbb{Z}}_K/I } \right\rvert} \leq x \).
:::

::: {.proof title="of lemma"}
Suppose \( N(I) \coloneqq m \leq x \) with \( m \in {\mathbb{Z}}^+ \); it's enough to show that for each \( m \) there are at most finitely many \( I \), since there are only finitely many values of \( m \leq x \). View \( {\mathbb{Z}}_K / I \) as a group under addition, so by Lagrange every element has order dividing \( m \). We can check \( m = 1 + 1 + \cdots + 1 \), which must be the identity in \( {\mathbb{Z}}_K/I \). So \( m\in I \), and since to contain is to divide, \( I \divides \left\langle{ m }\right\rangle \). But \( \left\langle{ m }\right\rangle \) has only finitely many ideal divisors. Why? This is because there is unique prime factorization, and just like \( n = \prod p_i^{n_i} \) in the integers, \( n \) has \( \sum n_i < \infty \) possible divisors.
:::

::: {.proof title="There exists a nontrivial unit"}
We now want to show that there exists a unit \( \epsilon>0 \) that is not equal to 1. Consider all ideals \( I_{p, q} \coloneqq\left\langle{ p + q \sqrt{d} }\right\rangle \) where \( (p, q) \) is a pair of positive integers such that \( {\left\lvert {p^2 - dq^2} \right\rvert} < 1 + 2 \sqrt{d} \). Taking norms amounts to taking absolute values of generators, so
\[
N(I_{p, q} ) < 1 + 2 \sqrt{d}
\]
for all \( p, q \). By the last lemma, this means there are only finitely many different ideals. On the other hand, there are infinitely many such pairs, so infinitely many pairs give rise to the same ideal. Pick two pairs \( (p, q) \) and \( (p', q') \) such that \( \left\langle{ p + q \sqrt{d} }\right\rangle = \left\langle{ p' + q' \sqrt{d} }\right\rangle \). If two ideals are equal, the generators differ by a unit, and so
\[
(p + q \sqrt{d} ) = {\varepsilon}(p' + q' \sqrt{d} ), && {\varepsilon}\in U({\mathbb{Z}}_K)
.\]
Everything in sight is positive, so solving for \( {\varepsilon} \) yields \( {\varepsilon}> 0 \). But \( {\varepsilon}\neq 1 \), since the pairs would have to have been the same by comparing coefficients in the expression above.
:::

::: {.remark}
This gives us the fundamental unit. How do we actually find it? See the book -- use continued fractions! It's not surprising they'd come up, since they provide a more constructive proof of Dirichlet's approximation theorem.
:::

::: {.example title="of the fundamental unit"}
Take \( d=2 \), what is \( {\varepsilon}_0 \)? We have \( U({\mathbb{Z}}_K) = \left\{{ \pm {\varepsilon}_0 ^k {~\mathrel{\Big|}~}k\in {\mathbb{Z}}}\right\} \), and so if we just look at positive units, the smallest power such that \( {\varepsilon}_0^k > 1 \) will just be equal to \( {\varepsilon}_0 \). So we're really looking for the smallest unit greater than 1. We proved that if \( {\varepsilon}_0 = u + v \sqrt{d} \), then \( u, v \geq 0 \), and if \( {\varepsilon}_0 > 1 \) is strict then \( u, v > 0 \) is strict as well. We also know that \( u, v \geq 1 \), using that \( {\mathbb{Z}}_K = {\mathbb{Z}}[\sqrt{2} ] \). Luckily enough, \( 1 + \sqrt{2} \) is a unit, and so \( {\varepsilon}_0 = 1 + \sqrt{2} \).
:::

## Class Groups and the Class Number

::: {.remark}
This is now chapter 9. Let \( K \) be a quadratic field.
:::

::: {.definition title="Dilation Equivalence"}
If \( I, J \) are nonzero ideals of \( {\mathbb{Z}}_K \), we say \( I, J \) are **dilation equivalent** if there exists a \( \lambda\in K^{\times} \) such that \( I = \lambda J \).
:::

::: {.remark}
It's easy to check that this is an equivalence relation, so we'll use \( I \approx J \).
:::

::: {.definition title="Class Group"}
The **class group** of \( {\mathbb{Z}}_K \) is defined as
\[
{ \operatorname{Cl}} ({\mathbb{Z}}_K) \coloneqq\operatorname{Id}({\mathbb{Z}}_K)/\approx
.\]
:::

::: {.remark}
A priori this is just a set, but we can descent the monoid structure to define a group multiplication. We define \( [I] [J] = [IJ] \), and it's easy to check that this is well-defined on equivalence classes. The identity is \( [ \left\langle{ 1 }\right\rangle] \), and for inverses we can use the fact that \( [I \mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu] = [\left\langle{ N(I) }\right\rangle] = N(I) [ \left\langle{ 1 }\right\rangle ] \). In fact, any \( J \) for which \( IJ \) is principal serves as an inverse for \( I \). So the inverses come from the *Principal Multiple Lemma*, and a similar story will go through for general number fields.
:::

::: {.remark}
This is an abelian group, wouldn't it be nice if it were finite? This is one of the big theorems of number theory: \( { \operatorname{Cl}} ({\mathbb{Z}}_K) \) is finite. We can thus define the following:
:::

::: {.definition title="Class Number"}
The **class number** of \( K \) is defined as:
\[
h_k \coloneqq{\left\lvert { { \operatorname{Cl}} ({\mathbb{Z}}_K) } \right\rvert}
.\]
:::

::: {.lemma title="Comparison bound between element norm and ideal norm"}
There is a constant \( C \) depending on \( K \) such that for every \( I \in \operatorname{Id}({\mathbb{Z}}_K) \) there is a nonzero \( \alpha\in I \) such that
\[
{\left\lvert {N \alpha} \right\rvert}\leq C N(I) 
.\]
In fact, one can take
\[
C \coloneqq 1 + \operatorname{Tr}(\tau) + {\left\lvert {N(\tau)} \right\rvert} 
.\]
:::

::: {.remark}
The norm of \( I \) is a natural thing to compare \( N \alpha \) to, since \( I \divides \left\langle{ \alpha }\right\rangle \) and thus \( N(I) \divides N(\left\langle{ \alpha }\right\rangle) \), so there's no hope of the LHS being smaller than \( N(I) \).
:::

::: {.proof title="?"}
Look at all elements \( a + b \tau \in {\mathbb{Z}}_K \) such that \( 0 \leq a,b, \sqrt{ N(I) } \). How many elements does this yield? Precisely \( \qty{ {\left\lfloor  \sqrt{N(I)}  \right\rfloor} +1 }^2 \). Note that this is strictly larger than \( N(I) \), using \( {\left\lfloor x \right\rfloor} > x-1 \) for any \( x \). Then going to the quotient by \( I \), there are exactly \( N(I) \) elements, two elements reduce to the same element of \( {\mathbb{Z}}_K/I \). So their difference is in \( I \), so we get something of the form \( a' + b' \tau \) where \( a;, b; \in {\mathbb{Z}} \) (where they could now be negative), but are bounded by
\[
- \sqrt{N(I)}
\leq a', b' \leq 
 \sqrt{N(I)} 
.\]

The claim is now that the given value of \( C \) in the theorem works:
\[
{\left\lvert {N( \alpha)} \right\rvert}
&=
{\left\lvert {N( a' + b' \tau)} \right\rvert} \\
&=
{\left\lvert {(a' + b' \tau) (a' + b' \mkern 1.5mu\overline{\mkern-1.5mu\tau\mkern-1.5mu}\mkern 1.5mu)} \right\rvert} \\
&= {\left\lvert {(a')^2 + a'b' \operatorname{Tr}(\tau) + (b')^2 N \tau} \right\rvert} \\
&\leq 
{\left\lvert {a'} \right\rvert}^2 + {\left\lvert {a'} \right\rvert} {\left\lvert {b'} \right\rvert} \operatorname{Tr}(\tau) + {\left\lvert {b'} \right\rvert}^2 N(\tau) \\
&\leq C N(I)
,\]
where we've used \( a', b' \leq \sqrt{N(I)} \) and collected terms in the last step.
:::

::: {.proposition title="Class representatives of small norm"}
Every ideal class contains an ideal \( I \) of norm \( N(I) \leq C \).
:::

::: {.corollary title="Class numbers are finite"}
\( h_K < \infty \).
:::

::: {.remark}
Why is this true? There are only finitely many ideals with this norm bound, and this says every ideal class belongs to this finite set.
:::

::: {.proof title="of proposition"}
Since we're working with a group, it suffices to work with inverses, since these still run over all elements. It's enough to show that for every \( I \in \operatorname{Id}({\mathbb{Z}}_K) \), we can write \( [I]^{-1}= [J] \) for some \( J \) satisfying \( N(J) \leq C \). Choose a nonzero \( \alpha\in I \) with \( {\left\lvert {N( \alpha )} \right\rvert}\leq C N(I) \). Since \( \alpha\in I \) we know that \( I \divides \left\langle{ \alpha }\right\rangle \), so we can write \( \left\langle{ \alpha }\right\rangle = IJ \) for some ideal \( J \). We have \( [I] [J] = [IJ] = [ \left\langle{ \alpha }\right\rangle ] = [ \left\langle{ 1 }\right\rangle ] \), since all principal ideals are dilation-equivalent to \( \left\langle{ 1 }\right\rangle \). This means that \( [J] = [I] ^{-1} \), and our hope is that it has small norm. Taking norms in \( \left\langle{ \alpha }\right\rangle = IJ \) yields
\[
{\left\lvert {N \alpha} \right\rvert} 
&= N(I) N(J) \\
\implies N(J) 
&= { {\left\lvert {N \alpha} \right\rvert} \over N(I) } \\
&\leq { C N(I) \over N(I)} \\
&= C
.\]
:::

::: {.example title="?"}
What we'll look at next: \( { \operatorname{Cl}} ( {\mathbb{Z}}[ \sqrt{-5} ]) \). We know this does not have unique factorization, and the claim is that the class group is nontrivial. If it were, every ideal would be dilation-equivalent to \( \left\langle{ 1 }\right\rangle \), making every ideal principal, and every PID is a UFD. Here we'll have \( C=6 \).

\

One could try to write down all ideals of norm bounded by 6, but instead lets consider how they factor into primes. Every ideal of norm at most 6 factors into prime ideals, whose norm is also bounded by 6. So this factors into prime ideals lying above \( 2,3,5 \), since any ideal lying above a prime \( p \) has norm \( p \) or \( p^2 \), and we need \( p, p^2 < 6 \) here. We've worked out all such primes before, coming from the *prime factor mirroring theorem*:

-   \( \left\langle{ 2 }\right\rangle= P_1^2,\, P_1 \coloneqq\left\langle{ 2, 1 + \sqrt{-5} }\right\rangle \)
-   \( \left\langle{ 3 }\right\rangle = P_2 P_3, P_2 \coloneqq\left\langle{ 3, 1 - \sqrt{-5} }\right\rangle, P_3 \coloneqq\left\langle{ 1 + \sqrt{-5} }\right\rangle \)
-   \( \left\langle{ 5 }\right\rangle= P_4^2, P_4 \coloneqq\left\langle{ \sqrt{-5} }\right\rangle \)

This allows us to conclude that
\[
{ \operatorname{Cl}} ({\mathbb{Z}}[ \sqrt{-5} ]) = \left\langle{ [P_1], [P_2], [P_3], [P_4] }\right\rangle
.\]
In fact, since \( P_4 \) is principal we can leave it out.
:::

# Class Groups (Lec. 10, Thursday, February 18)

## Computing Class Groups

::: {.remark}
Last time: we defined an equivalence relation on nonzero ideals of \( {\mathbb{Z}}_K \), namely \( I \approx J \iff I = \alpha J \) for some \( \alpha \in K^{\times} \). We then defined the **class group**
\[
{ \operatorname{Cl}} ({\mathbb{Z}}_K) \coloneqq\operatorname{Id}({\mathbb{Z}}_K) / \approx
.\]
We saw that ideal multiplication descends to a well-defined group structure on ideal classes. Since ideal multiplication is commutative, this is an abelian group, and moreover it is finite.
:::

::: {.example title="Computing the Class Group"}
Let \( K = {\mathbb{Q}}(d) \) where \( d \coloneqq\sqrt{ -5 } \). We saw that every ideal class is represented by an element with bounded norm. Applying it to this specific value of \( d \), every element is represented by \( [I] \) where \( N(I) \leq 6 \). If we have such an ideal, it will factor into primes, and thus the class will factor into prime classes. Thus the group is actually *generated* by prime ideals of norm at most 6. Any such ideal will lie above a prime \( p \leq 6 \), so \( p=2,3,5 \). We saw
\[
\left\langle{ 2 }\right\rangle = P_1^2 && P_1 \coloneqq\left\langle{ 2, 1 + \sqrt{-5} }\right\rangle \\
\left\langle{ 3 }\right\rangle = P_2 P_3 && P_2 \coloneqq\left\langle{ 3, 1 + \sqrt{-5} }\right\rangle,\, P_3 \coloneqq\left\langle{ 3, 1 - \sqrt{-5} }\right\rangle    \\
\left\langle{ 5 }\right\rangle = P_4^2 && P_4 \coloneqq\left\langle{ \sqrt{-5} }\right\rangle.  
.\]
We conclude that \( { \operatorname{Cl}} ({\mathbb{Z}}_K) = \left\langle{ P_1, \cdots, P_4 }\right\rangle \). What are the relations? Consider \( P_4 \), and note that \( \left\langle{ \sqrt{-5} }\right\rangle \approx \left\langle{ 1 }\right\rangle \) since \( P_4 = \sqrt{-5} \left\langle{ 1 }\right\rangle \). A similar argument works for any principal ideal, and we can throw out \( P_4 \). Consider \( P_2 \) and \( P_3 \). Since \( \left\langle{ 3 }\right\rangle \approx \left\langle{ 1 }\right\rangle \), we have \( P_2 = P_3 ^{-1} \), so we can also throw out \( P_2 \), since we don't need to include the inverse of a generator. Recall that there is a factorization
\[
\left\langle{ 1 - \sqrt{-5} }\right\rangle 
=
\left\langle{ 2, 1 - \sqrt{-5} }\right\rangle 
\left\langle{ 3, 1 - \sqrt{-5} }\right\rangle  
= P_1 P_3
\]
and so these are inverses and we can get rid of \( P_3 \). So \( { \operatorname{Cl}} ({\mathbb{Z}}_K) = \left\langle{ [P_1] }\right\rangle \), which is a cyclic group. The generator has to have order 1 or 2, since \( P_1^2 = \left\langle{ 1 }\right\rangle \). The claim is that the order is 2: otherwise, it would be trivial, making the class group trivial, which would imply that \( {\mathbb{Z}}_K \) is a PID. Why? This implies that every \( I \in \operatorname{Id}({\mathbb{Z}}_K) \) is dilation equivalent to the unit ideal, so \( I = \alpha \left\langle{ 1 }\right\rangle \) for some \( \alpha\in K^{\times} \). But since \( I \) is an ideal in \( {\mathbb{Z}}_K \), this forces \( \alpha\in {\mathbb{Z}}_K \) and \( I = \left\langle{ \alpha }\right\rangle \). This is a contradiction, since every PID is a UFD, and \( {\mathbb{Q}}( \sqrt{-5} ) \) has non-unique factorization. So we can write \( { \operatorname{Cl}} ({\mathbb{Z}}_K) \cong {\mathbb{G}}_a({\mathbb{Z}}/2{\mathbb{Z}}) \).
:::

::: {.remark}
What is the class group useful for? We'll tie this into Diophantine equations.
:::

::: {.example title="of using the class group to solve Diophantine problems"}
Solve the following equation in \( {\mathbb{Z}} \):
\[
y^2 + 5 = x^3
.\]
Recall that we originally tried to do this by factoring the left-hand side and appealing to unique factorization in a number field to deduce that various factors were powers. However, we don't have unique factorization. Although we can write \( ( y + \sqrt{-5} ) (y - \sqrt{-5} ) = x^3 \), it's not clear that this is helpful. The fix will be to go to \( \operatorname{Id}({\mathbb{Z}}_K) \), which does have unique factorization, where we'll also be able to use facts about the class group. We can turn this into an equation in ideals:
\[
\left\langle{ y + \sqrt{-5} }\right\rangle  
\left\langle{ y - \sqrt{-5} }\right\rangle  
= 
\left\langle{ x }\right\rangle^3 && \in \operatorname{Id}({\mathbb{Z}}[\sqrt{-5} ]) 
.\]
The original strategy was to show the left-hand factors were coprime in order to deduce they were both cubes. We'll try to show these ideals are coprime in the monoid sense, then since their product is a cube they'll have to be cubes. This uses the fact that this is a reduced unique factorization monoid, so being a cube up to a unit is not something we have to worry about here.

::: {.claim}
There is no common prime ideal that divides both factors, using unique factorization.
:::

::: {.proof title="?"}
Suppose toward a contradiction that \( P \) is prime and divides both. Using that ideal norms are multiplicative, \( N(P) \divides N( \left\langle{ y + \sqrt{-5} }\right\rangle) = y^2 + 5 \). We also know \( P \) contains both factors, so it contains \( (y + \sqrt{-5} ) - (y - \sqrt{-5} ) = 2 \sqrt{-5} \), so \( N(P) \divides N( \left\langle{ 2 \sqrt{-5} }\right\rangle ) = 20 \). Thus \( N(P) \divides \gcd(y^2 + 5, 20) \) in \( {\mathbb{Z}} \). This is impossible!

-   \( y \) is necessarily even for the original equation to be true. If \( y \) is odd, take the equation \( \operatorname{mod}8 \): an odd squared is \( 1\operatorname{mod}8 \), so \( y^2 +5 \equiv 6 \operatorname{mod}8 \), which is not a cube in \( {\mathbb{Z}}/8 \) since any cube is \( 0\operatorname{mod}8 \).

-   \( 5 \) can not divide \( y \). If so, \( 5 \) would divide the left-hand side and thus the right-hand side, which forces \( 5\divides x \) since \( 5 \) is prime. Then \( 5^3 \divides x^3 \), meaning \( 5^3 \divides y^2 + 5 \). In this case, \( 5^2 \divides y^2 + 5 \), and if \( 5\divides y \) then \( 5^2 \divides y^2 \), so we'd need \( 5^2 \divides 5 \).

These together imply that \( \gcd(y^2 + 5, 25) = 1 \). This \( N(P) \divides 1 \), forcing \( P = \left\langle{ 1 }\right\rangle \), a contradiction.
:::

Thus we can write
\[
\left\langle{ y + \sqrt{-5} }\right\rangle  &= I^3 \\
\left\langle{ y - \sqrt{-5} }\right\rangle  &= J^3
.\]

In the previous argument, we wrote out \( (a + b \sqrt{-5} )^3 \), expanded, and compared coefficients. Here we have an equation in ideals, and we can't do something similar unless \( I, J \) are principal. This is in fact the case: we'll restrict our attention to the class group. The left-hand side is the unit ideal, since it is principal. So we can write \( [I]^3 = [J]^3 = e \), but we also know \( { \operatorname{Cl}} ({\mathbb{Z}}_K) \cong {\mathbb{G}}_a({\mathbb{Z}}/2{\mathbb{Z}}) \), so this can only happen if \( [I] = [J] = e \) and \( I, J \) must be principal. So we can write \( I = \left\langle{ a + b \sqrt{-5}}\right\rangle \) for some \( a, b \in {\mathbb{Z}} \). Thus
\[
\left\langle{ y + \sqrt{-5} }\right\rangle = \left\langle{ (a + b \sqrt{-5} )^2 }\right\rangle \implies y + \sqrt{-5} = \pm 1 \qty { a + b \sqrt{-5} }^3  
,\]
using the fact that they differ by a unit but the only units in \( {\mathbb{Z}}[ \sqrt{-5} ] \) are \( \pm 1 \). The original proof now goes through, comparing coefficients of \( \sqrt{-5} \). This will force \( b = \pm 1 \), then plug things back in to find \( a \), then \( y \), then \( x \). The conclusion is that there are no solutions.
:::

::: {.remark}
The critical takeaway: unique factorization failed, but the structure of the class group saved us! We crucially used that it had no elements of order 3. See the book for a general theorem about equations \( y^2 + d = x^3 \). Ideal theory gives us a way to study Diophantine equations.
:::

## The Class Group as a Measure of Non-unique Factorization

::: {.remark}
This is chapter 10. This statement shows up in talks: it's more of a vague sentiment than an actual theorem, but we'll discuss a way to make it precise.
:::

::: {.theorem title="Class number 1 iff UFD"}
Recall that the class number is defined as \( h_K \coloneqq\# { \operatorname{Cl}} ({\mathbb{Z}}_K) \). Then
\[
h_K = 1 \iff {\mathbb{Z}}_K \text{ is a UFD}
.\]
:::

::: {.proof title="of theorem"}
\( \implies \): Every ideal is equivalent to the unit ideal, so every ideal is principal and PID implies UFD.

\

\( \impliedby \): Note that this is subtle: this is the claim that \( {\mathbb{Z}}_K \) is a UFD \( \implies {\mathbb{Z}}_K \) is a PID, which isn't true for general rings (e.g. \( {\mathbb{Z}}[x] \)). Suppose \( {\mathbb{Z}}_K \) is a UFD, then it's enough to show that every prime ideal is principal. Let \( P \) be prime, then \( P \) lies above some ordinary prime \( p \), so \( P \divides \left\langle{ p }\right\rangle \). We can factor \( \left\langle{ p }\right\rangle= \left\langle{ \prod_{i=1}^k \pi_i }\right\rangle = \prod_{i=1}^k \left\langle{ \pi_i }\right\rangle \) for some \( \pi_i \) irreducible. A prime ideal dividing a product, by unique factorization, must divide a factor, so \( P \divides \left\langle{ \pi_i }\right\rangle \) for some \( i \). In a UFD, irreducibles are prime, so \( \left\langle{ \pi_i }\right\rangle \) is a prime ideal, so we have a prime ideal dividing a prime ideal. By unique factorization, this forces \( P = \left\langle{ \pi_i }\right\rangle \), make \( P \) principal.
:::

::: {.question}
Can anything be said if \( h_K = 2 \), even though we know \( {\mathbb{Z}}_K \) is not a UFD?
:::

::: {.theorem title="Carlitz"}
\( h_K = 2 \iff \) in \( {\mathbb{Z}}_K \), any two factorizations of nonzero nonunit \( \alpha \) into irreducibles have the same number of terms.
:::

::: {.remark}
For example, in \( {\mathbb{Z}}[ \sqrt{-5} ] \) we have \( 6 = (2)(3) = (1 + \sqrt{-5} )(1 - \sqrt{-5} ) \), which have the same number of factors. To prove this theorem, we'll first need a lemma:
:::

::: {.lemma title="Class Number 2 implies 2 factors"}
Suppose \( h_K = 2 \), and suppose \( \pi \in {\mathbb{Z}}_K \) is an irreducible that is not prime (which is possible in a non-UFD). Then factoring \( \left\langle{ \pi }\right\rangle = P_1 P_2 \) involves exactly two prime ideals \( P_1, P_2 \) in \( {\mathbb{Z}}_K \).
:::

::: {.proof title="of lemma"}
Write \( \left\langle{ \pi }\right\rangle= \prod_{i=1}^g P_i \), we then want to show \( g=2 \). We have \( g\geq 2 \), since otherwise this would be a prime ideal, which would make \( \pi \) a prime element. The claim is that none of the \( P_i \) can be principal. Suppose toward a contradiction \( P_1 = \left\langle{ \rho }\right\rangle \). Note that multiplying ideals yields smaller sets, so the right-hand side is a subset of \( \left\langle{ \rho }\right\rangle \), as is the left-hand side, and so \( \rho \divides \pi \). Since the \( P_i \) were principal prime ideals, \( \rho \) is prime and thus irreducible (since prime \( \implies \) irreducible for any domain), so \( \rho = u \pi \) for some unit. Thus they generate the same ideal, and \( P_1 = \left\langle{ \rho }\right\rangle = \left\langle{ \pi }\right\rangle \). But then \( \pi \) generates a prime ideal, make \( \pi \) prime, a contradiction.

So none of the \( P_i \) are principal. Look at this equation in the class group. The left-hand side is the identity, and the right-hand side are all non-identity elements a group of order 2. So \( [P_1][P_2] = e \), making \( P_1 P_2 = \left\langle{ \omega }\right\rangle \) principal. Then \( \left\langle{ \pi }\right\rangle\subseteq \left\langle{ \omega }\right\rangle \) and so \( \omega \divides \pi \). Moreover, \( \omega \) is not a unit since the product of two prime ideals is not the unit ideal. Since \( \pi \) is irreducible, this makes \( \omega= u \pi \) and thus \( \left\langle{ \omega }\right\rangle = \left\langle{ \pi }\right\rangle \). If this were the case, we could cancel in the original equation:
\[
\left\langle{ \pi }\right\rangle &= (P_1 P_2)P_3 \cdots P_g = \left\langle{ \pi }\right\rangle P_3 \cdots P_g   \\
\implies \left\langle{ 1 }\right\rangle = P_3 \cdots P_g 
,\]
but this is a product of prime ideals resulting in the unit ideal. This can only happen if there are no terms in this product, so \( g=2 \).
:::

::: {.proof title="of theorem ($\\implies$)"}
Suppose \( h_K = 2 \). We already know \( {\mathbb{Z}}_K \) is not a UFD by the previous theorem. The nontrivial part is showing factorization into nonzero nonunits of the same number of terms. Instead of working with factorization of elements, we'll work with factorization of their principal ideals into principal ideals generated by irreducibles, which will obviate the need to worry about units. We thus want to show that any principal ideal \( P \neq \left\langle{ 0 }\right\rangle, \left\langle{ 1 }\right\rangle \) has all of its factorizations into principal ideals generated by irreducibles the same length.

::: {.example title="?"}
Much like the previous example, we have
\[
\left\langle{ 6 }\right\rangle = \left\langle{ 1 + \sqrt{-5} }\right\rangle \left\langle{ 1 - \sqrt{-5} }\right\rangle = \left\langle{ 2 }\right\rangle \left\langle{ 3 }\right\rangle     
.\]
:::

Suppose that \( P \) factors as
\[
P = 
\prod_{i=1}^k \left\langle{ \pi_i }\right\rangle
=
\prod_{j=1}^\ell \left\langle{ \rho_j }\right\rangle
&&
\pi_i, \rho_j \text{ irreducible}
,\]
we'd then like to show that \( k=\ell \).

::: {.observation}
If \( \pi_1 \) is prime, we can use that \( \left\langle{ \pi_1 }\right\rangle\divides \prod \left\langle{ \rho_j }\right\rangle \), and would thus have to divide (say) \( \left\langle{ \rho_1 }\right\rangle \) up to relabeling. Since everything is irreducible, if \( \pi_1 \divides \rho_1 \) then \( \left\langle{ \pi_1 }\right\rangle= \left\langle{ \rho_1 }\right\rangle \), meaning we can cancel.
:::

So after cancellation, we can suppose that all the \( \pi_i, \rho_j \) and none are prime. Consider the number of prime ideals that show up after factoring all of the principal ideals on either side. By the lemma, any irreducible that's not prime factors into two primes, so we get \( 2k \) primes on the left-hand side (not necessarily distinct) and \( 2\ell \) on the right-hand side. But the factorization into primes *is* unique, so \( 2k=2\ell \) and \( k=\ell \).
:::

::: {.remark}
See the book for the other direction!
:::

::: {.theorem title="Landau"}
Every ideal class contains infinitely many prime ideals.
:::

::: {.remark}
This is an analytic theorem! The proof is similar to how Dirichlet proved the infinitude of primes in arithmetic progressions, which involves \( L{\hbox{-}} \)functions.
:::

::: {.remark}
What about \( h_K \geq 2 \)? We'll introduce a way of measuring how bad unique factorization fails in a ring, the notion of *elasticity*.
:::

## Elasticity

::: {.definition title="Elasticity of a Ring"}
Let \( \alpha\in {\mathbb{Z}}_K \) where \( \alpha\neq 0 \) and is not a unit. Define
\[
\rho(\alpha) \coloneqq{ L( \alpha) \over S( \alpha) }
,\]
where \( L( \alpha) \) is the number of terms in the longest[^7] factorization of \( \alpha \) and \( S( \alpha ) \) is the shortest number of terms. This measures how far away from unique the factorization of \( \alpha \) is. Now define the **elasticity** of \( {\mathbb{Z}}_K \) as
\[
\rho(K) \coloneqq\sup_{\alpha} \rho( \alpha)
.\]
:::

::: {.remark}
Note that \( h_K = 1, 2\iff \rho(K) = 1 \), and \( h_K > 2 \implies \rho(K) > 1 \).
:::

::: {.theorem title="Elasticity in terms of the Davenport constant"}
For \( h_K \geq 2 \),
\[
\rho(K) = {1\over 2} D( { \operatorname{Cl}} ( {\mathbb{Z}}_K))
,\]
where \( D(G) \) is the **Davenport constant** of the finite abelian group \( G \): the smallest number \( D \) such that every sequence of \( D \) elements of \( G \) contains a nonempty subsequence whose product is the identity. This is a function from combinatorial group theory.
:::

::: {.exercise title="bounding the Davenport constant"}
Show that \( D(G) \leq {\left\lvert {G} \right\rvert} \).
:::

::: {.fact}
\( D(G) \to \infty \) as \( {\left\lvert {G} \right\rvert} \to \infty \).
:::

::: {.corollary title="?"}
If \( h_K \to \infty \) for a sequence of number fields, then \( \rho(K) \to \infty \).
:::

::: {.remark}
This just follows from the above facts, since \( h_K \to \infty \) means the size of the group \( G \coloneqq{ \operatorname{Cl}} ( {\mathbb{Z}}_K) \) goes to infinity, which is a constant times \( \rho(K) \). So as the class group gets larger, factorization gets worse.
:::

# Prime Producing Polynomials and Unique Factorization (Lec. 11, Tuesday, February 23)

::: {.remark}
Today: chapters 11 and 12.
:::

## Ch. 11: Prime Producing Polynomials and Unique Factorization

::: {.remark}
18th century observation by Euler about the following polynomial:
\[
f(x) \coloneqq x^2 -x + 41 
.\]
Goldbach proved that it's impossible for any polynomial \( g\in {\mathbb{Z}}[x] \) to have *every* output prime. Euler noted that this \( f \) produces quite a few: for \( x=1, \cdots, 40 \), the output \( f(x) \) is prime, but \( f(41) = 41^2 - 41 + 41 = 41^2 \) is not. Let's define a variant: for \( q \) a positive integer, set
\[
f_q(x) \coloneqq x^2 - x + q
.\]
Note that \( f_q(q) = q^2 \), so eventually the output is composite. We'll say \( f_q \) is **optimal** if \( f_q(x) \) is prime for all integers \( 0 < x < q \). As an example, \( q=41 \) was optimal.
:::

::: {.theorem title="Rabinowitz"}
Let \( q \geq 2 \in {\mathbb{Z}}^{> 0} \) and let \( d = \Delta(f_q) = 1-4q \) be the discriminant of \( f_q \). Assume that \( d \) is squarefree, then \( f_q \) is optimal if and only if \( \mathbb{Z}\left[ { {1 + \sqrt{d}\over 2 }} \right] \) is a UFD. [^8]
:::

::: {.example title="of a ring of integers that is a UFD"}
For \( q=41, d = -163 \) and thus \( \mathbb{Z}\left[ { {1 + \sqrt{-163} \over 2}} \right] \) is a UFD.
:::

::: {.proof title="$\\impliedby$"}
> Big idea: uses that \( \min_\tau(x) = f_q(x) \) and remembering that how \( \min_\tau(x) \operatorname{mod}p \) factors is exactly how \( \left\langle{ p }\right\rangle \) factors into prime ideals.

Assume \( \mathbb{Z}\left[ { \tau } \right] \) is a UFD, where \( \tau\coloneqq{1 + \sqrt{d} \over 2 } \). Toward a contradiction, suppose \( f_q(x) \) is composite for some \( 0<x<q \). We can write
\[
f_q(x) = x^2 - x + q = (x - \tau)( x - {\overline{{ \tau}}} ) = \min_{ \tau}(x)_{/{\mathbb{Q}}}
.\]
By considering how this function increases, we can conclude \( 1<q<f_q(x) < f_q(q) = q^2 \). Let \( p \) be the least prime factor of \( f_q(x) \), which is necessarily bounded by \( \sqrt{ f_q(x) } \), so \( p<q \). Since \( p\divides f_q(x) \), we have \( x\in {\mathbb{Z}} \) as a root of \( f\operatorname{mod}p \). So \( \min_\tau \) has a root modulo \( p \). Recall that studying how \( \left\langle{ p }\right\rangle \) factors into ideals of \( {\mathbb{Z}}_K \) involved studying how \( \min_\tau \) factors mod \( p \). Since we've shown it has a root mod \( p \), it breaks into two linear factors. So \( \left\langle{ p }\right\rangle = P_1 P_2 \) as prime ideals of norm \( p \). By assumption, \( \mathbb{Z}\left[ {[} \right]\tau] \) is a UFD and the ring of integers of a number field, and by an earlier theorem, is thus also a PID (noting that this is not generally the case). So \( P_1, P_2 \) are principal, and we can write
\[
P_1 = \left\langle{ a + b \tau }\right\rangle\implies p = N(p_1) = N( a + b \tau) = a^2 + ab + qb^2
.\]
Completing the square yields
\[
\cdots = (a + b/2)^2 + (q-1/4)b^2
.\]
Note that \( b\neq 0 \), since this would yield \( p = a^2 \) in the first equation and \( a, p \in {\mathbb{Z}} \) with \( p \) prime. So both terms in the second equation are non-negative, and the second is positive because \( b>1 \), so \( p \geq q- 1/4 \). Since \( p, q\in {\mathbb{Z}} \) we can strengthen this to \( p \geq q \). But \( p \) was the *least* prime factor of \( f_q(x) < q^2 \) which was composite, so this is a contradiction. \( \contradiction \)
:::

::: {.remark}
The forward direction is harder here.
:::

::: {.proof title="$\\implies$"}
We'll prove something stronger. Assume \( f_q(x) \) is prime whenever
\[
1 \leq x \leq {1\over 2} \sqrt{ {\left\lvert {d} \right\rvert} \over 3 } + {1 \over 2}
,\]
then we'll prove that \( {\mathbb{Z}}_K \) is a PID and hence a UFD. Note that this is stronger because the range is smaller than \( 0<x<q \).

::: {.claim}
\( p \) is inert for all \( p \leq \sqrt{ {\left\lvert {d} \right\rvert}\over 3 } \) (so the prime ideal \( \left\langle{ p }\right\rangle \) remains prime).
:::

::: {.proof title="?"}
If not, \( \min_\tau \) has a root \( \operatorname{mod}p \). Recalling that \( \min_\tau(x) = f_q(x) = x^2 - x + q \), if this has one root then it has two which sum to \( -b = -(-1) = 1 \), where one of them satisfies
\[
1 \leq x \leq {1\over 2} \sqrt{ {\left\lvert {d} \right\rvert} \over 3 } + {1\over 2}
.\]
Why? If the other root \( x = r \) with \( 1<r<p \) doesn't satisfy this, then the first root is \( p+1-r \) and will satisfy this. Then \( p\divides f_q(x) \), but this is a problem! This forces
\[
p = f_q(x) = x^2 - x + q \geq q > \sqrt{{\left\lvert {d} \right\rvert} \over 3 } \geq p
.\]
This contradicts \( f_q(x) \) being prime. \( \contradiction \)
:::

So assuming \( f_q(x) \) is prime for \( 1 \leq x \leq {1 \over 2 } \sqrt{{\left\lvert {d} \right\rvert}\over 3 } + {1 \over 2} \), we showed that every "small" prime up to \( \sqrt{{\left\lvert {d} \right\rvert}\over 3 } \) is inert. Suppose \( P \) is a prime ideal above \( p \), then since \( p \) is inert, \( P = \left\langle{ p }\right\rangle \) is generated by a prime. But we'll just use a slightly weaker conclusion: \( P \) is principal.

::: {.theorem title="When the class group is generated by small primes"}
Let \( d \) be a negative squarefree integer with \( d \equiv 1 \operatorname{mod}4 \) (such as the \( d \) we are looking at). Then \( { \operatorname{Cl}} ({\mathbb{Z}}_K) \) is generated as a group by \( [P] \) where \( P \) runs over all prime ideals above primes \( p \leq \sqrt{{\left\lvert {d} \right\rvert}\over 3 } \).
:::

Given this theorem, we are done: in our situation, all such \( [P] \) are trivial in the class group since they are principal, which makes \( { \operatorname{Cl}} ({\mathbb{Z}}_K) = 1 \) and every ideal is principal.
:::

## Proof of Rabinowitz's Theorem

::: {.remark}
It just remains to prove the above theorem. We'll use the following:
:::

::: {.proposition title="Almost Euclidean Domains"}
Take the same assumptions on \( d \) as above. Then for each \( \theta \in K = {\mathbb{Q}}( \sqrt{d} ) \), there is a positive integer \( t \leq \sqrt{{\left\lvert {d} \right\rvert}\over 3 } \) and a \( \xi \in {\mathbb{Z}}_K \) with norm \( N(t\theta - \xi) < 1 \).
:::

::: {.remark}
This is slightly technical. In words: for any element in your quadratic field, you can approximate it by an *integer* of your field, possibly after a small \( t \) dilation. Note that we saw a similar condition for the Euclidean algorithm, namely that \( t=1 \) always sufficed.
:::

::: {.proof title="of proposition"}
Write \( \theta = a + b \tau \) where we don't necessarily know \( \theta \in {\mathbb{Z}}_K \) (although this would make the statement trivial), but \( a, b \in {\mathbb{Q}} \). We want to find an appropriate \( t \) where \( \xi \coloneqq A+ B \tau \) for \( A, B \in {\mathbb{Z}} \). Multiplying the inequality out using the definition of the norm results in
\[
\qty{ (ta - A) + \qty{tb - B \over 2} }^2
+ {\left\lvert {d} \right\rvert} \qty{ tb - B \over 2 }^2<1
.\]
We'll start by making the second term small by making \( tb \) close to an integer (where \( b \) is fixed) and choosing \( B \) to be that closest integer. We can choose \( t \leq \sqrt{{\left\lvert {d} \right\rvert}\over 3 } \) with \( {\left\lVert {tb} \right\rVert} < 1 / \sqrt{{\left\lvert {d} \right\rvert}\over 3 } \), where the norm is the distance to the nearest integer. Why can we do this? This is Dirichlet's approximation theorem, where we could choose \( t\leq N \) such that this norm was bounded by \( 1/(N+1) \), and we can take \( N \coloneqq{\left\lfloor  \sqrt{{\left\lvert {d} \right\rvert}\over 3 }  \right\rfloor} \). How do we choose \( A, B \)? Choose \( B \) such that \( {\left\lVert {tb} \right\rVert} \) satisfies the above inequality to obtain
\[
B\in {\mathbb{Z}},\quad {\left\lvert {tb - B} \right\rvert}< 1 / \sqrt{{\left\lvert {d} \right\rvert}/3 }  
.\]
Then considering the second term in the original equation, we get
\[
{\left\lvert {d} \right\rvert} \qty{ tb -B \over 2 }^2 < {\left\lvert {d} \right\rvert}\qty{1\over 4}\qty{1 \over {\left\lvert {d} \right\rvert}/3} = {3\over 4} 
,\]
so it suffices now to choose \( A \) such that the first term is bounded by \( 1/4 \). Why can we do this? We have control over \( A \), so we can simply choose it freely to shift the inner quantity into the interval \( [-1/2, 1/2] \), i.e. 
\[
{\left\lvert { ta - A + \qty{tb- B \over 2} } \right\rvert} \leq {1\over 2}
,\]
and then squaring yields the desired bound.
:::

::: {.proof title="of theorem"}
We have \( d \equiv 1 \operatorname{mod}4 \) and we want to show that the class group is generated by small primes \( p\leq D\coloneqq\sqrt{ {\left\lvert {d} \right\rvert} / 3 } \). Let \( I \) be a nonzero ideal of \( {\mathbb{Z}}_K \), we'll find a nonzero ideal \( J \) such that \( [I] = [J] \) and \( J \) is a product of primes above \( p \) (which have the appropriate upper bound). In this case, \( [J] \) and thus \( [I] \) will factor as the product of those primes, and is thus in the subgroup generated by small primes. Fix \( \beta\in I \) nonzero of minimal norm.

::: {.claim}
For any \( \alpha \in I \) there is a \( t\leq D \) with \( \left\langle{ t \alpha }\right\rangle \in \left\langle{ \beta }\right\rangle \).
:::

::: {.remark}
How to think about this: when the field is Euclidean with respect to the norm, it is a PID. How do you find generators? By taking a nonzero element \( \beta \) of minimal norm in the ideal. Then any element of \( I \) would be in \( \beta \). Here we have an almost-Euclidean property, where elements of \( I \) can be hit with a small dilation to land in this principal ideal.
:::

::: {.proof title="of claim"}
So apply the last element to the element \( \alpha/ \beta \) to pick \( t\leq D \) and \( \xi \in {\mathbb{Z}}_K \) with \( N( t \qty{\alpha\over \beta} < 1 \). Multiplying through by \( N( \beta) \) yields
\[
N ( t \alpha - \beta\xi ) < N( \beta )
.\]
Note that the inner term on the left-hand side is in \( I \), since \( \alpha, \beta\in I \). This is an element of \( I \) of norm less than the norm \( \beta \), but by minimality this can only happen if \( t \alpha - \beta\xi =0 \) and thus \( t \alpha = \beta\xi \in \left\langle{ \beta }\right\rangle \).
:::

Now let \( T \coloneqq{\left\lfloor D \right\rfloor} ! \), where we take the factorial. Then for any \( \alpha\in I \) we have \( T \alpha \in \left\langle{ \beta }\right\rangle \). Why? We already know *some* factor of \( T \) is a multiple of \( \beta \), and multiplying by other factors doesn't take it out of the ideal. Since this was true for every \( \alpha\in I \) we have \( TI \subseteq \left\langle{ \beta }\right\rangle = \beta{\mathbb{Z}}_K \). Define \( J \coloneqq\qty{T/ \beta} I \), where noting that \( T\in {\mathbb{Z}}^{> 0} \), this is just a dilation of \( I \). Then \( J \subseteq {\mathbb{Z}}_K \), since
\[
TI \subseteq \beta{\mathbb{Z}}_K \overset{\cdot \beta^{-1}}{\implies } \beta^{-1}T I \subseteq \beta^{-1}\beta {\mathbb{Z}}_K = {\mathbb{Z}}_K
.\]
Moreover, \( J {~\trianglelefteq~}{\mathbb{Z}}_K \) is an ideal, since it's a dilation of an ideal, \( [J] = [I] \) since they're related by dilation, and \( J \) contains \( \qty{T / \beta } \beta = T \). Since to contain is to divide, we have \( J \divides \left\langle{ T }\right\rangle \). Recall that \( T \) was a product of integers, so however \( \left\langle{ T }\right\rangle \) factors into prime ideals, every such prime ideal will lie above an actual prime no bigger than \( D \). You can factor \( \left\langle{ T }\right\rangle \) by first factoring \( T \) into prime integers, then break them up into prime ideals, all of which would have norm bounded by \( D \).
:::

::: {.remark}
:::

::: {.remark}
This proves Rabinowitz's theorem.\

This says that being an optimal prime is entirely equivalent to a certain ring being a UFD. Are there optimal examples other than \( q=41 \)? It turns out that there are *no* optimal \( f_q \) for \( q>41 \), which is not easy to prove. This didn't happen until the 20th century, by folks interested in the UFD side of this statement:
:::

::: {.theorem title="Baker-Heegner-Stark"}
\( {\mathbb{Z}}_K \) is not a UFD if \( K \coloneqq{\mathbb{Q}}( \sqrt{d} ) \) with \( d \) squarefree with \( d<-163 \).
:::

::: {.remark}
So remarkably, there are *not* infinitely many examples for which the ring of integers is a UFD. Thus the class number only takes on the value 1 for finitely many fields. What about for 2? This also only happens finitely often. In fact, for *any* fixed \( h \), there are only finitely many imaginary quadratic fields with class number \( h \). This follows from the fact that \( { \operatorname{Cl}} ({\mathbb{Q}}( \sqrt{d} )) \approx d^{1/2} \), which increases as \( d \) does. It's still hard to determine for a given \( h \) which values of \( d \) appear, partially because the last statement is *ineffective*[^9] in the sense that there aren't constants to put into the asymptotic statement.
:::

::: {.remark}
What about real quadratic fields? An expert on this will be joining us here at UGA starting Fall 2021. The situation is expected to be very different, and a conjecture is the following:
:::

::: {.conjecture}
The real quadratic field \( {\mathbb{Q}}(\sqrt{d}) \) is a UFD most of the time.
:::

## Lattice Points

::: {.remark}
This corresponds to chapter 12. Everything we've done up until now has been for quadratic fields. After this chapter, we'll start anew and rebuild everything for general number fields.
:::

::: {.definition title="Lattice Point"}
A **lattice point** in \( {\mathbb{R}}^n \) is a point in \( {\mathbb{Z}}^n \).
:::

::: {.question}
Given a region \( R \subseteq {\mathbb{R}}^n \), how many lattice points does it contain? I.e., how large is the sum
\[
\sum_{\mathbf{v} \in {\mathbb{Z}}^n} \chi_R(\mathbf{v})
.\]
:::

::: {.remark}
A first guess might be that this is approximately \( \operatorname{vol}(R) \). To see why, one can try just choosing to count any squares for which the lower-left point is contained in \( R \) and adding up the areas:

```{=tex}
\pgfmathsetseed{12}
```
```{=tex}
\begin{tikzpicture}
\draw[step=1.0,black,thin] (0.5,0.5) grid (9,7);

 \draw [shade,
        top color=blue,
        bottom color=white,
        fill opacity=.1,
        decoration={random steps,segment length=2cm,amplitude=.75cm},
        decorate,
        rounded corners=.3cm]
     (2, 3) -- (4,6)   -- (6,6) -- (7.6,1.5) -- (4, 1) -- (2, 3);

\node[fill=black, circle, inner sep=0.1cm] at (4,2) {};
\node[fill=black, circle, inner sep=0.1cm] at (5,2) {};
\node[fill=black, circle, inner sep=0.1cm] at (6,2) {};
\node[fill=black, circle, inner sep=0.1cm] at (7,2) {};

\node[fill=black, circle, inner sep=0.1cm] at (3,3) {};
\node[fill=black, circle, inner sep=0.1cm] at (4,3) {};
\node[fill=black, circle, inner sep=0.1cm] at (5,3) {};
\node[fill=black, circle, inner sep=0.1cm] at (6,3) {};
\node[fill=black, circle, inner sep=0.1cm] at (7,3) {};


\node[fill=black, circle, inner sep=0.1cm] at (3,4) {};
\node[fill=black, circle, inner sep=0.1cm] at (4,4) {};
\node[fill=black, circle, inner sep=0.1cm] at (5,4) {};
\node[fill=black, circle, inner sep=0.1cm] at (6,4) {};
\node[fill=black, circle, inner sep=0.1cm] at (7,4) {};


\node[fill=black, circle, inner sep=0.1cm] at (4,5) {};
\node[fill=black, circle, inner sep=0.1cm] at (5,5) {};
\node[fill=black, circle, inner sep=0.1cm] at (6,5) {};

\draw[draw=black, fill=green, fill opacity=0.1] (4, 2) rectangle ++(1,1);
\draw[draw=black, fill=green, fill opacity=0.1] (5, 2) rectangle ++(1,1);
\draw[draw=black, fill=green, fill opacity=0.1] (6, 2) rectangle ++(1,1);
\draw[draw=black, fill=green, fill opacity=0.1] (7, 2) rectangle ++(1,1);

\draw[draw=black, fill=green, fill opacity=0.1] (3, 3) rectangle ++(1,1);
\draw[draw=black, fill=green, fill opacity=0.1] (4, 3) rectangle ++(1,1);
\draw[draw=black, fill=green, fill opacity=0.1] (5, 3) rectangle ++(1,1);
\draw[draw=black, fill=green, fill opacity=0.1] (6, 3) rectangle ++(1,1);
\draw[draw=black, fill=green, fill opacity=0.1] (7, 3) rectangle ++(1,1);

\draw[draw=black, fill=green, fill opacity=0.1] (3, 4) rectangle ++(1,1);
\draw[draw=black, fill=green, fill opacity=0.1] (4, 4) rectangle ++(1,1);
\draw[draw=black, fill=green, fill opacity=0.1] (5, 4) rectangle ++(1,1);
\draw[draw=black, fill=green, fill opacity=0.1] (6, 4) rectangle ++(1,1);
\draw[draw=black, fill=green, fill opacity=0.1] (7, 4) rectangle ++(1,1);


\draw[draw=black, fill=green, fill opacity=0.1] (4, 5) rectangle ++(1,1);
\draw[draw=black, fill=green, fill opacity=0.1] (5, 5) rectangle ++(1,1);
\draw[draw=black, fill=green, fill opacity=0.1] (6, 5) rectangle ++(1,1);

\node at (2.25, 2.25) {$R$};

\node at (8.15, 5.45) {$\approx\mathrm{vol}(R)$};

\node at (2.25, 6.25) {${\mathbb{Z}}^n \subseteq {\mathbb{R}}^n$};

\end{tikzpicture}
```
This isn't exactly right, but would become closer as \( R \) grew larger, and the correction term comes from edge effects. For \( R \subseteq {\mathbb{R}}^n \) and \( t\in {\mathbb{R}} \), define the dilation
\[
tR \coloneqq\left\{{ t\mathbf{x} {~\mathrel{\Big|}~}\mathbf{x} \in R }\right\} 
.\]
:::

::: {.theorem title="The number of lattice points in a region is asymptotically the volume"}
Let \( R \) be a region in \( {\mathbb{R}}^n \) which is *Riemann measurable*.[^10] Then the number of lattice points satisfies
\[
{1\over t^n} \sum_{\mathbf{v} \in {\mathbb{Z}}^n} \chi_{tR} (\mathbf{v})
\overset{t\to \infty }\to \operatorname{vol}(R)
.\]
:::

::: {.proof title="of theorem"}
Notice that the left-hand side can be written as
\[
{1\over t^n} \sum_{\mathbf{v} \in {\mathbb{Z}}^n} \chi_{tR} (\mathbf{v})
=
{1\over t^n} = \sum_{\mathbf{w} \in t^{-1}{\mathbb{Z}}^n} \chi_R(\mathbf{w})
.\]
This has the effect of making the squares partitioning \( {\mathbb{R}}^n \) finer, the right-hand side is literally the Riemann sum for
\[
\int \chi_R(\mathbf{w}) \,d \mathbf{w} \coloneqq\operatorname{vol}(R)
.\]
:::

::: {.remark}
Note that there is a small technicality since \( t \) can take on non-integer values, but the limiting behavior is the same. Next time: we've seen that the number of lattice points is sometimes well-approximated by volume, but it's possible to have regions of unbounded volume with no lattice points, e.g. by taking a large ball and deleting all lattice points. It would be nice to have a theorem which guarantee when a region will have lattice points, and Minkowski's theorem will be one such theorem we'll look at next time.
:::

# Lattice Points (Lec. 12, Monday, March 01)

## Minkowski (Version 1)

::: {.remark}
Basic heuristic from last time: counting the lattice points in a region \( R \) should be approximately \( \operatorname{vol}(R) \). We turned this into a theorem for certain regions:
:::

::: {.theorem title="Lattice points with volume after scaling"}
Let \( R \subseteq {\mathbb{R}}^n \) be a bounded region with a well-defined with respect to the Riemann integral. Letting \( L_{R} \) be the number of lattice points in \( R \), we have
\[
{1\over t^n} L_{tR} \overset{t\to \infty}\to \operatorname{vol}(R)
.\]
:::

::: {.remark}
Most of today: Minkowski's theorem, which will guarantee a lattice point under some conditions.
:::

::: {.theorem title="Minkowski, Version 1"}
Let \( R \subseteq {\mathbb{R}}^n \) be a bounded region that is

1.  Convex, so any line segment connecting two points in \( R \) is entirely contained within \( R \), and

2.  Symmetric about \( \mathbf{0} \), so \( \mathbf{x}\in R\implies -\mathbf{x}\in R \).

If \( \operatorname{vol}(R) > 2^n \), then \( R \) contains a nonzero lattice point.
:::

::: {.remark}
Any circle/ball or ellipse will be an example. Note that \( 2^n \) is sharp, i.e. this theorem does not hold for a smaller constant: take the square \( (-1, 1) \times(-1, 1) \subseteq {\mathbb{R}}^2 \), which has volume 4 but only contains the origin as a lattice point.
:::

::: {.proof title="of Minkowski Version 1"}
Note that any such region already contains \( \mathbf{0} \), since containing \( \mathbf{x} \) and \( -\mathbf{x} \) plus convexity implies containing the line between them, which passes through \( \mathbf{0} \). By assumption \( \operatorname{vol}(R) > 2^n \), and hence \( (1/t^n)L_{tR} > 2^n \) for \( t \) large enough. So set \( t=m \) for some \( m>> 1\in {\mathbb{Z}}^{\geq 0} \), this yields \( L_{mR} > (2m)^n \). Consider \( {\mathbb{Z}}^n \) and taking all coordinates \( \operatorname{mod}2m \). This yields \( (2m)^n \) equivalence classes of points, so by the pigeonhole principle there exist \( \mathbf{v}_1 \neq \mathbf{v}_2 \in mR \) such that \( (\mathbf{v}_1 - \mathbf{v}_2)/2m \in {\mathbb{Z}}^n \), and the claim is that this is the lattice point we want.

\

Note that this is nonzero, why is it in the region \( R \)? By definition, \( (1/m)\mathbf{v}_1 \in R \) and \( (-1/m)\mathbf{v}_2 \in R \) using the symmetric assumption. The midpoint between these is precisely the previous point, and this is in \( R \) by convexity.
:::

## Minkowski (Version 2)

::: {.definition title="Lattice"}
A **lattice** in \( {\mathbb{R}}^n \) is the \( {\mathbb{Z}}{\hbox{-}} \)span of a collection of \( {\mathbb{R}}{\hbox{-}} \)linearly independent vectors in \( {\mathbb{R}}^n \).
:::

::: {.example title="$n=2$"}
```{=tex}
\envlist
```
-   \( \Lambda \coloneqq{\mathbb{Z}}{\left[ {1, 0} \right]}^t + {\mathbb{Z}}\left\{{0, 1}\right\}^t \). This tiles the plane by squares.
-   \( \Lambda \coloneqq{\mathbb{Z}}{\left[ {1, 1} \right]}^t + {\mathbb{Z}}\left\{{1, 3}\right\}^t \). Note that this now tiles the plane by parallelograms:

```{=tex}
\begin{tikzpicture}
  \draw[thin,gray!40] (-1,-1) grid (4,4);
  \draw[<->] (-1,0)--(4,0) node[right]{$x$};
  \draw[<->] (0,-1)--(0,4) node[above]{$y$};
  \draw[line width=1pt,blue,-stealth](0,0)--(1,1) node[anchor=south west]{$\boldsymbol{u}$};
  \draw[line width=1pt,purple,-stealth](1,1)--(2,4) node[anchor=south west]{};
  \draw[line width=1pt,purple,-stealth](0,0)--(1,3) node[anchor=north east]{$\boldsymbol{v}$};
\draw[line width=1pt,blue,-stealth](1,3)--(2,4) node[anchor=south west]{};

\draw [draw=black, fill=purple, opacity=0.4]
       (0,0) -- (1,1) -- (2,4) -- (1,3) -- cycle;
\end{tikzpicture}
```
-   \( \Lambda \coloneqq{\mathbb{Z}}{\left[ {1, 0} \right]}^t \), which recovers \( {\mathbb{Z}}\subseteq {\mathbb{R}} \). This is not a full lattice, since it lies in a proper subspace of \( {\mathbb{R}}^2 \).

Note that this will always result in a free abelian group on \( n \) generators. Why not define a lattice this way? Here's a non-example:

-   \( \Lambda \coloneqq{\mathbb{Z}}{\left[ {\sqrt{2} , 0} \right]}^t + {\mathbb{Z}}\left\{{1, 0}\right\}^t \), which are not linearly independent over \( {\mathbb{R}} \). This yields a dense set of points on the real axis in \( {\mathbb{R}}^2 \), and is still a free abelian group of rank 2. We'll see later that no lattice can be dense, and in fact they must always be discrete.
:::

::: {.remark}
It may not be obvious that a lattice has a uniquely determined number of generating elements. This turns out to be true: if \( \Lambda = \sum_{i=1}^d {\mathbb{Z}}\mathbf{v}_i \) with \( \left\{{ \mathbf{v}_i }\right\}_{i=1}^d \) linearly independent over \( {\mathbb{R}} \), then
\[
\Lambda\otimes_{\mathbb{Z}}{\mathbb{R}}\cong \sum_{i=1}^d {\mathbb{R}}\mathbf{v}_i \cong {\mathbb{R}}^d 
,\]
which is now an \( {\mathbb{R}}{\hbox{-}} \)vector vector space of real dimension \( d \). Noting that \( \dim_{\mathbb{R}}(\Lambda\otimes_{\mathbb{Z}}{\mathbb{R}}) \) doesn't depend on the choice of basis, any different choice of generating set for \( \Lambda \) must have the same number of generators.
:::

::: {.definition title="Full Lattices"}
If \( d=n \), we'll call \( \Lambda \) a **full lattice**.
:::

::: {.definition title="Fundamental Parallelepiped"}
Note that if \( \Lambda \) is full, then \( \Lambda= \sum_{i=1}^n {\mathbb{Z}}\mathbf{v}_i \) with the \( \mathbf{v}_i \) linearly independent over \( {\mathbb{R}} \). We define the **fundamental parallelepiped** as the set
\[
\left\{{ \sum_{i=1}^n c_n \mathbf{v}_n {~\mathrel{\Big|}~}0 \leq c_i \leq 1}\right\} 
.\]
Note that this depends on the choice of generating set.
:::

::: {.example title="of a fundamental parallelepiped"}
For \( \mathbf{v}_1 = {\left[ {1, 1} \right]}^t \) and \( \mathbf{v}_2 = {\left[ {1, 3} \right]} \), we get the parallelogram shown in the earlier figure. Note that \( \Lambda \) is also generated by \( \mathbf{v}_1 = \left\{{1, 1}\right\}, \mathbf{w}_2 = {\left[ {0, 2} \right]} \), but this generates a different parallelepiped:

```{=tex}
\begin{tikzpicture}
  \draw[thin,gray!40] (-1,-1) grid (4,4);
  \draw[<->] (-1,0)--(4,0) node[right]{$x$};
  \draw[<->] (0,-1)--(0,4) node[above]{$y$};
  \draw[line width=1pt,blue,-stealth](0,0)--(1,1) node[anchor=south west]{$\mathbf{v}_1$};
  \draw[line width=1pt,purple,-stealth](1,1)--(2,4) node[anchor=south west]{};
  \draw[line width=1pt,purple,-stealth](0,0)--(1,3) node[anchor=south east]{$\mathbf{v}_2$};
\draw[line width=1pt,blue,-stealth](1,3)--(2,4) node[anchor=south west]{};

\draw[line width=1pt,green,-stealth](0,0)--(0,2) node[anchor=south east]{$\mathbf{w}_2$};

\draw [draw=black, fill=purple, opacity=0.4]
       (0,0) -- (1,1) -- (2,4) -- (1,3) -- cycle;

\draw [draw=black, fill=green, opacity=0.2]
       (0,0) -- (1,1) -- (1,3) -- (0,2) -- cycle;
\end{tikzpicture}
```
:::

::: {.proposition title="The volume of the fundamental parallelotope is a lattice invariant"}
In general, one gets a parallelotope whose volume is an invariant of the lattice itself.
:::

::: {.proof title="of proposition"}
How do we compute this? Let \( M_v = {\left[ { \mathbf{v}_1^t, \cdots, \mathbf{v}_n^t} \right]} \) be the linear transformation obtained by placing all of the generating vectors into the columns of a matrix, and consider scaling the unit cube \( C = [0, 1]^n \). Then letting \( P \) be the fundamental parallelepiped, we have \( P = M_v C \) and so
\[
\operatorname{vol}(P) = \operatorname{vol}(M_v C) = {\left\lvert { \operatorname{det}(M_v) } \right\rvert} \operatorname{vol}(C) = \operatorname{det}(M_v)
,\]
using that the volume of the standard cube is 1. So it suffices to check that if \( \mathbf{v}_i \) and \( \mathbf{w}_j \) generate the same lattice \( \Lambda \), then \( \operatorname{det}M_v = \operatorname{det}M_w \). Why is this true? If they generate the same lattice, every \( \mathbf{v}_i \) is a \( {\mathbb{Z}}{\hbox{-}} \)linear combination of the \( \mathbf{w}_j \), and similarly every \( \mathbf{w}_j \) can be written as a linear combination of the \( \mathbf{v}_i \). So we get
\[
M_v = M_w A
\qquad 
M_w = M_v A'
\]
for some matrices \( A, A' \). We can thus write
\[
M_v = M_vA' A
.\]
. Since the \( \mathbf{v}_i \) are linearly independent, \( M_v \) is invertible, so right-multiplying yields \( AA' = I \) and taking determinants yields
\[
1 = \operatorname{det}(A')\operatorname{det}(A)
.\]
Noting that \( A, A' \in \operatorname{Mat}(n\times n, {\mathbb{Z}}) \), their determinants must be integers, which forces \( \operatorname{det}(A) = \operatorname{det}(A') = \pm 1 \). Taking determinants in the original equation yields
\[
\operatorname{det}(M_v) = \operatorname{det}(A) \operatorname{det}(M_w) = \pm \operatorname{det}(M_w)
,\]
and taking absolute values yields the result.
:::

::: {.definition title="Covolume of a Lattice"}
We'll call the common value \( {\left\lvert {\operatorname{det}M_v} \right\rvert} \) for any choice of generating set \( \left\{{ \mathbf{v}_i }\right\} \) the **covolume** of \( \Lambda \):
\[
\operatorname{covol}( \Lambda) \coloneqq{\left\lvert { \operatorname{det}M_v } \right\rvert}
.\]
:::

::: {.theorem title="Minkowski (Version 2)"}
Let \( \Lambda \) be a full lattice in \( {\mathbb{R}}^n \), and let \( R \subseteq {\mathbb{R}}^n \) be a region that is convex and symmetric about zero. Assume that
\[
\operatorname{vol}(R) > 2^n \operatorname{covol}( \Lambda)
.\]
Then \( R \) contains a nonzero \( \mathbf{v} \in \Lambda \).
:::

::: {.remark}
Taking \( \Lambda\coloneqq{\mathbb{Z}}^n \) recovers the first version. Idea of proof: any full lattice is the image of the standard lattice under some linear transformation.
:::

::: {.proof title="of Minkowski Version 2"}
Let \( \mathbf{v}_1, \cdots, \mathbf{v}_n \) be \( n \) generators for \( \Lambda \), then define a linear transformation
\[
T: {\mathbb{R}}^n &\to {\mathbb{R}}^n \\
\mathbf{v}_i &\mapsto \mathbf{e}_i
,\]
which takes each generator to the corresponding standard basis vector. The \( T \Lambda = {\mathbb{Z}}^n \) is the standard lattice, and
\[
\operatorname{vol}(T(R)) = {\left\lvert { \operatorname{det}(T) } \right\rvert} \operatorname{vol}(R) = {\operatorname{vol}(R) \over \operatorname{covol}( \Lambda) } > 2^n
,\]
noting that \( T^{-1}= {\left[ {\mathbf{v}_1^t, \cdots, \mathbf{v}_n^t} \right]} \). Now applying the original Minkowski theorem we get a nonzero point
\[
\mathbf{x}\in {\mathbb{Z}}^n \cap T(R)
\implies T^{-1}\mathbf{x} \in \Lambda \cap R
.\]
:::

### Application: The 4 Square Theorem

::: {.theorem title="4 Square Theorem (Lagrange)"}
Every positive integer is a sum of 4 squares of integers.
:::

::: {.lemma title="Finding sums of squares in $\\ZZ/m$"}
Let \( m \in {\mathbb{Z}}^{>0} \) be squarefree, then there are \( A, B \in {\mathbb{Z}} \) such that
\[
A^2 + B^2 + 1 \equiv 0 \operatorname{mod}m
,\]
i.e. \( -1 \) is always the sum of two squares in the ring \( {\mathbb{Z}}/m \).
:::

::: {.proof title="of lemma"}
We're trying to solve an equation \( \operatorname{mod}m \), and by the CRT it suffices to solve it for every prime power dividing \( m \), and since \( m \) is squarefree, all prime powers occur with exponent 1. So it suffices to consider \( m=p \) a prime. We can further assume \( p \) is odd, since if \( p=2 \) we can take \( A=1, B=2 \). Consider the following two subsets of \( {\mathbb{Z}}/p \):
\[
S_1 &\coloneqq\left\{{ A^2 \operatorname{mod}p }\right\} \\
S_2 &\coloneqq\left\{{ -1-B^2 \operatorname{mod}p }\right\} 
.\]
Note that \( \# S_1 = {p+1 \over 2} \), since the number of nonzero squares is half the number of elements, so \( {p-1\over 2} \), and we add in zero. Similarly \( \# S_2 = \# S_1 \) since it can be obtained from \( S_1 \) by sending \( x\mapsto -1-x \). Note that \( {p+1\over 2} > {p\over 2} \), but \( {\left\lvert {{\mathbb{Z}}/p} \right\rvert} = p \), so these two sets can't be disjoint. So there is some \( A^1 = -1-B^2 \operatorname{mod}p \).
:::

::: {.proof title="of the 4 Square Theorem"}
Suppose \( m \) is squarefree. Choose \( A, B \) as in the lemma, so \( A^2 + B^2 \equiv -1 \operatorname{mod}m \), and define \( \gamma \coloneqq A+ Bi \in {\mathbb{Z}}[i] \). Let
\[ \Lambda \coloneqq\left\{{ (\alpha, \beta) \in {\mathbb{Z}}[i] {~\mathrel{\Big|}~}\alpha\equiv \beta \gamma \operatorname{mod}m }\right\} .\]
Taking one such ordered pair in \( \Lambda \), we can apply complex conjugation to obtain
\[
\alpha\equiv \beta \gamma\operatorname{mod}m \implies {\overline{{ \alpha}}} {\overline{{ \beta}}} {\overline{{ \gamma}}} \operatorname{mod}{\overline{{m}}} = m
,\]
where we can immediately note that \( {\overline{{m}}} = m \) since \( m\in {\mathbb{Z}} \). Multiplying these two congruences yields
\[
\alpha{\overline{{\alpha}}} 
= N( \alpha) 
\equiv N( \beta) N( \gamma) \operatorname{mod}m
\equiv - N( \beta) \operatorname{mod}m
,\]
and so we have \( N( \alpha) + N( \beta) \equiv 0 \operatorname{mod}m \). But these are Gaussian integers, so writing \( \alpha = a + bi, \beta = c + di \) we obtain
\[
a^2 + b^2 + c^2 + d^2 = \equiv 0 \operatorname{mod}m
.\]
Being congruent to \( 0\operatorname{mod}m \) in \( {\mathbb{Z}}[i] \) means that both the real and imaginary parts are divisible by \( m \), but since the left-hand side above is an ordinary integer, it has no imaginary part. So \( m \divides a^2 + b^2 + c^2 + d^2 \) for every element of \( \Lambda \). Noting that \( \Lambda \subseteq {\mathbb{Z}}[i] \) we can identify \( \Lambda \subseteq {\mathbb{Z}}^4 \subseteq {\mathbb{R}}^4 \) by pairing \( ( \alpha, \beta) \rightleftharpoons(a,b,c,d) \).

::: {.claim}
\( \Lambda\subseteq {\mathbb{R}}^4 \) is a full lattice, and after writing a set of generators and computing the determinant, one finds that \( \operatorname{covol}( \Lambda) = m^2 \).
:::

> See the book for a proof of this claim!

Now let
\[
R \coloneqq\left\{{ {\left[ {x,y,z,w} \right]} \in {\mathbb{R}}^4 {~\mathrel{\Big|}~}x^2 + y^2 + z^2 + w ^2 < 2m  }\right\}
,\]
which is a convex and centrally symmetric region. A multivariable Calculus exercise shows \( \operatorname{vol}(R) = 2\pi^2 m^2 \), and \( 2\pi^2 > 2^4 \operatorname{covol}( \Lambda) \). Applying Minkowski version 2, there exists a nonzero point \( \mathbf{x} \in R \cap\Lambda \), and thus its coordinates satisfy
\[
0 < x^2 + y^2 + z^2 + w^2 < 2m
.\]
The middle term is then an integer that is a multiple of \( m \), forcing it to be equal to \( m \).
:::

::: {.remark}
We made the assumption that \( m \) was squarefree, but we can write any \( m\in {\mathbb{Z}}^{>0} \) as \( m = k^2 m' \) where \( m' \) is squarefree. Then writing \( m' = x^2 + y^2 + z^2 + w^2 \), we have
\[ 
m = (kx)^2 + (ky)^2 + (kz)^2 + (kw)^2 
.\]
There are other applications of Minkowski's theorem that tell you when certain types of numbers are represented by special quadratic forms (such as the above sum of squares). See Pete Clark's papers!
:::

# Starting Over with General Number Fields (Lec. 13, Thursday, March 04)

## Recasting Old Definitions

::: {.remark}
This corresponds to chapter 13, "Starting Over". Idea: we've phrased everything so far for quadratic fields, now we want to do everything for general number fields. The basic objects and tools: norm and trace. If \( K/{\mathbb{Q}} \) is a number field that's Galois, we define \( N \alpha \coloneqq\prod_{ \sigma \in G} \sigma( \alpha) \) and \( \operatorname{Tr}\alpha \coloneqq\sum_{ \sigma\in G } \sigma( \alpha) \). We'll have to modify this for a general number field since there's not an immediate candidate for the Galois group.

Setup: let \( K \) be a number field with \( [K: {\mathbb{Q}}] = n \), then recall that there exist \( n \) different embeddings \( \sigma: K \hookrightarrow{\mathbb{C}} \).
:::

::: {.definition title="Field Polynomial"}
If \( \alpha\in K \) then define its **field polynomial**
\[
\varphi_{ \alpha}(x) \coloneqq\prod_{\sigma: K\hookrightarrow{\mathbb{C}}} (x - \sigma( \alpha) )
.\]
:::

::: {.proposition title="The field polynomial is monic, has rational coefficients, and is a power of the minimal polynomial"}
This is a monic polynomial with \( {\mathbb{C}}{\hbox{-}} \)coefficients, and in fact \( \varphi_{ \alpha} \in {\mathbb{Q}}[x] \) and \( \varphi_{ \alpha}(x) = \min_{ \alpha} (x)^n \) (the minimal polynomial over \( {\mathbb{Q}} \)) for some power \( n \), and the correct choice turns out to be \( n \coloneqq[K: F[ \alpha] ] \).
:::

::: {.remark}
Note that the first claim follows from the second since \( \min_{ \alpha}(x) \in {\mathbb{Q}}[x] \).
:::

::: {.lemma title="Number of embeddings of subfields"}
Let \( K \) be a number field with \( [K: {\mathbb{Q}}] = n \) and \( F\leq K \) a subfield with \( [F: {\mathbb{Q}}] = r \). Note that \( r\divides n \). Then every embedding \( \tau: F\hookrightarrow{\mathbb{C}} \) extends in \( n/r \) ways to an embedding \( \sigma: K \hookrightarrow{\mathbb{C}} \).
:::

::: {.proof title="of lemma, sketch"}
Standard field theory exercise: by the primitive element theorem, write \( K = F( \theta) \) where \( \deg( \theta) = [K: F] = n/r \) over \( F \). Since we're extending an embedding, it suffices to define what it does to \( \theta \). If \( m(x) = \min_{ \theta}(x) \) over \( F \), then \( \sigma( \theta) \) must be a root of \( (\tau m)(x) \), where the latter polynomial is taking \( m \) and applying \( \tau \) to each of the coefficients. Note that this preserves the degree, so \( \deg \tau m = n/r \), and there are \( n/r \) choices for \( \sigma( \theta) \). Now the proof follows from checking that every single root is a possibility.
:::

::: {.proof title="of proposition"}
By definition, \( \varphi_{ \alpha}(x) \) is a product over embeddings \( \sigma:K \hookrightarrow{\mathbb{C}} \), and each such \( \sigma \) restricts to an embedding \( F[ \alpha] \hookrightarrow{\mathbb{C}} \), so applying the lemma to \( F[ \alpha] \leq K \) yields
\[
\varphi_{ \alpha}(x) 
&= \prod_{ \sigma: K\hookrightarrow{\mathbb{C}}} (x - \sigma( \alpha) ) \\
&= \prod_{ \tau: F[ \alpha] \hookrightarrow{\mathbb{C}}} \,\,\, \prod_{ \sigma \text{ s.t. } { \left.{{ \sigma}} \right|_{{ F[ \alpha ] }} } = \tau } (x - \sigma( \alpha) ) \\
&= \prod_{ \tau: F[ \alpha ] \hookrightarrow{\mathbb{C}}} (x - \tau( \alpha ) )^{n(\tau)} \\
&= \qty{ \prod_{ \tau: F[ \alpha] \hookrightarrow{\mathbb{C}}} (x - \tau( \alpha ) ) }^{[K: F(\alpha)]} \\
&= \min_ \alpha(x) ^{[ K : F( \alpha ) ] }
.\]
where

-   We've first just reorganized the product by grouping,
-   Then we've used that all of the terms in the inner product must have the same value for \( \sigma( \alpha) \) since \( \alpha\in F[ \alpha] \) and this makes \( \sigma( \alpha) = \tau( \alpha) \),
-   We note that the exponent should be the number of terms in the inner product, i.e. the number of \( \sigma \) extending \( \tau \), i.e. \( n(\tau) = [K: F[ \alpha] ] \) since \( r = [F[ \alpha] : {\mathbb{Q}}] \) and \( n = [K: {\mathbb{Q}}] \),
-   The last equality follows from remarks in chapter 1.
:::

::: {.remark}
The field polynomial gives us a way to determine whether an element of a number field is in its ring of integers:
:::

::: {.proposition title="Field polynomial has integer coefficients iff the element is an integer"}
\[
\alpha\in {\mathbb{Z}}_K \iff \varphi_{ \alpha}(x) \in {\mathbb{Z}}[x]
.\]
:::

::: {.proof title="of proposition"}
\( \impliedby \): This direction is easy, since having integer coefficients, being monic, and having \( \alpha \) as a root since \( x - \sigma( \alpha) = x - \alpha \) for some \( \sigma \). But this puts \( \alpha \in {\mathbb{Z}}_K \) by definition.

\( \implies \): We proved that if \( \alpha\in {\mathbb{Z}}_K \) then \( \min_ \alpha(x) \in {\mathbb{Z}}[x] \), and \( \varphi_{ \alpha} \) is just a power of \( \min_ \alpha(x) \).
:::

::: {.definition title="Norm and Trace"}
Write
\[
\varphi_{ \alpha} (x) = x^n + \sum_{i=1}^n a_i x^i \in {\mathbb{Q}}[x]
,\]
we then define the **norm** and **trace**[^11] respectively as
\[
N( \alpha) &\coloneqq(-1)^n a_0 \in {\mathbb{Q}}\\
\operatorname{Tr}( \alpha) &\coloneqq-a_{n-1} \in {\mathbb{Q}}
.\]
Note that if \( \alpha \in {\mathbb{Z}}_K \) then these are both in fact in \( {\mathbb{Z}} \).
:::

::: {.remark}
Note that \( -(1)^n a_0 = \prod r_i \) is the product of the roots of \( \varphi_{ \alpha} (x) \) and \( -a_{n-1} = \sum r_i \), so equivalently we can think of these as
\[
N( \alpha ) &= \prod_{ \sigma: K \hookrightarrow{\mathbb{C}}} \sigma( \alpha) \\
\operatorname{Tr}( \alpha ) &= \sum_{\sigma: K \hookrightarrow{\mathbb{C}}} \sigma( \alpha) 
.\]
It's also the case that \( N({-}) \) is multiplicative and \( \operatorname{Tr}({-}) \) is \( {\mathbb{Q}}{\hbox{-}} \)linear.
:::

## Discriminants

::: {.remark}
Let \( K \) be a number field and \( [K : {\mathbb{Q}}] = n \). Pick an arbitrary ordering of embeddings \( \sigma_1, \cdots, \sigma_n: K \hookrightarrow{\mathbb{C}} \).
:::

::: {.definition title="Tuple Discriminant"}
For any \( n{\hbox{-}} \)tuple \( (w_1, \cdots, w_n) \in K^n \) define the **tuple discriminant** as
\[
\Delta(w_1, \cdots, w_n) \coloneqq\operatorname{det}( D_{w_1, \cdots, w_n} )^2 
\]
where
\[
D_{w_1, \cdots, w_n}
=
\begin{bmatrix}
\sigma_1(w_1) & \cdots  & \sigma_1(w_n) \\
\sigma_2(w_1) & \cdots  & \sigma_2(w_n) \\
\vdots & \cdots & \vdots \\
\sigma_n(w_1) & \cdots  & \sigma_n(w_n) 
\end{bmatrix}
.\]
:::

::: {.remark}
Why square this? Permuting two columns changes the sign of the determinant, which is just swapping the order of the embeddings. So squaring keeps this invariant under relabeling the \( \sigma_i \). It turns out that this is a rational number, since we can write
\[
\Delta(w_1, \cdots, w_n) 
= \operatorname{det}(D) \operatorname{det}(D) 
\operatorname{det}(D^t D)
,\]
where \( (D^t D)_{ij} = \operatorname{Tr}(w_i w_j) \implies D^t D \in \operatorname{Mat}(n\times n, {\mathbb{Q}}) \). So taking the determinant yields a rational number, so \( \Delta(w_1, \cdots, w_n) \in {\mathbb{Q}} \). Moreover if you start with the \( w_i \in {\mathbb{Z}}_K \), then \( D^t D \in \operatorname{Mat}(n\times n, {\mathbb{Z}}) \) and thus \( \Delta(w_1, \cdots, w_n) \in {\mathbb{Z}} \).

Why is this called the discriminant?
:::

::: {.theorem title="The discriminant detects $\\QQ\\dash$bases"}
Let \( w_1, \cdots, w_n\in K \), then
\[
\left\{{ w_1, \cdots, w_n }\right\} \text{ form a ${\mathbb{Q}}{\hbox{-}}$basis for $K$}
\iff
\Delta(w_1, \cdots, w_n) \neq 0
.\]
:::

::: {.remark}
So this *discriminates* between bases and non-bases.
:::

::: {.proof title="of theorem"}
\( \impliedby \): Suppose \( \Delta(w_1, \cdots, w_n) \neq 0 \). Note that the \( n \) elements \( w_1, \cdots, w_n \) are \( n \) elements in an \( n{\hbox{-}} \)dimensional \( {\mathbb{Q}}{\hbox{-}} \)vector space, so the only way they could fail to be a basis would be if there were a linear dependence. But then considering the matrix \( D \) above, a \( {\mathbb{Q}}{\hbox{-}} \)linear dependence between the \( w_i \), this translates to a corresponding dependence between the columns of \( D \), which would yield the contradiction \( \operatorname{det}(D)^2 = 0 \).

\

\( \implies \): This is the harder part. Toward a contradiction suppose \( w_1, \cdots, w_n \) are a \( {\mathbb{Q}}{\hbox{-}} \)basis for \( K \) but \( \Delta(w_1, \cdots, w_n) = \operatorname{det}(D^t D) = 0 \). Then the columns of \( D^t D \) are linearly dependent, so there are \( c_i \in {\mathbb{Q}} \) not all zero such that
\[
\sum_{j=1}^n c_j \operatorname{Tr}( w_i w_j) = 0 && \forall i=1, \cdots, n
.\]
Introduce an element \( \beta \coloneqq\sum_{j=1}^n c_j w_j \in K^{\times} \), which is not zero since not all of the \( c_j \) are zero and the \( w_i \) are a basis. Using linearity of the trace, we can write
\[
\operatorname{Tr}(w_i \beta) = 0 && \forall i=1, \cdots, n
.\]
Again using linearity, we actually have \( \operatorname{Tr}( \alpha \beta) = 0 \) for all \( \alpha\in K \) since every \( \alpha \) is in the \( {\mathbb{Q}}{\hbox{-}} \)span of the \( w_i \), which are a basis. It's then perfectly fine to take \( \alpha \coloneqq\beta^{-1} \), which forces \( \operatorname{Tr}(1) = 0 \). But we can compute directly that \( \operatorname{Tr}(1) = n > 0 \) since every embedding \( \sigma \) must send 1 to 1.
:::

## Integral Bases

::: {.theorem title="Integral Basis Theorem"}
For \( K \) any number field of degree \( n \), \( {\mathbb{Z}}_K \in {\mathsf{{\mathbb{Z}}}{\hbox{-}}\mathsf{Mod}} \) is free of rank \( n \).
:::

::: {.observation}
Suppose \( \mathbf{(}w_1, \cdots, w_n), (\theta_1, \cdots, \theta_n) \in K \) where \( {\left[ {w_1, \cdots, w_n} \right]} = {\left[ { \theta_1, \cdots, \theta_n } \right]} M \) for some matrix \( M\in \operatorname{Mat}(n\times n, {\mathbb{Q}}) \). Then
\[
\Delta({ {w}_1, {w}_2, \cdots, {w}_{n}}) = \Delta({ {\theta}_1, {\theta}_2, \cdots, {\theta}_{n}}) \operatorname{det}(M)^2
.\]
:::

::: {.proof title="of observation"}
Applying the embeddings \( \sigma_i \) yields an equality \( D_{ { {w}_1, {w}_2, \cdots, {w}_{n}} }= D_{{ {\theta }_1, {\theta }_2, \cdots, {\theta }_{n}} } M \). Now taking determinants and squaring yields the result.
:::

::: {.proof title="of integral basis theorem"}
Choose \( { {w}_1, {w}_2, \cdots, {w}_{n}} \in {\mathbb{Z}}_K \) such that

1.  \( {\Delta}({ {w}_1, {w}_2, \cdots, {w}_{n}} ) \neq 0 \)
2.  \( {\left\lvert { {\Delta}({ {w}_1, {w}_2, \cdots, {w}_{n}} ) } \right\rvert} \) is minimal among those satisfying (1).

Does this make sense? The claim is that if (1) is possible, then (1) and (2) is also possible. This is because \( {\Delta}({ {w}_1, {w}_2, \cdots, {w}_{n}} ) \in {\mathbb{Z}} \), taking absolute values makes it positive, and then we can minimize among the positive integers occurring using the well-ordering principle. But we can choose tuples satisfying (1): we can always choose a \( {\mathbb{Q}}{\hbox{-}} \)basis, and to get them down to \( {\mathbb{Z}}_K \) instead of \( K \), they can just be scaled by a rational integer without changing that they form a basis.

::: {.claim}
Any tuple \( { {w}_1, {w}_2, \cdots, {w}_{n}} \) satisfying (1) and (2) will be a \( {\mathbb{Z}}{\hbox{-}} \)basis for \( {\mathbb{Z}}_K \).
:::

How could this fail? No elements could have multiple representations as a \( {\mathbb{Z}}{\hbox{-}} \)basis, since they don't admit any in the \( {\mathbb{Q}}{\hbox{-}} \)basis. So it suffices to show \( {\operatorname{span}}_{\mathbb{Z}}\left\{{ { {w}_1, {w}_2, \cdots, {w}_{n}} }\right\} = {\mathbb{Z}}_K \). If not, choose \( \alpha\in {\mathbb{Z}}_K \) not in their \( {\mathbb{Z}}{\hbox{-}} \)span -- it must still be in the \( {\mathbb{Q}}{\hbox{-}} \)span, so we can write \( \alpha= \sum c_i w_i \) where the \( c_i\in {\mathbb{Q}} \). We can assume that \( c_1\not \in {\mathbb{Z}} \) by renumbering. Now write
\[
\beta \coloneqq\alpha - \left[ {c_1}\right]  w_1 \in {\mathbb{Z}}_K
,\]
where \( \left[ {{-}}\right]  \) denotes taking the integer part. We can write \( \beta = \left\{{c_1}\right\}w_1 + c_2 w_2 + \cdots + c_n w_n \). Observe that the tuple
\[
{\left[ { \beta, w_2, \cdots, w_n} \right]} 
= {\left[ { w_1 , w_2, \cdots, w_n} \right]} 
M,
&& 
M \coloneqq
\begin{bmatrix}
\left\{{c_1}\right\} & 0  & \cdots & \vdots \\
c_2 &  1 & \ddots & \vdots \\
c_n &  0 & 0 & 1
\end{bmatrix}
.\]
noting that the first column describes how to write \( \beta \) as a linear combination of the \( w_i \). Taking discriminants yields
\[
{\Delta}(\beta, w_2, \cdots, w_n) 
= {\Delta}( { {w}_1, {w}_2, \cdots, {w}_{n}} )\operatorname{det}(M)^2
= {\Delta}( { {w}_1, {w}_2, \cdots, {w}_{n}} )\left\{{c_1}\right\}^2
,\]
where we've computed the determinant using the fact that it is lower triangular. Since \( c_1\not\in{\mathbb{Z}} \), we have \( \left\{{c_1}\right\} \) nonzero, real, between 0 and 1. Since the discriminant was nonzero, the right-hand side is nonzero and thus neither is the left-hand side. We would then have
\[
0 < 
{\left\lvert { {\Delta}( \beta, w_2, \cdots, w_n) } \right\rvert}
<
{\left\lvert { {\Delta}( { {w}_1, {w}_2, \cdots, {w}_{n}} ) } \right\rvert}
,\]
which contradicts the minimality of the \( w_i \). \( \contradiction \)
:::

::: {.remark}
Note that this is non-constructive, finding a basis is another question!
:::

## Discriminant of Number Fields

::: {.definition title="Discriminant of a Number Field"}
Let \( K \) be a number field, then the **discriminant** of \( K \) is defined as
\[
{\Delta}_K \coloneqq{\Delta}({ {w}_1, {w}_2, \cdots, {w}_{n}}) 
,\]
where \( \left\{{ w_i }\right\} \) is any \( {\mathbb{Z}}{\hbox{-}} \)basis for \( {\mathbb{Z}}_K \).
:::

::: {.remark}
Is this actually an invariant of \( K \), since we made a choice of basis? Given two \( {\mathbb{Z}}{\hbox{-}} \)bases for \( {\mathbb{Z}}_K \), say \( { {w}_1, {w}_2, \cdots, {w}_{n}}, { {\theta }_1, {\theta }_2, \cdots, {\theta }_{n}} \), then
\[
{\left[ { { {w}_1, {w}_2, \cdots, {w}_{n}}} \right]} = {\left[ { { {\theta }_1, {\theta }_2, \cdots, {\theta }_{n}} } \right]} M && M \in \operatorname{GL}(n, {\mathbb{Z}})
.\]
Hence
\[
{\Delta}({ {w}_1, {w}_2, \cdots, {w}_{n}}) 
= {\Delta}( { {\theta }_1, {\theta }_2, \cdots, {\theta }_{n}} ) \operatorname{det}(M)^2
= {\Delta}( { {\theta }_1, {\theta }_2, \cdots, {\theta }_{n}} )
.\]
using that invertible matrices have unit determinants, which in \( {\mathbb{Z}} \) are just \( \pm 1 \).
:::

::: {.remark}
Why do we care? The discriminant measures the complexity of the number field and carries arithmetic information:

::: {.theorem title="Hermite"}
For every \( X>0 \), there are only finitely many number fields such that \( {\left\lvert { {\Delta}_K } \right\rvert} \leq X \).
:::

::: {.remark}
Interesting question: how many are there as a function of \( X \)? This is studied today by fixing a degree \( n \), and we have good answers for \( n=2,3,4,5 \), but it's still open to get an asymptotic formula for \( n>5 \). Note that our new faculty hire this year is an expert on these kinds of questions!
:::

::: {.theorem title="Dedekind"}
Taking a prime \( p\in {\mathbb{Z}} \), we have
\[
p \text{ ramifies in } {\mathbb{Z}}_K \iff p \divides {\Delta}_K
,\]
where **ramification** occurs if when \( \left\langle{ p }\right\rangle{~\trianglelefteq~}{\mathbb{Z}}_K \) factors into prime ideals with a repeated prime factor. In particular, \( {\Delta}({-}) < \infty \), and so only finitely many such primes can occur.
:::
:::

# Discriminants and Norms (Lec. 14, Saturday, March 13)

::: {.example title="of a discriminant"}
Suppose \( K = {\mathbb{Q}}( \sqrt{d} ) \) where \( d \) is squarefree. What is its discriminant? We need a \( {\mathbb{Z}}{\hbox{-}} \)basis of \( {\mathbb{Z}}_K \), for \( d=2,3 \operatorname{mod}4 \) we can take \( (1, \sqrt{d} ) \). Then we construct a matrix whose columns are the different embeddings of each entry. The embeddings here are the identity and complex conjugation, so we get
\[
\Delta_K = \Delta(1, \sqrt{ d} )
= 
\operatorname{det}
\qty{
\begin{bmatrix}
1 & \sqrt{d} 
\\
 1 & -\sqrt{d} 
\end{bmatrix}
}^2
= (-2 \sqrt{d} )^2 = 4d
.\]
If \( d = 1 \operatorname{mod}4 \), then we can take a basis \( (1, {1 + \sqrt{d} \over 2}) \), and
\[
\Delta_{K}
=
\qty{
\begin{bmatrix}
1 & {1 + \sqrt{d} \over 2}
\\
1 & {1 - \sqrt{d} \over 2}
\end{bmatrix}
}^2
= (- \sqrt{d} )^2 = d
.\]
So we have
\[
\Delta_K = 
\begin{cases}
d & d = 1 \operatorname{mod}4 
\\
4d & d = 2,3 \operatorname{mod}4 .
\end{cases}
\]
:::

::: {.remark}
Note that \( \Delta_{\mathbb{Q}}= 1 \) if you trace through the computation.
:::

## Norms of Ideals

::: {.definition title="Norm of an ideal"}
Let \( I {~\trianglelefteq~}{\mathbb{Z}}_K \) be a nonzero ideal, then define \( N(I) \coloneqq\# {\mathbb{Z}}_K/I \).
:::

::: {.remark}
Note that this was finite in the quadratic field case since nonzero ideals had a "standard basis". For general number fields, the ideals can be more complicated, so we'll need another way to show finiteness.
:::

::: {.lemma title="Elements divide their norms"}
Let \( \alpha\in {\mathbb{Z}}_K \), then \( \alpha\divides N( \alpha) \) in \( {\mathbb{Z}}_K \).
:::

::: {.proof title="of lemma"}
Write down the obvious thing and see that it works!
\[
N \alpha 
&\coloneqq\prod_{ \sigma: K \hookrightarrow{\mathbb{C}}} \sigma( \alpha) \\
&= \alpha \prod_{ \substack{ \sigma: K \hookrightarrow{\mathbb{C}}\\ \sigma\neq \one_K } } \sigma( \alpha) \\
&\coloneqq\alpha C 
,\]
where we've used that one embedding is the identity and factored it out. So it only remains to show that the *cofactor* \( C \) (the product term) is actually in \( {\mathbb{Z}}_K \). It is \( \mkern 1.5mu\overline{\mkern-1.5muZZ\mkern-1.5mu}\mkern 1.5mu \), since \( \alpha \) was an algebraic integer, i.e. a root of some monic polynomial with integer coefficients. But then under every embedding, \( \sigma( \alpha) \) is a root of the same monic polynomial, so each \( \sigma( \alpha) \in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \), as is their product since it's a ring. On the other hand, we can write \( C = N \alpha/ \alpha \). Since \( N \alpha \) is a nonzero rational integer and \( \alpha\in K \), and since \( K \) is a field, this quotient is in \( K \). But then \( C \in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \cap K = {\mathbb{Z}}_K \).
:::

::: {.proposition title="Nonzero ideals have finite norms in rings of integers"}
For \( I{~\trianglelefteq~}{\mathbb{Z}}_K \) nonzero,
\[
N(I) < \infty 
.\]
:::

::: {.proof title="of proposition"}
We start with principal ideals. Let \( m\in {\mathbb{Z}}^+ \), then \( {\mathbb{Z}}_K \left\langle{ m }\right\rangle \coloneqq{\mathbb{Z}}_K /m {\mathbb{Z}}_K \cong_{{\mathbb{Z}{\hbox{-}}\mathsf{Mod}}} {\mathbb{Z}}^n / m{\mathbb{Z}}^n \cong ({\mathbb{Z}}/m{\mathbb{Z}})^n \) where we've forgotten the ring structure and are just considering it as a \( {\mathbb{Z}}{\hbox{-}} \)module . But this has size \( m^n < \infty \).

Now let \( \alpha\in I \) be nonzero and let \( m \coloneqq\pm N \alpha \), choosing whichever sign makes \( m>0 \). Since \( \alpha\divides N \alpha \), so \( N \alpha = \ell \alpha \) is a multiple of \( \alpha \). But \( \alpha\in I \) and \( I \) is an ideal, so \( N \alpha\in I \implies m \in I \). Then (check!) the following map is surjective:
\[
{\mathbb{Z}}_K/ \left\langle{ m }\right\rangle &\twoheadrightarrow{\mathbb{Z}}_K/I \\
[ \alpha]_m &\mapsto [ \alpha]_I
,\]
where we've used \( m\in I \) for this to be well-defined. So \( \# {\mathbb{Z}}_K /I \leq {\mathbb{Z}}_K / \left\langle{ m }\right\rangle = m^n < \infty \).
:::

::: {.theorem title="The norm is multiplicative"}
For every pair \( I, J{~\trianglelefteq~}{\mathbb{Z}}_K \) nonzero,
\[
N( IJ) + N(I) N(J)
.\]
:::

::: {.proof title="that the norm is multiplicative"}
Deferred!
:::

::: {.theorem title="Formula for norm of principal ideals"}
For all \( \alpha\in {\mathbb{Z}}_K \) nonzero,
\[
N( \left\langle{ \alpha }\right\rangle) = {\left\lvert { N ( \alpha ) } \right\rvert}
,\]
i.e. the norm of a principal ideal is the absolute value of the norm of the element-wise ideal.
:::

::: {.remark}
This will follow from the following proposition:
:::

::: {.proposition title="Index = Determinant"}
Let \( M \in {\mathbb{Z}{\hbox{-}}\mathsf{Mod}} \) be free of rank \( n \) and let \( H \leq M \). Then \( H \) is free of rank at most \( n \), so suppose \( \operatorname{rank}_{\mathbb{Z}}H = n \). Suppose that \( \omega_1, \cdots, \omega_n \) is a \( {\mathbb{Z}}{\hbox{-}} \)basis for \( M \) and \( \theta_1, \cdots, \theta_n \) a \( {\mathbb{Z}}{\hbox{-}} \)basis for \( H \). We can thus write \( {\left[ { \theta_1, \cdots, \theta_n} \right]} = {\left[ { \omega_1, \cdots, \omega_n } \right]} A \) for some \( A \in \operatorname{Mat}(n\times n, {\mathbb{Z}}) \). Then \( [M: H] = \#M/H = {\left\lvert { \operatorname{det}A } \right\rvert} \).
:::

::: {.proof title="Sketch"}
Idea: convert this problem about an arbitrary \( M \in {\mathbb{Z}{\hbox{-}}\mathsf{Mod}} \) to a problem about \( {\mathbb{Z}}^n \). We know \( M \cong {\mathbb{Z}}^n \), and if we send the \( \omega_i \) to the standard basis vectors, this identifies \( H \cong A {\mathbb{Z}}^n \). So \( M/H \cong {\mathbb{Z}}^n/A{\mathbb{Z}}^n \), and it's easy to see that \( \operatorname{det}A \neq 0 \): if not, there would be a linear dependence among the \( \theta_j \). Using *Smith normal form*, we can choose \( S, T \in \operatorname{GL}_n({\mathbb{Z}}) \) with
\[
SAT = \operatorname{diag}(a_1, \cdots, a_n) && a_i \in {\mathbb{Z}}
.\]
Since \( \operatorname{det}A \neq 0 \), we have \( \operatorname{det}S, \operatorname{det}T \neq 0 \), and so all of the \( a_i \) are nonzero. We can write \( {\mathbb{Z}}^n/A{\mathbb{Z}}^n \cong {\mathbb{Z}}^n/SAT{\mathbb{Z}}^n \cong \bigoplus_{i=1}^n {\mathbb{Z}}/a_i {\mathbb{Z}} \), which has size \( \prod {\left\lvert {a_i} \right\rvert} = {\left\lvert { \prod a_i } \right\rvert} = {\left\lvert { \operatorname{det}(SAT) } \right\rvert} = {\left\lvert { \operatorname{det}(A) } \right\rvert} \) since \( S, T \) are invertible and thus have determinant \( \pm 1 \).
:::

::: {.proof title="of formula for norm of principal ideals"}
Let \( \omega_1, \cdots, \omega_n \) be a \( {\mathbb{Z}}{\hbox{-}} \)basis for \( {\mathbb{Z}}_K \), then \( \alpha \omega_1, \cdots \alpha \omega_n \) is a \( {\mathbb{Z}}{\hbox{-}} \)basis for \( \alpha{\mathbb{Z}}_K = \left\langle{ \alpha }\right\rangle \). Now to compute \( \# {\mathbb{Z}}_K/ \left\langle{ \alpha }\right\rangle \), we use the "index equals determinant" result: write
\[
{\left[ { \alpha \omega_1, \cdots, \alpha \omega_n} \right]} = {\left[ { \omega_1, \omega_n} \right]} A \implies \# {\mathbb{Z}}_K / \left\langle{ a }\right\rangle = {\left\lvert { \operatorname{det}(A) } \right\rvert} 
,\]
we now just need to show that this is equal to \( {\left\lvert { N \alpha } \right\rvert} \). We'll proceed by taking discriminants of tuples, applied to the first equation above. This yields
\[
{\Delta}( \alpha \omega_1, \cdots, \alpha \omega_n) 
&= 
{\Delta}( \omega_1, \cdots, \omega_n) 
\operatorname{det}(A)^2 \\
\implies \operatorname{det}(A)^2 
&= 
{
{\Delta}( \alpha \omega_1, \cdots, \alpha \omega_n) 
\over
{\Delta}( \omega_1, \cdots, \omega_n) 
} \\
&=
{
\operatorname{det}(D_{\alpha \omega_1, \cdots, \alpha \omega_n })^2
\over
\operatorname{det}( D_{\omega_1, \cdots, \omega_n} )^2
}
=
\qty{
\operatorname{det}(D_{\alpha \omega_1, \cdots, \alpha \omega_n })
\over
\operatorname{det}( D_{\omega_1, \cdots, \omega_n} )
}^2
.\]
Recall that these matrices were formed by taking the \( j \)th tuple element for the \( j \)th column and letting the column entries be the images under all embeddings. Just looking at the first rows in each, we'll have
\[
{\left[ { \sigma_1( \alpha \omega_1), \cdots, \sigma_1( \alpha \omega_n) } \right]} && 
{\left[ { \sigma_1( \omega_1), \cdots, \sigma_1( \omega_n) } \right]} 
.\]
In general, the \( i \)th row of the first matrix will be \( \sigma_i( \alpha) \) times the \( i \)th row of the second matrix. But then this ratio of determinants will be \( \qty{ \prod_{i=1}^n \sigma_i( \alpha )}^2 \coloneqq(N \alpha)^2 \). So \( \operatorname{det}(A)^2 = (N \alpha)^2 \), and taking square roots yields the result.
:::

## Ch. 14: Integral Bases

::: {.question}
Given \( K \) a number field, can you find an explicit \( {\mathbb{Z}}{\hbox{-}} \)basis for \( {\mathbb{Z}}_K \)?
:::

::: {.remark}
This depends on how one is given \( K \), and in general this is hard! This is a question in algorithmic number theory. We'll focus on a specific sub-problem.
:::

::: {.question}
Let \( K \) be a number field with \( [K : {\mathbb{Q}}] = n \) and suppose \( \theta_1, \cdots, \theta_n \) in \( {\mathbb{Z}}_K \) are a \( {\mathbb{Q}}{\hbox{-}} \)basis for \( K \). Is there a simple condition for when they form a \( {\mathbb{Z}}{\hbox{-}} \)basis for \( {\mathbb{Z}}_K \)?
:::

::: {.remark}
We know there is *some* \( {\mathbb{Z}}{\hbox{-}} \)basis for \( {\mathbb{Z}}_K \), so let \( { { \omega}_1, { \omega}_2, \cdots, { \omega}_{n}} \) be one. Then express the \( \theta \) in terms of the \( \omega \):
\[
{\left[ { { { \theta}_1, { \theta}_2, \cdots, { \theta}_{n}} } \right]} &= {\left[ { { { \omega}_1, { \omega}_2, \cdots, { \omega}_{n}} } \right]} A
\\
\implies 
{\Delta}({ { \theta}_1, { \theta}_2, \cdots, { \theta}_{n}} ) 
&= 
{\Delta}({ { \omega}_1, { \omega}_2, \cdots, { \omega}_{n}} ) \operatorname{det}(A)^2
.\]
We can view \( {\left\lvert { \operatorname{det}(A) } \right\rvert} \) as the index of the subgroup generated by the \( \theta_i \) in the group generated by the \( \omega_i \), so
\[
{\left\lvert { \operatorname{det}(A) } \right\rvert} = [ {\mathbb{Z}}_K : H], && H\coloneqq{\operatorname{span}}_{\mathbb{Z}}\left\{{ \theta_i }\right\}
.\]
Thus
\[
{\Delta}({ { \theta}_1, { \theta}_2, \cdots, { \theta}_{n}} ) 
&= 
{\Delta}({ { \omega}_1, { \omega}_2, \cdots, { \omega}_{n}} )
[ {\mathbb{Z}}_K: H]^2
.\]
We can thus form a simple condition for when \( H = {\mathbb{Z}}_K \):
:::

::: {.corollary title="A sufficient condition"}
If \( {\Delta}( { { \theta}_1, { \theta}_2, \cdots, { \theta}_{n}} \) is squarefree, then \( { {\theta}_1, {\theta}_2, \cdots, {\theta}_{n}} \) are a \( {\mathbb{Z}}{\hbox{-}} \)basis of \( {\mathbb{Z}}_K \).
:::

::: {.remark}
Why? If the left-hand side is squarefree, then use that \( [{\mathbb{Z}}_K: H]^2 \) divides the left-hand side to conclude it must be 1. Note that this is *not* necessary! We saw that for \( d = 2,3 \operatorname{mod}4 \) that \( {\Delta}_K = 4d \), which is not squarefree.
:::

::: {.example title="of finding bases"}
Let \( K = {\mathbb{Q}}( \theta) \) where \( \theta \) is a root of
\[
f(x) = x^5 - 3x^2 + 1
,\]
which is irreducible over \( {\mathbb{Q}} \). This yields a degree 5 number field. We can look for an \( n{\hbox{-}} \)tuple of elements in \( {\mathbb{Z}}_K \) which is a \( {\mathbb{Q}}{\hbox{-}} \)basis for \( {\mathbb{Z}}_K \)with a squarefree discriminant. A candidate would be \( \left\{{ \theta^j {~\mathrel{\Big|}~}0\leq j \leq 4 }\right\} \), which are all in \( {\mathbb{Z}}_K \) since \( \theta\in {\mathbb{Z}}_K \) which is closed under multiplication.

::: {.claim}
\[
{\Delta}( 1, \theta, \theta^2, \theta^3, \theta^4) \text{ is squarefree}
.\]
:::

We have
\[
{\Delta}( 1, \theta, \theta^2, \theta^3, \theta^4)
&\coloneqq\operatorname{det}( {\left[ { \sigma_i ( \theta^{j-1} ) } \right]} )^2 \\
&= \operatorname{det}( {\left[ { \sigma_i ( \theta )^{j-1} } \right]} )^2 && \text{ since the $\sigma_i$ are embeddings } \\
&= \prod_{1\leq i < j \leq 5} ( \sigma_j( \theta) - \sigma_i( \theta ) )^2 &&\text{since this is a Vandermonde matrix}\\
&= {\Delta}(f)
,\]
where this is the *polynomial* discriminant. This can be computed in a computer algebra system, and in this case it equals \( -23119 = (-61)(379) \) which is squarefree. So this yields a \( {\mathbb{Z}}{\hbox{-}} \)basis for \( {\mathbb{Z}}_K \), i.e. \( {\mathbb{Z}}_K = {\mathbb{Z}}[ \theta] \). Note that \( {\Delta}_K = -23119 \) as well, since it's the discriminant of *any* integral basis.
:::

::: {.example title="of finding bases"}
Let \( K = {\mathbb{Q}}( \alpha) \) where \( \alpha \) is a root of
\[
f(x) = x^3 + x^2 - 3x + 8
.\]
We can try \( 1, \alpha, \alpha^2 \), and check
\[
{\Delta}(1, \alpha, \alpha^2) = {\Delta}(f) = (-4)(503)
,\]
so we can't conclude this is a \( {\mathbb{Z}}{\hbox{-}} \)basis. Going back to the proof, we *can* conclude that \( [{\mathbb{Z}}_K: H] ^2 \divides {\Delta}(1, \alpha, \alpha^2) \) where \( H \coloneqq{\mathbb{Z}}+ {\mathbb{Z}}\alpha + {\mathbb{Z}}\alpha^2 = {\mathbb{Z}}[ \alpha ] \). This allows us to conclude that \( [{\mathbb{Z}}_K: H] = 1, 2 \), so this could still be an index 2 subgroup. If this happens, \( \# {\mathbb{Z}}_K/H = 2 \) and every element is annihilated by 2, so \( 2{\mathbb{Z}}_K \subseteq H = {\mathbb{Z}}[ \alpha ] \). This would mean
\[
{\mathbb{Z}}_K \subseteq {1\over 2} {\mathbb{Z}}[ \alpha ] 
= 
\left\{{ {c_0 + c_1 \alpha + c_2 \alpha^2 \over 2} {~\mathrel{\Big|}~}c_i \in {\mathbb{Z}}}\right\} 
.\]
So are there elements of \( {\mathbb{Z}}_K \) of this form that are *not* in \( {\mathbb{Z}}[ \alpha ] \)? If there's nothing of this form in \( {\mathbb{Z}}_K \setminus{\mathbb{Z}}[ \alpha ] \) then we can conclude \( {\mathbb{Z}}_K = {\mathbb{Z}}[ \alpha ] \). If there *is* something of this form in \( {\mathbb{Z}}_K \setminus{\mathbb{Z}}[ \alpha ] \), then \( {\mathbb{Z}}_K \supseteq {\mathbb{Z}}[\alpha] \). One can check that \( {\alpha+ \alpha^2 \over 2} \in {\mathbb{Z}}_K \setminus H \). So the original candidate basis was wrong, but we can take \( 1, \alpha, {\alpha + \alpha^2 \over 2} \) instead, which is an integral basis.
:::

::: {.remark}
Why is this last part true? These are 3 elements of \( {\mathbb{Z}}_K \) that are still \( {\mathbb{Q}}{\hbox{-}} \)linearly independent and contains the \( {\mathbb{Z}}{\hbox{-}} \)span of the previous 3 elements defining \( H \). But the index of \( H \) was 2, so this forces it to be everything. So \( {\mathbb{Z}}_K \neq {\mathbb{Z}}[ \alpha] \), and in fact Dedekind showed that \( {\mathbb{Z}}_K \neq {\mathbb{Z}}[ \beta] \) for *any* choice of \( \beta\in {\mathbb{Z}}_K \). So cubic number fields exhibit new behavior when compared to quadratic number fields!
:::

::: {.remark}
Next time: integral bases for cyclotomic fields.
:::

# Cyclotomic Fields (Lec. 15, Saturday, March 13)

::: {.remark}
This is chapter 14 continued.
:::

::: {.definition title="Cyclotomic Fields"}
A **cyclotomic field** is a number field \( {\mathbb{Q}}( \zeta_m) \) where \( \zeta_m \coloneqq e^{2\pi i / m} \), a primitive \( m \)th root of 1.
:::

::: {.remark}
The Kronecker-Webber theorem: any *abelian extension* \( K/{\mathbb{Q}} \) (so \( { \mathsf{Gal}} (K/{\mathbb{Q}}) \in {\mathsf{Ab}} \)) is contained in a cyclotomic extension, and every cyclotomic field is an abelian extension. Given such a number field \( K = {\mathbb{Q}}( \zeta_m) \), what is \( {\mathbb{Z}}_K \)?
:::

::: {.theorem title="The ring of integers of a cyclotomic field is given by adjoining a primitive root of unity"}
For \( K = {\mathbb{Q}}( \zeta_m) \),
\[
{\mathbb{Z}}_K = {\mathbb{Z}}[ \zeta_m ]
.\]
:::

::: {.remark}
The degree of any such \( K/{\mathbb{Q}} \) is \( \phi(m) \), and here \( \phi(p) = p-1 \). Also recall Eisenstein's criterion: if \( p \) divides all of the coefficients of a polynomial \( f(x) \coloneqq\sum a_i x^i \) but \( p^2\notdivides a_0 \), then \( f \) is irreducible over \( {\mathbb{Q}} \).
:::

::: {.lemma title="The minimal polynomials of roots of unity"}
The minimal polynomial of \( \zeta_p \) over \( {\mathbb{Q}} \) is
\[
\Phi_p(x) \coloneqq x^{p-1} + x^{p-2} + \cdots + x + 1
,\]
and so \( [{\mathbb{Q}}(\zeta_p) : {\mathbb{Q}}] = p-1 \).
:::

::: {.proof title="of lemma, a sketch"}
Note that \( \zeta_p \) is a root of \( \Phi_p \), since
\[
\Phi_p(x) = {x^p-1 \over x - 1}
,\]
and \( \zeta_p \) is a root of the numerator of the right-hand side and not of the denominator. This is irreducible by Eisenstein's criterion at \( p \), using \( x\mapsto x+1 \).
:::

::: {.proposition title="Eisenstein primes don't divide the extension degree"}
Let \( \alpha\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) be an algebraic integer such that
\[
\min_ \alpha (x) = x^n + a_{n-1}x^{n-1} + \cdots + a_1x + a_0 && \in {\mathbb{Z}}[x]
\]
is Eisenstein at the prime \( p \). Let \( K \coloneqq{\mathbb{Q}}( \alpha) \), a number field of degree \( n \). Then
\[
p\notdivides [{\mathbb{Z}}_K : {\mathbb{Z}}[ \alpha] ]
.\]
:::

::: {.proof title="of proposition"}
We first observe that \( \alpha^n \) is a multiple of \( p \) in \( {\mathbb{Z}}_K \). To see this, plug \( \alpha \) into the minimal polynomial to get \( 0 = \alpha^n + \cdots \) and solve for \( \alpha^n \) to obtain
\[
\alpha^n = -(a_{n-1} \alpha^{n-1} + \cdots + a_1 \alpha + a_0) \equiv 0 \operatorname{mod}p \text{ in } {\mathbb{Z}}_K 
,\]
and this is a multiple of \( p \) by the assumption on Eisenstein's criterion. We want to show \( p \) doesn't divide \( \# {\mathbb{Z}}_K/ {\mathbb{Z}}[ \alpha] \) as \( {\mathbb{Z}}{\hbox{-}} \)modules, identify the index as the size of this quotient. It suffices to show that \( {\mathbb{Z}}_K/{\mathbb{Z}}[ \alpha] \) has no elements of order \( p \), by applying Cauchy's theorem. If \( \beta\in {\mathbb{Z}}_K \) represents an element of order \( p \) in the quotient, then \( p \beta\in {\mathbb{Z}}[ \alpha] \) and so \( p \beta = b_0 + b \alpha + \cdots + b_{n-1} \alpha^{n-1} \) for some \( b_i \in {\mathbb{Z}} \). The order of \( \beta \) to be exactly \( p \), so not all of the \( b_i \) are multiples of \( p \): otherwise one could divide through by \( p \) and conclude \( \beta\in {\mathbb{Z}}[ \alpha] \), making it zero in the quotient (and in particular, not of order \( p \) as assumed). Suppose toward a contradiction that \( i \) is the smallest index such that \( p \) does not divide \( b_i \). Then take this last equation mod \( p \):
\[
p \beta \equiv 0 \equiv b_i \alpha^{i} + \cdots + b_{n-1} \alpha^{n-1} \operatorname{mod}p
.\]
Now multiply by \( \alpha^{n-1-i} \) to obtain
\[
0 \equiv b_i \alpha^{n-1} + \cdots \equiv b_i \alpha^{n-1} \operatorname{mod}p
,\]
where \( p \) divides all of the other terms since they all contain a factor of \( \alpha^n \equiv 0 \operatorname{mod}p \). So \( b_i \alpha^{n-1} /p \in {\mathbb{Z}}_K \), and by a previous theorem, this forces \( N( b_i \alpha^{n-1} / p ) \in |ZZ \). But we can write
\[
N \qty{ b_i \alpha^{n-1} \over p }
&=
N \qty{ b_i \over p} N( \alpha^{n-1} ) \\
&= \qty{b_i \over p}^{n} N( \alpha)^{n-1} \\
&= \qty{b_i \over p}^{n} \pm a_0 \\
&= \pm {b_i^n a_0^{n-1} \over p^n } \not\in {\mathbb{Z}}
.\]
where we've used that all embeddings fix rational numbers. But this is not an integer, since by Eisenstein \( p^2 \) does not divide \( a_0 \). So \( a_0^{n-1} \) contributes exactly \( n-1 \) copies of \( p \), leaving a \( p \) in the denominator, and \( p\notdivides b_i \) since we choose \( i \) precisely to arrange for this. \( \contradiction \)
:::

::: {.remark}
Recall some facts about the discriminant: let \( F \) be a field and \( f(x) \in F[x] \) monic. Then factor \( f(x) = \prod_{i=1}^n (x - \alpha_i) \) over some splitting field. We then define
\[
{\Delta}(f) \coloneqq\prod_{i < j} ( \alpha_j - \alpha_i )^2
.\]
We won't discuss the theory, but we'll use a few facts.
:::

::: {.fact}
For each fixed \( n \) and all polynomials \( f \) of degree \( n \), \( {\Delta}(f) \) is given by a universal polynomial in the coefficients of \( f \) with integer coefficients. For example, for \( n=2 \) and \( f(x) = x^2 + bx + c \), we have \( {\Delta}(f) = b^2 - 4c \in {\mathbb{Z}}[b,c] \). If \( n=3 \) and \( f(x) = x^3 + bx^2 + cx + d \), we have
\[
{\Delta}(f) = 18bcd - 4b^3d + b^2c^2 - 4c^3 - 27d^2\in {\mathbb{Z}}[b,c,d]
.\]
So the discriminant is some polynomial expression in the coefficients, which (more importantly) have *integer* coefficients.

Some consequences:

-   \( {\Delta}(f) \in F \), despite the fact that the roots are generally not in \( F \) and are instead in some splitting field.
-   If \( F ={\mathbb{Q}} \) and \( f\in {\mathbb{Q}}[x] \) *and* in fact \( f\in {\mathbb{Z}}[x] \), then \( {\Delta}(f) \in {\mathbb{Z}} \).
-   If \( F = {\mathbb{Q}} \) and \( f\in {\mathbb{Z}}[x] \) with \( q \) some prime,
    \[
    {\Delta}( f) \operatorname{mod}q = {\Delta}(f \operatorname{mod}q)
    ,\]
    where we first take the discriminant to land in \( {\mathbb{Z}} \) and then reduce to \( {\mathbb{F}}_q \), or we reduce \( f\in {\mathbb{Z}}[x] \) to \( f\operatorname{mod}q \in {\mathbb{F}}_q[x] \) and take the discriminant using some algebraic close of \( {\mathbb{F}}_q \).
:::

::: {.proof title="That $\\ZZ_K = \\ZZ\\adjoin{\\zeta_p}$ for $K = \\QQ(\\zeta_p)$."}
To save space, we'll write \( \zeta \coloneqq\zeta_p \). We want to show \( 1, \zeta, \cdots, \zeta^{p-2} \) forms an integral basis, from last time we have
\[
{\Delta}( 1, \zeta, \cdots, \zeta^{p-2}) = 
{\Delta}_K 
[{\mathbb{Z}}_K : {\mathbb{Z}}[ \zeta ] ]^2 
\implies
[{\mathbb{Z}}_K : {\mathbb{Z}}[ \zeta ] ]^2 
\divides
{\Delta}( 1, \zeta, \cdots, \zeta^{p-2}) 
.\]

::: {.claim}
The right-hand side is a power of \( p \) (up to a sign), and hence so is the left-hand side.
:::

We'll proceed by showing that the only prime that could divide the right-hand side is \( p \). Suppose \( q \) divides the right-hand side, i.e. \( q \divides {\Delta}(x^{p-1} + \cdots + x + 1) \). So this is zero mod \( q \), and thus \( {\Delta}( x^{p-1} + \cdots + x + 1 \operatorname{mod}q) \equiv 0 \). The discriminant was a product of roots, so it can only be zero if two roots coincide, so there is a multiple root of \( x^{p-1} + \cdots + x + 1 \operatorname{mod}q \) and thus also of \( x^p - 1 \). So \( x^p-1 \) and its derivative \( px^{p-1} \) have a root in common, and (check!) this can only happen if \( q=p \).

\

So \( [{\mathbb{Z}}_K : {\mathbb{Z}}[\zeta] ] = p^\ell \) for some \( \ell \). Using that fact that \( {\mathbb{Z}}[ \zeta] \cong {\mathbb{Z}}[ \zeta - 1] \), we have \( [ {\mathbb{Z}}_K : {\mathbb{Z}}[ \zeta] ] = [ {\mathbb{Z}}_K: {\mathbb{Z}}[\zeta - 1] ] \). But by the previous lemma, we know that the minimal polynomial of \( \zeta_p - 1 \) is \( \Phi(x+1) \), which is \( p{\hbox{-}} \)Eisenstein. So by that lemma, \( p\notdivides [{\mathbb{Z}}_K: {\mathbb{Z}}[ \zeta - 1]] \), which forces \( \ell = 0 \) and \( {\mathbb{Z}}_K = {\mathbb{Z}}[ \zeta_p ] \).
:::

::: {.proof title="Sketch of the same proof for $K = \\QQ(\\zeta_m)$"}
```{=tex}
\envlist
```
1.  Do roughly the same proof for prime powers \( m = p^\ell \)

2.  Show that if \( a, b\in {\mathbb{Z}}^{\geq 0} \) are coprime then \( {\Delta}_a \coloneqq{\Delta}_{{\mathbb{Q}}( \zeta_a)}, {\Delta}_b \coloneqq{\Delta}_{{\mathbb{Q}}(\zeta_b)} \) are coprime.

These are defined in terms of integral bases, and we're trying to prove that something *is* an integral basis, so how do you show this if you don't know your basis is integral to begin with? Without knowing the exact values of the discriminants, you can show \( {\Delta}_a \divides a^? \) divides some power of \( a \), and the same for \( b \), and so \( a, b \) coprime will make \( a^?, b^? \) coprime as well. This can be shown by computing the discriminant of a *candidate* integral bases rather than an actual one.

3.  Use a key lemma: if \( K_1, K_2 \) are number fields with coprime discriminants, then considering the composite field, we have \( {\mathbb{Z}}_{K_1 K_2} = {\mathbb{Z}}_{K_1} {\mathbb{Z}}_{K_2} \), a composite ring.

4.  If \( a, b \) are coprime, check that \( {\mathbb{Q}}(\zeta_a) {\mathbb{Q}}(\zeta_b) = {\mathbb{Q}}(\zeta_{ab}) \) and \( {\mathbb{Z}}[ \zeta_a] {\mathbb{Z}}[ \zeta_b] = {\mathbb{Z}}[ \zeta_{ab} ] \).

5.  Factor \( m = \prod_{i} p_i^{\ell_i} \) and apply steps (3) and (4) inductively.
:::

::: {.remark}
The hard part is the lemma in (3). Also, questions about discriminants tend to come up during oral exams that include algebraic number theory.
:::

## Ideal Theory in General Number Rings (Ch. 15)

::: {.remark}
Here "number rings" means \( {\mathbb{Z}}_K \) for \( K \) a general number field. Let \( K \) be a number field with \( [K: {\mathbb{Q}}] = n \). We'd want

1.  \( \operatorname{Id}({\mathbb{Z}}_K) \) to be a UFM as a monoid,
2.  \( { \operatorname{Cl}} ({\mathbb{Z}}_K) \) is a finite group,

Recall that we proved (1) and used it to deduce (2) for quadratic fields, whereas for the general case we'll prove (2) and deduce (1). The approach we'll take here is somewhat idiosyncratic -- the standard treatment involves the theory of Dedekind domains, which uses a lot of commutative algebra. This approach is more classic (circa 19th century, very concrete), and we'll skip over less important details (e.g. those that are unlikely to show up on oral exams).
:::

::: {.definition title="Class Group of a Number Ring"}
\[
{ \operatorname{Cl}} ({\mathbb{Z}}_K) \coloneqq\operatorname{Id}({\mathbb{Z}}_K)/ \sim
,\]
where \( \sim \) denotes dilation equivalence.
:::

::: {.remark}
Our strategy:

-   Prove \( { \operatorname{Cl}} ({\mathbb{Z}}_K) \) is finite.
-   Prove \( { \operatorname{Cl}} ({\mathbb{Z}}_K) \) is actually a group, i.e. there are inverses, so that for every ideal there is another ideal such that their product is principal (the "Principal Multiple Lemma").
-   The remaining proofs from the quadratic field case go through almost word-for-word.
:::

::: {.proposition title="Dilations of elements are always close to integers"}
There is a constant \( T = T(K) \) that only depends on \( K \) such that for every \( \theta\in K \), there is a positive integer \( t \leq T \) and a \( \xi \in {\mathbb{Z}}_K \) such that
\[
{\left\lvert {N(t \theta - \xi ) } \right\rvert} < 1
.\]
:::

::: {.remark}
I.e. anything in the field can be multiplied by a bounded integer to make it close to something in the ring of integers. This proposition came up for imaginary quadratic fields in the Rabinowitz criterion, crucial for proving that the class group was generated by prime ideals which lie above small primes.
:::

::: {.proof title="of proposition"}
Omitted! See book, this proof wouldn't show up on an oral exam. This uses Dirichlet's approximation criterion again, although in a different way.
:::

::: {.theorem title="The class group is finite"}
\[
\# { \operatorname{Cl}} ({\mathbb{Z}}_K) < \infty 
.\]
:::

::: {.proof title="that the class group is finite"}
Very similar to how it goes for quadratic fields. As before, let \( I \in \operatorname{Id}({\mathbb{Z}}_K) \) be nonzero and \( \beta \in I \) nonzero with \( {\left\lvert {N \beta} \right\rvert} \) minimal.

\

::: {.claim}
Let \( T \) be as in the proposition, then \( T! I \subseteq \left\langle{ \beta }\right\rangle \).
:::

This follows from exactly the same argument as before.

\

Now define \( J \coloneqq{T! \over \beta} I \subseteq {\mathbb{Z}}_K \), which is a dilation of \( I \) and thus \( J {~\trianglelefteq~}{\mathbb{Z}}_K \) as well. By definition, \( I\sim J \), i.e. \( [I] = [J] \in \operatorname{Id}({\mathbb{Z}}_K) \), and it's now enough to show that there are only finitely many possibilities for \( J \), since then every class is equal to the class of one of finitely many such \( J \). Since \( \beta\in I \), we can deduce that \( T! \in J \) and thus \( \left\langle{ T! }\right\rangle \subseteq J \). We'd like to say "to contain is to divide" (as in the case of unique factorization) and conclude \( J\divides T! \), which only has finitely many divisors. However, we haven't proved this yet! We can use an algebra fact instead:
\[
\left\{{\substack{
  \text{Ideals of ${\mathbb{Z}}_K$ }
  \\
  \text{containing } \left\langle{ T! }\right\rangle 
}}\right\}
&\rightleftharpoons
\left\{{\substack{
  \text{Ideals of } {\mathbb{Z}}_K / \left\langle{ T! }\right\rangle 
}}\right\}
,\]
so it's enough to show that the right-hand side is finite. This is "obvious", since \( \# {\mathbb{Z}}_K / \left\langle{ T! }\right\rangle = (T!)^n \). This comes from the fact that \( {\mathbb{Z}}_K \cong_{{\mathsf{Ab}}} {\mathbb{Z}}^n \), so as a \( {\mathbb{Z}}{\hbox{-}} \)module this is isomorphic to \( {\mathbb{Z}}^n / T! {\mathbb{Z}}^n \cong ({\mathbb{Z}}/T! {\mathbb{Z}})^n \), so this is a finite ring and can thus only have finitely many ideals.[^12]
:::

::: {.remark}
We now want to establish the cancellation law in \( \operatorname{Id}({\mathbb{Z}}_K) \), then the principal multiple lemma, and then everything else will follow as in the quadratic case.
:::

# Ideal Theory in Number Fields Continued (Lec. 16, Tuesday, March 30)

## Setting up the Theory

::: {.remark}
We want to develop theorems of ideal theory for \( {\mathbb{Z}}_K \) for \( K \) a general number field, i.e. factorization into prime ideals and the finiteness of the class group. The strategy:

-   Prove \( { \operatorname{Cl}} ({\mathbb{Z}}_K) \) is a finite monoid,
-   Prove \( { \operatorname{Cl}} ({\mathbb{Z}}_K) \) has inverses and is thus a group, i.e. every nonzero ideal can be multiplied by another ideal to become principal (principal multiple lemma),
-   Run proofs/corollaries as before.

Last time, we proved the first one.
:::

::: {.lemma title="When ideals are left identities under multiplication"}
Let \( I, J \in \operatorname{Id}({\mathbb{Z}}_K) \), then if \( IJ = J \) then \( I = \left\langle{ 1 }\right\rangle \).
:::

::: {.remark}
Note that this is a special case of cancellation. To prove this, we'll use that \( {\mathbb{Z}}_K \) is Noetherian, i.e. every ideal is finitely generated as a \( {\mathbb{Z}}_K{\hbox{-}} \)module. In fact, \( {\mathbb{Z}}_K \cong {\mathbb{Z}}^n \), so any ideal is free of rank \( \leq n \) as a \( {\mathbb{Z}}{\hbox{-}} \)module, hence finitely generated as a \( {\mathbb{Z}}{\hbox{-}} \)module, hence finitely-generated as a \( {\mathbb{Z}}_K{\hbox{-}} \)module since one can use the same generators.
:::

::: {.proof title="of lemma"}
Let \( J = \left\langle{ \beta_1, \cdots, \beta_n }\right\rangle \), then since \( IJ = J \), for every \( j \) we can write \( \beta_j = \sum_{i=1}^m A_{ij} \beta_i \). This means that there is some matrix \( A\in \operatorname{Mat}(m\times m, I) \) with entries \( A_{ij} \in I \) such that
\[
{\left[ {\beta_1, \cdots, \beta_m} \right]}
=
{\left[ {\beta_1, \cdots, \beta_m} \right]}A
.\]
Then \( A-\one \mathbf{\beta} = 0 \), making \( A-\one \) singular since not all of the \( \beta_i \) were zero since they were generators of a nonzero ideal. Now take the determinant mod \( I \), which yields
\[
0 \equiv \operatorname{det}(A-\one) \equiv \operatorname{det}(-\one) \equiv \pm 1\operatorname{mod}I
,\]
but this can only occur if \( 1\in I \), making \( \left\langle{ 1 }\right\rangle= I \).
:::

::: {.lemma title="Right-cancellation when principal ideals are involved"}
Let \( I, J{~\trianglelefteq~}{\mathbb{Z}}_K \), then if \( IJ = \beta J \) with \( \beta \in {\mathbb{Z}}_K \setminus\left\{{0}\right\} \), we have \( I = \left\langle{ \beta }\right\rangle \).
:::

::: {.remark}
Note that the previous lemma is a special case of this where \( \beta = 1 \). One can then bootstrap the previous lemma to get this, see the book.
:::

::: {.lemma title="Principal Multiple Lemma"}
For all \( I\in \operatorname{Id}({\mathbb{Z}}_K) \) there is a \( J \in \operatorname{Id}({\mathbb{Z}}_K) \) such that \( IJ \) is principal.
:::

::: {.proof title="of principal multiple lemma"}
Consider \( [I], [I]^2, \cdots \in { \operatorname{Cl}} ({\mathbb{Z}}_K) \). By the pigeonhole principal, there is some \( k, \ell \) such that \( [I^k] = [I]^\ell \), so \( I^k = \lambda I^\ell \) for some \( \lambda \in K^{\times} \). Note that any nonzero element of \( K \) can be written as \( k/n \) for \( k\in K \) and \( n\in {\mathbb{Z}}_K \). So we can scale \( \lambda \) to put it in \( {\mathbb{Z}}_K \), yielding \( \lambda = \alpha/m \) where \( \alpha\in {\mathbb{Z}}_K \) and \( m\in {\mathbb{Z}}^{\times} \). We then have
\[
mI^k = \alpha I^\ell = (\alpha I^{\ell-k})I^k
.\]
We have enough to cancel the \( I^k \), and so \( \left\langle{ m }\right\rangle= \alpha I^{\ell - k} \). Dilating both sides by \( \alpha^{-1} \) yields \( \left\langle{ m/\alpha }\right\rangle = I^{\ell-k} \). But this is a power of \( I \) that is principal, so we can take \( J \coloneqq I^{\ell-k-1} \).
:::

::: {.remark}
Note that the logical order in which these theorems are proved is slightly reversed.
:::

::: {.corollary title="Class groups are finite and $\\Id$ is a cancellative monoid"}
```{=tex}
\envlist
```
a.  \( { \operatorname{Cl}} ({\mathbb{Z}}_K) \) is a group, and thus a finite abelian group.

b.  \( \operatorname{Id}({\mathbb{Z}}_K) \) is cancellative. Just show one can cancel principal ideals (by dilation), and then in general you cancel by multiplying both sides principal and cancelling that principal ideal.

To show unique factorization, we before showed factorization into irreducibles first, then uniqueness as a consequence of Euclid's lemma.
:::

::: {.lemma title="The monoid $\\Id$ is atomic"}
\( \operatorname{Id}({\mathbb{Z}}_K) \) is atomic, i.e. every element factors into irreducibles.
:::

::: {.proof title="of lemma"}
We'll proceed by induction on \( N(I) \), using that \( N(AB) \leq N(A) \) for any \( A \) and so \( I\divides J \implies N(I) < N(J) \). Before we used that \( N(AB) = N(A) N(B) \), but we haven't proved that here yet. We also don't know that "to divide is to contain" here, but since \( I\divides J \) and \( I\neq J \), we do obtain \( J \subsetneq I \). Hence there is a surjection
\[
{\mathbb{Z}}_K/J \to {\mathbb{Z}}_K/I
.\]
This has nontrivial kernel since \( I\setminus J \neq \emptyset \), so \( {\left\lvert {{\mathbb{Z}}_K/J} \right\rvert}> {\left\lvert {{\mathbb{Z}}_K/I} \right\rvert} \).
:::

::: {.lemma title="Analog of Euclid's Lemma"}
Irreducibles in \( \operatorname{Id}({\mathbb{Z}}_K) \) are prime.
:::

::: {.proof title="of lemma"}
Same as before! Literally use the exact same words, we've set it up this way.
:::

::: {.theorem title="The monoid $\\Id$ is a unique factorization monoid"}
\( \operatorname{Id}({\mathbb{Z}}_K) \) is a UFM, or equivalently every nonzero ideal factors uniquely as a product of prime ideals.
:::

## Modern Approach

::: {.question}
What is the widest class of domains for which the previous theorem holds?
:::

::: {.definition title="Dedekind Domains"}
Let \( R \) be a domain that is not a field (since ideals in fields are uninteresting). Then \( R \) is a **Dedekind domain** if and only if

a.  \( R \) is Noetherian,

b.  \( R \) is integrally closed, so if \( K = \operatorname{ff}(R) \), then if \( \alpha\in K \) is a root of a monic polynomial in \( R[x] \) we have \( \alpha\in R \).[^13]

```{=html}
<!-- -->
```
c.  Every nonzero prime ideal is maximal.
:::

::: {.theorem title="Noether"}
TFAE:

1.  \( R \) is a Dedekind domain,

2.  Every nonzero ideal of \( R \) factors into prime ideals (not necessarily uniquely).

3.  (2) along with uniqueness.
:::

::: {.proof title="of Noether's theorem"}
Omitted, this is an exercise in commutative algebra.
:::

::: {.proposition title="Rings of integers are Dedekind domains"}
For any number field \( K \), \( {\mathbb{Z}}_K \) is a Dedekind domain.
:::

::: {.proof title="of proposition"}
We can check the definitions directly:

a.  This is a consequence of the integral basis theorem.

b.  Suppose \( \alpha \in K \) and is a root of a monic polynomial in \( {\mathbb{Z}}_K[x] \), we then want to show \( \alpha\in {\mathbb{Z}}_K \). Then \( \alpha \) is a root of a monic polynomial in \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu[x] \), and by a previous proof, any monic polynomial with \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) coefficients is itself in \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \). Since \( \alpha \in K \) as well, we have \( \alpha\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}_K\mkern-1.5mu}\mkern 1.5mu \cap K \coloneqq{\mathbb{Z}}_K \).

c.  Let \( P {~\trianglelefteq~}{\mathbb{Z}}_K \) be nonzero. Then \( {\mathbb{Z}}_K/P \) is a domain, but any finite integral domain is a field and we know this is finite since \( N(P) < \infty \).
:::

## Norms Revisited

::: {.remark}
We left one theorem hanging when we discussed norms. We proved that norms of ideals are finite, and \( N(P) \) for \( P \) principal is equal to \( N(a) \) for \( a \) any generator. We haven't yet proved the following:
:::

::: {.theorem title="The norm is multiplicative"}
\[
N(IJ) = N(I) N(J) && \forall I, J \in \operatorname{Id}({\mathbb{Z}}_K)
.\]
:::

::: {.remark}
If \( I, J\in \operatorname{Id}({\mathbb{Z}}_K) \), we have \( \gcd(I, J) = I+J \), since this is the smallest ideal such that any \( P\divides I, P\divides J \) must satisfy \( P\divides \gcd(I, J) \).
:::

::: {.proof title="that the norm is multiplicative"}
It's enough to show \( N(IP) = N(I) N(P) \) for \( P \) prime, since every \( J \) factors into primes and we can apply this result recursively. Now
\[
N(IP) 
&= [{\mathbb{Z}}_K, IP] \\
&= [{\mathbb{Z}}_K: I] [I : IP] \\
&= N(I) [I: IP]
,\]
so it suffices to show \( N(P) = [I: IP] \).

::: {.claim}
This is true because \( {\mathbb{Z}}_K \cong I/IP \) are isomorphic as \( {\mathbb{Z}}{\hbox{-}} \)modules.
:::

Choose \( \beta \in I\setminus IP \), using that \( I \) *properly* divides \( IP \) when it is properly contained. Define a map
\[
\psi: {\mathbb{Z}}_K/p &\to I/IP \\
\alpha \operatorname{mod}p  &\mapsto \alpha \beta \operatorname{mod}IP
.\]
This is well-defined since for any two elements which differ by a multiple of \( P \), multiplying by \( \beta \in I \) lands in \( IP \).

::: {.exercise title="?"}
Check that this is a well-defined group morphism.
:::

\

**Injectivity**: Suppose that \( \alpha\operatorname{mod}P \in \ker \psi \), so \( \alpha \beta\in IP \) and \( IP \divides \left\langle{ \alpha }\right\rangle \left\langle{ \beta }\right\rangle \). Note that without the \( \alpha \) this would be false, so we're critically using that \( \beta \) is in \( I \) but not \( IP \): \( IP\not\divides \left\langle{ \beta }\right\rangle \) since \( \beta \not\in IP \). So \( IP \) divides this product but not \( \beta \) while \( I \) *does* divide \( \beta \), this forces \( P\divides m \left\langle{ \alpha }\right\rangle \). Then \( \alpha\in P \) and \( \alpha\operatorname{mod}P = 0 \), so \( \ker \psi = 0 \).

\

**Surjectivity:** We might want to write \( \Im(\psi) = \left\langle{ \beta }\right\rangle / IP \), but this doesn't quite make sense since \( IP \) may not be a subgroup. This can be fixed, \( \operatorname{im}\psi = ( \left\langle{ \beta }\right\rangle + IP) / IP \). But this equals \( \gcd( \left\langle{ \beta }\right\rangle, IP ) / IP \), and this numerator is \( I \) since \( \beta\in I \) and \( \beta\not\in IP \). So we have
\[
\operatorname{im}(\psi) 
&= {\left\langle{ \beta }\right\rangle + IP \over  IP } \\
&= { \gcd( \left\langle{ \beta }\right\rangle, IP ) \over IP } \\
&= I/IP
.\]
:::

::: {.remark}
For quadratic fields, we could compute ideal norms by multiplying an ideal \( I \) by its conjugate \( \mkern 1.5mu\overline{\mkern-1.5muI\mkern-1.5mu}\mkern 1.5mu \) to get a principal ideal generated by \( N(I) \). Here we don't know what conjugates mean yet for a general number field -- one could try applying all of the embeddings into \( {\mathbb{C}} \) and taking a product, but this may not yield an ideal in the same ring again. In particular, if \( K \) isn't Galois, the embedding can land outside of \( K \) in \( {\mathbb{C}} \).
:::

::: {.definition title="Extending Ideals"}
For \( R \subseteq S \) and \( I{~\trianglelefteq~}R \), define \( IS \) to be the smallest ideal of \( S \) containing \( I \) (i.e. take all intersections), or equivalently take all finite \( S{\hbox{-}} \)linear combinations of elements from \( I \).
:::

::: {.exercise title="Arithmetic of ideals"}
Check that

-   \( (IJ)S = (IS)(JS) \),
-   \( (\alpha R)S = \alpha S \).
:::

::: {.theorem title="Norm is generated by product of conjugates"}
Let \( I\in \operatorname{Id}({\mathbb{Z}}_K) \) and let \( L \) be the Galois closure of \( K/{\mathbb{Q}} \). For each \( \sigma: K\hookrightarrow{\mathbb{C}} \), the image \( \sigma(I) \) is an ideal of \( {\mathbb{Z}}_{\sigma(K)} \subseteq {\mathbb{Z}}_L \). Then
\[
\prod_{\sigma: K\hookrightarrow{\mathbb{C}}} \sigma(I) {\mathbb{Z}}_L = N(I) {\mathbb{Z}}_L
.\]
:::

::: {.remark}
This shows why the norm is multiplicative, and why \( N( \left\langle{ \alpha }\right\rangle) = |N( \alpha ) | \).
:::

## Applications of Finiteness of Class Group

::: {.question}
Where do ideals come from?
:::

::: {.remark}
They're meant to generalize multiples of an integer in \( {\mathbb{Z}} \), but not all ideals in a general number field are principal. However, there is a way in which this is true for \( {\mathbb{Z}}_K \) even when it's not a PID.
:::

::: {.theorem title="Dedekind's theorem on the actuality of ideals"}
Let \( K \) be a number field and \( I{~\trianglelefteq~}\operatorname{Id}({\mathbb{Z}}_K) \). Then there is a \( \beta\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) such that \( I = \beta \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \cap K \), or equivalently \( I = \beta \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \cap{\mathbb{Z}}_K \).
:::

::: {.remark}
Example of a non-principal ideal: in \( {\mathbb{Z}}[\sqrt{-5}] \), the ideal \( I \coloneqq\left\langle{ 2, 1 + \sqrt{-5} }\right\rangle \) is not principal, i.e. not all such elements are given by multiples of some element in \( {\mathbb{Z}}[ \sqrt{-5} ] \). It turns out that instead this is all multiples (in \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu) \) of \( \sqrt{2} \). So anything that's a multiple of \( \sqrt{2} \) *and* an algebraic integer that's in \( {\mathbb{Z}}[\sqrt{-5}] \) will be in \( I \) and vice-versa. So ideals are multiples of a single element, provided you allow that element to be outside of \( {\mathbb{Z}}_K \) and in \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) instead.
:::

::: {.lemma title="Ideals become principal after extending"}
Let \( K \) be a number field and \( I\in \operatorname{Id}({\mathbb{Z}}_K) \). Then there is a finite extension \( L/K \) in which \( I{\mathbb{Z}}_L \) is principal. So any ideal can be made principal after passing to some finite extension.
:::

::: {.proof title="of lemma"}
Let \( m \coloneqq\# { \operatorname{Cl}} ({\mathbb{Z}}_K) \). Then \( I^m = \alpha{\mathbb{Z}}_K \) is principal since \( m \) is the order of this group. Let \( \beta\coloneqq\sqrt[m]{\alpha} \in {\mathbb{C}} \) and let \( L \coloneqq K( \beta) \). Here \( \beta \) is an algebraic integer since it's an \( m \)th root of an algebraic integer. The claim is that \( I{\mathbb{Z}}_L \) is principal. We have
\[
(I {\mathbb{Z}}_L)^m
&= I^m {\mathbb{Z}}_L \\
&= ( \alpha{\mathbb{Z}}_K) {\mathbb{Z}}_L \\
&= \alpha{\mathbb{Z}}_L \\
&= \beta^m {\mathbb{Z}}_L \\
&= (\beta {\mathbb{Z}}_L)^m
.\]
But how can two ideals have the same \( m \)th power? By unique factorization, they must be the same, so \( I{\mathbb{Z}}_L = \beta {\mathbb{Z}}_L \).

> To be continued.
:::

# Ch. 16, Continued (Thursday, May 13)

## Actuality of Ideals

::: {.theorem title="Dedekind, Actuality of ideals"}
If \( I \) is a nonzero ideal of \( {\mathbb{Z}}_K \) for \( K \) a number field, then there is an \( \alpha\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) such that
\[
I = (\alpha \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu) \cap{\mathbb{Z}}_K
.\]
:::

::: {.lemma title="?"}
Let \( I \) be a nonzero ideal of \( {\mathbb{Z}}_K \), then there is an extension of number fields \( L/K \) such that \( I {\mathbb{Z}}_L \) is principal ,say \( I {\mathbb{Z}}_L = \alpha{\mathbb{Z}}_L \).
:::

::: {.proof title="Idea"}
We've already proved this, but the idea was that we can take \( m \) to be the order of the class group to obtain \( I^m = \beta {\mathbb{Z}}_K \). Then if \( L = K( \beta^{1/m} ) \) we will have \( I{\mathbb{Z}}_L = \beta^{1/m} {\mathbb{Z}}_L \).
:::

::: {.remark}
How we'll use this to prove the theorem: the lemma shows that after passing to a suitable extension we can find \( \alpha \), and the claim is that this \( \alpha \) works. We'll need one more result:
:::

::: {.lemma title="Paul's up-down lemma"}
Let \( K \) be a number field and \( I {~\trianglelefteq~}{\mathbb{Z}}_K \) be a nonzero ideal. Let \( R \leq \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) be a subring containing \( {\mathbb{Z}}_K \), then
\[
IR \cap{\mathbb{Z}}_K = I {~\trianglelefteq~}{\mathbb{Z}}_K
.\]

The picture: we can lift ideals from \( {\mathbb{Z}}_K \) to \( R \) and intersect them with \( {\mathbb{Z}}_K \) to come back down, and the claim is that this lands where you started:

```{=tex}
\begin{tikzcd}
    {\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu} \\
    \\
    R && IR \\
    \\
    {{\mathbb{Z}}_K} && I && {IR \cap{\mathbb{Z}}_K}
    \arrow[hook, from=5-1, to=3-1]
    \arrow[hook, from=3-1, to=1-1]
    \arrow["{({-}) \cdot R}", from=5-3, to=3-3]
    \arrow["{{-}\cap{\mathbb{Z}}_K}", from=3-3, to=5-5]
    \arrow[color={rgb,255:red,92;green,214;blue,214}, Rightarrow, no head, from=5-3, to=5-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCw0LCJcXFpaX0siXSxbMCwyLCJSIl0sWzAsMCwiXFxiYXJ7XFxaWn0iXSxbMiw0LCJJIl0sWzIsMiwiSVIiXSxbNCw0LCJJUiBcXGludGVyc2VjdCBcXFpaX0siXSxbMCwxLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsxLDIsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzMsNCwiKFxcd2FpdCkgXFxjZG90IFIiXSxbNCw1LCJcXHdhaXQgXFxpbnRlcnNlY3QgXFxaWl9LIl0sWzMsNSwiIiwyLHsibGV2ZWwiOjIsImNvbG91ciI6WzE4MCw2MCw2MF0sInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=)
:::

::: {.proof title="?"}
Follow your nose! The containment \( I \subseteq IR \cap{\mathbb{Z}}_K \) is clear, since \( I \) is contained in both terms. For the reverse containment, we'll first do it for \( I \) principal, and then reduce to that case. So suppose \( I = \alpha {\mathbb{Z}}_K \), then \( IR = \alpha R \). Take \( \beta \in IR \cap{\mathbb{Z}}_K \), then \( \beta\over \alpha \in R \cap K \subseteq \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu\cap K = {\mathbb{Z}}_K \). Then \( \beta \in \alpha {\mathbb{Z}}_K \), which is what we wanted to show.\

We'll reduce to the principal case by using a familiar trick. Pick \( m\in {\mathbb{Z}}^{\geq 0} \) so that \( I^m \) is principal, then \( I^m R \cap{\mathbb{Z}}_K = I^m \) by the previous case. Taking \( \gamma\in IR \cap{\mathbb{Z}}_K \), we'll show it must be in \( I \). We know \( \gamma^m \in (IR)^m = I^m R \), and thus we have \( \gamma^m \in I^m R \cap{\mathbb{Z}}_K = I^m \). Now using unique factorization and to contain is to divide, this implies that \( I^m \divides \left\langle{ \gamma ^m }\right\rangle= \left\langle{ \gamma }\right\rangle^m \). So \( I \divides \left\langle{ \gamma }\right\rangle \) and thus \( \gamma \in I \).
:::

::: {.proof title="of theorem"}
Choose an extension \( L/K \) with \( I{\mathbb{Z}}_L = \alpha{\mathbb{Z}}_M \) principal. consider \( I\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \). We have \( I\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu= (I{\mathbb{Z}}_L)\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) -- this just says that extending \( I \) to \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) can be done in two steps, first extending to \( {\mathbb{Z}}_L \). Concretely, these extensions are linear combinations of elements in \( I \) with coefficients in \( {\mathbb{Z}}_L \), so extending in stages yields the same thing. We have
\[
I\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu
&= (I{\mathbb{Z}}_L) \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu\\
&= ( \alpha {\mathbb{Z}}_L) \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu\\
&= \alpha\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu
.\]
Now apply the up-down lemma to \( R = \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) to obtain
\[
I = I\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu\cap{\mathbb{Z}}_K
,\]
which is equal to \( \alpha\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu\cap{\mathbb{Z}}_K \).
:::

::: {.remark}
Is is true that in \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) that every ideal is principal? The answer is no, since this would force it to be a UFD, but \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) has irreducibles at all since there are no irreducibles. One *can* prove that every finitely generated ideal of \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) is principal. One can also prove a variant of Gauss' lemma for \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \): one can take the greatest common divisor to be the generator of a principal ideal.
:::

# Ch. 17: Prime Decomposition and General Number Rings

::: {.definition title="lies above"}
If \( P{~\trianglelefteq~}{\mathbb{Z}}_K \) is nonzero, then \( P \) **lies above** a rational prime \( p\in {\mathbb{Z}} \) if \( p\in P \). We also say \( p \) **lies below** \( P \).

The picture:

```{=tex}
\begin{tikzcd}
    K && {{\mathbb{Z}}_K} && P \\
    \\
    {\mathbb{Q}}&& {\mathbb{Z}}&& p
    \arrow[no head, from=1-1, to=3-1]
    \arrow[no head, from=1-3, to=3-3]
    \arrow[no head, from=1-5, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJLIl0sWzAsMiwiXFxRUSJdLFsyLDAsIlxcWlpfSyJdLFsyLDIsIlxcWloiXSxbNCwwLCJQIl0sWzQsMiwicCJdLFswLDEsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiwzLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsNSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==)
:::

::: {.remark}
As in the quadratic field setting, every \( P \) lies above some uniquely determined \( p \) in the sense that \( P \cap{\mathbb{Z}}= p{\mathbb{Z}} \). The proof here goes through in the same way. Note that since \( p\in P \implies \left\langle{ p }\right\rangle \in P \), we have \( \left\langle{ p }\right\rangle\divides P \). How do rational primes decomposes in \( {\mathbb{Z}}_K \)? I.e., how does \( \left\langle{ p }\right\rangle \) factor into prime ideals?
:::

::: {.remark}
There are two main theorems: one describes how these prime ideals factor, and the second (Dedekind-Kummer) will produce the factorization.
:::

::: {.theorem title="efg theorem"}
Let \( K \) be a number field of degree \( [K: {\mathbb{Q}}] = n \) and let \( p \) be a rational prime. Factor
\[
\left\langle{ p }\right\rangle = \prod_{i=1}^g P_ji{e_i}
,\]
where the \( P_i \) are distinct primes ideals and \( e_i > 0 \). Then for each \( i \) we have \( N(P_i) = p^{f_i} \) for some \( f_i > 0 \), and
\[
\sum_{i=1}^g e_i f_i = n
.\]

Before the proof, it's helpful to introduce some notation.
:::

::: {.definition title="Residual degree and ramification index"}
In the setup above, call \( f_i = f(P_i / p) \) the **residual degree** of \( P_i/p \) and \( e_i = e(P_i/p) \) the **ramification index**.
:::

::: {.proof title="of theorem"}
Consider the homomorphisms
\[
\phi: {\mathbb{Z}}&\to {\mathbb{Z}}_K/P_i \\
a &\mapsto a \operatorname{mod}{P_i}
.\]
We have \( \ker \varphi = P_i \cap{\mathbb{Z}} \), and since \( P \) lies over \( p \), this equals \( p{\mathbb{Z}} \). So there is an induced injection \( {\mathbb{F}}_p \coloneqq{\mathbb{Z}}/p{\mathbb{Z}}\hookrightarrow{\mathbb{Z}}_K/ P_i \), where \( a\operatorname{mod}p \mapsto a \operatorname{mod}P_i \). Thus \( {\mathbb{Z}}_K/P_i \in { \mathsf{Vect} }_{{\mathbb{F}}_p} \) is an \( {\mathbb{F}}_p{\hbox{-}} \)vector space. We want to show the size of the right-hand side, which is the size of \( P_i \), is a power of \( p \). But any finite-dimensional vector space over \( {\mathbb{F}}_p \) has dimension \( p^\ell \) for some \( \ell \). Let \( f_i \coloneqq\dim_{{\mathbb{F}}_p} ({\mathbb{Z}}_K/P_i) \), then \( N(P_i) = \# {\mathbb{Z}}_K/P_i = p^{f_i} \).\

Now proving that \( \sum e_i f_i = n \) is an easy corollary: go back to the factorization and take norms of both sides. Noting \( N( \left\langle{ p }\right\rangle ) = p^n \) since \( {\mathbb{Z}}_K \in {\mathsf{Ab}}_n^{\mathsf{Free}} \), we have
\[
p^n 
&= N( \left\langle{ p }\right\rangle  ) \\
&= \prod_{i=1}^g  N(P_i)^{\ell_i} \\
&= \prod_{i=1}^g p^{e_i f_i} \\
&= p^{\sum_i e_i f_i}
,\]
and the result follows by comparing exponents.
:::

::: {.observation}
Each \( {\mathbb{Z}}_K/P_i \) is a field. Since \( P_i \in \operatorname{Spec}{\mathbb{Z}}_K \), so \( {\mathbb{Z}}_K/P_i \) is an integral domain. It's finite by the above argument, using that norms are finite, so it's in fact a field. It contains \( {\mathbb{Z}}/p{\mathbb{Z}} \), and is thus an extension over it, and the extension degree \( [{\mathbb{Z}}_K/P_i: {\mathbb{Z}}/p{\mathbb{Z}}] = f_i \). So \( f_i \) are called the residual degrees since they're the degrees of extensions of residue fields.
:::

::: {.definition title="Inert, split, ramified"}
More terminology:

-   If \( \left\langle{ p }\right\rangle \) is prime, the \( p \) is **inert**.
-   If \( g=n \), which forces \( e_i = f_i = 1 \) for all \( i \), then \( p \) **splits completely**.
-   If \( e_i > 1 \) for any \( i \), then \( p \) **ramifies**.
:::

::: {.remark}
How do we actually determine the prime factors?
:::

::: {.theorem title="Dedekind-Kummer"}
Let \( K \) be a number field of degree \( n \) and suppose \( K = {\mathbb{Q}}(\alpha) \) where \( \alpha\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \). This can be done by using the primitive element and scaling by an integer. Let \( p \) be a rational prime, and suppose \( p\notdivides [ {\mathbb{Z}}_K: {\mathbb{Z}}[\alpha] ] \). Then the prime ideal factorization of \( \left\langle{ p }\right\rangle \) mirrors the factorization of \( \min_{\alpha}(x) \operatorname{mod}p \).\

More precisely, supposing
\[
\min_{ \alpha}(x) = \prod_{i=1}^g p_i(x)^{e_i} \operatorname{mod}p && p_i \in {\mathbb{Z}}[x]
,\]
where the \( p_i \) are the irreducible factors of \( \min_{ \alpha}(x) \) in \( {\mathbb{F}}_p[x] \). Then
\[
\left\langle{ p }\right\rangle = \prod_{i=1}^g P_i ^{e_i} && P_i \coloneqq\left\langle{ p, p_i( \alpha) }\right\rangle 
.\]
These \( P_i \in \operatorname{Spec}{\mathbb{Z}}_K \) are distinct, and the residual degrees are given by \( f_i = \deg(p_i) \).
:::

::: {.remark}
So as long as this condition holds, we factor \( P \) by factoring a minimal polynomial mod \( p \). Note that if one can find an \( \alpha\in {\mathbb{Z}}_K \), the condition holds vacuously since the index is 1. This always holds for quadratic fields, since \( {\mathbb{Z}}_K = {\mathbb{Z}}[\tau] \), so this recovers the factorization statement in that setting. In an annoying twist of fate, not every number field can be written as \( {\mathbb{Z}}[ \alpha] \) for some single \( \alpha \), and so this theorem necessarily excludes some primes. Is there some easy way to check the divisibility condition? The answer is yes, coming from the discriminant.
:::

::: {.proposition title="?"}
Suppose \( K = {\mathbb{Q}}( \alpha) \) where \( \alpha\in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \). If \( p^2 \notdivides {\Delta}(\min_{\alpha} (x) ) \), then \( p\notdivides [{\mathbb{Z}}_K: {\mathbb{Z}}[\alpha]] \).
:::

::: {.remark}
A while ago we showed that
\[
{\Delta}( \min_{ \alpha}(x)) = {\Delta}(1, \alpha, \alpha^2, \cdots , \alpha^{n-1}) = {\Delta}_K \cdot [{\mathbb{Z}}_K: {\mathbb{Z}}[ \alpha] ]^2
.\]
Note that we're done if this is true: if \( p \) divides the index, \( p^2 \) divides the last term, meaning \( p^2 \) divides the first.
:::

::: {.example title="?"}
Let \( K = {\mathbb{Q}}( \alpha) \) where \( \alpha \) is a root of the irreducible polynomial \( f(x) = x^3 - x^2 - 2x + 8 \). Recall that we used this example when looking at integral bases. By a computation, \( {\Delta}(f(x)) = -4 \cdot 503 \), and the only squared prime dividing this is \( p=2 \). We can thus apply Dedekind-Kummer for all \( p\neq 2 \).

-   Mod 3, \( f \) is irreducible. So \( \left\langle{ 3 }\right\rangle \) is prime and \( 3 \) is inert.

-   Mod 5, \( f(x) \equiv (x+1)(x^2 - 2) \). So \( \left\langle{ 5 }\right\rangle= P_1 P_2 \) where \( P_1 = \left\langle{ 5, \alpha+ 1 }\right\rangle \) and \( P_2 = \left\langle{ 5, \alpha^2 - 2 }\right\rangle \). Thus \( f_1 = \deg(x+1) = 1, f_2 = \deg(x^2 - 2) = 2 \).

-   Mod 59, \( f(x) \equiv (x+11)(x+20)(x+25) \). So \( \left\langle{ 59 }\right\rangle = P_1 P_2 P_3 \) where e.g. \( P_1 = \left\langle{ 5, \alpha+ 11 }\right\rangle \) and so on. Note that \( g=3=n \), so \( 59 \) splits completely.

-   Mod 503, \( f(x) \equiv (x+259)(x+354)^2 \). So \( \left\langle{ 503 }\right\rangle= P_1 P_2^2 \), and thus \( 503 \) ramifies since an exponent is larger than 1.

Note that \( {\Delta}(f(x)) = 0 \operatorname{mod}503 \), so \( f\in {\mathbb{F}}_{503}[x] \) has a repeated root in an extension. We can run this backward to show that \( 503 \) is the only odd prime that ramifies: Dedekind-Kummer says this can only happen if \( f \) has a repeated root mod \( p \). In this case, \( {\Delta}(f) \operatorname{mod}p = 0 \), so \( p\divides 4\cdot 503 \). Note that if you try to apply this theorem mod 2, this results in the wrong answer!
:::

::: {.lemma title="?"}
Let \( K = {\mathbb{Q}}( \alpha) \) be a number field where \( \alpha \in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \). Suppose \( p\notdivides [{\mathbb{Z}}_K: {\mathbb{Z}}[ \alpha] ] \). Then the inclusion \( \iota: {\mathbb{Z}}[\alpha] \hookrightarrow{\mathbb{Z}}_K \) induces an isomorphism
\[
\mkern 1.5mu\overline{\mkern-1.5mu\iota\mkern-1.5mu}\mkern 1.5mu: {{\mathbb{Z}}[\alpha] \over p {\mathbb{Z}}[ \alpha] } \xrightarrow{\sim} {\mathbb{Z}}_K/p{\mathbb{Z}}_K
.\]
:::

::: {.proof title="?"}
Start by showing \( p {\mathbb{Z}}_K \cap{\mathbb{Z}}[ \alpha] = p {\mathbb{Z}}[ \alpha ] \). The reverse containment is clear, so let \( \beta\in p {\mathbb{Z}}_K \cap{\mathbb{Z}}[ \alpha ] \). Then \( \beta/p \in {\mathbb{Z}}_K \), so look at its image in \( {\mathbb{Z}}_K/ {\mathbb{Z}}[ \alpha] \). The order of the image divides \( p \), , since \( p (\beta/p) = \beta \in {\mathbb{Z}}[ \alpha] \). But we assumed that \( p \) doesn't divide the size of this quotient, forcing the order to be 1 and thus \( \beta/p\in {\mathbb{Z}}[ \alpha] \implies \beta \in p{\mathbb{Z}}[ \alpha] \).
:::

::: {.remark}
The map \( \mkern 1.5mu\overline{\mkern-1.5mu\iota\mkern-1.5mu}\mkern 1.5mu \) is well-defined because \( \iota( p {\mathbb{Z}}[ \alpha]) \subseteq p{\mathbb{Z}}_K \), and is obviously a homomorphism. We want it to be an isomorphism, so what's the kernel? We've just shown that \( \ker \mkern 1.5mu\overline{\mkern-1.5mu\iota \mkern-1.5mu}\mkern 1.5mu= 0 \), and comparing cardinality makes it a surjection. Both have cardinality \( p^n \), since both are free abelian groups of rank \( n \).
:::

::: {.remark}
This is useful because the Dedekind-Kummer theorem describes the left-hand side, but we want to study the right-hand side instead. The theorem says they're isomorphic!
:::

# Ch. 17: Dedekind-Kummer (Thursday, May 13)

::: {.remark}
Big theorem, Dedekind-Kummer: we have a factorization of \( p \) for all but finitely many primes \( p \). e supposed that \( p \notdivides [{\mathbb{Z}}_K: {\mathbb{Z}}[ \alpha] ] \), and there are only finitely many \( p \) that violate this condition. The claim was that if \( \min_\alpha(x) \) factors into distinct irreducibles \( p_i(x) \) in \( {\mathbb{F}}_p[x] \), then setting \( P_i \coloneqq\left\langle{ p, p_i( \alpha) }\right\rangle \). Then there is a factorization of ideals \( \left\langle{ p }\right\rangle = \prod P_i^{e_i} \) mirroring the factorization of the minimal polynomial.

We had a lemma that under these hypotheses, the inclusion \( \iota: {\mathbb{Z}}[ \alpha] \hookrightarrow{\mathbb{Z}}_K \) induces an isomorphism on quotients
\[
{\mathbb{Z}}[ \alpha] / p {\mathbb{Z}}[ \alpha] \xrightarrow{\sim} {\mathbb{Z}}_K / p{\mathbb{Z}}_K
.\]
So mod \( p \), these two are the same.
:::

::: {.proof title="of Dedekind-Kummer"}
For notation, set \( m(x) \coloneqq\min_ \alpha(x) \). By assumption, we have a factorization \( m(x) = \prod_{i=1}^g p_i(x)^{e_i} \operatorname{mod}p \), and we set \( P_i \left\langle{ p, p_i( g a) }\right\rangle \). We'll first show that the \( P_i \) are prime ideals by modding to get a domain, and we'll compute residue degrees. Considering
\[
{\mathbb{Z}}_K/ P_i 
&= {\mathbb{Z}}_K / \left\langle{ p, p_i( \alpha) }\right\rangle \\
&\cong ({\mathbb{Z}}_k / \left\langle{ p }\right\rangle )/ \left\langle{ p_i( \alpha) \operatorname{mod}p }\right\rangle\\
&\cong ({\mathbb{Z}}[ \alpha] / \left\langle{ p }\right\rangle )/ \left\langle{ p_i( \alpha) \operatorname{mod}p }\right\rangle\\
&\cong {\mathbb{Z}}[ \alpha] / \left\langle{ p, p_i( \alpha) }\right\rangle \\
&\cong ( {\mathbb{Z}}[x] / \left\langle{ m(x) }\right\rangle ) / \left\langle{ p \operatorname{mod}m(x), p_i(x) \operatorname{mod}m(x) }\right\rangle \\
&\cong ( {\mathbb{Z}}[ \alpha] / \left\langle{ p }\right\rangle ) / \left\langle{ m(x) \operatorname{mod}p, p_i(x) \operatorname{mod}p }\right\rangle 
&\cong {\mathbb{F}}_p[x] / \left\langle{ p_i(x) \operatorname{mod}p }\right\rangle 
.\]
where we've used that \( p_i(x) \divides m(x) \) mod \( p \) by assumption. This is a field of size \( p^{\deg p_i(x)} \), which proves that \( P_i \) is prime of degree is \( f(P_i / p) = \deg p_i(x) \).

We'll now show the \( P_i \) are distinct, and in fact comaximal in the sense that \( P_i + P_j = \left\langle{ 1 }\right\rangle \) for \( i\neq j \). We've assumed that \( p_i(x) \operatorname{mod}p, p_j(x) \operatorname{mod}p \in {\mathbb{F}}_p[x] \) are distinct monic irreducibles in the PID \( {\mathbb{F}}_p[x] \), so we can find a linear combination equal to \( 1 \). So write \( p_i(x) X(x) + p_j(x) Y(x) = 1 + pQ(x) \) for some polynomials \( X,Y\in {\mathbb{F}}_p[x] \) and \( Q\in {\mathbb{Z}}[ x] \). Plug in \( \alpha \) and mod out by \( I \coloneqq\left\langle{ p, p_i( \alpha), p_j( \alpha) }\right\rangle \) to get \( o \equiv 1 \operatorname{mod}I \). But then \( 1\in I \) forces \( I = \left\langle{ 1 }\right\rangle \) Thus
\[
\left\langle{ 1 }\right\rangle 
&= \left\langle{ p, p_i( \alpha), p_j( \alpha) }\right\rangle \\
&= \left\langle{ p, p_i ( \alpha) }\right\rangle+ \left\langle{ p, p_j( \alpha) }\right\rangle \\
&= P_i + P_j
.\]

It remains to show that \( \left\langle{ p }\right\rangle= \prod P_i^{e_i} \). Consider taking powers of \( P_i \):
\[
P_i^2 = \left\langle{ p^2,  p_i( \alpha), p_i(\alpha)^2 }\right\rangle 
\subseteq \left\langle{ p, p_i( \alpha) ^2 }\right\rangle  \\
P_i^3 \subseteq P_i \left\langle{ p_i, p_i (\alpha)^2}\right\rangle \subseteq \left\langle{ p_i, p_I( \alpha)^3 }\right\rangle  
.\]
Repeating this will show that \( P_i^{e_i} \subseteq \left\langle{ p, p_i( \alpha)^{e_i} }\right\rangle \). A similar argument will show
\[
\prod P_i^{e_i}
\subseteq 
\prod \left\langle{ p, p_i( \alpha)^{e_i}  }\right\rangle \\\
\subseteq \left\langle{ p, \prod p_i (\alpha) ^{e_i} }\right\rangle 
.\]
Recall that we can write \( m(x) = \prod p_i(x)^{e_i} + pR(x) \) where \( R \in {\mathbb{Z}}[x] \). Plugging in \( \alpha \) yields \( 0 \equiv \prod p_i( \alpha)^{e_i} \operatorname{mod}p \), so the right-hand side is a multiple of \( p \), making the ideal above redundant. Thus \( \prod P_i^{e_i} \subseteq \left\langle{ p }\right\rangle \), and since to contain is to divide, we can write
\[
\prod P_i^{e_i} = \left\langle{ p }\right\rangle J
,\]
and we want to show \( J = \left\langle{ 1 }\right\rangle \).

Strategy: take norms. We know \( N(p_i)^{e_i} = p^{e_i \deg p_i} \), and so
\[
N\qty{ \prod P_i^{e_i} }
&= \prod N(P_i) ^{e_i} \\
&= p^{\sum e_i \deg p_i} \\
&= p^{\deg m(x)} \\
&= p^{[K: {\mathbb{Q}}] }
.\]

We also have \( N( \left\langle{ p }\right\rangle ) = \# {\mathbb{Z}}_k / \left\langle{ p }\right\rangle= p^{[K: {\mathbb{Q}}]} \), which forces \( N(J) = 1 \)
:::

::: {.remark}
An recurring example in this class, due to Dedekind: let \( K = {\mathbb{Q}}( \alpha) \) where \( \alpha \) is a root of the irreducible polynomial \( x^3 +x^2 -2x + 8 \in {\mathbb{Q}}[x] \). We saw that \( {\mathbb{Z}}_K \neq {\mathbb{Z}}[ \alpha] \) but their index divides 2, forcing it to be exactly 2. So the hypothesis of the Dedkind-Kummer theorem are not satisfied, but is the conclusion still true? It turns out that the answer is no, and 2 splits completely as \( \left\langle{ 2 }\right\rangle = P_1 P_2 P_3 \). The proof can be done bare-hands, we won't do it here. This is incompatible with the conclusion of the theorem: we would need the polynomial to factor into three monic linear polynomials mod 2. But there are only 2 different linear polynomials mod 2!
:::

::: {.remark}
Every ideal in \( {\mathbb{Z}}_K \) can be generated by at most 2 elements. Or really, "\( 3/2 \)" elements -- look it up!
:::

# Ch. 18: Units of \( {\mathbb{Z}}_K \) {#ch.-18-units-of-mathbbz_k}

::: {.remark}
Setting up some notation: let \( K \) be a number field of degree \( n \), and let

-   \( r_1 \) be the number of real embeddings, i.e. their images are contained in \( {\mathbb{R}} \),
-   \( r_2 \) be *half* the number of non-real embeddings, since they come in pairs by composing with complex conjugation.

Note that \( n = r_1 + 2r_2 \). Label the real embeddings \( \sigma_1, \cdots, \sigma_{r_1} \), and \( \sigma_{r_1+1}, \cdots, \sigma_{r_1 + r_2} \) a set of non-real embeddings, where we take one such nonreal embedding from each pair.
:::

::: {.question}
What is the structure of \( {\mathbb{Z}}_K^{\times} \)?
:::

::: {.remark}
For imaginary quadratic fields, the units were norm 1 in the ring of integers. Usually there were just 2, \( \pm 1 \), and in \( {\mathbb{Z}}[i] \) there were 4, and \( {\mathbb{Q}}( \sqrt{-3} ) \) there were 6. All of these formed cyclic groups.

For real quadratic fields, there was a fundamental unit \( u \) of infinite order, and all units were \( \pm u \), so the group is abstractly \( {\mathbb{Z}}\times{\mathbb{Z}}/2 \). So everything was a root of unity times a power of the fundamental unit.

Define
\[
\mu_K = \left\{{ \zeta\in K {~\mathrel{\Big|}~}\zeta^n = 1 \text{ for some } n\in {\mathbb{Z}}^{> 0} }\right\} 
.\]
Clearly \( \mu_K \subseteq K^{\times} \), and in fact \( \mu_k \subseteq \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \). In fact, it forms a subgroup \( \mu_K \leq {\mathbb{Z}}_k^{\times} \). The big theorem on the structure of units is the following, which says the same thing as the real quadratic field case happens in general, just with more fundamental units.
:::

::: {.theorem title="Dirichlet's Units Theorem"}
There are elements \( {\varepsilon}_1, \cdots, {\varepsilon}_{r_1 + r_2 - 1} \in {\mathbb{Z}}_K^{\times} \) of infinite order such that \( {\mathbb{Z}}_K^{\times}= \mu_K \prod_{i=1}^{r_1 + r_2 - 1} \left\langle{ {\varepsilon}_i }\right\rangle \) as an internal direct product. So every unit has a unique decomposition of this form.

Moreover, \( \# \mu_K < \infty \).
:::

::: {.example title="?"}
When is \( {\mathbb{Z}}_K^{\times} \) finite? This happens iff \( r_1 + r_2 = 1 \), and there are a few cases:

-   \( r_1=1, r_2=0 \), and since \( n=r_1 + 2r_2 = 1 \), this forces \( K = {\mathbb{Q}} \).
-   \( r_1 = 0, r_2 = 1 \iff n=2 \), so this is a quadratic field with no real embeddings, so \( K \) is an imaginary quadratic field.
:::

::: {.remark}
Our goal will be to prove the units theorem with *some* number \( g \), and we'll show in the next chapter that \( g = r_1 + r_2 - 1 \) is the right \( g \) to choose.

An outline of the proof:

-   Define a homomorphism
    \[
    \operatorname{Log}: K^{\times}&\to {\mathbb{R}}^{r_1 + r_2} \\
    \alpha &\mapsto {\left[ { 
    \log{\left\lvert {\sigma_1( \alpha) } \right\rvert}, 
    \cdots,
    \log{\left\lvert {\sigma_{r_1}( \alpha) } \right\rvert}, 
    2\log{\left\lvert {\sigma_{r_1+1}( \alpha) } \right\rvert}, 
    \cdots
    2\log{\left\lvert {\sigma_{r_1+r_2}( \alpha) } \right\rvert}, 
    } \right]}
    .\]
    We'll mostly consider its restriction to \( {\mathbb{Z}}_K^{\times} \).

-   Prove \( \ker { \left.{{\operatorname{Log}}} \right|_{{{\mathbb{Z}}_K^{\times}}} } = \mu_K \) and is finite.

-   Prove \( \operatorname{Log}({\mathbb{Z}}_K) \) is a discrete subgroup of \( {\mathbb{R}}^{r_1 + r_2} \).

-   Use the fact that such discrete subgroups are lattices.

-   Prove the units theorem with \( g \) defined as the rank of this lattice.

-   Finally prove the rank \( g \) is equal to \( r_1 + r_2 - 1 \).
:::

::: {.lemma title="?"}
Let \( M\in {\mathbb{R}}^{>0} \) and let \( \alpha \in {\mathbb{Z}}_K \). If for all embeddings \( \sigma: K\hookrightarrow{\mathbb{C}} \) we have bounds \( {\left\lvert {\sigma( \alpha)} \right\rvert} \leq M \), then \( \alpha \) is a root of a polynomial in
\[
P_{n,m}
\coloneqq
\left\{{ x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0 \in {\mathbb{Z}}[x] {~\mathrel{\Big|}~}{\left\lvert {a_i} \right\rvert} \leq {n\choose i} M^{n-i} }\right\} 
.\]
Note that this is a finite set.
:::

::: {.proof title="?"}
Note that \( \alpha \) is a root of its **field polynomial**
\[
f(x) \coloneqq\prod_{\sigma: K \hookrightarrow{\mathbb{C}}} (x - \sigma( \alpha))
.\]
Since \( \alpha \in {\mathbb{Z}}_K \), this polynomial \( f \in {\mathbb{Z}}[x] \). So it suffices to show that \( f\in P_{n, m} \). It's degree \( n \), the coefficients are integers, but why do they satisfying the bound? Expanding the multiplication, there are \( {n\choose i} \) prducts each of which involves \( n-i \) of the \( \sigma_i( \alpha) \), which is bounded.
:::

::: {.remark}
We'll first show the kernel of \( \operatorname{Log} \) is finite, then it'll be easy to see it's \( \mu_K \).
:::

::: {.proposition title="?"}
\[
\# \ker { \left.{{ \operatorname{Log}}} \right|_{{{\mathbb{Z}}_K^{\times}}} } < \infty 
.\]
:::

::: {.proof title="?"}
Suppose \( \alpha\in {\mathbb{Z}}_K^{\times} \) and \( \operatorname{Log}(\alpha) = \mathbf{0} \). This says that \( {\left\lvert { \sigma_i( \alpha)} \right\rvert} = 1 \) for all embeddings \( \sigma_i: K\hookrightarrow{\mathbb{C}} \). Applying the lemma above with \( M=1 \), \( \alpha \) is a root of a polynomials in \( P_{n, 1} \), each of which has at most \( n \) roots. So there are only finitely many possibilities for \( \alpha \).
:::

::: {.proposition title="?"}
\[
\ker { \left.{{ \operatorname{Log}}} \right|_{{{\mathbb{Z}}_K^{\times}}} } = \mu_K
.\]
:::

::: {.proof title="?"}
Start with \( \zeta\in \mu_K \), then under any \( \sigma \), \( \sigma(\zeta) \) is a complex root of unity. So \( {\left\lvert {\sigma(\zeta)} \right\rvert} = 1 \), and by the previous result, \( \operatorname{Log}(\zeta) = \mathbf{0} \). So \( \mu_K \subseteq \ker \operatorname{Log} \).

Conversely suppose \( \zeta\in \ker \operatorname{Log} \), which in particular is a group. Suppose \( \# \ker \operatorname{Log}= n \), since we know it's finite. Then \( \xi^n = e = 1 \) in this group, making it an \( n \)th root of unity.
:::

::: {.remark}
Note that \( \mu_K \) is always cyclic This follows because for \( K \) a field, it's an exercise that any finite subgroup \( H\leq {\mathbb{G}}_m(K) \), it is always cyclic. So we've written \( {\mathbb{Z}}_K = C_q \times {\mathbb{Z}}^{r_1 + r_2 - 1} \) as an abstract group.
:::

# Ch. 18: Dirichlet's Units Theorem Part I (Friday, May 21)

::: {.remark}
Some notation introduced last time: for \( K \) a number field, \( [K: {\mathbb{Q}}] = n \) the degree, set \( \sigma_{1}, \cdots, \sigma_{r_1} \) to be the real embeddings, and \( \sigma_{r_1 + 1}, \cdots, \sigma_{r_1 + r_2} \) (along with their complex conjugates) to be the nonreal embeddings into \( {\mathbb{C}} \). Let \( \mu_K \coloneqq\left\{{ z\in K {~\mathrel{\Big|}~}z^n = 1, n\in {\mathbb{N}}}\right\} \) be the \( n \)th roots of unity Recall Dirichlet's unit theorem: there are \( { {{\varepsilon}}_1, {{\varepsilon}}_2, \cdots, {{\varepsilon}}_{r_1+r_2-1}} \in {\mathbb{Z}}_K^{\times} \) of infinite order such that
\[
{\mathbb{Z}}_K^{\times}= \mu_K \times \prod_{i\leq r_1 + r_2 -1} \left\langle{ \mu_i }\right\rangle 
.\]
Moreover, \( \# \mu_K < \infty \).
:::

::: {.remark title="An outline of the proof"}
Set \( d = r_1 + r_2 \). We define a homomorphism
\[
\operatorname{Log}: K^{\times}&\to {\mathbb{R}}^{d} \\
\alpha &\mapsto {\left[ { 
\log{\left\lvert {\sigma_i(\alpha)} \right\rvert}, 
\cdots,
\log{\left\lvert {\sigma_{r_1}(\alpha)} \right\rvert}, 
2 \log{\left\lvert {\sigma_{r_1+1}(\alpha)} \right\rvert}, 
\cdots,
2 \log{\left\lvert {\sigma_{r_1+r_2}(\alpha)} \right\rvert}, 
} \right]}
.\]
Note that we only used half of the non-real embeddings, but made up for it by including a 2! We'll mostly be concerned with its restriction to \( {\mathbb{Z}}_K^{\times} \).

1.  Show that the restriction has finite kernel \( \mu_k \) -- we've completed this.

2.  Show \( \operatorname{Log}({\mathbb{Z}}_K^{\times}) \) is discrete as a subgroup of \( {\mathbb{R}}^{d} \)

3.  Use the fact that every discrete subgroup of \( {\mathbb{R}}^d \) is a lattice, the \( {\mathbb{Z}}{\hbox{-}} \)span of linearly independent vectors.

4.  Prove the units theorem with \( d-1 \) replaced by \( g = \operatorname{rank}\operatorname{Log}({\mathbb{Z}}_K^{\times}) \).

5.  Deferred to next chapter: show \( g = r_1 + r_2 - 1 \).
:::

## Step 2: Discreteness

::: {.definition title="Discrete lattices"}
Let \( d\in {\mathbb{Z}}^{\geq 0} \) and let \( \Lambda \leq {\mathbb{R}}^d \) be a subgroup. Then \( \Lambda \) is **discrete** iff for every \( R>0 \), \( \Lambda \cap B_R(0) \) is a finite set, where \( B_R(0) \) is a ball of radius \( R \) about 0.
:::

::: {.proposition title="?"}
\( \operatorname{Log}({\mathbb{Z}}_K^{\times}) \) is discrete in \( {\mathbb{R}}^d \) for \( d=r_1 + r_2 \).
:::

::: {.proof title="?"}
Let \( R>0 \), we'll show that there are only finitely many \( \alpha \in {\mathbb{Z}}_K^{\times} \) for which \( \operatorname{Log}(\alpha) \in B_R(0) \). This forces \( \log{\left\lvert {\sigma(\alpha)} \right\rvert} \leq R \) for all \( \sigma: K\hookrightarrow{\mathbb{C}} \). Thus \( {\left\lvert {\sigma(\alpha)} \right\rvert} \leq e^R \) for all such embeddings. By a previous lemma, this makes \( \alpha \) a root of a polynomial in some finite set \( P_{n,e^R} \) -- what this set is isn't important, just recall that once you have a bound on the embeddings, this gives a bound on the coefficients of the field polynomial.
:::

## Step 3

::: {.theorem title="?"}
Every discrete subgroup of \( {\mathbb{R}}^d \) is a lattice.
:::

::: {.proof title="?"}
See the book!
:::

## Step 3

::: {.theorem title="Weak units theorem"}
Let \( g \) be the rank of \( \operatorname{Log}{\mathbb{Z}}_K^{\times}\subseteq {\mathbb{R}}^{r_1 + r_2} \). Then there are fundamental units \( { {{\varepsilon}}_1, {{\varepsilon}}_2, \cdots, {{\varepsilon}}_{g}} \in {\mathbb{Z}}_K^{\times} \) of infinite order such that
\[
{\mathbb{Z}}_K^{\times}= \mu_K \times \prod_{i\leq g} \left\langle{ {\varepsilon}_i }\right\rangle 
.\]
Note that this is the same theorem from before, just with \( d \) replaced by \( g \).
:::

::: {.proof title="?"}
Using that \( g \) is by definition the rank of the lattice \( \operatorname{Log}{\mathbb{Z}} \), choose \( { {{\varepsilon}}_1, {{\varepsilon}}_2, \cdots, {{\varepsilon}}_{g}}\in {\mathbb{Z}}_K^{\times} \) such that the \( \operatorname{Log}({\varepsilon}_i) \) are \( {\mathbb{R}}{\hbox{-}} \)linearly independent and their \( {\mathbb{Z}}{\hbox{-}} \)span is the lattice. Let \( {\varepsilon}\in {\mathbb{Z}}_K^{\times} \) be any unit, then \( \operatorname{Log}({\varepsilon}) \in \operatorname{Log}{\mathbb{Z}}_K^{\times} \), so there are integers \( { {n}_1, {n}_2, \cdots, {n}_{g}}\in {\mathbb{Z}} \) such that
\[
\operatorname{Log}({\varepsilon}) = \sum n_i \operatorname{Log}({\varepsilon}_i)
.\]
Hence
\[
\operatorname{Log}\qty{ {\varepsilon}/ \prod_{i\leq g} {\varepsilon}_i^{n_i} } = \mathbf{0}
.\]
So it's in the kernel and equal to some \( \zeta\in \mu_K \), so we can write \( {\varepsilon}= \zeta \prod_{i\leq g} {\varepsilon}_i^{n_i} \). This representation of \( {\varepsilon} \) is unique, in the sense that \( \zeta \) and the \( n_i \) are uniquely determined. Why? For any other representation, applying \( \operatorname{Log} \) would kill the \( \zeta \) part and write \( \operatorname{Log}({\varepsilon}) = \sum n_{j} {\varepsilon}_j \) in the basis \( {\varepsilon}_j \). So the \( n_i \) are unique, and \( \zeta \) is just obtained by dividing, so it can be recovered uniquely as well.
:::

::: {.remark}
Our goal is to now show \( g=r_1 + r_2-1 \), which is hard. It's easier to obtain a bound instead.
:::

::: {.proposition title="Lattice rank bound"}
Let \( g = \operatorname{rank}\operatorname{Log}({\mathbb{Z}}_K^{\times}) \), then
\[
g\leq r_1 + r_2 - 1
.\]
:::

::: {.lemma title="?"}
Let \( \Lambda \subseteq {\mathbb{R}}^d \) be a lattice, then \( \operatorname{rank}\Lambda = \dim_{\mathbb{R}}V \) where \( V \) is the smallest subspace of \( {\mathbb{R}}^d \) containing \( \Lambda \).
:::

::: {.proof title="?"}
Let \( g\coloneqq\operatorname{rank}\Lambda \), and write \( \Lambda= \sum_{i\leq g} {\mathbb{Z}}\mathbf{v}_i \) where the \( \mathbf{v}_i \) are \( {\mathbb{R}}{\hbox{-}} \)linearly independent. Then \( V = \sum_{i\leq g} {\mathbb{R}}\mathbf{v}_i \), and \( \dim_{\mathbb{R}}V = g = \operatorname{rank}\Lambda \).
:::

::: {.proof title="of proposition, lattice rank bound"}
Let \( \mathbf{w} = {\left[ {1, 1, \cdots, 1} \right]}\in {\mathbb{R}}^{r_1 + r_2} \). If \( \alpha\in {\mathbb{Z}}_K^{\times} \), then dotting sums the components, so
\[
\mathbf{w} \cdot \operatorname{Log}\alpha = \sum_{i\leq r_1} \log {\left\lvert {\sigma_i( \alpha)} \right\rvert}
+ 2\sum_{r_1 + 1 \leq i \leq r_1 + r_2} \log {\left\lvert {\sigma_i( \alpha) } \right\rvert}
.\]
Note that \( {\left\lvert {\sigma_i(\alpha)} \right\rvert} = {\left\lvert {\mkern 1.5mu\overline{\mkern-1.5mu\sigma( \alpha)\mkern-1.5mu}\mkern 1.5mu} \right\rvert} \), so because we have a 2 here, we could have written this as
\[
\mathbf{w} \cdot \operatorname{Log}\alpha 
&= \sum_{\sigma:K\hookrightarrow{\mathbb{C}}} \log {\left\lvert {\sigma(\alpha)} \right\rvert}\\
&= \log\prod_{\sigma: K\hookrightarrow{\mathbb{C}}} {\left\lvert {\sigma( \alpha)} \right\rvert} \\
&= \log {\left\lvert { N ( \alpha)} \right\rvert} \\
&= 0
,\]
since \( \alpha\in {\mathbb{Z}}_K^{\times}\implies N( \alpha) = \pm 1 \). This says that \( \operatorname{Log}({\mathbb{Z}}_K^{\times}) \subseteq \mathbf{w}^\perp \), which has codimension \( 1 \) and thus dimension \( r_1 + r_2 - 1 \). Now \( V \subseteq \mathbf{w} ^\perp \). so its rank is bounded by this dimension. So \( g\leq r_1 + r_2 - 1 \).
:::

# Ch. 20: Unit Theorem, Part II

::: {.remark}
We still need to prove that this is an equality. We'll start with some geometric preliminaries.
:::

::: {.definition title="The Minkowski Embedding"}
The **Minkowski embedding** of \( K \) is the map
\[
\iota: K &\to {\mathbb{R}}^{r_1} \times {\mathbb{C}}^{r_2} \\
\alpha &\mapsto {\left[ { 
\sigma_1(\alpha), \cdots, \sigma_{r_1}( \alpha),
\sigma_{r_1 + 1}( \alpha), \cdots, \sigma_{r_1 + r_2}( \alpha)
} \right]}
.\]
Identify \( {\mathbb{C}}\cong {\mathbb{R}}^2 \) using \( a+bi \mapsto {\left[ {a, b} \right]} \), which identifies the codomain above with \( {\mathbb{R}}^{r_1} \times {\mathbb{R}}^{2r_2} = {\mathbb{R}}^n \). So we view \( \iota:K\to {\mathbb{R}}^n \).
:::

::: {.remark}
Note \( \iota \) is injective and \( {\mathbb{Q}}{\hbox{-}} \)linear.
:::

::: {.proposition title="Extremely important"}
\( \iota({\mathbb{Z}}_K) \) is a lattice of full rank in \( {\mathbb{R}}^n \).
:::

::: {.proof title="?"}
Why is this a lattice? We'll show it's a discrete subgroup.

Let \( R>0 \), then if \( \alpha\in {\mathbb{Z}}_K \) and \( \iota(\alpha) \in B_R(0) \), then \( {\left\lvert {\sigma( \alpha)} \right\rvert} \leq R \) for all \( \sigma: K\hookrightarrow{\mathbb{C}} \). This forces \( \alpha \) to be a root of one of finitely many polynomials in \( P_{n, R} \).

Now let \( g\coloneqq\operatorname{rank}\iota({\mathbb{Z}}_K) \) as a lattice. This is a free abelian group of rank \( g \), so isomorphic to \( {\mathbb{Z}}^g \) since it's the \( {\mathbb{Z}}{\hbox{-}} \)span of \( g \) linearly independent elements. On the other hand, by the integral basis theorem, \( {\mathbb{Z}}_K \) is a free abelian group of rank \( n \). Since \( \iota \) is injective, \( \iota({\mathbb{Z}}_K) \) is free of rank \( n \), and a fact from algebra implies \( n=g \).
:::

::: {.remark}
Since \( \iota({\mathbb{Z}}_K \) is a full rank lattice, \( \operatorname{covol}\iota({\mathbb{Z}}_K) \) is well-defined, where the covolume is the volume of the fundamental parallelepiped spanned by any generating set, and is measured by the absolute value of the determinant of the matrix of basis elements. It turns out that the covolume is the discriminant from before, but we don't need the exact value at the moment.
:::

::: {.remark}
We'll now make some further reductions. Recall that \( g\coloneqq\operatorname{rank}\operatorname{Log}({\mathbb{Z}}_K^{\times}) = \dim_{\mathbb{R}}V \), where \( V \) is the smallest subspace of \( {\mathbb{R}}^{r_1 + r_2} \) containing \( \operatorname{Log}({\mathbb{Z}}_K^{\times}) \). Recall the rank-nullity theorem:
\[
\dim_{\mathbb{R}}V + \dim_{\mathbb{R}}V^\perp = r_1 + r_2
\implies g = \dim_{\mathbb{R}}V = r_1 + r_2 - \dim_{\mathbb{R}}V^\perp
.\]
the goal is to show \( \dim_{\mathbb{R}}V^\perp = 1 \). We know \( \mathbf{w} \coloneqq{\left[ {1, 1, \cdots, 1} \right]} \in V^\perp \), so it suffices to show every element of \( V^\perp \) is a multiple of \( \mathbf{w} \). Suppose not, then there's an element of \( V^\perp \) of the form \( {\left[ {c_1, c_2 \cdots, c_j, 0} \right]} \) by subtracting a suitable multiple of \( \mathbf{w} \). Not all of the \( c_i \) are zero, since this would mean the original was a multiple of \( \mathbf{w} \). Define a map
\[
F: K^{\times}&\to {\mathbb{R}}\\
\alpha&\mapsto {\left[ {c_1, c_2, \cdots c_{r_1 + r_2 - 1}, 0 } \right]} \cdot \operatorname{Log}( \alpha)
.\]
Now note that \( F({\mathbb{Z}}_K^{\times}) = 0 \), since \( V \supseteq \operatorname{Log}({\mathbb{Z}}_K) \).
:::

::: {.proposition title="?"}
Let \( c_1, c_2, \cdots, c_{r_1 + r_2 - 1} \in {\mathbb{R}} \) not all 0. Then if \( F \) is defined as above, \( F({\mathbb{Z}}_K^{\times}) \neq 0 \).
:::

::: {.remark}
This requires some delicate inequalities, and an application of Minkowski's convex body theorem.
:::

::: {.lemma title="Key lemma"}
There is a sequence of nonzero \( \alpha\in K \) such that

-   \( {\left\lvert {F(\alpha)} \right\rvert} \to \infty \), but
-   \( {\left\lvert {N( \alpha)} \right\rvert} < C_1 = C_1(K, c_1, \cdots, c_{r_1 + r_2 - 1} ) \) not depending on \( \alpha \).
:::

::: {.proof title="of proposition, assuming the key lemma"}
Note that there are only finitely many ideals of \( {\mathbb{Z}}_K \) of norm bounded by any constant \( C_1 \). We saw this for quadratic fields: if \( N(J) = m \), which by Lagrange's theorem yields \( 1+1+\cdots 1 = m \equiv 0 \operatorname{mod}J \). So \( m\in J \) and thus \( J\divides m \). But by unique factorization, any ideal only has finitely many divisors, so there are only finitely many possible values of \( m \).

Note also that \( {\left\lvert {N( \alpha )} \right\rvert} = N(\left\langle{ \alpha }\right\rangle ) < C_1 \), so there are only finitely many such ideals. So given an infinite sequence of \( \alpha \)s, there are only finitely many different principal ideals they generate. So by the pigeonhole principle, we can pass to a subsequence such that \( \left\langle{ a }\right\rangle \) is constant. Note that \( F \) can't be constant on this sequence, since \( F(\alpha) \to \infty \), so we can choose \( \alpha_1, \alpha_2 \) such that
\[
\left\langle{ \alpha_1 }\right\rangle= \left\langle{ \alpha_2 }\right\rangle \quad\text{but}\quad F(\alpha_1) \neq F(\alpha_2)  
.\]
If this happens, then \( \alpha_1/ \alpha_2 \in {\mathbb{Z}}_K^{\times} \), and
\[
F(\alpha_1/ \alpha_2) = F( \alpha_1)- F(\alpha_2) \neq 0
.\]
So we have \( F({\mathbb{Z}}_K^{\times})\neq 0 \), since we've found a unit that maps to a nonzero element.
:::

# Ch. 20 Continued (Friday, May 21)

::: {.remark}
Goal of Ch.18: prove that units theorem where the rank is left unspecified, and we proved it for \( g \) the rank of a certain lattice. For Ch.20, we want to show \( g \) is the right number! Recall the log function:
\[
\operatorname{Log}: K^{\times}\to {\mathbb{R}}^{r_1 + r_2}
\]
where we take the \( \log{\left\lvert {{-}} \right\rvert} \) of the real embeddings and \( 2\log{\left\lvert {{-}} \right\rvert} \) of one of each pair of complex embeddings. We know \( \operatorname{Log}{\mathbb{Z}}_K^{\times}\subseteq {\mathbb{R}}^{r_1 + r_2} \) is a lattice of rank \( g \leq r_1 + r_2 - 1 \), and we want to show equality. We showed that everything follows if we establish the key lemma: if \( c_1, \cdots, c_{r_1 + r_2 - 1} \in {\mathbb{R}} \) are not all zero, defin
\[
F(\alpha) \coloneqq{\left[ {c_1, \cdots, c_{r_1 + r_2 - 1}, 0} \right]} \cdot \operatorname{Log}(\alpha)
.\]
We want to show there is a sequence of \( \alpha\in {\mathbb{Z}}_K \) such that \( {\left\lvert {F(\alpha)} \right\rvert} \to \infty \) with \( {\left\lvert {N( \alpha)} \right\rvert} \leq C_1 \) bounded, where \( C_1 \) doesn't depend on \( \alpha \). We want to make the dot product above large while keeping the norms small while making linear combinations of \( \log{\left\lvert {\sigma_i( \alpha)} \right\rvert} \) large. The only embeddings that show up are the ones labeled up to \( r_1 + r_2 - 1 \), since the last component is zero, and we'll show that we can essentially control the image of \( \alpha \) under these embeddings while keeping its norm bounded.

Recall the Minkowski embedding realizes \( K \) as a subspace of Euclidean space:
\[
\iota: K\to {\mathbb{R}}^{r_1} \oplus {\mathbb{C}}^{r_2}
,\]
where the first components are the first \( r_1 \) real embeddings and the latter are the complex embeddings. Identifying the target with \( {\mathbb{R}}^n \), we said last time that \( \iota({\mathbb{Z}}_K) \subseteq {\mathbb{R}}^n \) is a full rank lattice, so of rank \( n \), which thus has a finite nonzero covolume.

We'll use this with Minkowski's convex body theorem: suppose \( R \) is a region in \( {\mathbb{R}}^d \) which is centrally symmetric and convex, and \( \Lambda \) is a full rank lattice in \( {\mathbb{R}}^d \). Then if \( \operatorname{vol}(R)> w^d \operatorname{covol}(\Lambda) \), \( R \) contains a nonzero point \( x\in \Lambda \). How we'll use these: apply s the convex body theorem on \( \Lambda = \iota({\mathbb{Z}}_K) \), and use this to locate the types of \( \alpha \) we want.
:::

::: {.remark}
Given \( \lambda_1, \cdots, \lambda_{r_1 + r_2} \in {\mathbb{R}}^{\geq 0} \), denote this by the vector \( \mathbf{\lambda} \). Define
\[
R_{\mathbf{\lambda}}\coloneqq\left\{{ {\left[ {x_1, \cdots, x_{r_1 + r_2}} \right]} \in {\mathbb{R}}^{r_1} \oplus {\mathbb{C}}^{r_2} {~\mathrel{\Big|}~}{\left\lvert {x_i} \right\rvert} \leq \lambda_i\,\,\forall i  }\right\} \subseteq {\mathbb{R}}^{r_1} \oplus {\mathbb{C}}^{r_2} \cong {\mathbb{R}}^{n}
.\]
This is clearly centrally symmetric: negating anything lands in the region since we're taking absolute values. It's less clearly convex, but this follows from the triangle inequality. More intuitively, it's a product of discs and boxes, each of which are convex. One can compute its volume as
\[
\operatorname{vol}R_{\mathbf{\lambda}} = \prod_{i\leq r_1} 2\lambda_i \prod_{j\leq r_2} \pi \lambda_{r_1 + j}^2
= 2^{r_1} \pi^{r_2} \prod_{i\leq r_1} \lambda_i \prod_{j\leq r_2} \lambda_{r_1 + j}^2
,\]
since the first \( r_1 \) components form boxes and the last form discs.

As a convention, we'll fill out \( r_1+r_2 \) tuples to \( r_1 + 2r_2 \) tuples in the following way: for \( 1 \leq i\leq r_2 \), set

-   \( \sigma_{r_1 + r_2 + i} = \mkern 1.5mu\overline{\mkern-1.5mu\sigma_{r_1 + i}\mkern-1.5mu}\mkern 1.5mu \), and
-   \( \lambda_{r_1 + r_2 + i} = \lambda_{r_1 + i} \).

This introduces the remaining embeddings from each conjugate pair and assigns it the same \( \lambda_i \). We can now write
\[
\operatorname{vol}R_{\mathbf{\lambda}} = 2^{r_1}\pi^{r_2} \prod_{i\leq n} \lambda_i
,\]
since each \( \lambda \) now appears twice in the product.
:::

::: {.proof title="of key lemma"}
Rather than working with arbitrary tuples, we'll only consider \( { {\lambda}_1, {\lambda}_2, \cdots, {\lambda}_{r_1 + r_2}} \in {\mathbb{R}}^{\geq 0} \) contained such that
\[
\operatorname{vol}R_{\mathbf{\lambda}} = 2 \qty{ 2^n \operatorname{covol}\iota({\mathbb{Z}}_K) }
,\]
noting that the parenthesized quantity is exactly twice what's needed in Minkowski's theorem. This allows one to choose the first \( r_1 + r_2-1 \) freely, and the last will be determined uniquely. By Minkowski's theorem, there is an \( \alpha\in {\mathbb{Z}}_K \) nonzero with \( \iota( \alpha)\in R_{\mathbf{\alpha}} \). Hence
\[
{\left\lvert { \sigma_i( \alpha)} \right\rvert} \leq \lambda_i && \forall i=1,2,\cdots, n
.\]
Consequently,
\[
{\left\lvert {N \alpha} \right\rvert} 
&= \prod_{i} {\left\lvert {\sigma_i( \alpha)} \right\rvert}\leq \prod \lambda_i \\
&= \frac{ \operatorname{vol}R_{\mathbf{\lambda}}} {2^{r_1} \pi^{r_2} } \\
&= C_1
.\]
Notice that
\[
1 \leq {\left\lvert {N \alpha} \right\rvert} 
&= \prod_i {\left\lvert { \sigma_i( \alpha)} \right\rvert} \\
&= {\left\lvert { \sigma_j( \alpha)} \right\rvert} \prod_{i\neq j} {\left\lvert { \sigma_i( \alpha)} \right\rvert} \\
&\leq {\left\lvert { \sigma_j ( \alpha)} \right\rvert} \prod_{i\neq g} \lambda_i \\
&\leq { {\left\lvert { \sigma_j } \right\rvert} \over \lambda_j } \prod_i \lambda_i \\
&\leq { {\left\lvert { \sigma_j } \right\rvert} \over \lambda_j } C_1 
.\]

Rearranging yields
\[
{\left\lvert { \sigma_j ( \alpha)} \right\rvert} \geq C_1^{-1}\lambda_j
.\]
Thus for every \( 1\leq j \leq n \), we have an inequality
\[
C_1\int \lambda_j \leq {\left\lvert { \sigma_j( \alpha)} \right\rvert} \leq \lambda_j
.\]
Taking logarithms yields
\[
\log C_1^{-1}\leq \log {\left\lvert { \sigma_j( \alpha)} \right\rvert} - \log \lambda_j \leq 0
.\]

Recalling the definition of \( \operatorname{Log}( \alpha) \), and the above inequality says we know \( \log{\left\lvert { \sigma_j( \alpha)} \right\rvert} \) up to a constant -- it's about \( \log \lambda_j \). So setting
\[
\mathbf{L} \coloneqq
{\left[ { 
\log \lambda_1, \cdots, \lambda_{r_1}, 2\log \lambda_{r_1 + 1}, 2\log \lambda_{r_1 + r_2}
} \right]}
,\]
we have \( \mathbf{L} \approx \operatorname{Log}\alpha \), where \( \approx \) means each component is off by at most a constant. So \( {\left\lvert { \operatorname{Log}\alpha - \mathbf{L}} \right\rvert} \leq C_2 \), some other constant. We want to understand
\[ 
F(\alpha) \coloneqq{\left[ {c_1, \cdots, c_{r_1 + r_2 - 1}, 0} \right]} \cdot \mathbf{\operatorname{Log}}(\alpha)
\approx  
F(\alpha) \coloneqq{\left[ {c_1, \cdots, c_{r_1 + r_2 - 1}, 0} \right]} \cdot \mathbf{L}
.\]
How can we estimate the error? By Cauchy-Schwarz, the difference is bounded by
\[
{\left\lVert {
{\left[ {c_1, \cdots, c_{r_1 + r_2 - 1}, 0} \right]} 
} \right\rVert}
\cdot 
{\left\lVert {
\operatorname{Log}\alpha - \mathbf{L}
} \right\rVert}
\leq 
{\left\lVert {
{\left[ {c_1, \cdots, c_{r_1 + r_2 - 1}, 0} \right]} 
} \right\rVert}
C_2
\coloneqq
C_3
.\]

We've show that for any choice of \( \lambda_1, \cdots, \lambda_{r_1 + r_2} \) satisfying the volume condition, one can find \( \alpha \) where \( {\left\lvert {N \alpha} \right\rvert} \) is bounded and all of the above inequalities hold. In particular, \( F( \alpha) \approx \mathbf{c} \cdot \mathbf{L} \). We claim we can now choose \( \alpha \)s to make \( {\left\lvert {F( \alpha)} \right\rvert} \to \infty \). Every choice of \( \lambda_i \)s yield an \( \alpha \), and the \( c_i \) in \( \mathbf{c} \) are fixed, so \( \mathbf{c} \cdot \mathbf{L} \) is just a function of the \( \lambda_i \). So to finish the prove, we need to show we can pick \( \lambda_i \) satisfying the volume condition but making \( \mathbf{c} \cdot \mathbf{L} \) as large as we want. This correspondingly makes \( F(\alpha) \) large, since they differ by at most a constant.

Here's why we can do this: we assumed not all \( c_i \) were zero, so fix an \( i \) where \( c_i\neq 0 \). Choose \( \lambda_j \) with \( \lambda_i \) very large, and \( \lambda_{j'} =1 \) for \( j=1, \cdots, r_1 + r_2 - 1 \) not including \( i \). Then choose \( \lambda_{r_1 + r_2} \) as determined by the volume condition. The claim is that we're done. The dot product has a zeroth \( r_1 + r_2 \) component, so the dot product doesn't see \( \sigma_{r_1 + r_2} \). Recall \( \mathbf{L} \) is a function of the \( \lambda_i \), since the whole point was that we removed the dependence on \( \alpha \), and is given by
\[
\mathbf{L} = {\left[ {
\log \lambda_1, \cdots, \lambda_{r_1}, 2\log \lambda_{r_1 + 1}, \cdots, 2\log \lambda_{r_1 + r_2}
} \right]}
.\]
What survives the dot product? We're taking \( \log(1) = 0 \) in the \( j\neq i \) components, and in the \( i \)th component we have at most \( 2\log \lambda_i \cdot c_i \), where the \( \lambda_i \) is a large number. So we can make \( \mathbf{c} \cdot \mathbf{L} \) as large as we want.
:::

# Ch. 21: Applications of Minkowski's Theorem

::: {.proposition title="?"}
Recall the Minkowski embedding, \( \iota: K\to {\mathbb{R}}^{r_1} \oplus {\mathbb{C}}^{r_2} \), where we concatenate all of the real embeddings followed by the complex embeddings. View the target as \( {\mathbb{R}}^n \), then there is a formula:
\[
\operatorname{covol}\iota({\mathbb{Z}}_K) = 2^{-r_2} \sqrt{ {\left\lvert { {\Delta}_K } \right\rvert}}
.\]
:::

::: {.proof title="?"}
Pick an integral basis \( { {\omega}_1, {\omega}_2, \cdots, {\omega}_{n}} \) for \( K \), then \( \iota(\omega_1), \cdots, \iota(\omega_n) \) span \( \iota({\mathbb{Z}}_K) \) over \( {\mathbb{Z}} \). It suffices to show that if \( A \) is the \( n\times n \) matrix with \( i \)th column \( \iota(\omega_i) \), then \( {\left\lvert {\operatorname{det}A} \right\rvert} \) is the right-hand side in the formula. If this is true, the \( \iota(w_i) \) are linearly independent over \( {\mathbb{R}} \), otherwise the determinant would be \( {\mathbb{R}} \), so they're a basis for the lattice \( \iota({\mathbb{Z}}_K) \), and this determinant is precisely the formula for the covolume of a lattice. We claim the matrix looks like the following.

\[
\begin{bmatrix}
\sigma_1(\omega_1) & \cdots & \sigma_1(\omega_1) \\
\vdots & \cdots & \vdots \\
\sigma_{r_1}(\omega_1) & \cdots & \sigma_{r_1}(\omega_1) \\
\Re \sigma_{r_1+1}(\omega_1) & \cdots & \Re \sigma_{r_1+1}(\omega_1) \\
\Im \sigma_{r_1+1}(\omega_1) & \cdots & \Im \sigma_{r_1+1}(\omega_1) \\
\vdots & \cdots & \vdots \\
\Re \sigma_{r_1+r_2}(\omega_1) & \cdots & \Re \sigma_{r_1+r_2}(\omega_1) \\
\Im \sigma_{r_1+r_2}(\omega_1) & \cdots & \Im \sigma_{r_1+r_2}(\omega_1) 
\end{bmatrix}
.\]

Let \( D_{ij} \coloneqq{\left[ { \sigma_i(\omega_j) } \right]} \), then by tracking row operations that transform \( D \) to \( A \), \( \operatorname{det}(A) = (-i/2)^{r_2} \operatorname{det}(D) \). So
\[
{\left\lvert {\operatorname{det}A} \right\rvert} = 2^{-r_2} {\left\lvert {\operatorname{det}D} \right\rvert}
.\]
Since \( \operatorname{det}(D)^2 = {\Delta}_K \), then taking square roots yields \( {\left\lvert {\operatorname{det}D} \right\rvert} = \sqrt{ {\left\lvert { {\Delta}_K} \right\rvert} } \).
:::

::: {.remark}
We now now the covolume of this lattice, we'd like to do this not just for \( {\mathbb{Z}}_K \) but also its ideals.
:::

::: {.lemma title="?"}
If \( I{~\trianglelefteq~}{\mathbb{Z}}_K \), then \( I \) is a free abelian group of rank \( n \).
:::

::: {.proof title="?"}
Take any nonzero \( \alpha\in I \), then \( \alpha {\mathbb{Z}}_K \subseteq I \subseteq {\mathbb{Z}}_K \). The outer terms are free abelian of rank \( n \), so \( I \) must be as well.
:::

::: {.proposition title="?"}
If \( I{~\trianglelefteq~}{\mathbb{Z}}_K \) is nonzero, then \( \iota(I) \) is a full rank lattice in \( {\mathbb{R}}^n \) and
\[
\operatorname{covol}\iota(I) = 2^{r_2} \sqrt{{\left\lvert {{\Delta}_K} \right\rvert}} N(I)
.\]
:::

# Ch. 21: Applications of Minkowski's Theorem (Friday, May 21)

::: {.remark}
Recall that we're considering the Minkowski embedding \( \iota: K\to{\mathbb{R}}^n \). We saw that \( \iota({\mathbb{Z}}_K)\subseteq {\mathbb{R}}^n \) is a full rank lattice whose covolume is the following:
\[
\operatorname{covol}\iota {\mathbb{Z}}_K = 2^{r_2} \sqrt{ {\left\lvert { {\Delta}_K} \right\rvert}}
.\]
We wanted to make this work for arbitrary ideals \( I{~\trianglelefteq~}{\mathbb{Z}}_K \), and the proposition was that
\[
\operatorname{covol}\iota I = 2^{r_2} \sqrt{ {\left\lvert { {\Delta}_K} \right\rvert}} N(I)
.\]
:::

::: {.proof title="?"}
We know \( I \) is free abelian of rank \( n \), so choose a \( {\mathbb{Z}}{\hbox{-}} \)basis \( { {\omega}_1, {\omega}_2, \cdots, {\omega}_{n}} \) for \( {\mathbb{Z}}_K \) and \( { {\theta}_1, {\theta}_2, \cdots, {\theta}_{n}} \) for \( I \). There is some \( A\in \operatorname{Mat}(n\times n; {\mathbb{Z}}) \) such that
\[
{\left[ {{ {\theta}_1, {\theta}_2, \cdots, {\theta}_{n}}} \right]} = {\left[ {{ {\omega}_1, {\omega}_2, \cdots, {\omega}_{n}}} \right]}A
.\]
The index-determinant theorem tells us that \( \# {\mathbb{Z}}_K/I = {\left\lvert {\operatorname{det}A} \right\rvert} \), and this is equal to \( N(I) \). Now apply \( \iota \) to both sides above to obtain \( n\times n \) matrix with the \( \iota(\theta_i) \) and \( \iota(\omega_i) \) as column vectors:
\[
{\left[ {{ { \iota \theta^t }_1, { \iota \theta^t }_2, \cdots, { \iota \theta^t }_{n}} } \right]} 
= 
{\left[ {{ {\iota \omega^r}_1, {\iota \omega^r}_2, \cdots, {\iota \omega^r}_{n}}} \right]}A
.\]
Taking \( {\left\lvert {\operatorname{det}{{-}}} \right\rvert} \) on both sides, we get
\[
\operatorname{covol}\iota(I) 
= \operatorname{covol}\iota({\mathbb{Z}}_K) {\left\lvert {\operatorname{det}A} \right\rvert} 
= \operatorname{covol}\iota({\mathbb{Z}}_K) N(I)
.\]
:::

## Minkowski's Class Group Bound

::: {.remark}
We've proved that \( \# { \operatorname{Cl}} ({\mathbb{Z}}_K) < \infty \) for a general number field, which is in the book and uses Dirichlet's approximation theorem and goes similarly to how it did for quadratic fields. That proof isn't so good if you want to concretely compute the class group: what you'd like would be an upper bound on the smallest ideal in any ideal class. This would allow computing all ideals up to that bound and discerning the structure based on these finitely many ideals.
:::

::: {.proposition title="Minkowski's Bound"}
Every ideal class contains a representative \( I \) with \( N(I) \leq M_K \), where
\[
M_K \coloneqq\qty{4\over \pi}^{r_2} {n! \over n^n} \sqrt{{\left\lvert {{\Delta}_K} \right\rvert}}
.\]
:::

::: {.remark}
The precise form of this bound isn't important yet. We can prove using this bound that some specific number fields have class number 1. How do we prove this?
:::

::: {.lemma title="?"}
Let \( B>0 \), then the following are equivalent:

1.  Every ideal class contains a representative of norm at most \( B \),

2.  Every nonzero ideal \( I{~\trianglelefteq~}{\mathbb{Z}}_K \) contains a nonzero \( \alpha \) with \( {\left\lvert {N \alpha} \right\rvert} \leq N N(I) \).
:::

::: {.proof title="?"}
\( 2\implies 1 \): done for quadratic fields.

\( 1\implies 2 \): Start with \( I{~\trianglelefteq~}{\mathbb{Z}}_K \) nonzero. Pick \( J \in [I]^{-1} \) with \( N(J) \leq B \) using (1). Then \( IJ \) is principal, so write \( IJ = \left\langle{ \alpha }\right\rangle \). This shows that \( I \divides \left\langle{ \alpha }\right\rangle \), so \( \alpha\in I \) since to divide is to contain. Moreover
\[
{\left\lvert {N ( \alpha)} \right\rvert} 
&= N( \left\langle{ \alpha }\right\rangle ) \\
&= N(I) N(J) \\
&\leq B N(I)
.\]
:::

::: {.remark}
So we've reduced the problem, and it suffices to prove (2) in the above lemma taking \( B = M_K \) from above. Idea: we'll introduce a region \( R \subseteq {\mathbb{R}}^n \) which is centrally symmetric, convex, and \( \operatorname{vol}(R) > 2^n \operatorname{covol}\iota(I) \) big enough. Then we'll be guaranteed an \( \alpha \in I \) nonzero with \( \iota( \alpha)\in R \), coming from Minkowski's theorem.

What does this tell us? The components of \( \iota( \alpha) \) are the images of \( \alpha \) under embeddings \( \sigma_i \). If we know these images, we can recover the norm as the product, so one ought to be to rig the region \( R \) in order to control the size of \( \alpha \). So we'll choose \( R \) such that
\[
{\left\lvert { N( \alpha)} \right\rvert} \leq M_K N(I)
.\]
:::

::: {.question}
What kinds of regions \( R \) correspond to \( {\left\lvert {N( \alpha)} \right\rvert} \leq X \) for an arbitrary \( X \)?
:::

::: {.answer}
It's precisely the following region:
\[
\left\{{ {\left[ {x} \right]}{r_1 + r_2} \in {\mathbb{R}}^{r_1} \oplus {\mathbb{C}}^{r_2} {~\mathrel{\Big|}~}\prod_{i\leq r_1} {\left\lvert {x_i} \right\rvert} \prod_{j\leq r_2} {\left\lvert {x_{r_1 + j}} \right\rvert}^2 \leq X }\right\} 
.\]
Note that this is centrally symmetric, but the convexity may be a problem.
:::

::: {.example title="?"}
Let \( K \) be a real quadratic field, so \( r_1 = 2, r_2 = 0 \). Then the region above is \( R_0 = \left\{{ (x_1, x_2) {~\mathrel{\Big|}~}{\left\lvert {x_1 x_2} \right\rvert} \leq X }\right\} \), which looks like the following:

![image_2021-05-22-17-53-50](figures/image_2021-05-22-17-53-50.png)

The solution: choose a convex region inside \( R_0 \) and apply Minkowski's theorem, noting that this maintains the bound. For example, one can take
\[
R = \left\{{ (x_1, x_2) {~\mathrel{\Big|}~}{\left\lvert {x} \right\rvert}_1 + {\left\lvert {x} \right\rvert}_2 \leq 2x^{1/2} }\right\} 
,\]
which is a diamond lying inside \( R_0 \) due to the AM-GM inequality.
:::

::: {.proposition title="AM-GM Inequality"}
Let \( { {t}_1, {t}_2, \cdots, {t}_{m}} \geq 0 \), then
\[
{1\over m} \sum_{i\leq m} t_i \geq \qty{ \prod_{i\leq m} t_i }^{1/m}
.\]
:::

::: {.remark}
So we'll take the region
\[
R \coloneqq\left\{{ {\left[ {{ {x}_1, {x}_2, \cdots, {x}_{r_1 + r_2}}} \right]} \in {\mathbb{R}}^{r_1} \oplus {\mathbb{C}}^{r_2} {~\mathrel{\Big|}~}
{1\over n} \qty{ \sum_{i\leq r} {\left\lvert {x_i} \right\rvert} + 2\sum_{r_1 + 1 \leq j \leq r_1 + r_2 } {\left\lvert {x_j} \right\rvert} } \leq X^{1/n}
}\right\} 
.\]
Then by AM-GM, \( R \subseteq R_0 \) and \( n= r_1 + r_2 \). This is still centrally symmetric, and now convex using the triangle inequality. When is \( \operatorname{vol}R > 2^n \operatorname{covol}\iota(I) \)? We'll need to compute the volume of \( R \), which is an involved exercises in multivariable calculus. This is done in the book, and it turns out that
\[
\operatorname{vol}(R) = 2^{r_1} \qty{\pi \over 2}^{r_2} {n^n \over n!} X
.\]
Recall that
\[
2^n \operatorname{covol}\iota(I) = 2^n 2^{-r_2} \sqrt{{\left\lvert {{\Delta}_K} \right\rvert}}
,\]
and solving this linear equality for \( X \) yields \( X > M_K N(I) \) as defined before.

Now apply Minkowski's theorem: for any \( X > M_K N(I) \) there is a nonzero \( \alpha\in I \), there is a nonzero \( \alpha\in I \) with \( \iota( \alpha)\in R \), and hence \( {\left\lvert {N( \alpha)} \right\rvert} \leq X \). Note that the inequalities don't quite match up as-is, since we can't take \( X = M_K N(I) \). Does this imply that we can find an \( \alpha \) with \( {\left\lvert {N( \alpha)} \right\rvert} \leq X \)? The answer is yes, because we can choose \( X \) with \( {\left\lfloor X \right\rfloor} = {\left\lfloor M_K M(I) \right\rfloor} \). Then \( {\left\lvert {N( \alpha)} \right\rvert} \leq X \implies {\left\lvert {N( \alpha)} \right\rvert} \leq {\left\lfloor X \right\rfloor} = {\left\lfloor M_K N(I) \right\rfloor} \), since the left-hand side is an integer.
:::

## Example: Showing Number Fields are PIDs using Dedekind-Kummer and the Minkowski Bound

::: {.example title="?"}
Let \( K = {\mathbb{Q}}( \sqrt[3]{3}) \). Then \( n=3 \), and \( r_1 = 1, r_2 = 1 \) since embeddings permute the roots of \( x^3-3 \), which has exactly one real root. We need the discriminant, so we need an integral basis, in which case it helps to know \( {\mathbb{Z}}_K \). By a homework problem, if \( K = {\mathbb{Q}}(\sqrt[3]{d}) \) with \( d \) squarefree and \( d\not\equiv \pm 1\operatorname{mod}9 \), then \( {\mathbb{Z}}_K \) is what you guess it'd be! So here \( {\mathbb{Z}}_K = {\mathbb{Z}}[\sqrt[3]{3}] \), and thus
\[
{\Delta}_K = \Delta(1, 3^{1/3}, 3^{2/3})
= {\Delta}(x^2 - 3) = -3^5
.\]

Thus
\[
M_K = \qty{4\over \pi} {3! \over 3^3} \sqrt{3^5} \approx 4.42
,\]
and thus we know every ideal class contains a representative of norm at most 4, using that \( N(I) \) is an integer. Any such \( I \) is a product of ideals of norms \( 2,3,4 \). Prime ideals of norm 2 or 4 lie above the prime 2, and of norm 3 lie above 3. If we can show that every prime ideal with \( N(I) = 2,3,4 \) is principal, then \( I \) will be a product of principal ideals and thus principal. Then since every class contains such an \( I \), \( { \operatorname{Cl}} ({\mathbb{Z}}_K) \) is trivial. We look at all of the primes above 2 and 3 using Dedekind-Kummer, which says the factorization of \( \left\langle{ p }\right\rangle \) mirrors the factorization of \( x^2 - 3 \operatorname{mod}p \).

Note that if \( {\mathbb{Z}}(\sqrt[3]{3}) \neq {\mathbb{Z}}_K \), there'd be some exceptional primes \( p \) to worry about, but since these are equal here this is literally true for all \( p \).

So we factor polynomials. First mod 2:
\[
x^2 - 3 = x^3 - 1 = (x-1) (x^2 + x + 1)
,\]

where the second term is an irreducible quadratic with no roots in \( {\mathbb{F}}_2 \). This yields
\[
\left\langle{ 2 }\right\rangle= \left\langle{ 2, \sqrt[3]{3} - 1 }\right\rangle \left\langle{ 2, \qty{\sqrt[3]{3} }^2 + \sqrt[3]{3} + 1 }\right\rangle   
.\]
Next mod 2:
\[
x^3 -3 = x^3
,\]
which yields
\[
\left\langle{ 3 }\right\rangle= \left\langle{ 3, \sqrt[3]{3} }\right\rangle^3  
.\]

Although we have explicit factorizations, but it may not obvious whether or not they're principal. It's easy to see that \( \left\langle{ 3, 3^{1/3} }\right\rangle \) is principal since \( 3^{1/3} \divides 3 \) and the first generator is redundant For \( \left\langle{2}\right\rangle \), it's less clear, but
\[
(3^{1/3} - 1) (3^{2/3} + 3^{1/3} + 1) = 2
,\]
and so the 2s are redundant generators in both terms. So every ideal above 2 and 3 is principal, so \( I \) is principal. Every ideal class contains such an \( I \), so \( { \operatorname{Cl}} ({\mathbb{Z}}_K) = 0 \) and \( {\mathbb{Z}}_K \) is a PID.
:::

::: {.remark}
Asking whether or not this ring is a PID is an undergraduate-level question, but it's not clear how one would determine this without the theory developed in this class.
:::

::: {.example title="?"}
Let \( K = {\mathbb{Q}}(\theta) \) where \( \theta \) is a root of \( f(x) = x^5-x^3 + 1 \). This is irreducible over \( {\mathbb{Q}} \) and has one real root. Then \( n=5, r_1 = 1, r_2 = 2 \), but we need the discriminant to apply the Minkowski bound. If we could prove \( {\mathbb{Z}}_K = {\mathbb{Z}}(\theta) \), \( {\Delta}_K = {\Delta}(f) \). If it were squarefree, it'd correspond to an integral basis, so we compute
\[
{\Delta}(f) = {\Delta}(1, \theta, \theta^2, \theta^3, \theta^4) =3017
,\]
using determinant formulas in the book. This is squarefree, so the power basis is an integral basis, so \( {\mathbb{Z}}_K = {\mathbb{Z}}[\theta] \) and \( {\Delta}_K = 3017 \). Then
\[
M_k = \qty{4\over \pi}^2 {5! \over 5^5} \sqrt{3017} \approx 3.41
.\]
So every ideal class is represented by an ideal of norm at most \( 3 \).

-   Norm 1: Unit ideal and thus principal,
-   Norm 2: Primes above 2
-   Norm 3: Primes above 3

We'll apply Dedekind-Kummer. First mod 2: \( f(x) \) is irreducible mod 2, so \( \left\langle{2}\right\rangle \) is inert and prime. So there are no ideals of norm 2, since it would have to factor as a product of primes above 2, but the only possible factor is 2 which has norm \( 2^5 =32 \).

Mod 3: \( f \) is no longer irreducible, but factors as \( f=pq \) with \( \deg p = 2,\deg q = 3 \). So there are no ideals of norm 3, since all prime ideals above 3 would have to have norms of \( 3^2 \) corresponding to \( p \) or \( 3^3 \) corresponding to \( q \). Thus \( { \operatorname{Cl}} ({\mathbb{Z}}_K) = 0 \), since every \( I \) is represented by an ideal of norm 1 and hence is principal.
:::

::: {.remark}
Next up we'll talk about a lower bound for \( {\left\lvert {{\Delta}_K} \right\rvert} \) Obviously \( M_K \geq 1 \), since the theorem states that every ideal class has a representative of norm at most \( M_K \), and \( M_K< 1 \) wouldn't make sense. Using the formula, rearranging yields a bound
\[
{\left\lvert {{\Delta}_K} \right\rvert} \geq \qty{n^n \over n!}^2 \qty{\pi \over 4}^{2r_2}
.\]
:::

# Ch. 21: Consequences of Minkowski's Bound (Saturday, May 22)

::: {.remark}
We were discussing a lower bound on \( {\left\lvert {{\Delta}_K} \right\rvert} \). We have Minkowski's class number bound: every ideal class has a representative of norm at most \( M_K \), where
\[
M_K \coloneqq\qty{4\over \pi}^{r_2} \qty{n! \over n^n}\sqrt{{\left\lvert {{\Delta}_K} \right\rvert}}
.\]
A consequence of the theorem is \( M_K \geq 1 \), and rearranging yields a bound
\[
{\left\lvert {{\Delta}_K} \right\rvert} \geq \qty{n^n \over n!}^2 \qty{\pi/4}^{2r)2}
.\]
What is this bound really telling us? Let's bound the right-hand side from below. Note that \( \pi/4<1 \), and since this is raised to a power, this might make things smaller. The worst case, i.e. the smallest it could be, is when \( 2r_2 \) is as large as possible, so using that \( r_1 + r_2 = n \) we have
\[
{\left\lvert {{\Delta}_K} \right\rvert} \geq \qty{n^n\over n!}^2 \qty{\pi/4}^n \coloneqq B_n
.\]
How does \( B_n \) grow? We could use Stirling's formula, but we'll take a crude bound by looking at ratios:
\[
{B_{n+1} \over B_n} 
&= (1 + {1\over n})^{2n} (\pi/4)\\
&= \qty{ 1 + {2n \choose 1} {1\over n} + \cdots }(\pi/4) \\
&\geq 3\pi/4
.\]
Noting that \( B_2 = \pi^2/4 \), so by induction
\[
B_n \geq (3\pi/4)^{n-2} (\pi^2/4)
.\]
:::

::: {.remark}
Some consequences:

a.  \( {\left\lvert {{\Delta}_K} \right\rvert} > 1 \) for all number fields \( K\neq {\mathbb{Q}} \).
b.  \( {\left\lvert {{\Delta}_K} \right\rvert}\to\infty \) as \( [K:{\mathbb{Q}}]\to\infty \).

The following says why (a) is important:
:::

::: {.theorem title="Dedekind"}
\( p \) ramifies in \( {\mathbb{Z}}_K \iff p \divides {\Delta}_K \).
:::

::: {.proof title="?"}
Omitted, see book.
:::

::: {.remark}
So by (a), every number field \( K\geq {\mathbb{Q}} \) there is at least one ramified prime \( p \).
:::

::: {.remark}
Note that if \( {\left\lvert {{\Delta}_K} \right\rvert} = 1 \), then \( K={\mathbb{Q}} \), i.e. there is only one such number field. What about for any fixed number \( n \)? The next theorem says that there are only finitely many number fields occurring below a prescribed bound:
:::

::: {.theorem title="Hermite's theorem"}
For every \( X>0 \), there are finitely many number fields \( K \) with \( {\left\lvert {{\Delta}_K} \right\rvert} \leq X \).
:::

::: {.remark}
Since \( {\left\lvert {{\Delta}_K} \right\rvert}\to\infty \) as \( [K:{\mathbb{Q}}]\to\infty \), it suffices to prove this theorem with a fixed \( n\coloneqq[K: {\mathbb{Q}}] \). We'll make a simplifying assumption that \( r_1 = n \) -- this doesn't simplify the proof so much, but rather simplifies the notation. The full proof in the book is not so different.
:::

::: {.remark}
Define a region
\[
R \coloneqq\left\{{{\left[ {{ {x}_1, {x}_2, \cdots, {x}_{n}}} \right]} \in {\mathbb{R}}^n {~\mathrel{\Big|}~}{\left\lvert {x_{i\leq n-1}} \right\rvert} \leq {1 \over 2},\,\, {\left\lvert {x_n} \right\rvert} \leq T }\right\} \subseteq {\mathbb{R}}^n
,\]
where we'll specify \( T \) in a moment.

Note that

-   \( R \) is centrally symmetric
-   \( R \) is convex, by the triangle inequality,
-   The volume is easily computable: \( \operatorname{vol}R = 1\cdot 1\cdot \ldots \cdot 1 \cdot 2T = 2T \).

Choose \( T = 2^n \sqrt{X} \). Suppose \( K \) is totally real with \( {\left\lvert { {\Delta}_K } \right\rvert} \leq X \). Recall that
\[
\operatorname{covol}\iota {\mathbb{Z}}_K = 2^{r_2} \sqrt{{\left\lvert {{\Delta}_K} \right\rvert}} 
\leq \sqrt{X}
.\]

Then
\[
\operatorname{vol}R = 2^{n+1 } \sqrt{X} > 2^n \operatorname{covol}\iota {\mathbb{Z}}_K
,\]
so Minkowski's theorem can be applied: there is a nonzero \( \alpha\in {\mathbb{Z}}_K \) with \( \iota( \alpha) \in R \). Then \( {\left\lvert {\sigma_i( \alpha)} \right\rvert} \leq 1/2 \) for \( i\leq n-1 \) and \( {\left\lvert { \sigma_n ( \alpha)} \right\rvert} \leq T \). The claim is that there are only finitely many such \( \alpha \), since it was a root of a polynomial in a finite set \( P_{n, T} \). The claim is now that \( K = {\mathbb{Q}}( \alpha) \), so this \( \alpha \) uniquely determines \( K \). Since there were finitely many \( \alpha \), there can only be finitely many such \( K \).

The claim is that the size of \( \sigma_n( \alpha) \) has to be big, say at least 1. We have control over the product, since
\[
1\leq {\left\lvert {N \alpha} \right\rvert} 
= \prod {\left\lvert { \sigma_i( \alpha)} \right\rvert} 
\leq {1\over 2^{n-1}} {\left\lvert { \sigma_n( \alpha)} \right\rvert}
,\]
since the first \( n-1 \) terms contribute at most \( 1/2 \) each. So \( {\left\lvert {\sigma_n( \alpha)} \right\rvert} \geq 2^{n-1} \geq 1 \). Suppose now that \( {\mathbb{Q}}(\alpha) < K \) is a proper subfield, so \( [K : {\mathbb{Q}}( \alpha)] = d > 1 \). Then every embedding \( {\mathbb{Q}}(\alpha) \hookrightarrow{\mathbb{C}} \) extends to \( d \) embeddings \( K\hookrightarrow{\mathbb{C}} \), but this means that for any element \( x \in {\mathbb{Q}}(\alpha) \), the images \( \sigma_1(x),\cdots, \sigma_n(x) \) would have the same element repeated \( d \) times. But we know that \( \sigma_n( \alpha) \) is different from all of the other \( \sigma_i( \alpha) \), so this is a contradiction.
:::

::: {.remark}
Idea of proof: making sure some image of \( \alpha \) under one embedding is different than all of the other images.
:::

::: {.remark}
Some remarks on modern research! Let \( N_n(X) \) be the set of number fields of degree \( n \) where \( {\left\lvert {{\Delta}_K} \right\rvert} \leq X \).
:::

::: {.conjecture}
For each fixed \( n \),
\[
\lim_{X\to \infty} {N_n(X) \over X} = \delta_n > 0
,\]
where \( \delta_n \) is some particular constant.

Some known results:

-   \( n=2 \): known to Gauss, since this is more or less equivalent to counting squarefree numbers.
-   \( n=3 \): much harder, Davenport-Heilbronn.
-   \( n=4, 5 \): Bhargava, part of what resulted in his 2014 Fields medal.
:::

::: {.remark}
One could restrict this problem, e.g. by prescribing a particular Galois group. See Mahler's conjecture.
:::

# Chapter XYZ: Relative Extensions, Galois Theory, Prime Splitting

::: {.remark}
Up until now: we've compared extensions over \( {\mathbb{Q}} \):

```{=tex}
\begin{tikzcd}
    K && {{\mathbb{Z}}_K} \\
    \\
    {\mathbb{Q}}&& {\mathbb{Z}}
    \arrow[no head, from=1-1, to=3-1]
    \arrow[no head, from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJLIl0sWzAsMiwiXFxRUSJdLFsyLDAsIlxcWlpfSyJdLFsyLDIsIlxcWloiXSxbMCwxLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsMywiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==)

We'll next talk about extensions between number fields:

```{=tex}
\begin{tikzcd}
    L && {{\mathbb{Z}}_L} \\
    \\
    K && {{\mathbb{Z}}_K}
    \arrow[no head, from=1-1, to=3-1]
    \arrow[no head, from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJMIl0sWzAsMiwiSyJdLFsyLDAsIlxcWlpfTCJdLFsyLDIsIlxcWlpfSyJdLFswLDEsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiwzLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d)

We can ask the same sorts of questions about prime ideals factoring. Note that if \( I = \prod P_i^{e_i} \) with each \( P_i \in \operatorname{Spec}{\mathbb{Z}}_K \) , then extending to \( {\mathbb{Z}}_L \) yields
\[
I{\mathbb{Z}}_L = \prod (P_i {\mathbb{Z}}_L)^{e_i}
.\]
So we want to understand the following: given a prime ideal \( P \) of \( {\mathbb{Z}}_K \), how does \( P{\mathbb{Z}}_L \) factor?
:::

::: {.definition title="lies above"}
Let \( K\leq L \) be number fields, and suppose \( Q\in \operatorname{Spec}{\mathbb{Z}}_L, P\in \operatorname{Spec}{\mathbb{Z}}_K \). Then we say \( Q \) **lies above** \( P \) if \( Q \supseteq P \), or equivalently \( Q \divides P{\mathbb{Z}}_L \).
:::

::: {.proposition title="?"}
Every nonzero \( Q\in \operatorname{Spec}{\mathbb{Z}}_L \) lies above a unique nonzero \( P \in \operatorname{Spec}{\mathbb{Z}}_K \).
:::

::: {.proof title="?"}
Consider \( P \coloneqq Q \cap{\mathbb{Z}}_K \in \operatorname{Spec}{\mathbb{Z}}_K \). This is nonzero because taking the norm of any element of \( Q \) yields a nonzero integer still in the ideal. Then \( Q \) lies above \( P \) by definition. Why is this unique? Suppose \( Q \) lies about \( P' \), we'll show \( P = P' \). Since \( Q \) lies above \( P' \), \( Q\supseteq P' \). But \( P'{~\trianglelefteq~}{\mathbb{Z}}_K \), so \( Q\cap{\mathbb{Z}}_K \supseteq P' \), so \( P \supseteq P' \). We know \( P' \) is maximal, since \( {\mathbb{Z}}_K/P' \) is a finite domain and thus a field, so \( P = P' \).
:::

::: {.definition title="Ramification and residue degrees"}
Let \( P\in \operatorname{Spec}{\mathbb{Z}}_K \), then write
\[
P{\mathbb{Z}}_L = \prod Q_i^{e_i}
\]
with \( Q_i \in \operatorname{Spec}{\mathbb{Z}}_L \). Then the \( Q_i \) are the prime ideals of \( {\mathbb{Z}}_L \) above \( P \). The exponent \( e_i \) is called the **ramification degree**, usually denoted \( e(Q_i/P) \). We have the following picture:

```{=tex}
\begin{tikzcd}
    L && {{\mathbb{Z}}_L} && Q \\
    \\
    K && {{\mathbb{Z}}_K} && P
    \arrow[no head, from=1-1, to=3-1]
    \arrow[no head, from=1-3, to=3-3]
    \arrow[no head, from=1-5, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJMIl0sWzAsMiwiSyJdLFsyLDAsIlxcWlpfTCJdLFsyLDIsIlxcWlpfSyJdLFs0LDIsIlAiXSxbNCwwLCJRIl0sWzAsMSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDMsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNSw0LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d)

The inclusion \( {\mathbb{Z}}_K \hookrightarrow{\mathbb{Z}}_L \) induces a ring morphism \( {\mathbb{Z}}_K \to {\mathbb{Z}}_L/Q \), where the kernel is \( {\mathbb{Z}}_K \cap Q = P \). Thus there is an injection \( {\mathbb{Z}}_K/P \hookrightarrow{\mathbb{Z}}_L/Q \), which is an inclusion of finite fields. So we'll define
\[
f(Q/P) \coloneqq[{\mathbb{Z}}_L/Q : {\mathbb{Z}}_K/P]
\]
to be the **residue degree** of \( Q/P \). Note that
\[
\# {\mathbb{Z}}_L/{\mathbb{Q}}= \qty{\# {\mathbb{Z}}_K/P}^{f(Q/P)}
\quad\text{i.e.}\quad 
N_L(Q) = N_K(P)^{f(Q/P)}
.\]
:::

::: {.theorem title="efg theorem"}
If \( P \in \operatorname{Spec}{\mathbb{Z}}_K \) is nonzero with \( P{\mathbb{Z}}_L = \prod Q_i^{e_i} \), then
\[
\sum_i e(Q_i/P) f(Q_i/P) = [L: K]
.\]
:::

::: {.lemma title="?"}
If \( I\in \operatorname{Spec}{\mathbb{Z}}_K \) is nonzero, then extend to \( L \) to get \( I{\mathbb{Z}}_L \). Then
\[
N_L (I{\mathbb{Z}}_L) = \qty{ N_K(I)}^{[L : K]}
.\]
:::

::: {.proof title="?"}
Omitted. Idea of why it's true: the norm of an ideal is supposed to be a "product of conjugates", although naive conjugates of an ideal might not remain an ideal in the field one starts with. So interpret norms as products of images under all embeddings into \( {\mathbb{C}} \). But then just interpret \( [L: K] \) is the number of lifts of embeddings \( K\hookrightarrow{\mathbb{C}} \) to \( L\hookrightarrow{\mathbb{C}} \).
:::

::: {.proof title="of efg theorem"}
Take norms in \( L \), then
\[
N( P{\mathbb{Z}}_L) 
= \prod N(Q_i)^{e_i} \\
= N_K(P)^{e_1 \sum f(Q_i/P)}
.\]
On the other hand, the left-hand side is \( N_K(P)^{[L: K]} \), so the exponents must be equal.
:::

::: {.remark}
What are the specific prime ideals involved in the factorization, i.e. is there a generalization of Dedekind-Kummer here?
:::

::: {.proposition title="Generalized Dedekind-Kummer theorem"}
Write \( L = K(\theta) \) for some \( \theta \in L \cap\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu= {\mathbb{Z}}_L \). Let \( m(x) \) be the minimal polynomial of \( \theta \) over \( K \), so \( m\in {\mathbb{Z}}_K[x] \). Let \( P\in \operatorname{Spec}{\mathbb{Z}}_K \) lying above \( p\in \operatorname{Spec}{\mathbb{Z}} \). Then as long as \( p\notdivides [{\mathbb{Z}}_L: {\mathbb{Z}}_K[\theta]] \), then the factorization of \( P{\mathbb{Z}}_L \) mirrors the factorization of \( m \) over the residue field \( {\mathbb{Z}}_K/P \).
:::

::: {.proof title="?"}
Omitted, see "Number Rings" by Marcus. Paul strongly recommends!
:::

# Ch. XYZ: April 6

## Multiplicativity in Towers

::: {.remark}
An important topic not in the book: relative extensions of number fields, vs absolute extensions over \( {\mathbb{Q}} \).

```{=tex}
\begin{tikzcd}
    L && {{\mathbb{Z}}_?} && Q \\
    \\
    K && {{\mathbb{Z}}_K} && {P = Q \cap{\mathbb{Z}}_K}
    \arrow[no head, from=1-5, to=3-5]
    \arrow[no head, from=1-3, to=3-3]
    \arrow[no head, from=1-1, to=3-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJMIl0sWzAsMiwiSyJdLFsyLDAsIlxcWlpfPyJdLFsyLDIsIlxcWlpfSyJdLFs0LDAsIlEiXSxbNCwyLCJQID0gUSBcXGludGVyc2VjdCBcXFpaX0siXSxbNCw1LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsMywiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFswLDEsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=)

Note that if \( Q\supseteq P \), then \( Q \) will divide the extension of \( P \) to \( {\mathbb{Z}}_L \), if \( Q \) will show up in the prime factorization of \( P{\mathbb{Z}}_L \). We defined \( e(Q/P) \) to be the exponent of \( Q \) in the factorization of \( P{\mathbb{Z}}_L \), and \( f(Q/P) \) to be the degree of the field extension \( {\mathbb{Z}}_L/Q \) over \( {\mathbb{Z}}_K/P \).
:::

::: {.remark}
Note that "lying above" is transitive, and the following situation makes sense:

```{=tex}
\begin{tikzcd}
    M && {P''} \\
    \\
    L && {P'} \\
    \\
    K && P
    \arrow[no head, from=3-1, to=5-1]
    \arrow[no head, from=1-1, to=3-1]
    \arrow[no head, from=1-3, to=3-3]
    \arrow[no head, from=3-3, to=5-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwyLCJMIl0sWzAsNCwiSyJdLFswLDAsIk0iXSxbMiw0LCJQIl0sWzIsMiwiUCciXSxbMiwwLCJQJyciXSxbMCwxLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzIsMCwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDQsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCwzLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d)

How are the various \( e \) and \( f \) related? It turns out they work similarly to degrees of field extensions:
:::

::: {.theorem title="Multiplicativity in towers"}
\[
e(P''/P) &= e(P''/P') \cdot e(P'/P) \\
f(P''/P) &= f(P''/P') \cdot f(P'/P) 
.\]
:::

::: {.proof title="?"}
Note that \( f \) is the degree of a field extension where we take \( {\mathbb{Z}}_K/P \hookrightarrow{\mathbb{Z}}_L \) and consider the induced quotient map to \( {\mathbb{Z}}_L/Q \). By composing inclusions we have a commutative diagram:

```{=tex}
\begin{tikzcd}
    {{\mathbb{Z}}_K/P} && {{\mathbb{Z}}_L/P'} && {{\mathbb{Z}}_M/P''}
    \arrow[hook, from=1-1, to=1-3]
    \arrow[hook, from=1-3, to=1-5]
    \arrow[curve={height=30pt}, hook, from=1-1, to=1-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJcXFpaX0svUCJdLFsyLDAsIlxcWlpfTC9QJyJdLFs0LDAsIlxcWlpfTS9QJyciXSxbMCwxLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsxLDIsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzAsMiwiIiwyLHsiY3VydmUiOjUsInN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV1d)

So for \( f \), this reduces to the multiplicativity of degrees in towers of field extensions.

For \( e \), write \( P{\mathbb{Z}}_L = P'^{e(P'/P)} I \) where \( I\in \operatorname{Id}({\mathbb{Z}}_L) \) is nonzero and \( P'\notdivides I \). Similarly we can write \( P' {\mathbb{Z}}_< = P''^{e(P'/P')} J \) where \( J\in \operatorname{Id}({\mathbb{Z}}_L) \) and \( P''\notdivides J \). Using general facts about ideal extensions and substituting yields
\[
P{\mathbb{Z}}_M 
&= (P{\mathbb{Z}}_L){\mathbb{Z}}_M \\
&= (P'{\mathbb{Z}}_M)^{e(P'/P)} I{\mathbb{Z}}_M \\
&= P''^{e(P'/P) e(P'/P')} J^{e(P'/P)} (I{\mathbb{Z}}_M) \\
.\]

We know that \( P''\notdivides J \), so it doesn't divide any power of \( J \) either. We can check that \( P''\notdivides I{\mathbb{Z}}_M \): otherwise, if it did then \( P''\supseteq I{\mathbb{Z}}_M \) and
\[
P'' \cap{\mathbb{Z}}_L \supseteq (I{\mathbb{Z}}_M) \cap{\mathbb{Z}}_L \supset I
\]
by intersecting both sides with \( {\mathbb{Z}}_L \). But we know \( P'' \cap{\mathbb{Z}}_L = P' \) since \( P'' \) was above \( P' \), and \( P'\notdivides I \) and thus \( P'\not\supseteq I \).
:::

::: {.definition title="Splitting completely"}
Suppose \( L/K \) is an extension of number fields and say \( P\supseteq {\mathbb{Z}}_K \) is a nonzero prime ideal. Then \( P \) **splits completely** in \( L \) (or \( {\mathbb{Z}}_L \)) if \( e(G/P) = f(G/P) = 1 \) for all \( G \) above \( P \) in \( {\mathbb{Z}}_L \). Equivalently, there is a factorization \( P{\mathbb{Z}}_L = \prod_{i\leq n} Q_i \) with the \( Q_i \) distinct and \( n \coloneqq[L: K] \).
:::

::: {.proposition title="?"}
Let \( M/L/K \) be a tower of number fields and \( P\in \operatorname{Spec}{\mathbb{Z}}_K \). Then if \( P \) splits completely in \( M \), it splits completely in \( L \).
:::

::: {.slogan}
Splitting completely in an extension implies splitting completely in every intermediate extension.
:::

::: {.proof title="?"}
Suppose \( P \) splits completely in \( M \), we then want to show that for any \( P' \) in \( {\mathbb{Z}}_L \) above \( P \), then \( e=f=1 \). We know \( P' \) has some prime factor, so choose any \( P'' \) in \( {\mathbb{Z}}_M \) above \( P' \):

```{=tex}
\begin{tikzcd}
    M && {\exists P''} \\
    \\
    L && {P'} \\
    \\
    K && P
    \arrow[no head, from=1-1, to=3-1]
    \arrow[no head, from=3-1, to=5-1]
    \arrow[no head, from=5-3, to=3-3]
    \arrow[no head, from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCw0LCJLIl0sWzAsMiwiTCJdLFswLDAsIk0iXSxbMiw0LCJQIl0sWzIsMiwiUCciXSxbMiwwLCJcXGV4aXN0cyBQJyciXSxbMiwxLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsMCwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFszLDQsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNSw0LCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d)

Since \( P'' \) is above \( P \) and \( e(P''/P) = f(P''/P) =1 \), we can use multiplicativity in towers:
\[
e(P'/P) \divides e(P''/P) = 1 &\implies e(P'/P) = 1 \\
f(P'/P) \divides f(P''/P) = 1 &\implies f(P'/P) = 1 \\
.\]
:::

::: {.definition title="?"}
If \( L/K \) is an extension of number fields and \( P\in \operatorname{Spec}{\mathbb{Z}}_K \) is nonzero, then \( P \) **ramifies** in \( L \) (or \( {\mathbb{Z}}_L \)) if \( e(Q/P)>1 \) for some \( Q\in \operatorname{Spec}{\mathbb{Z}}_L \) above \( P \).
:::

::: {.proposition title="?"}
For \( M/L/K \) a tower of number fields and \( P\in \operatorname{Spec}{\mathbb{Z}}_K \) is nonzero and unramified in \( M \), then \( P \) is unramified in \( L \).
:::

::: {.proof title="?"}
Same as the last proof.
:::

## Galois Theory and Prime Decomposition

::: {.remark}
This will lead into defining the Frobenius element and the fundamental theorem of algebraic number theory: Chebotarev Density. Some setup/notation:

-   \( L/K \) will be a Galois extension of number of fields
-   \( P \in \operatorname{Spec}{\mathbb{Z}}_K, Q\in \operatorname{Spec}{\mathbb{Z}}_L \) will be nonzero prime ideals. We may or may not require \( Q \) to lie above \( P \).
:::

::: {.remark}
```{=tex}
\envlist
```
-   Any \( \sigma \in G(L/K) \) is an automorphism of \( L \) fixing \( K \), which restricts to an automorphism of \( {\mathbb{Z}}_L \) since it preserves algebraic integers.
    -   It also preserves prime ideals.
-   Suppose \( Q \) lies above \( P \), then \( P{\mathbb{Z}}_L = Q^{e(Q/p)} \cdots \). \( \sigma \) fixes \( K \) pointwise, so applying it to both sides yields \( P{\mathbb{Z}}_L = \sigma(Q)^{e(Q/P)}\cdots \) where \( \sigma(Q) \) shows up with the exact same power since it preserves distinctness of ideals.
    -   In particular, \( \sigma(G) \) lies above \( P \), so \( G(L/K) \) acts on the set of primes above \( P \), and it turns out (very importantly) to be transitive.
:::

::: {.theorem title="?"}
The action of \( G(L/K) \) on primes above \( P \) is transitive.
:::

::: {.proof title="?"}
Let \( Q_1, Q_2 \) be primes above \( P \) and suppose toward a contradiction that \( {\mathrm{Orb}}(Q_1) \) does not contain \( Q_2 \). We may choose \( \alpha\in {\mathbb{Z}}_L \) such that

-   \( \alpha \equiv 0 \operatorname{mod}Q_2 \)
-   \( \alpha \equiv 1 \operatorname{mod}Q \) for all \( Q \) of the form \( Q = \sigma(Q_1) \), noting that none are \( Q_2 \)

This system can be solved by the CRT, since the \( Q_i \) are pairwise comaximal, since nonzero primes of a number ring are maximal. These congruences say \( \alpha\in Q_2 \) but not any other \( Q \), since \( 0\equiv 1 \) only in the unit ideal. Define \( \beta = \prod_{\sigma \in G(L/K)} \sigma( \alpha) \in {\mathbb{Z}}_K \), and observe that \( \beta\not\in Q_1 \). If it were in \( Q_1 \), one \( \sigma(\alpha) \in Q_1 \) for some \( \sigma \in G(L/K) \) which would force \( \alpha = \sigma \sigma^{-1}( \alpha) \in \sigma^{-1}(Q_1) \), which contradicts the choice of \( \alpha \) since \( \sigma^{-1}(Q_1) \) is one of the \( Q \)s appearing in the second congruence. On the other hand we have \( \beta\in Q_2 \) since the identity is an element of \( G(L/K) \) and \( \alpha\in Q_2 \) and \( \beta \) is a multiple of \( \alpha \). We know \( \beta\in {\mathbb{Z}}_K \), so \( \beta \in Q_2 \cap{\mathbb{Z}}_K = P \). But this is fishy because \( Q_1, Q_2 \) both lie above \( P \) and both must contain \( P \):

```{=tex}
\begin{tikzcd}
    {Q_1} && {Q_2} \\
    \\
    & P
    \arrow[no head, from=1-1, to=3-2]
    \arrow[no head, from=1-3, to=3-2]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMSwyLCJQIl0sWzAsMCwiUV8xIl0sWzIsMCwiUV8yIl0sWzEsMCwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDAsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=)

Since \( \beta \) is in every ideal above \( P \), in particular \( \beta \in Q_1 \) since \( Q_1 \supseteq P \), and this is a contradiction.
:::

::: {.proposition title="?"}
If \( Q, Q' \) both lie above \( P \), then \( e(Q/P) = e(Q'/P) \) and \( f(Q/P) = f(Q'/P) \).
:::

::: {.proof title="?"}
Pick \( \sigma \in G(L/K) \) with \( \sigma(Q) = Q' \). Factor \( P{\mathbb{Z}}_L = Q^{e(Q/P)} J \) where \( J \) is a product of primes not equal to \( Q \). Applying \( \sigma \) yields \( P{\mathbb{Z}}_L = Q'^{e(Q/P)} J' \) where \( J' \) is a product of primes not equal to \( Q' \). This factors \( P{\mathbb{Z}}_L \) into primes, and by uniqueness of prime factorization this exponent has to be \( e(Q'/P) \) by definition.

For the \( f \)s, note that \( \sigma \) induces a ring morphism between the residue fields:
\[
\mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu: {\mathbb{Z}}_K/Q &\to {\mathbb{Z}}_L/Q' \\
\alpha \operatorname{mod}Q &\mapsto \sigma(\alpha) \operatorname{mod}Q'
.\]
This is well-defined since \( \sigma(Q) = Q' \), and is an isomorphism since the inverse comes from \( \sigma ^{-1} \). This will imply that the \( f \)s are the same: we're looking at the degree of these extensions over \( {\mathbb{Z}}_K/P \). An element of \( {\mathbb{Z}}_L/Q \) also belonging to \( {\mathbb{Z}}_K/P \) (as a subfield) has the form \( \alpha \operatorname{mod}Q \) where \( \alpha\in {\mathbb{Z}}_K \), and under \( \sigma \) this is sent to \( \sigma(\alpha)\operatorname{mod}Q' = \alpha \operatorname{mod}Q' \), which is an element of the copy of \( {\mathbb{Z}}_K/P\hookrightarrow{\mathbb{Z}}_L/Q' \). So \( \sigma \) identifies the copies of \( {\mathbb{Z}}_K/P \) in either side, and
\[
[{\mathbb{Z}}_L/Q : {\mathbb{Z}}_K/P] = [{\mathbb{Z}}_L/Q: {\mathbb{Z}}_K/P]
.\]
:::

::: {.theorem title="efg theorem for Galois extensions"}
Let \( L/K \) be a Galois extension of number fields and \( P\in \operatorname{Spec}{\mathbb{Z}}_K \) be nonzero. Let \( e,f \) be the common \( e, f \) for all \( Q \) above \( P \), and let \( g \) be the number of distinct \( Q \) above \( P \). Then
\[
efg = n \coloneqq[L:K]
.\]
:::

::: {.proof title="?"}
Using the previous efg theorem, \( \sum_{i=1}^g e_i f_i = n \), but by the previous proposition, all of the \( e_i \) are the same and all of the \( f_i \) are the same.
:::

::: {.example title="?"}
Let \( L = {\mathbb{Q}}(\zeta_5) \) over \( K= {\mathbb{Q}} \), which is Galois with \( G(L/K) \cong ({\mathbb{Z}}/5)^{\times}\cong {\mathbb{Z}}_4 \). We know \( {\mathbb{Z}}_L = {\mathbb{Z}}[\zeta_5] \), which actually happens for any \( n \), and \( \min_{\zeta_5}(x) = x^4 + x^3 + x^2 + x + 1 \). Since \( {\mathbb{Z}}_L \) is a monogenic, we can apply Dedekind-Kummer.

-   Factoring \( 2{\mathbb{Z}}_L = P \) yields a single factor, so \( g=1 \). Since \( e \) is the common exponent, \( e=1 \), so \( f=4 \). If you factor \( \min_{\zeta_5} \) mod 2, in order to get a single prime D-K says this must be irreducible and \( f_i \) are the degrees of the irreducible factors.

-   \( 19{\mathbb{Z}}_L = P_1 P_2 \), so \( g=2, e=1 \), and so \( f=2 \).

-   \( 11{\mathbb{Z}}_L = P_1 P_2 P_3 P_4 \) yields \( g=4, e=1, f=1 \).

-   \( 5{\mathbb{Z}}_L = P_1^4 \) so \( g=1,e=4,f=1 \).

Can the combination \( (e,f,g) = (2,2,1) \) occur? This would require a prime factoring as \( P^2 \), but the answer is know. In fact \( e>1 \) only happens for \( 5 \) since this corresponds (for all applicable primes \( p \), which is all primes since \( {\mathbb{Z}}_L \) is monogenic here) to the polynomial having a repeated factor mod \( p \). This would require \( {\Delta}(\min_{\zeta_5}(x)) \equiv 0 \operatorname{mod}p \), but you can show that \( 5 \) is the only prime that divides this discriminant. So \( 5 \) is the only prime that could ramify, so \( e=2 \) never happens.

In general, for cyclotomic extensions, \( p \) is always totally ramified and \( e=p-1 \).
:::

## Decomposition, Inertia, Frobenius

::: {.definition title="Decomposition"}
Let \( L/K \) be a Galois extension of number fields and let \( Q \in \operatorname{Spec}{\mathbb{Z}}_L \) be nonzero. Then \( Q \) lies above a unique prime \( P \in \operatorname{Spec}{\mathbb{Z}}_K \), where \( P = Q \cap{\mathbb{Z}}_K \). Define the **decomposition group of \( Q \)** is defined as
\[
D(Q) = D(Q/P) = \left\{{ \sigma \in G(L/K) {~\mathrel{\Big|}~}\sigma(Q) = Q}\right\} 
.\]
:::

::: {.definition title="?"}
Better notation: define \( {\mathbb{F}}_Q \coloneqq{\mathbb{Z}}_L/Q \) and \( {\mathbb{F}}_P = {\mathbb{Z}}_K/P \), so \( {\mathbb{F}}_P \subseteq {\mathbb{F}}_Q \).
:::

::: {.remark}
We know that the Galois group will take \( Q \) to some prime above \( P \), these are the ones that take \( Q \) to itself. These are the automorphisms that make sense "modulo \( Q \)": there is a group morphism
\[
{ \text{red} }_{Q/P}: D(G/P) &\to G({\mathbb{F}}_Q/{\mathbb{F}}_P) \\
\sigma &\mapsto \mkern 1.5mu\overline{\mkern-1.5mu\sigma \mkern-1.5mu}\mkern 1.5mu
.\]
where we reduce \( \sigma \) mod \( Q \), so \( \mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu(\alpha \operatorname{mod}Q) \coloneqq\sigma(\alpha) \operatorname{mod}Q \). One can check

-   For \( \sigma \in D(Q/P) \), \( \mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu \) is a well-defined automorphism of \( {\mathbb{F}}_Q \) fixing \( {\mathbb{F}}_P \), since the elements in \( {\mathbb{F}}_P \) are of the form \( \alpha \operatorname{mod}Q \) where \( \alpha\in {\mathbb{Z}}_K \) and \( \sigma \) fixes \( K \). This crucially uses that \( \sigma \) fixes \( Q \), otherwise it won't be well-defined.

-   \( { \text{red} }_{Q/P} \) defines a group morphism.

We'll see later that this is in fact a surjective morphism. So all automorphisms in the Galois group \( G({\mathbb{F}}_Q/{\mathbb{F}}_P) \) are reductions mod \( Q \) of automorphisms in the decomposition group, which are the only ones that make sense to reduce mod \( Q \) anyway!
:::

# Ch. XYZ: Galois Theory and Prime Decomposition (April 13)

::: {.remark}
Two recommended resources:

-   Samuel, Algebraic Theory of Numbers (Dover)
-   Matt Baker's [online notes on Algebraic number theory](https://people.math.gatech.edu/~mbaker/pdf/ANTBook.pdf).
:::

::: {.remark}
Setup:

-   \( L/K \) a Galois extension of number fields.
-   \( P \in \operatorname{mSpec}K \)
-   \( Q\in \operatorname{mSpec}L \)

We saw that \( G(L/K) \) acts on the prime ideals above \( P \), making all of the \( e,f \) values the same, and thus the decomposition into prime ideals in this type of extension is simpler than in a general extension. We'll look at decomposition and inertia groups today.

Recall that if \( Q \) lies above \( P \), then the **decomposition group** \( D(Q/P) \) is the set of \( \sigma\in G(L/K) \) such that \( \sigma(Q) = Q \). Note that \( P \) is redundant in this notation, since \( Q \cap{\mathbb{Z}}_K = P \). Also recall that \( {\mathbb{F}}_Q \coloneqq{\mathbb{Z}}_L/Q \) is the residue field associated to \( Q \) and \( {\mathbb{Z}}_P \coloneqq{\mathbb{Z}}_L/P \) and we view \( {\mathbb{F}}_P \subseteq {\mathbb{F}}_Q \). Such an extension of finite fields is always Galois, and the Galois groups turn out to be related to the decomposition groups. For \( \sigma \in D(Q/P) \) we defined \( \mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu: {\mathbb{F}}_Q \to {\mathbb{F}}_Q \) where \( \alpha \operatorname{mod}Q \mapsto \sigma(\alpha) \operatorname{mod}Q \). It's easy to check this is

-   Well-defined, precisely by the definition of \( D(Q/P) \),

-   An automorphism of \( {\mathbb{F}}_Q \): it must be surjective since everything in \( {\mathbb{Z}}_L \) is in the image of \( \sigma \) since \( \sigma \) was an automorphism of \( {\mathbb{Z}}_L \) to begin with. But then it's a surjective morphism from a finite field to itself, hence an automorphism.

-   \( \sigma \) fixed \( {\mathbb{F}}_P \) pointwise Now consider applying \( \sigma \) to an element of \( {\mathbb{F}}_P \), which are of the form \( \alpha \operatorname{mod}Q \) where \( \alpha \) comes from \( {\mathbb{Z}}_K \). But \( \sigma \) fixed \( {\mathbb{Z}}_K \) pointwise, so \( \sigma \) fixed \( {\mathbb{F}}_P \) pointwise.

So each \( \sigma\in D(Q/P) \) yields a \( \mkern 1.5mu\overline{\mkern-1.5mu\sigma \mkern-1.5mu}\mkern 1.5mu\in G({\mathbb{F}}_Q/{\mathbb{F}}_P) \) and we get a group morphism
\[
{ \text{red} }_{Q/P}: D(Q/P) &&\to G({\mathbb{F}}_Q/{\mathbb{F}}_P) \\
\sigma &\mapsto \mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu
.\]
The following is the deeper and more important fact about this morphism, which requires a technical proof:
:::

::: {.theorem title="?"}
\( { \text{red} }_{Q/P} \) is surjective.
:::

::: {.proof title="?"}
We can assume \( {\mathbb{F}}_P \) is a proper subfield of \( {\mathbb{F}}_Q \), since the result follows immediately otherwise. By the primitive element theorem, since \( |FF_Q/{\mathbb{F}}_P \) is separable we can write \( {\mathbb{F}}_Q = {\mathbb{F}}_P(\mkern 1.5mu\overline{\mkern-1.5mu\alpha\mkern-1.5mu}\mkern 1.5mu) \) where \( \alpha\in {\mathbb{Z}}_L \) and \( \mkern 1.5mu\overline{\mkern-1.5mu{-}\mkern-1.5mu}\mkern 1.5mu \) denotes reducing mod \( Q \). Note \( \alpha\not\in Q \), since this would mean \( \mkern 1.5mu\overline{\mkern-1.5mu\alpha \mkern-1.5mu}\mkern 1.5mu= 0 \) and thus \( {\mathbb{F}}_Q = {\mathbb{F}}_P \). On the other hand, we can assume \( \alpha\in Q' \) for all other \( Q'\neq Q \) above \( P \). Why? Sketch: the equation \( {\mathbb{F}}_Q = {\mathbb{F}}_P(\mkern 1.5mu\overline{\mkern-1.5mu\alpha\mkern-1.5mu}\mkern 1.5mu) \) only depends on \( \alpha\operatorname{mod}Q \), so if \( \alpha \) is not in some \( Q' \), just adjust \( \alpha \) modulo \( Q' \) without affecting its class mod \( Q \) to get a new \( \alpha \) in \( Q' \). So if not, replace \( \alpha \) with \( \alpha' \) satisfying
\[
\alpha' \cong \alpha \operatorname{mod}Q \\
\alpha'\cong 0 \operatorname{mod}Q' && \forall Q'\neq Q \text{ above }P
.\]

Look at the minimal polynomial \( \mkern 1.5mu\overline{\mkern-1.5mum\mkern-1.5mu}\mkern 1.5mu(x) \) of \( \mkern 1.5mu\overline{\mkern-1.5mu\alpha\mkern-1.5mu}\mkern 1.5mu \) over \( {\mathbb{F}}_P \), some monic polynomial in \( {\mathbb{F}}_P[x] \), where \( {\mathbb{F}}_P \) is the reduction mod \( P \) of elements in \( {\mathbb{Z}}_K \). So we can think of \( \mkern 1.5mu\overline{\mkern-1.5mum\mkern-1.5mu}\mkern 1.5mu(x) \) as some \( m(x) \in {\mathbb{Z}}_K[x] \) whose coefficients have been reduced mod \( Q \). We'll show that for each root \( r \) of \( \mkern 1.5mu\overline{\mkern-1.5mum\mkern-1.5mu}\mkern 1.5mu(x) \) in \( {\mathbb{F}}_Q \), there is some \( \sigma\in D(Q/P) \) such that \( \mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu(\mkern 1.5mu\overline{\mkern-1.5mu\alpha\mkern-1.5mu}\mkern 1.5mu) = r \) This is enough, since any automorphism of \( {\mathbb{F}}_Q \) fixing \( {\mathbb{F}}_P \) is determined by the image of \( \mkern 1.5mu\overline{\mkern-1.5mu\alpha\mkern-1.5mu}\mkern 1.5mu \), which has to go to some other root of \( \mkern 1.5mu\overline{\mkern-1.5mum\mkern-1.5mu}\mkern 1.5mu (x) \). If we can show this statement, this means that \( \mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu \) has to hit every automorphism in \( G({\mathbb{F}}_Q/{\mathbb{F}}_P) \).

Define \( g(x) = \prod_{\sigma\in G(L/K)} (x- \sigma( \alpha)) \). Where does \( g \) live? \( \alpha \) came from \( L \), so \( \sigma( \alpha) \in L \), and multiplying over all \( \sigma \) puts the coefficients in \( K \). Even better, since \( \alpha\in {\mathbb{Z}}_L \) is algebraic, this will have \( {\mathbb{Z}}_K \) coefficients, so \( g\in {\mathbb{Z}}_K[x] \). Now reduce mod \( Q \) to get \( \mkern 1.5mu\overline{\mkern-1.5mug\mkern-1.5mu}\mkern 1.5mu(x) \in {\mathbb{F}}_P[X] \), and moreover \( \mkern 1.5mu\overline{\mkern-1.5mug\mkern-1.5mu}\mkern 1.5mu(\mkern 1.5mu\overline{\mkern-1.5mu\alpha\mkern-1.5mu}\mkern 1.5mu) = \mkern 1.5mu\overline{\mkern-1.5mug(\alpha)\mkern-1.5mu}\mkern 1.5mu = 0 \) in \( {\mathbb{F}}_Q \), since \( g(\alpha) = 0 \) by definition since one \( \sigma \) in the product is the identity. Thus we know \( \mkern 1.5mu\overline{\mkern-1.5mum\mkern-1.5mu}\mkern 1.5mu(x) \divides \mkern 1.5mu\overline{\mkern-1.5mug\mkern-1.5mu}\mkern 1.5mu(x) \) in \( {\mathbb{F}}_P[x] \). Notice that in \( {\mathbb{F}}_Q[x] \), if we take \( g \) and reduce mod \( Q \) we get
\[
\mkern 1.5mu\overline{\mkern-1.5mug\mkern-1.5mu}\mkern 1.5mu(x) = \prod_{\sigma \in G(L/K)} (x - \mkern 1.5mu\overline{\mkern-1.5mu\sigma(\alpha)\mkern-1.5mu}\mkern 1.5mu )
.\]
Since \( \mkern 1.5mu\overline{\mkern-1.5mum\mkern-1.5mu}\mkern 1.5mu(x) \) divides \( \mkern 1.5mu\overline{\mkern-1.5mug\mkern-1.5mu}\mkern 1.5mu(x) \), every root of \( \mkern 1.5mu\overline{\mkern-1.5mum\mkern-1.5mu}\mkern 1.5mu \) has the form \( \mkern 1.5mu\overline{\mkern-1.5mu\sigma( \alpha)\mkern-1.5mu}\mkern 1.5mu \) for some \( \sigma\in G(L/K) \). We want this to be \( \mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu(\mkern 1.5mu\overline{\mkern-1.5mu\alpha\mkern-1.5mu}\mkern 1.5mu) \) instead to conclude the proof, so take a root of \( \mkern 1.5mu\overline{\mkern-1.5mum\mkern-1.5mu}\mkern 1.5mu \) in \( {\mathbb{F}}_Q \) and write it as \( \mkern 1.5mu\overline{\mkern-1.5mu\sigma(\alpha)\mkern-1.5mu}\mkern 1.5mu \) with \( \sigma\in G(L/K) \)

::: {.claim}
\( \sigma \in D(G/P) \) has to be in the decomposition group.
:::

If this is true, we're done since \( \mkern 1.5mu\overline{\mkern-1.5mu\sigma( \alpha)\mkern-1.5mu}\mkern 1.5mu = \mkern 1.5mu\overline{\mkern-1.5mu\sigma \mkern-1.5mu}\mkern 1.5mu(\mkern 1.5mu\overline{\mkern-1.5mu\alpha\mkern-1.5mu}\mkern 1.5mu) \).

Suppose toward a contradiction that \( \sigma\not\in D(G/P) \), so neither \( \sigma \) nor \( \sigma^{-1} \) fixes \( Q \), so \( \sigma^{-1}(Q) \neq Q \). By choice of \( \alpha \), we have \( \alpha \in Q' \coloneqq\sigma^{-1}(Q) \), so \( \sigma(\alpha)\in Q \). Then \( \mkern 1.5mu\overline{\mkern-1.5mu\sigma(\alpha)\mkern-1.5mu}\mkern 1.5mu = 0 \), but \( 0 \) is not a root of \( \mkern 1.5mu\overline{\mkern-1.5mum\mkern-1.5mu}\mkern 1.5mu(x) \) since it is irreducible where \( \mkern 1.5mu\overline{\mkern-1.5mum\mkern-1.5mu}\mkern 1.5mu(x) \neq x \) since \( [{\mathbb{F}}_Q: {\mathbb{F}}_P] \geq 2 \) and thus \( \deg \mkern 1.5mu\overline{\mkern-1.5mum\mkern-1.5mu}\mkern 1.5mu(x) \geq 2 \).
:::

::: {.remark}
By the first isomorphism theorem, we have
\[
G({\mathbb{F}}_Q/{\mathbb{F}}_P) \cong D(Q/P) / \ker { \text{red} }_{Q/P}
.\]
, where we call the kernel the **inertia group**:
\[
\ker { \text{red} }_{Q/P} = I(Q/P) \coloneqq\left\{{ \sigma \in D(Q/P) {~\mathrel{\Big|}~}\mkern 1.5mu\overline{\mkern-1.5mu\sigma \mkern-1.5mu}\mkern 1.5mu= \operatorname{id}_{{\mathbb{F}}_Q} }\right\}
.\]
These are the elements \( \sigma \) in the decomposition group such that \( \sigma(\alpha) \equiv \alpha \operatorname{mod}Q \) for every \( \alpha \).

Since we have a group action of the Galois group on primes above \( P \), we can apply Orbit-Stabilizer: we have \( {\operatorname{Stab}}(Q) = D(Q/P) \) and the orbit is all primes above \( P \), so
\[
G(L/K) / D(Q/P) \cong \left\{{\text{Primes above } P}\right\}
.\]
Taking cardinalities,
\[
[L:K] / \# D(Q/P) = g \implies \# D(Q/P) = {[L:K] \over g} = {efg \over g} = ef
.\]
We also have
\[
{ef \over \# I(Q/P)} = \#G({\mathbb{F}}_Q/{\mathbb{F}}_P) = [{\mathbb{F}}_Q: {\mathbb{F}}_P] = f
.\]
In summary,

-   \( \# D(Q/P) = f \),
-   \( \# I(Q/P) = e \),
-   If \( P \) is unramified, \( e=1 \) and \( I(Q/P) \) is trivial and \( { \text{red} }_{Q/P} \) is an isomorphism.

This map is usually an isomorphism, since there are only finitely many \( P \) ion \( {\mathbb{Z}}_K \) that ramify in \( {\mathbb{Z}}_L \).
:::

## Inertia and Decomposition Fields

::: {.remark}
It will turn out that the fixed fields appearing here have number-theoretic interpretations.
:::

::: {.definition title="?"}
If \( Q \) lies above \( P \), then define the **inertia field** corresponding to \( Q/P \), written \( L^{I(Q/P)} \), and the **decomposition field** \( L^{D(Q/P)} \).
:::

::: {.remark}
Suppose \( L/K \) is Galois, and consider an intermediate field \( L/M/K \). We can find intermediate primes:

```{=tex}
\begin{tikzcd}
    L && Q \\
    \\
    M && {R = Q \cap{\mathbb{Z}}_M} \\
    \\
    K && P
    \arrow[no head, from=1-1, to=3-1]
    \arrow[no head, from=3-1, to=5-1]
    \arrow[no head, from=5-3, to=3-3]
    \arrow[no head, from=3-3, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJMIl0sWzAsMiwiTSJdLFswLDQsIksiXSxbMiw0LCJQIl0sWzIsMiwiUiA9IFEgXFxpbnRlcnNlY3QgXFxaWl9NIl0sWzIsMCwiUSJdLFswLDEsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSwyLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsNCwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDUsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=)

We can consider \( e, f \) of \( R/P \) in this picture. Going to bigger extensions then \( M \) makes \( R \) bigger, so \( e \) increases as \( M \) gets bigger.
:::

::: {.theorem title="?"}
The inertia field \( L^{I(Q/P)} \) is the largest field extension \( M \) for which \( e(R/P) = 1 \). More precisely,
\[
e(R/P) = 1 \iff M \subseteq L^{I(Q/P)}
.\]
:::

::: {.remark}
From Galois theory, \( L/M \) is also Galois, so the key to proving this theorem involves understanding \( D, I \) of \( Q/R \). Noting that \( G(L/M) \subseteq G(L/K) \), We have
\[
D(Q/R) 
&\coloneqq\left\{{\sigma\in G(L/M) {~\mathrel{\Big|}~}\sigma(Q) = Q}\right\} \\
&= \left\{{\sigma\in G(L/K) {~\mathrel{\Big|}~}\sigma(Q) = Q}\right\} \cap G(L/M) \\
&= D(Q/P) \cap G(L/M)
,\]
so the decomposition groups are related by restriction. Suppose \( \sigma \in D(Q/R) \), then \( { \text{red} }_{Q/R}(\alpha) \) is an automorphism of \( {\mathbb{F}}_Q \). We can also get an automorphism of \( {\mathbb{F}}_Q \) by taking \( { \text{red} }_{Q/P}(\sigma) \) -- it turns out these are the same automorphism. Why? Both map \( \alpha \operatorname{mod}Q \) to \( \sigma(\alpha) \operatorname{mod}Q \), which doesn't involve \( R \) or \( P \). We can thus write
\[
I(Q/R) 
&= \left\{{ \sigma \in D(Q/R) {~\mathrel{\Big|}~}\mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu = \operatorname{id}_{{\mathbb{F}}_Q} }\right\} \\
&= \left\{{ \sigma \in D(Q/P) \cap G(L/M) {~\mathrel{\Big|}~}\mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu = \operatorname{id}_{{\mathbb{F}}_Q} }\right\} \\
&= \left\{{ \sigma \in D(Q/P) {~\mathrel{\Big|}~}\mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu = \operatorname{id}_{{\mathbb{F}}_Q} }\right\}\cap G(L/M) \\
&= I(G/P) \cap G(L/M)
.\]
:::

::: {.remark title="Upshot"}
\[
D(Q/R) &= D)Q/P) \cap G(L/M) \\
I(Q/R) &= I)Q/P) \cap G(L/M) \\
.\]
:::

::: {.proof title="of theorem"}
Let \( L/M/K \) with \( Q/R/P \), we want to show \( e(R/P) = 1 \iff M \subset L^{I(Q/P)} \):

```{=tex}
\begin{tikzcd}
    L && Q \\
    \\
    M && R \\
    \\
    K && P
    \arrow[no head, from=5-1, to=3-1]
    \arrow[no head, from=1-1, to=3-1]
    \arrow[no head, from=5-3, to=3-3]
    \arrow[no head, from=3-3, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJMIl0sWzAsMiwiTSJdLFswLDQsIksiXSxbMiwwLCJRIl0sWzIsMiwiUiJdLFsyLDQsIlAiXSxbMiwxLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMSwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs1LDQsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCwzLCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d)

We'll use multiplicativity of \( e \) in towers. Recall that \( e(R/P) = e(Q/R) e(R/P) \), so \( e(R/P) = 1 \) iff \( e(Q/P) = e(Q/R) \). Interpreting this as the size of inertia, this happens iff \( \# I(Q/P) = \# I(Q/R) \), iff \( \#I(Q/P) = \#( I(Q/P) \cap G(L/M) ) \). This happens iff \( I(Q/P) \subseteq G(L/M) \), iff \( M \subseteq L^{I(Q/P)} \).
:::

::: {.theorem title="?"}
The decomposition field \( L^{D(Q/P)} \) is the largest \( M \) for which *both* \( e(R/P) = f(R/P) =1 \).
:::

::: {.proof title="?"}
Replace \( e \) in the previous proof with the product \( ef \) and \( I \) replaced by \( D \), using \( \#D =ef \).
:::

::: {.remark}
Next time: why these theorems are interesting! How ramification and splitting completely behaves in fields vs their Galois closures.
:::

# Decomposition and Inertia Fields (April 15)

## Ramification in Composite Fields

::: {.remark}
Recall the setup:

-   \( L/K \) is a Galois extension of number fields.
-   \( P\in \operatorname{Spec}K \) nonzero, and in fact we'll usually mean \( P \in \operatorname{mSpec}{\mathbb{Z}}_K \).
-   \( Q\in \operatorname{Spec}L \).
-   \( {\mathbb{F}}_Q \coloneqq{\mathbb{Z}}_L/Q, {\mathbb{F}}_P \coloneqq{\mathbb{Z}}_K/P \)

When \( Q \) lies above \( P \), we defined \( D(Q/P) \) as all \( \sigma\in G(L/K) \) preserving \( Q \). We have a reduction map
\[
{ \text{red} }_{Q/P}: D(Q/P) &\to G({\mathbb{F}}_Q / {\mathbb{F}}_P) \\
\sigma &\mapsto \mkern 1.5mu\overline{\mkern-1.5mu\sigma\mkern-1.5mu}\mkern 1.5mu
,\]
which we saw was a surjective group morphism with kernel \( I(Q/P) \coloneqq\ker ({ \text{red} }_{Q/P}) \). Since \( D, I \) are subgroups of \( G({\mathbb{F}}_Q/{\mathbb{F}}_P) \), we can consider the corresponding intermediate fixed fields, the *inertia field* and *decomposition field*. Using that the Galois correspondence is inclusion-reversing, we get the following:

```{=tex}
\begin{tikzcd}
    L \\
    \\
    {L^{I(Q/P)}} \\
    \\
    {L^{D(Q/P)}} \\
    \\
    K
    \arrow[no head, from=7-1, to=5-1]
    \arrow[no head, from=5-1, to=3-1]
    \arrow[no head, from=3-1, to=1-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJMIl0sWzAsNiwiSyJdLFswLDIsIkxee0koUS9QKX0iXSxbMCw0LCJMXntEKFEvUCl9Il0sWzEsMywiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFszLDIsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMiwwLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d)
:::

::: {.remark}
Suppose we have a tower \( L/M/K \) with prime ideals \( Q/R/P \) with \( R\coloneqq Q \cap{\mathbb{Z}}_M \). We showed that with respect to containment,

a.  \( L^{I(Q/P)} \) is the largest intermediate field in which \( e(R/P) = 1 \).
b.  \( L^{D(Q/P)} \) is the largest intermediate field in which \( e(R/P) = f(R/P) = 1 \).

Note that (b) is a stronger condition, so this matches the containment in the previous diagram.
:::

::: {.theorem title="?"}
Let \( M/K \) be an extension of number fields, not necessarily Galois. Let \( L \) be the **Galois closure** of \( M/K \), the smallest field extension containing \( M \) which is Galois over \( K \). Then

a.  \( P\in \operatorname{Spec}K \) is unramified in \( M \) \( \iff \) \( P \) is unramified in \( L \).

b.  \( P\in \operatorname{Spec}K \) splits completely in \( M \) \( \iff \) \( P \) splits completely in \( L \).
:::

::: {.proof title="?"}
We'll just prove (a), and a very similar argument will yield (b).

\( \impliedby \): This is clear: if \( L/M/K \) is a tower and \( P \) is unramified in \( L \), why is it unramified in \( M \)? This is multiplicativity of \( e \) in towers. If we have \( R \) in \( M \) with \( R/P \), we can choose \( Q \) in \( L \) with \( Q/R/P \). If \( e(R/P) > 1 \), we have \( e(Q/P) = e(Q/R) e(R/P) > 1 \), forcing \( P \) to ramify in \( L \). Note that we haven't used that \( L \) is the Galois closure.

\( \implies \): By the primitive element theorem, write \( M = K(\theta) \), how can we describe the Galois closure \( L \)? Listing \( { {\theta}_1, {\theta}_2, \cdots, {\theta}_{r}} \) the roots of \( \min_{\theta}(x) \) over \( K \), then \( L = K({ {\theta}_1, {\theta}_2, \cdots, {\theta}_{r}}) \):

```{=tex}
\begin{tikzcd}
    &&&& L = K({ {\theta}_1, {\theta}_2, \cdots, {\theta}_{r}}) \\
    \\
    {K(\theta_1)} && {K(\theta_2)} && \cdots && {K(\theta_{r-1})} && {K(\theta_{r})} \\
    \\
    &&&& K
    \arrow[no head, from=3-1, to=1-5]
    \arrow[no head, from=3-3, to=1-5]
    \arrow[dashed, no head, from=3-5, to=1-5]
    \arrow[no head, from=3-7, to=1-5]
    \arrow[no head, from=5-5, to=3-1]
    \arrow[no head, from=3-3, to=5-5]
    \arrow[dashed, no head, from=3-5, to=5-5]
    \arrow[no head, from=3-7, to=5-5]
    \arrow[no head, from=3-9, to=5-5]
    \arrow[no head, from=3-9, to=1-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNyxbNCw0LCJLIl0sWzQsMCwiTCJdLFswLDIsIksoXFx0aGV0YV8xKSJdLFsyLDIsIksoXFx0aGV0YV8xKSJdLFs0LDIsIlxcY2RvdHMiXSxbNiwyLCJLKFxcdGhldGFfMSkiXSxbOCwyLCJLKFxcdGhldGFfMSkiXSxbMiwxLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsMSwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDEsIiIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsMSwiIiwyLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFswLDIsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMywwLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzQsMCwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNSwwLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsMCwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs2LDEsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=)

By assumption, \( P \) is unramified in \( M \), which is one \( K(\theta_i) \). There is always an isomorphism between any of the two \( K(\theta_i) \) which preserves \( K \), so abstractly they're all equivalent. So \( P \) is unramified in \( K(\theta_i) \) for all \( i \). Take any \( Q \in \operatorname{Spec}L \) over \( P \). We can consider the tower involving \( K(\theta_i) \) for any \( i \) and produce a corresponding prime \( R_i \):

```{=tex}
\begin{tikzcd}
    L && Q \\
    \\
    {K(\theta_i)} && {R_i} \\
    \\
    K && P
    \arrow[no head, from=1-1, to=3-1]
    \arrow[no head, from=3-1, to=5-1]
    \arrow[no head, from=1-3, to=3-3]
    \arrow[no head, from=3-3, to=5-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJMIl0sWzAsMiwiSyhcXHRoZXRhX2kpIl0sWzAsNCwiSyJdLFsyLDQsIlAiXSxbMiwwLCJRIl0sWzIsMiwiUl9pIl0sWzAsMSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsxLDIsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCw1LCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzUsMywiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==)

Since \( P \) is unramified in all \( K(\theta_i) \), we have \( e(R_i/P) = 1 \). Now use the characterization of the inertia field: \( K(\theta_i) \subset L^{I(Q/P)} \), which is true for every \( i \). So their composite is also contained in the inertia field, so we have
\[
L = K({ {\theta}_1, {\theta}_2, \cdots, {\theta}_{r}}) \subseteq L^{I(Q/P)} \subseteq L
,\]
yielding equality. Now note that the inertia field was the largest intermediate field for which \( e=1 \), and we've just conclude \( L = L^{I(Q/P)} \), so \( e(Q/P) = 1 \). Since \( Q/P \) was arbitrary, \( P \) is unramified.
:::

::: {.theorem title="?"}
Let \( M_1/K, M_2/K \) be any two extensions of \( K \). Then

a.  \( P \) is unramified in \( M_1 \) and \( M_2 \) \( \iff \) \( P \) is unramified in the composite field \( M_1 M_2 \).

b.  \( P \) splits completely in \( M_1 \) and \( M_2 \) \( \iff \) \( P \) splits completely in the composite field \( M_1 M_2 \).
:::

::: {.proof title="?"}
As before, we'll only prove (a).

\( \impliedby \): Again clear by multiplicativity in towers.

\( \implies \): Note that everything involving inertia only makes sense for Galois extensions, and we haven't assumed that here. So let \( L \) be the Galois closure of \( M_1M_2/K \), and let \( L_1, L_2 \) be the Galois closures of \( M_1/K, M_2/K \) respectively. By the previous theorem, \( P \) is unramified in \( L_1, L_2 \). How is \( L \) related to \( L_1 \) and \( L_2 \)? You can convince yourself that \( L = L_1 L_2 \), since the right-hand side is a Galois extension of \( K \), and it contains \( M_1 M_2 \). We'll forget the \( M_i \) and work with the following diagram:

```{=tex}
\begin{tikzcd}
    & {} \\
    & L \\
    {L_1} && {L_2} & {} \\
    & K
    \arrow[no head, from=2-2, to=3-1]
    \arrow[no head, from=2-2, to=3-3]
    \arrow[no head, from=3-1, to=4-2]
    \arrow[no head, from=3-3, to=4-2]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMSwwXSxbMCwyLCJMXzEiXSxbMiwyLCJMXzIiXSxbMywyXSxbMSwxLCJMIl0sWzEsMywiSyJdLFs0LDEsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbNCwyLCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzEsNSwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDUsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=)

We have a prime in \( K \) which is unramified in the \( L_i \), and we want to show it's also unramified in \( L \), which is equivalent to being unramified in \( M_1 M_2 \) (which was our goal). Strat: let \( Q \in \operatorname{Spec}L \) with \( Q/P \) and let \( R_1, R_2 \) be the corresponding primes in \( \operatorname{Spec}L_1, \operatorname{Spec}L_2 \) between \( Q \) and \( P \). Since \( P \) is unramified in the \( L_i \), we have \( e(R_1/P) = e(R_2/P) = 1 \). Thus \( L_i \subseteq L^{I(Q/P)} \), and so is their composite \( L_1 L_2 \subseteq L^{I(Q/P)} \). But \( L = L_1 L_2 \), and so \( e(Q/P) = 1 \).
:::

## Frobenius

::: {.remark}
Let \( E/F \) be an extension of *finite* fields, so \( E/F \) is automatically Galois. Taking \( F \coloneqq{\mathbb{F}}_q \), then \( E \) is of the form \( E = {\mathbb{F}}_{q^m} \) for some \( m \). Then \( G(E/F) \) is cyclic of order \( m \), and is generated by \( x\mapsto x^q \), the **Frobenius map** on the finite field \( E/F \). For number fields, we'll want a slightly different notion of Frobenius.
:::

::: {.remark}
Let \( L/K \) be a Galois extension of number fields, \( P \) a prime of \( K \) unramified in \( L \), and \( Q \) a prime of \( L \) above \( P \). Then \( {\mathbb{F}}_Q/{\mathbb{F}}_P \) is an extension of finite fields, so we know \( { \text{red} }_{Q/P} \) is a surjective group morphism, and the inertia group has size \( e(Q/P) \), which is 1 in this situation. So this is an isomorphism between the "global" object \( D(Q/P) \) and the "local" object \( G({\mathbb{F}}_Q/{\mathbb{F}}_P) \) on residue fields. We can pull back the generator on the right-hand side to define the **Frobenius element**
\[
\mathop{\mathrm{Frob}}_{Q/P} \coloneqq{ \text{red} }_{Q/P}^{-1}(x\mapsto x^q)\in D(Q/P) && q\coloneqq\# {\mathbb{Z}}_K/P \coloneqq N(P)
.\]
:::

::: {.observation}
Note that \( \mathop{\mathrm{Frob}}_{Q/P} \) is an element of \( G(L/K) \) where for every \( \alpha\in {\mathbb{Z}}_L, \mathop{\mathrm{Frob}}_{Q/P}( \alpha) \equiv \alpha^q \operatorname{mod}Q \) where \( q\coloneqq N(P) \). So \( \mathop{\mathrm{Frob}}_{Q/P} \) acts by the \( q \)th power map in \( {\mathbb{Z}}_L/Q \), and in fact this is a characterization of the Frobenius element.
:::

::: {.lemma title="?"}
Suppose \( \sigma\in { \mathsf{Gal}} (L/K) \) satisfies \( \sigma( \alpha) \equiv \alpha^q \operatorname{mod}Q \) for all \( \alpha\in {\mathbb{Z}}_L \) where \( q \coloneqq N(P) \). Then \( \sigma = \mathop{\mathrm{Frob}}_{Q/P} \).
:::

::: {.remark}
Why this is useful: you can check if something is the Frobenius element by just checking this congruence.
:::

::: {.proof title="?"}
Take any \( \alpha\in Q \), then \( \sigma(\alpha) \equiv \alpha^q\operatorname{mod}Q \equiv 0^q \operatorname{mod}Q \) and so \( \sigma( \alpha) \in Q \). So \( \sigma(Q) \subseteq Q \), but these are maximal ideals, forcing equality. Then \( \sigma(Q) = Q \) implies \( \sigma \in D(Q/P) \) by definition, and now applying \( { \text{red} }_{Q/P}( \sigma) = (x\mapsto x^q) \) is the \( q \)th power map and \( \sigma = { \text{red} }_{Q/P}^{-1}(x\mapsto x^q) \coloneqq\mathop{\mathrm{Frob}}_{Q/P} \).
:::

::: {.proposition title="?"}
Suppose \( L/K \) is a Galois extension of number fields with \( L/M/K \) where we additionally assume that \( M/K \) is Galois. For the tower \( L/M/K \), take primes \( Q/R/P \) where \( P \) is unramified in \( L \). Then
\[
\mathop{\mathrm{Frob}}_{R/P} = { \left.{{\mathop{\mathrm{Frob}}_{Q/P}}} \right|_{{M}} }
.\]
:::

::: {.remark}
Note that the right-hand side is an automorphism of \( L \) restricted to \( M \), which is only an automorphism of \( M \) when \( M/K \) is Galois.
:::

::: {.proof title="?"}
Definition chasing and using characterization of Frobenius. It's enough to show that for all \( \alpha\in {\mathbb{Z}}_M \), we have
\[
{ \left.{{\mathop{\mathrm{Frob}}_{Q/P}}} \right|_{{M}} }( \alpha) \equiv \alpha^q \operatorname{mod}R && q = N(P)
.\]

Since \( \alpha\in {\mathbb{Z}}_M \) and \( M \subseteq L \) so we can think of \( \alpha\in L \) and it makes sense to compute \( \mathop{\mathrm{Frob}}_{Q/P}( \alpha) \equiv \alpha^q \operatorname{mod}Q \) since this is how Frobenius acts upstairs. So we just need to show that this congruence that holds for \( Q \) also holds for \( R \). Consider the difference: it's in \( Q \) by the modular condition, and using that \( M/K \) is Galois, the Frobenius restricts to an automorphism of \( M \) and thus \( \mathop{\mathrm{Frob}}_{Q/P}( \alpha) \in M \) (and is in fact still in \( {\mathbb{Z}}_M \)). Thus we have a difference of two things in \( {\mathbb{Z}}_M \) and in \( Q \), so
\[
\mathop{\mathrm{Frob}}_{Q/P}( \alpha) - \alpha^q \in Q \cap{\mathbb{Z}}_M = R
.\]
:::

::: {.remark}
We'll see a nice example later of how to get the law of quadratic reciprocity from this!
:::

# Frobenius (April 20)

::: {.remark}
Setup and reminders:

-   \( L/K \) a Galois extension of number fields,
-   \( P \in \operatorname{Spec}K \) unramified in \( L \)
-   \( Q\in \operatorname{Spec}L \) above \( P \), so \( e(Q/P) = 1 \).
-   The Frobenius was defined as \( { \text{red} }_{Q/P}^{-1}(x\mapsto x^q) \) for \( q \coloneqq N(P) \).
-   The characterization theorem for Frobenius: \( \sigma = \mathop{\mathrm{Frob}}_{Q/P} \) iff \( \sigma( \alpha) \equiv \alpha^q \operatorname{mod}Q \), so Frobenius acts like that \( q \)th power map mod \( Q \).
-   When \( L/M/K \) with \( M/K \) Galois with \( Q/R/P \), \( \mathop{\mathrm{Frob}}_{R/P} = { \left.{{\mathop{\mathrm{Frob}}_{Q/P}}} \right|_{{M}} } \)
:::

::: {.proposition title="?"}
Let \( L/K \) be Galois and let \( Q,Q' \) be two primes lying above \( P \):

```{=tex}
\begin{tikzcd}
    L && Q && {Q'} \\
    \\
    K &&& P
    \arrow[no head, from=1-1, to=3-1]
    \arrow[no head, from=1-3, to=3-4]
    \arrow[no head, from=1-5, to=3-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwwLCJMIl0sWzAsMiwiSyJdLFszLDIsIlAiXSxbMiwwLCJRIl0sWzQsMCwiUSciXSxbMCwxLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsMiwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFs0LDIsIiIsMix7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XV0=)

Since Galois acts transitively, we can write \( Q' = \sigma(Q) \) for some \( \sigma \in G(L/K) \). Then
\[
\mathop{\mathrm{Frob}}_{Q'/P} = \sigma \circ \mathop{\mathrm{Frob}}_{Q/P} \circ \sigma^{-1}
.\]
:::

::: {.proof title="Sketch"}
An exercise, use the characterization theorem. Set \( \tau \) to be the right-hand side, and check that \( \tau(\alpha) \equiv \alpha^p \operatorname{mod}Q' \) for all \( \alpha \in {\mathbb{Z}}_L \) and \( q\coloneqq N(P) \).
:::

::: {.remark}
What can we do when we are given a \( P \) but not a \( Q \)? There are many choices of \( Q \), all related by conjugation.
:::

::: {.definition title="Frobenius Conjugacy Class"}
Define the **Frobenius conjugacy class** as
\[
\qty{L/K \over P} = \left\{{ \mathop{\mathrm{Frob}}_{Q/P} {~\mathrel{\Big|}~}Q \text{ lies above } P }\right\} \subseteq G(L/K)
.\]
This is a conjugacy class of \( G(L/K) \).
:::

::: {.remark}
Note that this collapses to a single element when \( G(L/K)\in {\mathsf{Ab}} \)! By abuse of notation, we'll identify \( \qty{L/K \over P} \) with that common element (despite it being a singleton set).
:::

::: {.proposition title="Order of Frobenius"}
Every element of \( \qty{L/K \over P} \) has order \( f \), where \( f = f(Q/P) \) for any \( Q/P \).
:::

::: {.proof title="?"}
Let \( Q/P \) be a prime over \( P \), then \( \mathop{\mathrm{Frob}}_{Q/P} \coloneqq{ \text{red} }_{Q/P}^{-1}(x\mapsto x^q) \), where the \( q \)th power map is the generator of \( G({\mathbb{F}}_Q/{\mathbb{F}}_P) \), which has size \( [{\mathbb{F}}_Q : {\mathbb{F}}_P] = f \). Since \( { \text{red} } \) was an isomorphism, we're done.
:::

## Cyclotomic Fields

::: {.remark}
Fix \( m \). Recall that the \( m \)th cyclotomic field \( K \) is defined by
\[
K \coloneqq{\mathbb{Q}}(\zeta_m) && \zeta_m = e^{2\pi i / m}
.\]
This is the splitting field of \( x^m-1 \), and in characteristic zero this implies \( K/{\mathbb{Q}} \) is Galois.
:::

::: {.proposition title="?"}
\[
[K : {\mathbb{Q}}] = \phi(m)
.\]
:::

::: {.definition title="Cyclotomic Polynomials"}
Define the **\( m \)th cyclotomic polynomial** as
\[
\Phi_m(x) \coloneqq\prod_{\substack{a\operatorname{mod}m \\ (a, m) = 1}} (x - \zeta_m^a)
.\]
:::

::: {.remark}
Note that \( \deg \Phi_m(x) = \phi(m) \), since this is precisely how many terms show up in the indexing set. We'll show that this is the minimal polynomial of \( \zeta_m \)

-   The coefficients are algebraic integers, since the roots are all roots of \( x^m-1 \), which is monic in \( {\mathbb{Z}}[x] \). Since \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu \) is a ring, we have \( \Phi_m(x) \in \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu[x] \).

-   If \( \sigma \in G(K/{\mathbb{Q}}) \), then \( \sigma(\zeta_m) = \zeta_m^b \) for some \( b \) coprime to \( m \). Then
    \[
    \sigma(\Phi_m(x)) = \prod_{\substack{a\operatorname{mod}m \\ (a, m) = 1}} (x - \zeta_m^{ab}) = \Phi_m(x)
    ,\]
    since as \( a \) runs through the number coprime to \( m \), so does \( ab \). Thus \( \Phi_m(x) \in {\mathbb{Q}}[x] \), since its coefficients are fixed by every element of the Galois group.

-   Combining these, the coefficients are in \( \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{Z}}\mkern-1.5mu}\mkern 1.5mu[x] \cap{\mathbb{Q}}[x] = {\mathbb{Z}}[x] \).
:::

::: {.proposition title="?"}
\( \Phi_m(x) = m(x) \coloneqq\min_{\zeta_m}(x) \) is the minimal polynomial of \( \zeta_m \) over \( {\mathbb{Q}} \).
:::

::: {.proof title="?"}
Clearly \( m(x) \divides \Phi_m(x) \) in \( {\mathbb{Q}}[x] \) since \( \Phi_m(x) \) vanishes at \( \zeta_m \). So every root of \( m(x) \) is a primitive \( m \)th root of unity, so we just need to show that every primitive \( m \)th root of unity is a root of \( m \), i.e. we get all of them. Observe that if \( \zeta \) is *any* \( m \)th root of unity, then \( \zeta \in {\mathbb{Z}}_K \): \( \zeta \) is an algebraic integer, as a root of \( x^m-1 \), and is in \( K \) since it's a power of \( \zeta_m \). Also note that \( m(x) \in {\mathbb{Z}}[x] \) since the minimal polynomial of *any* algebraic integer has rational integer coefficients. So \( m(\zeta)\in {\mathbb{Z}}_K \) since \( {\mathbb{Z}}_K \) is a ring and \( \zeta\in {\mathbb{Z}}_K \), and \( N(m(\zeta)) \in {\mathbb{Z}} \).

::: {.claim}
There is an \( M\in {\mathbb{Z}}^{\geq 0} \) such that if \( q \) is any prime with \( q> M \) and \( \zeta \) is any root of \( m(x) \), then \( \zeta^q \) is still a root of \( m(x) \).

I.e. the roots of \( m(x) \) are closed under taking \( q \)th powers for large enough \( q \). Moreover, it's enough to pick any \( M> \max_{\zeta} {\left\lvert {N(m(\zeta))} \right\rvert} \), taking \( \zeta \) over all \( m \)th roots of 1.
:::

::: {.proof title="of claim"}
Let \( q>M \) be chosen as above and let \( \zeta \) be a root of \( m(x) \). We know \( \zeta \) is a primitive \( m \)th root of unity and in \( {\mathbb{Z}}_K \). Work modulo \( Q \): since \( 0 = m(\zeta) \) we have
\[
0 
\equiv m(\zeta)^q \equiv m(\zeta^q)
.\]
Hence
\[
q \divides N(q) \divides N(m(\zeta^q))
,\]
using that \( N(q) = q^d \) since it's a rational integer where \( d \) is the degree of the number field. But we have \( q > {\left\lvert { N(m(\zeta^q))} \right\rvert} \), which can only happen if the right-hand side is zero. The only element of norm zero in a number field is zero, so \( m(\zeta^q) = 0 \).
:::

So if \( q>M \) and \( \zeta \) is a root of \( m(x) \), so is \( \zeta^q \). \( \zeta_m \) is a root of \( m(x) \), thus so us \( \zeta_m^{q_1}, \zeta_m^{q_1 q_2}, \cdots, \zeta_m^{A} \) for any \( A \in {\mathbb{Z}}^{\geq 0} \) which can be written as a product of primes bigger than \( M \).

::: {.exercise title="?"}
Show that we can choose any \( a\in {\mathbb{Z}} \) with \( \gcd(a, m) = 1 \), and choose \( A \) as above with \( A \cong a \operatorname{mod}m \).
:::

With this, \( \zeta_m^a = \zeta_m^A \) will be a root of \( m(x) \) and we're done.
:::

::: {.remark}
Note that the exercise does follow from Dirichlet's theorem for arithmetic progressions, but there are easier proofs.
:::

## Galois Theory of \( {\mathbb{Q}}(\zeta_m) / {\mathbb{Q}} \) and The Frobenius {#galois-theory-of-mathbbqzeta_m-mathbbq-and-the-frobenius}

::: {.remark}
Let \( \sigma \in G(K/{\mathbb{Q}}) \), then we saw that \( \sigma(\zeta_m) = \zeta_m^a \) for some \( a \) coprime to \( m \). So we know \( \# G(K/{\mathbb{Q}}) < \phi(m) \), since there are only that many possibilities for the right-hand side. Since \( [K:{\mathbb{Q}}] = \phi(m) \), for each \( a \) coprime to \( m \) there is a \( \sigma_a \) with \( \sigma_a(\zeta_m) = \zeta_m^a \), so we can write
\[
G(K/{\mathbb{Q}}) = \left\{{ \sigma_a {~\mathrel{\Big|}~}a\in ({\mathbb{Z}}/m)^{\times}}\right\} 
.\]
Noting that \( \sigma_a \sigma_b (\zeta_m) = \zeta_m^{ab} = \sigma_{ab} \), so we get an isomorphism
\[
G(K/{\mathbb{Q}}) &\xrightarrow{\sim} ({\mathbb{Z}}/m) ^{\times}\\
\sigma_a &\rightleftharpoons a\operatorname{mod}m
,\]
so \( K/{\mathbb{Q}} \) is an abelian extension.
:::

::: {.remark}
Consider \( K \coloneqq{\mathbb{Q}}(\zeta_m) \), then for every rational prime \( P \) unramified in \( K \), there is a well-defined element in \( \qty{K/{\mathbb{Q}}\over P} \in G(K/{\mathbb{Q}}) = ({\mathbb{Z}}/m)^{\times} \). For a given \( P \), which element in \( ({\mathbb{Z}}/m)^{\times} \) do you get?
:::

::: {.proposition title="?"}
If \( p\notdivides m \), then \( p \) is unramified in \( {\mathbb{Q}}(\zeta_m) \).
:::

::: {.remark}
The converse is more or less true: \( {\mathbb{Q}}(\zeta_2) = {\mathbb{Q}} \) since \( \zeta_2 = -1 \), but 2 is not ramified in \( {\mathbb{Q}} \) since nothing is ramified in itself. So if you avoid \( m\equiv 2 \operatorname{mod}4 \), the converse becomes true. We'll just prove the mentioned direction.
:::

::: {.lemma title="?"}
\[
{\mathbb{Z}}_K = {\mathbb{Z}}[\zeta_m]
.\]
:::

::: {.exercise title="?"}
Show that \( p \) ramifies in \( K \) iff \( {\mathbb{Z}}_K/p{\mathbb{Z}}_K \) has a nonzero nilpotent element.
:::

::: {.proof title="of proposition, cute!"}
Suppose \( p\notdivides m \), then it suffices to show that \( {\mathbb{Z}}[\zeta_m] / p{\mathbb{Z}}[\zeta_m] \) has no nonzero nilpotents. Let \( \alpha\in {\mathbb{Z}}[\zeta_m] \) with \( \alpha \operatorname{mod}p \) nilpotent in the quotient, we'll show it must be zero in the quotient. By the lemma, we can write \( \alpha = \sum_{i=0}^{d-1} a_i \zeta^i \), using that \( {\mathbb{Z}}_K = {\mathbb{Z}}[\zeta] \) where all of the \( a_i \) are in \( {\mathbb{Z}} \), we've set \( \zeta\coloneqq\zeta_m \) and \( d = \phi(m) = [K : {\mathbb{Q}}] \).

Look mod \( p \), then
\[
\alpha^p &\equiv \sum_{i=0}^{d-1} a_i \zeta^{ip} \operatorname{mod}p
\implies \alpha^{p^f} &\equiv \sum_{i=0}^{d-1} a_i \zeta^{ip^f} \operatorname{mod}p && \forall f
.\]
If \( f \) is large enough, \( \alpha^{p^f} \equiv 0 \operatorname{mod}p \), since some power of \( \alpha \) is zero. On the other hand, \( p\notdivides m \), so there are powers of \( p \) that are \( 1\operatorname{mod}m \) that show up regularly, and we can choose \( f \) so that \( p^f \cong 1 \operatorname{mod}m \), e.g. by choosing \( f \) to be any multiple of the order of \( p \) mod \( m \). But then the second line above reduces to \( \sum a_i\zeta^{ip^f} \equiv \sum a_i \zeta^{i} = \alpha \) since \( p^f \equiv 1 \operatorname{mod}m \), so \( \alpha^{p^f} \equiv \alpha \), but we know \( \alpha^{p^f} \equiv 0 \).
:::

::: {.theorem title="?"}
Suppose \( p\notdivides m \), which guarantees \( p \) does not ramify in \( K \). Then
\[
\qty{K/{\mathbb{Q}}\over P} = \sigma_p && \sigma_p(\zeta_m) \coloneqq\zeta_m^p
.\]
:::

::: {.proof title="?"}
Choose any \( Q \) lying above \( p \). We'll show that for all \( \alpha\in {\mathbb{Z}}_K \), \( \sigma_p( \alpha) = \alpha^p \operatorname{mod}Q \), which by the characterization theorem will show \( \sigma_p = \mathop{\mathrm{Frob}}_{Q/P} \), and in the abelian case \( \qty{K/{\mathbb{Q}}\over p} \) reduces to this single element. We know that \( Q\supseteq p{\mathbb{Z}}_K \) since \( Q \) is above \( p \), so it's enough to show \( \sigma_p( \alpha) \equiv \alpha^p \operatorname{mod}p \) for all \( \alpha\in {\mathbb{Z}}_K \) -- this is because the difference is a multiple of \( p \) in \( {\mathbb{Z}}_K \), which is a subset of \( Q \). Using \( {\mathbb{Z}}_K = {\mathbb{Z}}[\zeta_m] \) to write \( \alpha = \sum_{i=0}^{d-1} a_i \zeta_m^{i} \) where \( d \) is the degree of the extension. Now reducing \( \operatorname{mod}p \) and applying the Freshman's dream yields
\[
\sigma_p( \alpha) 
&= \sum_{i=0}^{d-1} a_i \zeta_m^{ip} \\
&\equiv \qty{ \sum_{i=0}^{d-1} a_i \zeta_m^{i}}^p \operatorname{mod}p \\
&\equiv \alpha^p
.\]
:::

::: {.remark}
This can be used to determine how all of the primes \( p\notdivides m \) factor in \( {\mathbb{Q}}(\zeta_m) \), i.e. easily determining the relevant values of \( f \) and \( g \).
:::

# Chebotarev Density (April 26)

## Setup

::: {.remark}
Today: the Frobenius element, cyclotomic extensions of \( {\mathbb{Q}} \), Chebotarev density theorem, and some applications. We'll then look at applying Frobenius to understanding squares modulo a prime and get a proof of quadratic reciprocity.

Setup: let \( L/K \) be a Galois extension of number fields, \( P \in \operatorname{Spec}K \) unramified in \( L \), and \( Q\in \operatorname{Spec}L \) lying above \( p \).

-   There is a unique element \( \mathop{\mathrm{Frob}}_{Q / P} \in { \mathsf{Gal}} (L/K) \) satisfying
    \[
    \mathop{\mathrm{Frob}}_{Q/P}(\alpha) = \alpha^p \operatorname{mod}q
    &&
    p \coloneqq\# {\mathbb{Z}}_K/p
     .\]

-   As \( Q \) ranges over the primes of \( L \) over \( P \), then \( \mathop{\mathrm{Frob}}_{Q/P} \) ranges over an entire conjugacy class, which we denoted \( { \qty{ L/K \over P } } \). For abelian Galois groups, we'll identify this class with its single representative.
:::

::: {.remark}
How does this theory play out for cyclotomic extensions? We've seen that for \( K\coloneqq{\mathbb{Q}}(\zeta_n) \), the extension \( K/{\mathbb{Q}} \) is Galois of degree \( \phi(m) = \# ({\mathbb{Z}}/m)^{\times} \), and moreover these are isomorphic via
\[
({\mathbb{Z}}/m)^{\times}&\to { \mathsf{Gal}} (K/{\mathbb{Q}})\\
a\operatorname{mod}m &\mapsto \sigma_a: \zeta_a \mapsto \zeta_m^a
.\]
:::

::: {.proposition title="?"}
If \( p \) is prime and \( p\notdivides m \), then \( p \) is unramified in \( K \). We proved this last time, and it follows that \( { \qty{ K/Q \over P } } \in { \mathsf{Gal}} (K/{\mathbb{Q}}) \cong ({\mathbb{Z}}/m)^{\times} \). Moreover, we saw that
\[
{ \qty{ K/Q \over P } } \equiv p \operatorname{mod}m
.\]
:::

::: {.remark}
Thus for any two primes not dividing \( m \) which become equal modulo \( m \), then they split in the same way in the cyclotomic field. So the way a rational prime splits in \( {\mathbb{Q}}(\zeta_m) \) is entirely determined by its residue class \( \operatorname{mod}m \).
:::

::: {.corollary title="?"}
If \( p \) is a prime not dividing \( m \), then \( e,f,g \) depend only on \( p\operatorname{mod}m \).
:::

::: {.proof title="?"}
If \( p \) doesn't divide \( m \), \( p \) is unramified and \( e=1 \). Recall that \( f \) is the order of any Frobenius element above \( p \) in the Galois group, \( { \qty{ K/Q \over P } } = p \operatorname{mod}m \) in \( ({\mathbb{Z}}/m)^{\times} \). Note that \( efg = \phi(m) \) is the degree of the field, and solving yields \( g = \phi(m)/f \).
:::

::: {.remark}
In class field theory, there are analogs of this, foreshadowing something that happens in general for abelian extensions of number fields. In fact, every such extension is a subfield of the cyclotomic field.
:::

## Chebotarev's Theorem

::: {.question}
A classical question: let \( a\operatorname{mod}m \) be a coprime residue class, are there infinitely many (positive) rational primes \( p \) with \( p\equiv a\operatorname{mod}m \)? For instance, are there infinitely many primes \( p \) satisfying \( p \equiv 5 \operatorname{mod}11 \)?
:::

::: {.remark}
Note that only coprime residue classes are interesting here. Considering, say, \( p\equiv 5 \operatorname{mod}10 \) would only yield multiples of 5 and thus \( p=5 \) is the only solution. In general, for \( a\operatorname{mod}m \) with \( a, m \) not coprime, there is at most one solution.
:::

::: {.answer}
For \( a, m \) coprime, it is a theorem of Dirichlet that there are infinitely many. This proof uses \( L{\hbox{-}} \)functions and their analytic behavior.
:::

::: {.theorem title="Chebotarev's Density Theorem: The Fundamental Theorem of Algebroanalytic Number Theory"}
Let \( L/K \) be a Galois extension of number fields and \( C \) a conjugacy class of \( { \mathsf{Gal}} (L/K) \). Note that for every prime \( P \) of \( K \) that is unramified in \( L \), we can associate the Frobenius conjugacy class. There are only finitely many primes of \( K \) that ramify in \( L \), so all but finitely many primes yield a conjugacy class -- is it this fixed conjugacy class \( C \)?

The theorem is that there are infinitely many primes \( P \) of \( K \) for which \( P \) is unramified in \( L \) and the Frobenius conjugacy class satisfies \( { \qty{ L/K \over P } } = C \).
:::

::: {.remark}
This is qualitatively stated, but one can make this quantitative -- there is a well-defined proportion of primes for which this is true. Letting \( P \) range over the primes of \( K \), the *proportion* with \( \qty{L/K \over P} = C \) will be \( \# C / [L:K] \). Here *proportion* is defined in the following way:
\[
\lim_{x\to\infty} 
\qty{ \# \left\{{ P \in \operatorname{Spec}K {~\mathrel{\Big|}~}N(P) \leq x, \, \qty{L/K \over P} = C}\right\} \hspace{1em} \over \# \left\{{ P\in \operatorname{Spec}K {~\mathrel{\Big|}~}N(P) \leq x}\right\} }
,\]
which is sometimes called the *natural density* of these primes. What Chebotarev proved is slightly weaker and involved the *Dirichlet density* instead.
:::

::: {.corollary title="?"}
We recover Dirichlet's theorem on primes \( p\equiv a \operatorname{mod}m \) by taking \( L \coloneqq{\mathbb{Q}}(\zeta_m) \), \( K={\mathbb{Q}} \), and \( C \coloneqq\left\{{a\operatorname{mod}m}\right\} \). The density theorem yields infinitely many primes \( P \) with Frobenius equal to \( C \), but then \( \qty{L/K\over p} = \left\{{p\operatorname{mod}m}\right\} \), yielding \( p\equiv a \operatorname{mod}m \). Moreover the proportion of such primes is \( 1/\phi(m) \), the degree of \( [L:K] \), so the coprime residue classes are essentially distributed uniformly.
:::

::: {.remark}
This is useful when one needs infinitely many primes of a certain form, for which one can apply the density theorem to a well-chosen extension of number fields.
:::

::: {.question}
Consider primes \( p \) and consider the multiplicative order of \( 2\operatorname{mod}p \), which is a divisor of \( p-1 \). How often is this order even or odd? One might expect this to happen half of the time, but this is not true. Instead:
:::

::: {.corollary title="of a strong Chebotarev theorem, due to Hasse"}
The proportion of \( p \) for which \( 2 \) has even order \( \operatorname{mod}p \) is \( 17/24 \).
:::

::: {.remark}
Note that 2 is special, and this proportion changes for \( 3\operatorname{mod}p \) to something around \( 2/3 \). Interesting algebraic number theory governs why this is *not* \( 17/24 \), and involves how different number fields intersect.
:::

## Residues \( \operatorname{mod}p \) and Quadratic Reciprocity {#residues-operatornamemodp-and-quadratic-reciprocity}

::: {.remark}
If \( G \) is a cyclic group of even order, there is a unique morphism
\[
\phi_G:G &\to \left\{{\pm 1}\right\} \\
g &\mapsto 
\begin{cases}
1 &  g \in G^2
\\
-1 & \text{else}.
\end{cases}
\]
:::

::: {.definition title="Legendre Symbol"}
Let \( p \) be an odd prime, and let \( G \coloneqq({\mathbb{Z}}/p)^{\times} \) which is cyclic of order \( p-1 \). For each \( a\in {\mathbb{Z}} \) coprime to \( p \), define the **Legendre symbol**
\[
{ \qty{ a \over p } } \coloneqq\phi_G(a\operatorname{mod}p) 
=
\begin{cases}
1 &  a = a_0^2\operatorname{mod}p \text{ for some } a_0\in G
\\
-1 & \text{else]}.
\end{cases}
\]
Note that this is a group morphism, and thus multiplicative and we get
\[
{ \qty{ ab \over p } } = { \qty{ a \over p } } { \qty{ b \over p } } && a,b \in {\mathbb{Z}}\text {coprime to} p
.\]
One can also extend the symbol by defining \( { \qty{ n \over p } } = 0 \) when \( n \) is not coprime to \( p \).
:::

::: {.question}
Given \( a \), can we characterize the primes \( p \) (not dividing \( a \)) for which \( { \qty{ a \over p } } =1 \).
:::

::: {.remark}
Let \( K = {\mathbb{Q}}(\sqrt d) \) where \( d \) is squarefree, then \( K/{\mathbb{Q}} \) is abelian and the Galois group can be thought of as \( G \coloneqq{ \mathsf{Gal}} (K/{\mathbb{Q}}) = \left\{{\pm 1}\right\} \). Each rational prime \( P \) unramified in \( K \) will yields a well-defined Frobenius conjugacy class in \( K \), and since \( G \) is a abelian this is a single element -- which element is it?

If \( p \) is an odd prime not dividing \( d \), we know from our study of quadratic fields that \( p \) is unramified in \( K \).
:::

::: {.proposition title="?"}
Let \( p \) be an odd prime not dividing \( d \), then
\[
{ \qty{ K/{\mathbb{Q}} \over p } } = { \qty{ d \over p } }
,\]
where we've identified the Galois group as \( \left\{{\pm 1}\right\} \). Thus is \( d \) is a square \( \operatorname{mod}p \), the Frobenius is trivial, and conversely if \( d \) is not a square then the Frobenius is nontrivial.
:::

::: {.proof title="?"}
Since \( p \) is odd not dividing \( d \), \( p \) doesn't ramify and thus \( e=1 \). Since we're in a quadratic field, the only other things that can happen are being split (completely) or inert. So when does \( p \) split? This is precisely when \( g=2 \), so there are two primes above \( p \), and we know \( efg=2 \) is the degree of the extension, so \( f=1 \). But \( f \) is the order of any Frobenius element, so the order of \( { \qty{ K/{\mathbb{Q}} \over p } } = 1 \), making it the identity. So \( p \) splits \( \iff { \qty{ K/{\mathbb{Q}} \over p } } = 1 \).

On the other hand, when we worked out how primes factor in quadratic fields, we used Dedekind-Kummer, and if \( p \) is odd not dividing \( d \) then \( { \qty{ d \over p } } = 1 \). Equivalently, \( p \) splitting involves looking at how \( x^2-d \) factors in \( K \), and that's what yields this condition. So \( p \) splits \( \iff { \qty{ d \over p } } = 1 \).

> Note that looking at how arbitrary primes factor involves looking at the minimal polynomial of \( \tau = \sqrt{d}, {1 + \sqrt d \over 2} \), but we can throw out the second case here if we're willing to throw out primes dividing the index \( [{\mathbb{Z}}_K : {\mathbb{Z}}[\sqrt d] ] \in \left\{{1, 2}\right\} \). So for odd primes, the way \( p \) factors is exactly the way \( x^2-d \) factors.

Thus \( p \) splits iff both of these quantities are \( +1 \) and doesn't split iff they're both \( -1 \), so they must be equal.
:::

::: {.proposition title="?"}
If \( p \) is an odd prime,
\[
{ \qty{ -1 \over p } } = 
\begin{cases}
1 & p\equiv1\operatorname{mod}4 
\\
-1 & \text{else}.
\end{cases}
\]
:::

::: {.proof title="?"}
Consider \( K \coloneqq{\mathbb{Q}}(\sqrt{-1}) \). If \( p \) is an odd prime, we can identify \( { \mathsf{Gal}} (K/{\mathbb{Q}}) = \left\{{\pm 1}\right\} \) to obtain
\[
{ \qty{ K/{\mathbb{Q}} \over p } } = { \qty{ -1 \over p } }
.\]
Note that \( K \) is also the cyclotomic extension \( K = {\mathbb{Q}}(\zeta_4) \), and for cyclotomic extensions we can compute the Frobenius elements as \( { \qty{ K/{\mathbb{Q}} \over p } } \equiv p \operatorname{mod}4 \), viewing \( { \mathsf{Gal}} (K/{\mathbb{Q}}) = ({\mathbb{Z}}/4)^{\times} \).

From the first perspective, we have \( { \qty{ K/{\mathbb{Q}} \over p } } = \operatorname{id}\iff { \qty{ -1 \over p } } = 1 \), and from the second perspective this happens \( \iff p \equiv 1 \operatorname{mod}4 \).
:::

::: {.remark}
This is perhaps overkill, but it's nice that it follows easily from the general theory! What about \( 2 \) instead of \( -1 \)?
:::

::: {.proposition title="?"}
If \( p \) is an odd prime,
\[
{ \qty{ 2 \over p } } = 
\begin{cases}
1 & p\equiv \pm 1\operatorname{mod}8
\\
-1 & \text{else}.
\end{cases}
\]
:::

::: {.remark}
The usual elementary proof uses Gauss' lemma, and there are other proofs that use clever counting.
:::

::: {.proof title="?"}
We have a tower of extensions \( K/L/{\mathbb{Q}}\coloneqq{\mathbb{Q}}(\zeta_8) / {\mathbb{Q}}(\sqrt 2) / {\mathbb{Q}} \), and consider corresponding primes \( Q/R/P \). Since the overall extension is Galois, by the Galois correspondence we can write \( {\mathbb{Q}}(\sqrt 2) = {\mathbb{Q}}(\zeta_8)^H \) as the fixed field of some \( H\leq G\coloneqq{ \mathsf{Gal}} ({\mathbb{Q}}(\zeta_8)/{\mathbb{Q}}) \) of index 2.

We know that \( G = ({\mathbb{Z}}/8)^{\times} \) which has size 4, so \( H \) has 2 elements: the identity and an order 2 element. All of the \( g\in G \) are order 2, so which is it? We look for an automorphism of \( K/{\mathbb{Q}} \) fixing \( L \), and taking \( \sigma \) to be complex conjugation works since \( \sigma(\zeta_8) = \zeta_8^{-1}\neq \zeta_8 \), so \( \sigma \neq \operatorname{id} \) is nontrivial. So \( \sigma = -1\operatorname{mod}8 \) and we can write \( H = \left\{{\pm 1\operatorname{mod}8}\right\} \).

Now note that
\[
{ \qty{ 2 \over p } } = 1 \iff { \qty{ {\mathbb{Q}}(\sqrt 2)/{\mathbb{Q}} \over p } } = \operatorname{id}
,\]
since the Legendre and Frobenius symbols are equal here. This happens \( \iff \mathop{\mathrm{Frob}}_{R/P} = \operatorname{id}\iff { \left.{{\mathop{\mathrm{Frob}}_{Q/P}}} \right|_{{{\mathbb{Q}}(\sqrt 2)}} } = \operatorname{id} \), using what we've previously proved about how Frobenius behaves in towers of extensions. This happens \( \iff { \qty{ {\mathbb{Q}}(\zeta_8)/{\mathbb{Q}} \over P } } \in H \iff p\operatorname{mod}8 \in \left\{{\pm 1 \operatorname{mod}8}\right\} \).
:::

::: {.remark}
For a general \( a\in {\mathbb{Z}}_{\neq 0} \), we can factor \( a = (\pm 1)(2^k) \prod p_i \) where the \( p_i \) are odd primes. Using multiplicativity of the Legendre symbol, since we understand the first two terms, it only remains to understand \( { \qty{ q \over p } } \) for \( q \) an odd prime -- this is precisely what quadratic reciprocity gives us.
:::

# Quadratic Reciprocity (April 29)

::: {.remark}
Last time: quadratic residues mod \( p \), and how all of the usual content from a first course in number theory follows immediately from the high-powered machinery of the Frobenius and cyclotomic fields. The problem we were looking at was the following: given \( a\in {\mathbb{Z}}_{\neq 0} \), classify all odd primes \( p \) where \( { \qty{ a \over p } } = 1 \).

For \( a=-1 \), we saw that this happens iff \( p \equiv 1 \operatorname{mod}4 \), and for \( a=2 \), \( p\equiv \pm 1 \operatorname{mod}8 \). The key facts for the latter were that \( {\mathbb{Q}}(i) = {\mathbb{Q}}(\zeta_4) \) and \( {\mathbb{Q}}(\sqrt 2) \subseteq {\mathbb{Q}}(\zeta_8) \). Then because the Legendre symbol is multiplicative, we can reduce to the case \( a=q \) is an odd prime.

This was solved by Gauss in the early 19th century, which he called the "golden theorem", but is more commonly known now as the law of quadratic reciprocity.
:::

## Quadratic Reciprocity

::: {.definition title="?"}
For an odd prime \( p \), define \( p^* \coloneqq\pm p \) with the sign chosen such that \( p^* \equiv 1 \operatorname{mod}3 \). Explicitly, one can check that \( p^* = (-1)^{p-1\over 2}p \). The law of **quadratic reciprocity** states the following: if \( p, q \) are distinct odd primes, then
\[
{ \qty{ q^* \over p } } = { \qty{ p \over q } }
.\]
:::

::: {.remark}
This is not the usual formulation, but it can be recovered easily: note that
\[
{ \qty{ q^* \over p } }
&=
{ \qty{ (-1)^{q-1 \over 2} q \over p } }\\
&=
{ \qty{ -1 \over p } }^{q-1 \over 2} { \qty{ q \over p } } \\
&= 
\qty{ (-1)^{p-1\over 2} }^{q-1 \over 2} { \qty{ q \over p } } \\
\implies 
(-1)^{ {p-1\over 2}{q-1 \over 2} } 
&= { \qty{ p \over q } } { \qty{ q \over p } }
,\]
where the last step follows from multiplying through by \( { \qty{ q \over p } } \) and noting that \( { \qty{ q \over p } }^2 = 1 \)
:::

::: {.proof title="of quadratic reciprocity"}
Let \( p\neq q \) be distinct odd primes. Then \( { \mathsf{Gal}} ({\mathbb{Q}}(\zeta_q) / {\mathbb{Q}})\cong ({\mathbb{Z}}/q)^{\times} \). Since this is a cyclic group of even order, there is a unique index 2 subgroup, which we can take to be the subgroup of square \( U({\mathbb{Z}}/q)^2 \). By Galois theory, the fixed field \( {\mathbb{Q}}(\zeta_q)^H \) corresponds to a unique quadratic subfield.

::: {.claim}
This subfield is exactly \( {\mathbb{Q}}(\sqrt{q^*}) \).
:::

::: {.proof title="?"}
Let \( K\coloneqq{\mathbb{Q}}(\zeta_q)^H \), so we have a tower \( {\mathbb{Q}}(\zeta_q)/K/{\mathbb{Q}} \). Suppose \( r \) is a prime that ramifies in \( K \), then it ramifies in any larger field by multiplicativity of the \( e \) values. So \( r \) ramifies in \( {\mathbb{Q}}(\zeta_q) \), but the only primes that can possibly ramify in any \( {\mathbb{Q}}(\zeta_m) \) are those that divide \( m \). So \( r\divides q \), forcing \( r=q \), so the only prime that ramifies is \( q \).

Write \( K = {\mathbb{Q}}(\sqrt d) \) for \( d \) squarefree, then every prime dividing \( d \) is ramified in \( K \). So \( d \) is not divisible by any primes other than \( q \). Thus \( d \) could be \( \pm q \) or \( -1 \), noting that the \( d=1 \) case doesn't yield a quadratic extension, and we'd like to show that \( q^* \) is the only viable option. We can rule out \( d=-1 \), since 2 ramifies in \( {\mathbb{Q}}(\sqrt{-1}) = {\mathbb{Q}}(i) \) -- but the only prime that can ramify is \( q \), which was an *odd* prime.

We can also rule out which ever value of \( q \) yields \( q\equiv 3 \operatorname{mod}4 \), since again 2 ramifies in this case. This was a general fact: for \( K={\mathbb{Q}}(\sqrt d) \) with \( d\equiv 3 \operatorname{mod}4 \), then 2 automatically ramifies. So \( q\equiv 1\operatorname{mod}4 \), and \( d = q^* \).
:::

::: {.remark}
This can also be proved with Gauss sums, but we don't necessarily need that here.
:::

Continuing the proof, consider \( {\mathbb{Q}}(\zeta_q)/{\mathbb{Q}}(\sqrt{q^*})/{\mathbb{Q}} \) with primes \( Q/R/p \) lying over \( p \). We'll show that \( { \qty{ p \over q } } = 1 \iff { \qty{ q^* \over p } } = 1 \), making them equal. Note that \( { \qty{ p \over q } } = 1 \iff p \) is a square in \( U({\mathbb{Z}}/q) \iff \mathop{\mathrm{Frob}}_{Q/p} \in H \). This happens \( \iff { \left.{{\mathop{\mathrm{Frob}}_{Q/p}}} \right|_{{{\mathbb{Q}}\sqrt{q^*}}} } = \operatorname{id} \), which we can write as \( \mathop{\mathrm{Frob}}_{R/P} = \operatorname{id} \), or equivalently the symbol \( { \qty{ {\mathbb{Q}}(\sqrt{q^*} /{\mathbb{Q}}) \over p } } = \operatorname{id} \). Since we can write this as the Legendre symbol \( { \qty{ q^* \over p } } = 1 \) when we identify \( { \mathsf{Gal}} ({\mathbb{Q}}(\sqrt{d^*})/{\mathbb{Q}}) \cong \left\{{\pm 1}\right\} \), which is precisely what we wanted.
:::

## Applying Quadratic Reciprocity: Recovering Classical Results

::: {.example title="of applying quadratic reciprocity"}
Let \( a = 6 \), then for odd primes \( p \) not dividing \( 6 \),
\[
{ \qty{ 6 \over p } } = 1 \iff p = 1,5,19,23\operatorname{mod}24
.\]
Note that \( 6\divides 24 \), and importantly \( \phi(24) = 8 \) and this allowed list is 4 elements, so exactly half are squares.
:::

::: {.theorem title="?"}
Let \( a\in {\mathbb{Z}}_{\neq 0} \) with \( a \) not a square, then

1.  If \( p, p' \) are distinct odd primes not dividing \( a \) with \( p\equiv p' \operatorname{mod}4{\left\lvert {a} \right\rvert} \), then \( { \qty{ a \over p } } = { \qty{ a \over p' } } \). So \( { \qty{ a \over p } } = 1 \) is entirely a function of the equivalence class of \( p \operatorname{mod}4{\left\lvert {a} \right\rvert} \).

2.  The number of allowable residue class modulo \( 4{\left\lvert {a} \right\rvert} \) is precisely \( {1\over 2}\phi(4{\left\lvert {a} \right\rvert}) \).
:::

::: {.remark}
For odd \( p \) not dividing \( a \), we have \( { \qty{ a \over p } } = { \qty{ {\mathbb{Q}}(\sqrt a) / {\mathbb{Q}} \over p } } \) where we identify \( { \mathsf{Gal}} ({\mathbb{Q}}(\sqrt a)/{\mathbb{Q}})= \left\{{\pm 1}\right\} \). We did this for \( a \) squarefree, but we can generally write \( a = a_0 a_1^2 \) with \( a_0 \) squarefree, and the claim is that replacing \( a \) with \( a_0 \) doesn't change either side of this equality. The right-hand side doesn't change since \( {\mathbb{Q}}(\sqrt a) \cong {\mathbb{Q}}(\sqrt{a_0}) \), and the left-hand side doesn't change because
\[
{ \qty{ a \over p } } = { \qty{ a_0 \over p } } { \qty{ a_1 \over p } }^2 = { \qty{ a_0 \over p } } \cdot 1 = { \qty{ a_0 \over p } }
.\]
:::

::: {.lemma title="?"}
The proportion of primes \( p \) with \( { \qty{ a \over p } } = 1 \) is exactly \( 1/2 \).
:::

::: {.proof title="of lemma"}
If \( p \) is odd and doesn't divide \( a \), so \( p \) doesn't divide \( 2a \), then \( { \qty{ a \over p } } = { \qty{  {\mathbb{Q}}(\sqrt a) / {\mathbb{Q}} \over p } } \). Applying Chebotarev's density to this Frobenius yields that the proportion of \( p \) for which the right-hand side equals 1 is \( \#\left\{{\operatorname{id}}\right\}/2 = 1/2 \), noting that the denominator is just the degree of the extension, which is quadratic.
:::

::: {.exercise title="A fun one"}
For what proportion of \( p \) is 2 a cube mod \( p \)?
:::

::: {.proof title="of theorem, part 1"}
Suppose \( p\equiv p' \operatorname{mod}4{\left\lvert {a} \right\rvert} \) with \( p\notdivides 2a \). From a homework problem, \( {\mathbb{Q}}(\sqrt a) \subseteq {\mathbb{Q}}(\zeta_{4{\left\lvert {a} \right\rvert}}) \). So we have a tower \( {\mathbb{Q}}(\zeta_{4{\left\lvert {a} \right\rvert}})/{\mathbb{Q}}(\sqrt a)/{\mathbb{Q}} \), and corresponding towers of primes \( Q/R/p \) and \( Q'/R'/p' \). Since we're assuming \( p\equiv p' \operatorname{mod}4{\left\lvert {a} \right\rvert} \), we have \( \mathop{\mathrm{Frob}}_{Q/p} = \mathop{\mathrm{Frob}}_{Q'/p'} \). Restricting both to \( {\mathbb{Q}}(\sqrt a) \) we get

-   \( \mathop{\mathrm{Frob}}_{R/p} = { \qty{  {\mathbb{Q}}(\sqrt a) / {\mathbb{Q}} \over p } } = { \qty{ a \over p } } \),
-   \( \mathop{\mathrm{Frob}}_{R'/p'} = { \qty{  {\mathbb{Q}}(\sqrt a) / {\mathbb{Q}} \over p' } } = { \qty{ a \over p' } } \),

so the two Legendre symbols are equal.
:::

::: {.proof title="of theorem, part 2"}
List the coprime residue classes \( \operatorname{mod}4{\left\lvert {a} \right\rvert} \) corresponding to \( { \qty{ a \over p } } = 1 \), say \( a_1, \cdots, a_k \operatorname{mod}4{\left\lvert {a} \right\rvert} \). By Dirichlet's theorem on prime progressions (or Chebotarev density on \( {\mathbb{Q}}(\zeta_{4{\left\lvert {a} \right\rvert}}) \)), we know that the proportion of \( p \) with \( p\equiv a_i \operatorname{mod}4{\left\lvert {a} \right\rvert} \) is \( 1/\phi(4{\left\lvert {a} \right\rvert}) \). Adding these up yields \( k/\phi(4{\left\lvert {a} \right\rvert}) \). But we just computed this proportion alternatively and found it to be \( 1/2 \), so this forces \( k = (1/2) \phi(4{\left\lvert {a} \right\rvert}) \).
:::

::: {.exercise title="?"}
Think about the theorem of Hasse which stated that the primes \( p \) for which \( 2 \) has an even order \( \operatorname{mod}p \) has density \( 17/24 \). A way to start: divide up the primes according to the largest power of 2 that divides \( p-1 \). For \( 2^1\divides p-1 \) but \( 2^2 \) does not, these are primes \( p\equiv 3\operatorname{mod}4 \), \( a \) has even order precisely when \( a \) is not a square \( \operatorname{mod}p \), since otherwise if \( a \) is a square then the order will divide \( p-1\over 2 \), which is odd, and the order will be odd. So one should think about which primes \( p\equiv 3\operatorname{mod}4 \) for which (for example) \( 2 \) is not a square \( \operatorname{mod}p \), and these ideas will apply.

For \( 2^2 \divides p-1 \) but \( 2^3 \) does not, such primes are of the form \( p\equiv 5 \operatorname{mod}8 \). When does 2 have even order? Now one needs 2 not to be a *fourth* power, and one can find the density of primes for which \( 2 \) is not a 4th power \( \operatorname{mod}p \) and \( p\equiv 5\operatorname{mod}8 \) using these ideas, but it's harder.

For \( 2^3 \), one gets \( p\equiv 9\operatorname{mod}16 \) and needs \( 2 \) to not be an eighth power.

Doing this for every \( k \) and summing all of the densities will yield \( 17/24 \).
:::

[^1]: Some authors don't require \( K \subseteq {\mathbb{C}} \), but any finite extension of \( {\mathbb{Q}} \) will embed into \( {\mathbb{C}} \) so there's no harm in this extra requirement.

[^2]: An **embedding** is an injective ring morphism.

[^3]: *Squarefree* means not divisible by \( n^2 \) for any \( n > 1\in {\mathbb{Z}} \), or equivalently not divisible by the square of any primes.

[^4]: \( \impliedby \): If the norm is 1, the conjugate is the inverse. For the reverse direction, the argument was more complicated, and reduced to showing norms of units are \( \pm 1 \), and positivity forces it to be \( 1 \).

[^5]: Why does this \( n \) exist? Every ideal in \( {\mathbb{Z}} \) is of the form \( n{\mathbb{Z}} \), and it's easy to check \( I \cap{\mathbb{Z}} \) is an ideal in \( {\mathbb{Z}} \) since its an ideal of \( {\mathbb{Z}}_K \) intersected with \( {\mathbb{Z}} \). How do we know it's not the zero ideal? This is exactly given by the last lemma.

[^6]: The LHS is the set of coefficients of \( \tau \), which is an ideal of \( {\mathbb{Z}} \), and we can take it to be positive since the LHS is not the zero ideal by the lemma.

[^7]: There is a way to factor that maximizes the number of irreducibles appearing, and there are not arbitrarily long factorizations.

[^8]: Note that this is equal to \( {\mathbb{Z}}_K \) when \( K\coloneqq{\mathbb{Q}}( \sqrt{d} ) \).

[^9]: Note that this may not be true as of 2020! See Griffin, M., & Ono, K. (2020). Elliptic curves and lower bounds for class numbers. Journal of Number Theory, 214, 1-12.

[^10]: This means that \( \chi_R \) should be Riemann integrable, i.e. the bounded region is contained in a rectangle, and integrals over such rectangles converges to what we'll call the volume.

[^11]: These come from the trace and determinant of the map \( y \mapsto y\cdot x \) on \( L/K \), viewed as a \( K{\hbox{-}} \)linear map on \( L \).

[^12]: In fact, we've already proved that \( {\mathbb{Z}}_K / I \) for any nonzero ideal \( I \) is finite.

[^13]: Compare to the classical rational root theorem.
