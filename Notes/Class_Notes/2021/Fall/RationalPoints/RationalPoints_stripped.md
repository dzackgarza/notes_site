












# Preface

Possible topics announcement from Daniel

> The course will loosely follow Poonen's book on rational points, available here: <https://math.mit.edu/~poonen/papers/Qpoints.pdf> Planned topics include: the Hasse principle for quadratic forms, obstructions to the Hasse principle (i.e. the Brauer-Manin obstruction and beyond), finding rational points and some effective methods (e.g. Chabauty), as well as some conjectural aspects of rational points. I plan to cover topics in the second half of the semester which depend on student interest; i.e. if there's interest I can say some things about Faltings's proof of the Mordell conjecture.

# Thursday, August 19

::: {.remark}
Some useful prerequisites:

-   Number theory (e.g. places)
-   Class field theory
    -   See Cassels-Frolich (up through ch. 5 and 6)
-   AG (although we'll avoid the language of schemes)
-   Galois and group cohomology
-   Bjorn Poonen's book
:::

::: {.remark}
On notation:

-   \( k{ {}^{\cdot n} } \) will denote \( n \)th powers in \( k \), and similarly for \( k^{\times} \).
-   \( k^{\scriptscriptstyle\mathrm{un}} \) denotes an unramified extension.
:::

::: {.remark}
Setup: let \( k = {\mathbb{Q}} \) or more generally a number field or a function field over \( {\mathbb{F}}_q \). Consider a system of polynomial equations over \( k[x_1, \cdots, x_{m}] \):
\[
\begin{cases}
f_1(x_1, \cdots, x_m) &  = 0
\\
\quad \vdots & \vdots \\
f_n(x_1, \cdots, x_m)& =0 .
\end{cases}
\]
Some natural questions:
:::

::: {.remark title="Topic 1: Are there any common solutions?"}
More generally, does \( X \coloneqq V(f_1, \cdots, f_n) \) have any rational points? How many rational points are there? Finitely many, or infinitely many?
:::

::: {.remark title="Topic 2: what is the distribution of points?"}
-   How many points are there of height at most \( N \), where \( \operatorname{ht}(a/b) = \max({\left\lvert {a} \right\rvert}, {\left\lvert {b} \right\rvert}) \)?
-   Are they Zariski dense? I.e. are there solutions outside of the ideal \( \left\langle{f_i}\right\rangle \)?
-   Are they *potentially* dense, i.e. dense after some finite extension \( k\hookrightarrow k' \)?
-   Choosing \( k\hookrightarrow{\mathbb{C}} \) or \( { {\mathbb{Q}}_p } \), are the solutions dense in the analytic topology on \( X({\mathbb{C}}), X({ {\mathbb{Q}}_p }) \)? If not, what is the closure?

There are many conjectures around these questions, but few general results!
:::

::: {.remark title="Topic 3: Local to Global Principles"}
Topic 3: local to global principles. Given \( X_{/ {{\mathbb{Q}}}}  \), if \( X({ {\mathbb{Q}}_p })\neq \emptyset \) for all \( p \) and \( X({\mathbb{R}}) \neq \emptyset \), does this imply that \( X({\mathbb{Q}}) \neq \emptyset \)? More generally, for \( X_{/ {k}}  \) with \( X(K_v) \neq \emptyset \) for all places \( v \) of \( K \), is this enough to imply \( X(k)\neq \emptyset \) If so, we say \( X \) satisfies the **Hasse principle**. If not, are there obstructions?
:::

::: {.remark title="Topic 3': Weak and Strong Approximation"}
As an example,
\[
X(k) \hookrightarrow\prod_{v\in P(k)} X(k_v)
\]
where \( p(k) \) are the places of \( k \). Is this map dense? Note the topology is the product topology, so a basis for opens are sets with finitely factors with opens, and the remaining are the entire space. Strong approximation is an adelic version of this.

Obstructions to this principle: if this is not dense, what is the closure \( X(k) \) in \( \prod X(k_v) \) or \( X({\mathbb{A}}) \) for \( {\mathbb{A}} \) the adeles? One example we'll consider is the Brauer-Manin obstruction.
:::

::: {.remark title="Topic 4: effectiveness and decidability questions."}
Given a variety \( X_{/ {{\mathbb{Q}}}}  \), is there an actual algorithm that decides if \( X({\mathbb{Q}})= \emptyset \)? This is known over \( {\mathbb{Z}} \), but open for \( {\mathbb{Q}} \) and most (not all) number fields. Are there special classes of varieties where the answer of yes? For curves, this is only known contingent on open problems (the abc conjecture, the section conjecture, Birch-Swinnerton-Dyer, etc).

Given a special \( X_{/ {k}}  \) can you find \( X(k) \)?
:::

::: {.remark}
Other possible topics:

-   The Mordell-Weil theorem for \( X \) an abelian variety, and a generalization, the Néron-Lang theorem which works over other fields.
-   Falting's theorem, that curves of genus 2 have finitely many rational points.
:::

## Examples of Hasse Principles

::: {.example title="?"}
Let \( a\in {\mathbb{Q}} \), does \( x^2 = a \) satisfy a local to global principle? This is related to Chebotarev density.

Claim: any positive number \( a \) such that \( v_p(a) \) is even for all \( p \) is necessarily a square. This follows from writing \( a = \pm \prod p_i^{n_i} \) where \( n_i\in {\mathbb{Z}} \) and is equal to zero for all but finitely many \( i \), then its square root is obtained by halving all of the \( n_i \). Note that \( a \in ({\mathbb{R}}^{\times})^2 \) implies \( a \) is positive, and \( a\in ({ {\mathbb{Q}}_p }^{\times})^2 \) implies that \( n_p \) is even.
:::

::: {.example title="?"}
Let \( a\in {\mathbb{Q}} \) and take \( x^n=a \), or more generally \( f(x) = a \) for \( f\in {\mathbb{Q}}[x] \), where \( f(x) - a \) is irreducible. Corollary of Chebotarev density: the set of primes where \( f-a\operatorname{mod}p \) has no linear factors has positive density. This means that an even stronger theorem is true: there exists a \( c<1 \) such that if \( f-a \) has no roots \( \operatorname{mod}p \) for a set of primes of density \( d>c \), then \( f-a \) has no roots. So this satisfies the Hasse principle.
:::

::: {.example title="Conics"}
Take \( X \coloneqq V(ax^2+by^2 +cz^2) \subseteq {\mathbb{P}}^2 \) for \( a,b,c\in {\mathbb{Q}} \). This also satisfies the Hasse principle, but the proof is harder. Note that \( x^2+y^2+z^2 = 0 \) has no rational points (excluding zero since we're in \( {\mathbb{P}}^2 \)) since it has no solutions over \( {\mathbb{R}} \). It is potentially dense, noting that one can take \( {\mathbb{Q}}[i] \) over \( {\mathbb{Q}} \) and get rational points \( 0, 1, \infty \). Given one point, one can stereographically project to yield infinite many points by just taking lines through the fixed point and letting slopes vary.

```{=tex}
\todo[inline]{Something about using ${\mathcal{O}}(1)$ to give an embedding into ${\mathbb{P}}^1$. Start with ${\mathcal{O}}(-1)$, dualize, project?}
```
:::

::: {.example title="Severi-Brauer varieties"}
Taking \( X_{/ {k}}  \) such that \( X_{/ {\mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu}}  \cong {\mathbb{P}}^n_{/ {\mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu}}  \) satisfy the Hasse principle.
:::

::: {.example title="Quadrics"}
A theorem by Hasse-Minkowski shows that these also satisfy the Hasse principle.
:::

::: {.example title="Genus 1 curves"}
The **Selmer curve** \( 3x^3 + 4y^3 + 5z^3=0 \) does *not* satisfy the Hasse principle, which can be understood in terms of the Tate-Shafarevich group or Brauer-Manin obstructions.
:::

::: {.remark}
Note that it doesn't make sense to say a single variety satisfies the Hasse principle, but rather a class. But it makes sense to say a single variety *doesn't*.
:::

::: {.remark}
A common generalization is that these are all torsors for an algebraic group, i.e. a homogeneous space, for which there are cohomological methods to understand the Hasse principle.
:::

::: {.remark}
A variety \( X_{/ {k}}  \) is *geometrically integral* in the affine case if when \( X = V(f_1,\cdots, f_n) \), the ring \( \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu[x_1,\cdots, x_n] \) is an integral domain.
:::

::: {.theorem title="?"}
Suppose \( K \) is a number field and \( X_{/ {K}}  \) is geometrically integral. Then \( X(K_v) \neq \emptyset \) for all but finitely many \( v \).
:::

::: {.proof title="Sketch/idea"}
```{=tex}
\envlist
```
1.  Write \( X = V(f_1, \cdots, f_n) \) with a nonempty smooth locus \( X^{{\mathsf{sm}}} \subseteq X \) which is a variety (just adjoin inverses of partial derivatives appearing in minors of Jacobian matrices). So \( X^{{\mathsf{sm}}}/{\mathcal{O}}_{K, S} = {\mathcal{O}}_K\left[ {1\over N} \right] \) which is smooth over \( {\mathcal{O}}_{K, S} \)
2.  Use Lang-Weil to show that \( X^{\mathsf{sm}}({\mathcal{O}}_{K, S} / {\mathfrak{p}}) \neq \emptyset \) for almost all \( {\mathfrak{p}} \).
3.  Use smoothness and Hensel's lemma to get \( X^{{\mathsf{sm}}}({\mathcal{O}}_{K, S}{ {}^{ \widehat{{\mathfrak{p}}} } }) \).
:::

# Tuesday, August 24

::: {.remark}
Last time: if \( K \) is a number field and \( X_{/ {K}}  \) is geometrically irreducible, then \( X(K_v) \neq \emptyset \) for almost all \( v \).
:::

::: {.proof title="?"}
Choose \( X_{/ {{\mathcal{O}}_K{ \left[ { \scriptstyle \frac{1}{N} } \right] }}}  \) such that \( X \) has geometrically integral fibers. It's enough to show that \( X(K(v)) \neq \emptyset \) for almost all \( v \), where \( K(v) \) is the residue field at finite places \( v \).

Now use the following theorem:
:::

::: {.theorem title="Lang-Weil Estimates"}
If \( X \) over \( {\mathcal{O}}_K{ \left[ { \scriptstyle \frac{1}{N} } \right] } \) is geometrically integral, then
\[
\# X({\mathbb{F}}_{q^k}) = ( 1 + O(q^{1\over 2}) ) q^{k\dim X}
.\]
:::

::: {.claim}
If \( X_{/ {{\mathcal{O}}_{K_v}}}  \) is smooth then
\[
X(K(v)) \neq \emptyset
\implies
X(K_v) \neq \emptyset
.\]
:::

::: {.proof title="?"}
Use

-   Slice and Hensel, or the formal smoothness criterion, i.e. 

```{=tex}
\begin{tikzcd}
    {\operatorname{Spec}R} && X \\
    \\
    {\operatorname{Spec}R'} && Y
    \arrow["{\mathsf{sm}}", from=1-3, to=3-3]
    \arrow["{ \operatorname{cl}} ", from=1-1, to=3-1]
    \arrow[from=1-1, to=1-3]
    \arrow["\exists"{description}, dashed, from=3-1, to=1-3]
    \arrow[from=3-1, to=3-3]
\end{tikzcd}
```
Taking \( R \coloneqq R'/I \) with \( I \) nilpotent.

> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXHNwZWMgUiJdLFswLDIsIlxcc3BlYyBSJyJdLFsyLDIsIlkiXSxbMiwwLCJYIl0sWzMsMiwiXFxzbW9vdGgiXSxbMCwxLCJcXGNsIl0sWzAsM10sWzEsMywiXFxleGlzdHMiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMSwyXV0=)

See Hartshorne chapter 3, in the exercises!
:::

::: {.remark}
As a black box, we'll use that this is true for \( \dim_{{{\mathcal{O}}_{K_v}}} X = 1 \), i.e. for curves. This follows from the Weil conjectures for curves, see Severi/Bombieri. If \( X \) is genus \( g \), then in fact we have a finer estimate:
\[
{\left\lvert { \# X({\mathbb{F}}_{q^k}) - q^n } \right\rvert} \leq q^{1\over 2} + 1
.\]
:::

::: {.proof title="?"}
We'll show this for \( \dim_{{\mathcal{O}}_K{ \left[ { \scriptstyle \frac{1}{n} } \right] }} = 2 \). Idea: try to fiber with curves.

-   Suppose \( \operatorname{reldim}X = 1 \) for \( X \to S \) over \( {\mathcal{O}}_K{ \left[ { \scriptstyle \frac{1}{n} } \right] } \) where \( S \) is a curve with geometrically integral fibers.

-   Without loss of generality, \( X\to S \) where

    -   \( S \) is smooth of genus \( g' \),

    -   \( X/S \) is smooth with fibers of genus \( g \).

    -   Now take the count

    \[
    X({\mathbb{F}}_{q^k}) 
    &= (1 + O_{g'}(q^{- {k \over 2} }) )q\cdot (1 + O_g(q^{- {k\over 2} }))q \\
    &= (1 + O_{g, g'}(q^{- {k\over 2} }))q^2
    .\]

-   Such an \( X\to S \) after replacing \( X \) by an open subvariety. The proof of this follows from [Bertini](https://www.wikiwand.com/en/Theorem_of_Bertini): for \( X \subseteq {\mathbb{P}}^n \), take geometric projections and delete the singular locus. The fibers are slices by hyperplanes, and thus the fibers are geometrically integral.
:::

## Brauer Groups

::: {.remark}
Some upcoming topics:

-   Severi-Brauer varieties (so \( X_{/ {K}}  \) where \( X_{/ {\mkern 1.5mu\overline{\mkern-1.5muK\mkern-1.5mu}\mkern 1.5mu}}  \cong {\mathbb{P}}^n \)) satisfy the Hasse principle. Implies Hasse-Minkowski!

-   The Brauer-Manin obstruction to the Hasse principle.
:::

### The Brauer-Manin Obstruction

::: {.remark}
Setup:

-   \( X \) is a variety,
-   \( \mathop{\mathrm{Br}}(X) \) is an abelian group
-   Given \( X \xrightarrow{f} Y \), there is an induced map \( f^*: \mathop{\mathrm{Br}}(Y)\to \mathop{\mathrm{Br}}(X) \).

For \( K \) a number field (which we can view as a variety with a single point), we have
\[
\mathop{\mathrm{Br}}(K_v)
= 
\begin{cases}
{\mathbb{Q}}/{\mathbb{Z}}&  v \text{ finite}
\\
{\mathbb{Z}}/2 & v \text{ real}
\\
0 & v \text{ complex},
\end{cases}
\]
which fits into a SES
\[
0 \to \mathop{\mathrm{Br}}(K) \to \bigoplus_v \mathop{\mathrm{Br}}(K_v) \xrightarrow{\Sigma} {\mathbb{Q}}/{\mathbb{Z}}\to 0
.\]
Note that most of the terms in the middle sum are \( {\mathbb{Q}}/{\mathbb{Z}} \), making \( \mathop{\mathrm{Br}}(K) \) a large group.
:::

::: {.remark}
The yoga of the Hasse principle says we should try to solve things in adelic points first. Write
\[
{\mathbb{A}}_K = \prod_v' (K_v, {\mathcal{O}}_v) \subseteq \prod_v K_v
\]
where we take the restricted product. There is a map \( X(K)\to X({\mathbb{A}}_K) \), and taking \( \alpha\in \mathop{\mathrm{Br}}(X) \) one gets a map \( \alpha^*: X(K) \to \mathop{\mathrm{Br}}(K) \). This yields a diagram

```{=tex}
\begin{tikzcd}
    {X(K)} && {X({\mathbb{A}}_K)} \\
    \\
    {\mathop{\mathrm{Br}}(X)} && {\mathop{\mathrm{Br}}({\mathbb{A}}_k) \cong \bigoplus_v \mathop{\mathrm{Br}}(K_v)}
    \arrow["{\alpha^*}", from=1-1, to=3-1]
    \arrow["{\tilde\alpha^*}", from=1-3, to=3-3]
    \arrow[from=1-1, to=1-3]
    \arrow[from=3-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJYKEspIl0sWzAsMiwiXFxCcihYKSJdLFsyLDAsIlgoXFxBQV9LKSJdLFsyLDIsIlxcQnIoXFxBQV9rKSBcXGNvbmcgXFxiaWdvcGx1c192IFxcQnIoS192KSJdLFswLDEsIlxcYWxwaGFeKiJdLFsyLDMsIlxcdGlsZGVcXGFscGhhXioiXSxbMCwyXSxbMSwzXV0=)

Using that \( \Sigma: \mathop{\mathrm{Br}}({\mathbb{A}}_K) \to {\mathbb{Q}}/{\mathbb{Z}} \), for a fixed \( \alpha\in \mathop{\mathrm{Br}}(K) \),
\[
X(K) \subseteq (\Sigma \circ \tilde \alpha)^{-1}(0) \subseteq X({\mathbb{A}}_K)
,\]
and \( (\Sigma \circ \tilde\alpha)^{-1}(0) = X({\mathbb{A}}_K)^\alpha \). Thus the Hasse principle is violated if \( X({\mathbb{A}}_K) \) is nonempty but \( X({\mathbb{A}}_K)^\alpha \) is empty. More generally, it's violated if
\[
X({\mathbb{A}}_K)^{\mathop{\mathrm{Br}}}
\coloneqq
\displaystyle\bigcap_{\alpha\in \mathop{\mathrm{Br}}(X)} X({\mathbb{A}}_K)^{\alpha} = \emptyset
.\]
:::

### The Hasse Principle for Severi-Brauers

::: {.remark}
Let \( X_{/ {K}}  \) be a Severi-Brauer, then \( [X] \in \mathop{\mathrm{Br}}(K) \) and \( X\cong {\mathbb{P}}^n_{/ {K}}  \iff [X] = 0 \). Using that
\[
\oplus \iota_v: \mathop{\mathrm{Br}}(K) \hookrightarrow\bigoplus_v \mathop{\mathrm{Br}}(K_v)
,\]
we have
\[
[X] = 0 \iff \iota_v(X) = 0\,\, \forall v
&& \text{since } \iota_v(X) = [X_{K_v}] \in \mathop{\mathrm{Br}}(K_v)
.\]
:::

::: {.fact}
It turns out that \( X\cong {\mathbb{P}}^n \iff X(K) \neq \emptyset \).
:::

## Brauer Groups and Galois Cohomology

::: {.definition title="Brauer Groups"}
Let \( K \in \mathsf{Field} \), then
\[
\mathop{\mathrm{Br}}(K) \coloneqq H^2_{ \mathsf{Gal}} (K, \mkern 1.5mu\overline{\mkern-1.5muK\mkern-1.5mu}\mkern 1.5mu^{\times}) = H^2_{{\mathsf{Grp}}}({ \mathsf{Gal}} (K^s/K), (K^s)^{\times})
.\]
:::

::: {.remark}
Let \( G \in {\mathsf{Grp}} \) be discrete, so we're not considering any topology on it. Let \( M \in {\mathsf{G}{\hbox{-}}\mathsf{Mod}} \), or equivalently \( M\in \mathsf{{\mathbb{Z}}[G]}{\hbox{-}}\mathsf{Mod} \).

We can take invariants and coinvariants:
\[
M^G &\coloneqq\left\{{m\in M {~\mathrel{\Big|}~}gm=m \,\, \forall g\in G }\right\} = \mathop{\mathrm{Hom}}_{{\mathbb{Z}}[G]}({\mathbb{Z}}, M) \\
M_G &\coloneqq M /\left\langle{\left\{{gm-m {~\mathrel{\Big|}~}g\in G}\right\}}\right\rangle = {\mathbb{Z}}\otimes_{{\mathbb{Z}}[G]} M
.\]
These are the largest submodules/quotient modules respectively on which \( G \) acts trivially.
:::

::: {.exercise title="?"}
Why are these equal to homs and tensors respectively?
:::

::: {.definition title="Group cohomology"}
\[
H^i(G; M) &\coloneqq\operatorname{Ext} ^i_{{\mathbb{Z}}[G]}({\mathbb{Z}}; M)\\
H_i(G; M) &\coloneqq\operatorname{Tor}_i^{{\mathbb{Z}}[G]}({\mathbb{Z}}; M)
.\]
:::

::: {.example title="Cyclic groups"}
For \( G\coloneqq{\mathbb{Z}} \), we have \( {\mathbb{Z}}[G] = {\mathbb{Z}} { \left[ {x, x^{-1}} \right] }  \). Take a projective resolution
\[
0 \to {\mathbb{Z}}[G] \xrightarrow{\cdot (x-1)} {\mathbb{Z}}[G] \xrightarrow{x\mapsto 1} {\mathbb{Z}}\to 0
.\]

Deleting the augmentation and applying \( \mathop{\mathrm{Hom}}_{{\mathbb{Z}}[G]}({-}, {\mathbb{Z}}) \) yields \( 0\to {\mathbb{Z}}\xrightarrow{f: \cdot (x-1)} {\mathbb{Z}}\to 0 \), and noting that \( x \) acts by 1, \( f \) is the zero map. This yields
\[
H^*(G; {\mathbb{Z}}) &=
\begin{cases}
{\mathbb{Z}}&  * = 0, 1
\\
0 & \text{else}.
\end{cases}
\\
H_*(G; {\mathbb{Z}}) &=
\begin{cases}
{\mathbb{Z}}&  * = 0, 1
\\
0 & \text{else}.
\end{cases}
\]
:::

# Group Cohomology (Thursday, August 26)

> See Cassels-Frohlich, Stein, etc for group cohomology.

## Computing Examples

::: {.example}
For \( G={\mathbb{Z}} \), take the resolution
\[
0 \to {\mathbb{Z}}[x, x^{-1}] \xrightarrow{x-1} {\mathbb{Z}}[x, x^{-1}] \to 0
.\]
Then \( H_*(G; {\mathbb{Z}})= H^*(G;{\mathbb{Z}}) \) is \( {\mathbb{Z}} \) in degrees 0 and 1, and 0 otherwise. For \( M\in {\mathsf{G}{\hbox{-}}\mathsf{Mod}} \), we have
\[
H^*(G; M) = H^*(M \xrightarrow{x-1} M)
=
\begin{cases}
M^G &  *=0
\\
M_G & * = 1
\\
0 & \text{else},
\end{cases}
\\
H_*(G; M) = H_*(M \xrightarrow{x-1} M)
=
\begin{cases}
M_G &  *=0
\\
M^G & * = 1
\\
0 & \text{else}.
\end{cases}
\]
:::

::: {.example title="?"}
For \( G = {\mathbb{Z}}/n \), write \( \sigma \) as the generator so that \( {\mathbb{Z}}[G] = {\mathbb{Z}}[\sigma] / \left\langle{\sigma^n - 1}\right\rangle \) We can take a resolution
\[
\cdots \to
{\mathbb{Z}}[\sigma]/ \left\langle{\sigma - 1}\right\rangle
\xrightarrow{\sigma - 1} 
{\mathbb{Z}}[\sigma]/ \left\langle{\sigma - 1}\right\rangle
\xrightarrow{1 + \sigma + \cdots + \sigma^{n-1}} 
{\mathbb{Z}}[\sigma]/ \left\langle{\sigma - 1}\right\rangle
\xrightarrow{\sigma - 1} 
{\mathbb{Z}}[\sigma]/ \left\langle{\sigma - 1}\right\rangle
\to 0
.\]

Now apply \( \mathop{\mathrm{Hom}}_{{\mathbb{Z}}[G]}({-}, {\mathbb{Z}}) \), use that \( \mathop{\mathrm{Hom}}_{{\mathbb{Z}}[G]}({\mathbb{Z}}[G], {\mathbb{Z}}) = {\mathbb{Z}} \), and take homology of the complex
\[
{\mathbb{Z}}\xrightarrow{\sigma - 1} {\mathbb{Z}}\xrightarrow{\sum \sigma^i} \to {\mathbb{Z}}\xrightarrow{\sigma - 1} \cdots
{\mathbb{Z}}\xrightarrow{0} {\mathbb{Z}}\xrightarrow{n} \to {\mathbb{Z}}\xrightarrow{0} \cdots
.\]
This yields
\[
H^*(G; {\mathbb{Z}}) = 
\begin{cases}
{\mathbb{Z}}& *=0 
\\
0 & * \text{ odd}
\\
{\mathbb{Z}}/n & * \text{ even}.
\end{cases}
\]
:::

::: {.remark}
For the free abelian group \( {\mathbb{Z}}^n \), we get \( H^*({\mathbb{Z}}^n; {\mathbb{Z}}) = \bigwedge\nolimits^* ({\mathbb{Z}}^n) \). For the free group \( F_n \), we get \( H^*(F_n; {\mathbb{Z}}) \) is \( {\mathbb{Z}} \) in degree zero (always true for the trivial module, since the invariants are everything) and \( {\mathbb{Z}}^n \) in degree 1.
:::

::: {.fact}
If \( X \) is a CW complex with \( \pi_0(X) = 0, \pi_1(X) = G, \pi_{>2}(X) = 0 \), then \( H^*_{{\mathsf{Grp}}}(G; {\mathbb{Z}}) = H^*_{{\operatorname{Sing}}}(X; {\mathbb{Z}}) \). Note that \( X \xrightarrow{\sim} {\mathbf{B}}G \) in this case, and the proof is easy: take the universal cover, then the simplicial/cellular cohomology resolves \( {\mathbb{Z}} \) as a \( {\mathbb{Z}}[G]{\hbox{-}} \)module.
:::

::: {.proposition title="?"}
Suppose \( G \) is finite and \( M\in {\mathsf{G}{\hbox{-}}\mathsf{Mod}} \), then \( H^{>n}(G; M) \) is torsion. 1. It suffices to show this for \( *=1 \) by using dimension shifting. Choose \( M \hookrightarrow I \) into an injective object to get a SES
\[
  0 \to M\to I \to M/I \to 0
 \]
to get a LES in cohomology, and use that \( \operatorname{Ext}  \) into injectives vanishes to get \( H^*(G; M) \cong H^{*}(G; M/I)[-1] \).

2.  We want to show \( H^1(G; M) = \operatorname{Ext} _{{\mathbb{Z}}[G]}^1({\mathbb{Z}}; M) \) is torsion, and it suffices to show \( \operatorname{Ext} ^1_{{\mathbb{Z}}[G]}({\mathbb{Z}}; M)\otimes{\mathbb{Q}}= 0 \), which we can replace with \( \operatorname{Ext} _{{\mathbb{Z}}[G]}^1({\mathbb{Q}}, M \otimes{\mathbb{Q}}) \). So we consider SESs of the form
    \[
      0 \to M\otimes Q \to W \to {\mathbb{Q}}
      ,\]
    which we'd like to split as a SES of \( G{\hbox{-}} \)representations over \( {\mathbb{Q}} \).

See uniquely divisible groups?

This splits by Maschke's theorem: all SESs of irreducible representations of \( G \) for \( G \) finite over \( \operatorname{ch}k = 0 \) split. The usual proof over \( {\mathbb{C}} \) doesn't work for \( {\mathbb{Q}} \), but one uses a splitting instead of an inner product.
:::

## Functoriality

::: {.remark}
Given \( M\to N \in {\mathsf{G}{\hbox{-}}\mathsf{Mod}} \) there are maps
\[
H^*(G; M) &\to H^*(G; N) \\
H_*(G; M) &\to H_*(G; N)
.\]
Suppose \( \iota: G\to T \) with \( M\in {\mathsf{T}{\hbox{-}}\mathsf{Mod}} \), then there are induced maps
\[
\iota^*: H^*(T; M) &\to H^*(G; M) \\
\iota_*: H_*(T; M) &\to H_*(G; M)
\]
coming from the functoriality of Ext and Tor under change of rings.

We'll use the following as a black box: for \( G\leq T \) finite index, there is a *trace* map (or *corestriction*)
\[
\operatorname{tr}_{G/T}: H^*(G; M) \to H^*(T; M)
.\]
It's functorial in \( M \), and \( \operatorname{tr}_{G/T} \circ \iota^* \) is multiplication by \( m \coloneqq[G: T] \). This yields another proof of the previous element: take \( G = 1 \) to get \( H^*(G; M) = 0 \) and check \( \operatorname{tr}_{G/T} \circ \iota_* \) is multiplication by \( {\left\lvert {T} \right\rvert} \) and zero, making the group torsion.
:::

::: {.remark}
Some interpretations:

-   \( H_1(G; {\mathbb{Z}}) = G^{\operatorname{ab}}= G/[G, G] \) is the abelianization (which can still be torsion).
-   \( H^1(G; {\mathbb{Z}}) = \mathop{\mathrm{Hom}}_{{\mathsf{Grp}}}(G;{\mathbb{Z}}) \), which is always torsionfree.
-   \( H^2(G; M) \) classifies extensions of \( G \) by \( M \) in the following sense: \( G' \) occurring in a "SES" \( \xi: 0\to M\to G' \to G\to 1 \) such that the action of \( G \) on \( M \) by conjugation is the given \( G{\hbox{-}} \)module structure on \( M \). Moreover \( \xi = 0 \) in \( H^2(G; M) \) iff \( \xi \) splits, then \( G' \cong G \rtimes M \). For \( M \) a trivial \( G{\hbox{-}} \)module, these are *central extensions*.
:::

::: {.warnings}
Note all SESs yield semidirect products: take \( 0\to {\mathbb{Z}}\xrightarrow{\cdot n} {\mathbb{Z}}\to {\mathbb{Z}}/n \to 0 \), which has no sections since \( {\mathbb{Z}} \) has no \( n{\hbox{-}} \)torsion. This in fact represents a generator \( H^2({\mathbb{Z}}/n; {\mathbb{Z}}) \).
:::

::: {.definition title="Galois cohomology"}
Let \( L_{/ {k}}  \) be a finite Galois extension, \( M\in {\mathsf{G}{\hbox{-}}\mathsf{Mod}} \) for \( G\coloneqq{ \mathsf{Gal}} (L_{/ {k}} ) \). Then
\[
H^*_{ \mathsf{Gal}} (L_{/ {k}} ; M) \coloneqq H^*_{\mathsf{Grp}}(G; M)
.\]
If \( M \) is a discrete continuous \( { \mathsf{Gal}} (k^s/K){\hbox{-}} \)module, then
\[
H^i(k; M) \coloneqq\colim_{U {~\trianglelefteq~}{ \mathsf{Gal}} (k^s/k)} H^*( { \mathsf{Gal}} (k^s/k) / U; M)
.\]
:::

> The stabilizer of any point is open (and finite index).

::: {.definition title="Brauer Groups"}
\[
\mathop{\mathrm{Br}}(k) = H^2(K; (k^s )^{\times})
.\]
:::

::: {.example title="?"}
Consider \( \mathop{\mathrm{Br}}({\mathbb{F}}_q) \), then \( { \mathsf{Gal}} ({\mathbb{F}}_q^s/{\mathbb{F}}_q) = \widehat{{\mathbb{Z}}} \left\langle{\mathop{\mathrm{Frob}}_q}\right\rangle \). Then
\[
\mathop{\mathrm{Br}}({\mathbb{F}}_q) 
&\coloneqq H^2\qty{\widehat{{\mathbb{Z}}}\left\langle{\mathop{\mathrm{Frob}}_q}\right\rangle; \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_q ^{\times}} \\
&=\colim_{U_n \subseteq \widehat{{\mathbb{Z}}}\to \widehat{{\mathbb{Z}}}\to {\mathbb{Z}}/n} H^2\qty{ {\mathbb{Z}}/n; (\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_q^{\times})^{U_n}}\\
&=\colim H^2\qty{ {\mathbb{Z}}/n \left\langle{\mathop{\mathrm{Frob}}_q}\right\rangle; \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_{q^n}^{\times}} \\
&=\colim H^2( { \mathsf{Gal}} ({\mathbb{F}}_{q^n} / {\mathbb{F}}_q); \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_{q^n}^{\times}) \\
&= \colim H^2 \qty{
  {\mathbb{F}}_{q^n}^{\times}\xrightarrow{\mathop{\mathrm{Frob}}- 1} {\mathbb{F}}_{q^n}^{\times}\xrightarrow{\operatorname{Nm}} {\mathbb{F}}_{q^n}^{\times}\to \cdots 
} \\
&= \colim {\mathbb{F}}_q^{\times}/ \operatorname{Nm}({\mathbb{F}}_{q^n}, {\mathbb{F}}_q) {\mathbb{F}}_{q^n}^{\times}\\
&= \colim 0 \\
&= 0
.\]

Note: we've used that
\[
\ker (\mathop{\mathrm{Frob}}- 1: x\mapsto x^{q-1}) = {\mathbb{F}}_q^{\times}
.\]
:::

::: {.exercise title="?"}
Show that the norm is surjective.
:::

# Tuesday, August 31

::: {.remark}
Today: a systematic way to compute group cohomology by taking standard resolution. For a fixed group \( G \), we want to resolve \( {\mathbb{Z}} \) by free \( {\mathbb{Z}}[G]{\hbox{-}} \)modules, so take a simplicial resolution

```{=tex}
\begin{tikzcd}
    \cdots
    \stackar{7}[r]
    &
    G{ {}^{ \scriptscriptstyle\times^{3} }  }
    \stackar{5}[r]
    &   
    G^{ {}^{ \scriptscriptstyle\times^{2} }  }
    \stackar{3}[r]
    &
    G
\end{tikzcd}
```
Taking free \( {\mathbb{Z}}{\hbox{-}} \)modules yields

```{=tex}
\begin{tikzcd}
    \cdots
    \stackar{7}[r]
    &
    {\mathbb{Z}}[G{ {}^{ \scriptscriptstyle\times^{3} }  }]
    \stackar{5}[r]
    &   
    {\mathbb{Z}}[G { {}^{ \scriptscriptstyle\times^{2} }  }]
    \stackar{3}[r]
    &
    {\mathbb{Z}}[G]
\end{tikzcd}
```
Note that this is a simplicial set whose realization is \( EG \).
:::

::: {.proposition title="?"}
\( C_\bullet(G) \) is exact, and \( {\mathbb{Z}}[G{ {}^{ \scriptscriptstyle\times^{n} }  }] \) is free in \( {\mathsf{{\mathbb{Z}}[G]}{\hbox{-}}\mathsf{Mod}} \) where \( G\curvearrowright G{ {}^{ \scriptscriptstyle\times^{n} }  } \) diagonally and this extends linearly.
:::

::: {.proof title="?"}
\( {\mathbb{Z}}[G { {}^{ \scriptscriptstyle\times^{n} }  }] \) is a free \( {\mathbb{Z}}[G]{\hbox{-}} \)module, using that \( \left\{{(1, g_1, \cdots, g_{n-1}) {~\mathrel{\Big|}~}g_k \in G}\right\} \) is a free basis, since these are representatives for \( G{\hbox{-}} \)orbits on \( G{ {}^{ \scriptscriptstyle\times^{n} }  } \).

That this is an exact complex will follow from a nullhomotopy \( h: {\mathbb{Z}}[G{ {}^{ \scriptscriptstyle\times^{n-1} }  }] \to {\mathbb{Z}}[G{ {}^{ \scriptscriptstyle\times^{n} }  }] \) so that \( hd + dh = \operatorname{id} \). Take the map \( h(g_1, \cdots, g_n) = (e, g_1, \cdots, g_n) \), then
\[
(hd)(g_1, \cdots, g_n) 
&= h \sum (-1)^i (g_1, \cdots, \widehat{g}_i, \cdots, g_n)\\
&= \sum (-1)^i (e, g_1, \cdots, \widehat{g}_i, \cdots, g_n)
.\]
and
\[
(dh)(g_1, \cdots, g_n)
&= d (e, g_1, \cdots, g_n) \\
&= (g_1,\cdots, g_n) - \sum (-1)^i (e, g_1, \cdots, \widehat{g}_i, \cdots, g_n)
,\]
and adding these two cancels the two summed terms and yields the identity.

Then just recall from homological algebra that \( x \in \ker d \) implies \( x = hdx + dhx = dhx \), so \( x\in \operatorname{im}d \), so this makes the complex exact.
:::

::: {.corollary title="?"}
For \( G \in {\mathsf{Grp}} \) discrete and \( M\in {\mathsf{G}{\hbox{-}}\mathsf{Mod}} \),
\[
H^*(G; M) &= H^*( \operatorname{Hom}^{\bullet}_{{\mathbb{Z}}[G]}(C_\bullet(G), M) ) \\
H_*(G; M) &= H^*( M \otimes_{{\mathbb{Z}}[G]} C_\bullet(G) )
.\]
:::

::: {.remark}
Can we find a smaller way to represent this? Note that
\[
{\mathbb{Z}}[G^{\times n}] = \bigoplus_{(g_1, \cdots, g_n) \in G^{n-1}} {\mathbb{Z}}[G](1, g_1, \cdots, g_{n-1})
,\]
and there is a free/forgetful adjunction between modules and sets that yields
\[
\mathop{\mathrm{Hom}}_{{\mathbb{Z}}[G]}( {\mathbb{Z}}[G { {}^{ \scriptscriptstyle\times^{n} }  } ], M ) \cong \mathop{\mathrm{Hom}}_{{\mathsf{Set}}}(G{ {}^{ \scriptscriptstyle\times^{n-1 } }  }, M)
.\]
:::

::: {.definition title="Reduced Complex"}
For \( G\in {\mathsf{Grp}} \) discrete and \( M\in {\mathsf{G}{\hbox{-}}\mathsf{Mod}} \), set
\[
\tilde C^r(G; M) \coloneqq\mathop{\mathrm{Hom}}_{{\mathsf{Set}}}(G { {}^{ \scriptscriptstyle\times^{r} }  }, M)
.\]
The boundary maps are given by
\[
\delta: \tilde C^0(G, M) &\to \tilde C^1(G, M) \\
\delta f( \sigma) &= \sigma f({-}) - f({-})
\\ \\ 
\delta: \tilde C^1(G, M) &\to \tilde C^2(G, M) \\
\delta f( \sigma, \tau) &= \sigma f(\tau) - f(\sigma \tau) + f(\sigma)
\\ \\
\delta: \tilde C^2(G, M) &\to \tilde C^3(G, M) \\
\delta f( \sigma, \tau, \rho) &= \sigma f(\tau, \rho) - f(\sigma\tau, \rho) + f(\sigma, \tau\rho) - f(\sigma, \tau) 
.\]
The pattern is multiply by \( \sigma \) on the outside, cycle through multiplying it to each argument, and for the last term leave \( \sigma \) off.
:::

::: {.remark}
Punchline: in principle, group cohomology is computable -- however, the complex is quite large and not practical for large groups.
:::

## Some Formal Properties

::: {.proposition title="Spectral Sequences"}
For \( H{~\trianglelefteq~}G \) and \( M\in {\mathsf{G}{\hbox{-}}\mathsf{Mod}} \), the **Hochschild-Serre spectral sequence** reads
\[
E_2^{p, q} = H^p( G/H; H^q(H; M)) \Rightarrow H^{p+q}(G; M)
.\]
:::

::: {.remark}
This is useful for inducting on the lengths of composition series, since e.g. for solvable groups one can take \( G/H \) to be cyclic and \( H \) a smaller solvable group.
:::

::: {.proposition title="Inflation/Restriction Exact Sequence"}
This spectral sequence induces an **inflation/restriction exact sequence**

```{=tex}
\begin{tikzcd}
    0 \\
    {H^1\qty{ {G \over H}; M^H}} && {H^1\qty{G; M}} && {H^1\qty{H; M}^{G\over H}} \\
    \\
    {H^2\qty{ {G \over H}; M^H}} && {H^2\qty{G; M}}
    \arrow[from=1-1, to=2-1]
    \arrow[from=2-1, to=2-3]
    \arrow[from=2-3, to=2-5]
    \arrow[from=2-5, to=4-1, out=0, in=180]
    \arrow[from=4-1, to=4-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwxLCJIXjFcXHF0eXsge0cgXFxvdmVyIEh9OyBNXkh9Il0sWzIsMSwiSF4xXFxxdHl7RzsgTX0iXSxbNCwxLCJIXjFcXHF0eXtIOyBNfV57R1xcb3ZlciBIfSJdLFswLDMsIkheMlxccXR5eyB7RyBcXG92ZXIgSH07IE1eSH0iXSxbMiwzLCJIXjJcXHF0eXtHOyBNfSJdLFswLDAsIjAiXSxbNSwwXSxbMCwxXSxbMSwyXSxbMiwzXSxbMyw0XV0=)
:::

::: {.remark}
This comes from the bottom-left corner of the HS spectral sequence, which is a general principle for first quadrant spectral sequences. Note that the \( G/H \) action comes from \( G\curvearrowright H \) by conjugation, which yields a \( G{\hbox{-}} \)action on \( H^* \), and since \( H \) acts trivially on \( H^*(H; M) \) (since e.g. \( M^H \) has a trivial action), this action factors through \( G/H \).
:::

## Forms, Torsors, and \( H^1 \) {#forms-torsors-and-h1}

::: {.definition title="Forms/descent, a pseudo-definition"}
Let \( X_{/ {k}}  \) be an object (e.g. a variety, a group scheme, a variety with extra structure), then a **form** of \( X \) over \( k \) is an object \( X'_{/ {k}}  \) with an isomorphism \( X'_{/ {k^s}}  \xrightarrow{\sim} X \) (i.e. a **descent** of \( X \)).
:::

::: {.example title="?"}
For \( X \coloneqq{\mathbb{P}}^n_{/ {k^s}}  \) then a form of \( X_{/ {k}}  \) is a Severi-Brauer variety, for example a smooth conic.
:::

::: {.example title="Severi Brauers"}
Let \( E \) be a genus 1 curve, then \( E \) is a form for its Jacobian \( \operatorname{Jac}(E) \), i.e. it becomes isomorphic to its Jacobian if it has a rational point. Not every curve has such a point, so they only become isomorphic after base changing to a separable closure. Note that \( \operatorname{Jac}(E) \curvearrowright E \) by addition of divisors (since Jacobians have degree zero, curves have divisors of degree 1, and adding them yields a degree 1 divisor). It is in fact a torsor.
:::

::: {.example title="?"}
If \( L_{/ {k}}  \) is a finite separable extension then \( L \) is a form of \( (k^s){ {}^{ \scriptscriptstyle\times^{n} }  } \).
:::

::: {.example title="?"}
The groups \( {\operatorname{SO}}(p, q)_{/ {{\mathbb{R}}}}  \), the matrices preserving a quadratic form
\[
h_{p, q}\coloneqq\operatorname{diag}(1, \cdots, 1, -1, \cdots, -1)
\]
with \( p \) copies of 1 and \( q \) copies of \( -1 \), and these are all forms of \( {\operatorname{SO}}(p+q)_{/ {{\mathbb{C}}}}  \).
:::

::: {.proposition title="?"}
Suppose \( X_{/ {k}}  \) is some object (e.g. a variety, then forms of \( X_{k^s} \) over \( k \) are canonically in bijection with \( H^1_{{ \mathsf{Gal}} }(k; \mathop{\mathrm{Aut}}(X_{k^s})) \) (recalling that this was defined as a direct limit). Note that this automorphism group may be nonabelian, which we still need to define.
:::

::: {.proof title="?"}
Suppose \( \mathop{\mathrm{Aut}}(X_{k^s}) \) is abelian, then we'll show the following stronger claim:

::: {.claim}
\( X'_L \xrightarrow{\sim} X_L \) since there is a bijection
\[
\left\{{\substack{
  \text{Forms of } X_{k^s} \\
  \text{split by } L _{/ {k}} 
}}\right\}
&\rightleftharpoons
  H^1_{ \mathsf{Gal}} (L_{/ {k}} ; \mathop{\mathrm{Aut}}(X_L))
.\]
:::

::: {.proof title="?"}
Recall that
\[
H^1(L_{/ {k}} ; \mathop{\mathrm{Aut}}(X_L)) = H^1( \tilde C^\bullet({ \mathsf{Gal}} (L/k)); \mathop{\mathrm{Aut}}(X_L) )
.\]
Given \( X'_{/ {k}}  \) split by \( L \), we want a map \( { \mathsf{Gal}} (L/k) \to \mathop{\mathrm{Aut}}(X_L) \). Choose an isomorphism \( X'_L \xrightarrow{\sim} X_L \), noting that Galois acts on the LHS since it's defined over \( k \), which will be different from the natural action on the right-hand side. So we can take a map
\[
f: { \mathsf{Gal}} (L/k) \to \mathop{\mathrm{Aut}}(X'/L) \xrightarrow{\sim} \mathop{\mathrm{Aut}}(X_L)
,\]
although this is not generally a homomorphism.

Instead, \( f(\sigma \tau) = f(\sigma) f(\tau)^\sigma \), a **crossed homomorphism** which involves acting on the coefficients of defining equations (which come from \( L \)). This says that \( f\in \ker \delta \), the differential for \( \tilde C^\bullet \). So we now have a map from forms split by \( L \) to \( H^1({ \mathsf{Gal}} (L/k), \mathop{\mathrm{Aut}}(X_L)) \), and we'll show it's injective and surjective.

 

**Injectivity:** Suppose \( X', X'' \) are isomorphic forms of \( X \), so we have an isomorphism defined over \( k \) of the form \( X_L' \xrightarrow{\sim} X_L'' \).

::: {.exercise title="?"}
This changes \( f \) by an element of the form \( \delta(g) \) for \( g\in \mathop{\mathrm{Aut}}(X_L) \).
:::

**Surjectivity:** Given a crossed homomorphism \( f: { \mathsf{Gal}} (L/k) \to \mathop{\mathrm{Aut}}(X_L) \), we want to produce a form of \( X_{/ {k}}  \) mapping to it. This is the hardest part of the argument!

Suppose \( X_{/ {k}}  \) is a variety. First suppose \( X\in {\mathsf{Aff}}{\mathsf{Var}} \), so \( X = \operatorname{Spec}R \) and \( { \mathsf{Gal}} (L_{/ {k}} )\curvearrowright_f R_L = R \otimes_k L \), which is only an \( L{\hbox{-}} \)semilinear action. Then \( X' = \operatorname{Spec}(R_L)^{{ \mathsf{Gal}} (L/k)} \), and the claim is that \( X_L' \cong X_L \). The proof of this is **Galois descent**, i.e. there is an equivalence of tensor categories
\[
\adjunction{({-}) \otimes L}
{({-})^{{ \mathsf{Gal}} (L_{/ {k}} )} }
{{\mathsf{k}{\hbox{-}}\mathsf{Mod}}^{\otimes} }{{\mathsf{L}{\hbox{-}}\mathsf{Mod}}^{\otimes} + \text{ a semilinear action of } { \mathsf{Gal}} (L_{/ {k}} ) }
\]

Now for general \( X \), one reduces to the case of affines. One can alternatively prove Galois descent without reference to affine varieties.
:::
:::

# Thursday, September 02

## Correspondence of Forms

::: {.remark}
Last time: standard/reduced complexes, forms, and \( H^1 \). A meta-definition for today: let \( k, L \in \mathsf{Field} \) with \( L_{/ {k}}  \) finite and separable, and \( X_{/ {k}}  \) an object over \( k \) (e.g. an algebraic variety, possibly with extra structure). A **form** of \( X_{/ {k}}  \) split by \( L \) is an object \( X' _{/ {k}}  \) of the same class as \( X \) such that \( X_L \xrightarrow{\sim} X_L' \).
:::

::: {.theorem title="A meta-theorem"}
The theorem was that there is a canonical bijection
\[
\left\{{\substack{
  \text{Forms of } X \\ 
  \text{split by } L
}}\right\}
&\rightleftharpoons
H^1_{ \mathsf{Gal}} (L_{/ {k}} ; \mathop{\mathrm{Aut}}_k(X_L))
\]
Note that we didn't assume the coefficients formed an abelian group, so we'll explain this today. It is true that \( \mathop{\mathrm{Aut}}(X_L) \in {\mathsf{{ \mathsf{Gal}} (L_{/ {k}} )}{\hbox{-}}\mathsf{Mod}} \). We'll say that \( X' \) is just **a form** of \( X \) if there exists some \( L' \) finite separable that splits \( k \). In this case there is a correspondence
\[
\left\{{\substack{
  \text{Forms of }X
}}\right\}
&\rightleftharpoons
  H^1_{{ \mathsf{Gal}} }(L_{/ {k}} ; \mathop{\mathrm{Aut}}_k(X_{k^s}) )
\]
:::

::: {.proof title="A meta-proof"}
What is the map? Given a form \( X' \), we by definition have \( F: X_L' \xrightarrow{\sim} X_L \), and we want a map \( { \mathsf{Gal}} (L_{/ {k}} ) \to \mathop{\mathrm{Aut}}_k(X_L) \) such that \( \delta f = 0 \) for the differential in cohomology. Since \( X' \) is defined over \( k \), we have an action \( { \mathsf{Gal}} (L_{/ {k}} )\curvearrowright X_L' \), i.e. a map \( { \mathsf{Gal}} (L_{/ {k}} ) \to \mathop{\mathrm{Aut}}(X_L') \), which we can compose with the given isomorphism to obtain
\[
f: { \mathsf{Gal}} (L_{/ {k}} ) \to \mathop{\mathrm{Aut}}(X_L')\to \mathop{\mathrm{Aut}}(X_L)
.\]
We have \( f( \sigma \tau) = f(\sigma) f(\tau)^\sigma \). What happens if we change the isomorphism \( F \) to some \( F' \), changing by some \( g\in \mathop{\mathrm{Aut}}(X_L) \)

::: {.exercise title="?"}
Here \( f \) changes by a map of the form \( \sigma \to g(g^{-1})^\sigma \).
:::

We'll write an inverse map using Galois descent. Given \( f: { \mathsf{Gal}} (L_{/ {k}} )\to \mathop{\mathrm{Aut}}_k(X_L) \) with \( f(\sigma \tau) = f( \sigma) f( \tau)^{ \sigma} \), we want to construct a form of \( X \). Assume \( X \in {\mathsf{Aff}}{\mathsf{Sch}} \), so \( X = \operatorname{Spec}(A) \) for some \( A\in{\mathsf{Alg}_{/k} } \), then define
\[
X' \coloneqq\operatorname{Spec}(A\otimes_k L)^{{ \mathsf{Gal}} (L_{/ {k}} )}
\]
where the action is given by \( f \).
:::

::: {.remark}
What is \( \mathop{\mathrm{Aut}}_k(X_{/ {L}} ) \) is nonabelian? Then we just make this proof a definition, and set
\[
H^1(L_{/ {k}}  ; G) \coloneqq\left\{{f: { \mathsf{Gal}} (L_{/ {k}} )\to G {~\mathrel{\Big|}~}f( \sigma \tau) = f( \sigma) f( \tau)^{ \sigma} }\right\}/ ( \sigma\to g(g^{-1}) ^{ \sigma})
.\]
Here the maps are of finite discrete groups. This is a pointed set, using the constant map as a basepoint.
:::

## Torsors

::: {.definition title="Torsor"}
Recall that for \( G \in {\mathsf{Alg}}{\mathsf{Grp}}_{/ {k}}  \), a **torsor** for \( G \) (or a *principal homogeneous space*) is

1.  A form of \( G \) under the left action of \( G \) on itself, i.e. a variety \( X \) with a left \( G{\hbox{-}} \)action \( G\times X\to X \) where \( X_L \xrightarrow{ \sim} G_L \) using the left-translation action.
2.  A \( G{\hbox{-}} \)variety \( X \) such that \( G\times X \xrightarrow{\sigma, \pi_2} X\times X \) is an isomorphism.
:::

::: {.claim}
Note that these are equivalent if \( G \) is smooth, which for us will always happen in characteristic zero.
:::

::: {.theorem title="?"}
If \( G \) is smooth, then \( G{\hbox{-}} \)torsors are canonically in bijection with \( H^1(k; G(k^s)) \), and \( G{\hbox{-}} \)torsors split by \( L \) biject with \( H^1(L_{/ {k}} ; G(L)) \).
:::

::: {.exercise title="?"}
Prove this! It suffices to show that \( \mathop{\mathrm{Aut}}_{G_L}(G_L)\cong G_L \) as a \( {\mathsf{Grp}}{\mathsf{Sch}}_{/ {G_L}}  \).
:::

## Example: Kummer Theory

::: {.example title="Kummer theory"}
Suppose \( \mu_p \subseteq k \), so \( k \) contains all \( p \)th roots of unity. Then a \( \mu_p{\hbox{-}} \)torsor is the same as a \( {\mathbb{Z}}/p \) Galois extension of \( k \), where we allow \( k^p =\mu_p \) itself.
:::

::: {.theorem title="?"}
There is a bijection
\[
\left\{{\substack{
  {\mathbb{Z}}/p {\hbox{-}}\text{extensions}
}}\right\}
&\rightleftharpoons
H^1(k; \mu_p)
\]
:::

::: {.proof title="?"}
Use the SES
\[
1 \to \mu_p \to (k^s)^{\times}\xrightarrow{x\mapsto x^p} (k^s)^{\times}\to 1
,\]
which yields a LES
\[
1 \to
H^0(k; \mu_p) \to
H^0(k; (k^s)^{\times}) \xrightarrow{x\mapsto x^p} 
H^0(k; (k^s)^{\times})\to
H^1(k; \mu_p) \to
H^1(k; (k^s)^{\times})
,\]
and identifying terms yields
\[
0 \to k^{\times}/ (k^{\times})^p \to H^1(k; \mu_p) \to H^1(k; (k^s)^{\times})
.\]
:::

::: {.example title="?"}
What is \( H^1(k; (k^s)^{\times}) \)? Use that \( L^{\times}= \mathop{\mathrm{Aut}}(V_{/ {L}} ) \) where \( V \) is a 1-dimensional vector space over \( L \). The claim is that by Galois descent, forms for a vector space split by \( L \) are precisely vector spaces over \( k \), which makes them all trivial. This in fact implies the more general fact that \( H^1(k; \operatorname{GL}_n(k^s)) = 1 \).
:::

::: {.remark}
Kummer theory gives us an explicit form of the map and identifying terms yields
\[
0 \to k^{\times}/ (k^{\times})^p \xrightarrow{x\mapsto k[x^{1\over p} ]} H^1(k; \mu_p) \to H^1(k; (k^s)^{\times})
.\]
This can be found by unwinding the definition of the map from the snake lemma, or noting that the kernel of a map from the absolute Galois group cuts out exactly this field.
:::

## Geometry of Brauer Groups

::: {.example title="of $H^1$"}
\( H^1(k; G) \) are forms of objects with automorphism groups \( G \).

-   Vector spaces are obtained by taking \( G = \operatorname{GL}_n \).
-   Forms of \( {\mathbb{P}}^n \), i.e. Severi-Brauer varieties, come from taking \( G \coloneqq\operatorname{PGL}_{n+1} \).
-   For \( G \) finite, a form of \( G \) is an étale \( k{\hbox{-}} \)algebra (product of separable extensions of \( k \) with total Galois group \( G \)).
    -   For \( G \) simple, these are Galois extensions with Galois group \( G \). For \( G\coloneqq{\mathbb{Z}}/p \), this is Kummer theory.
-   For \( E \) an elliptic curve, all genus 1 curves are torsors for their Jacobian. So genus 1 curves \( C \) with \( \operatorname{Jac}(C) \cong E \) biject with \( H^1(k; E(k^s)) \).
:::

::: {.remark}
We'll now look at \( H^2 \), and there is a correspondence

`\includegraphics{figures/SectionsOne.pdf}`{=tex}

```{=html}
<!--
\begin{tikzpicture}
\node {%
  \(
  H^2(G; A) \mapsvia{\sim} 
  \begin{aligned}
    \left\{
    \begin{tikzcd}
    \xi:\,\, 0 \ar[r] & A \ar[r] & G' \ar[r] & G\ar[r]\ar[l, bend right, "s"'] & 1
    \end{tikzcd}
    \right\}
  \end{aligned}\)
};
\end{tikzpicture}
-->
```
Given a set-theoretic section \( s: G\to G' \), we get a map
\[
f_s: G{ {}^{ \scriptscriptstyle\times^{2} }  } &\to A \\
(g_1, g_2) &\mapsto s(g_1) s(g_2) s(g_1 g_2)^{-1}
.\]
Note that if \( s \) is a group morphism, this is just the constant map.

::: {.claim}
One needs to show the following:

1.  \( \delta f_s = 0 \), so one gets a cocycle.
2.  Changing \( s \) changes \( f_s \) by a coboundary.
3.  Make the inverse.
:::

The group operation here is \( G' \cdot G'' \coloneqq G' { \underset{\scriptscriptstyle {G} }{\times} } G'' / A \), and the multiplication map is
\[
(a_1, g_1) \cdot (a_2, g_2) \coloneqq(a_1 a_2 f_s(g_1, g_2), \, g_1 g_2)
.\]
:::

::: {.remark}
Suppose \( 1\to Z\to H' \to H\to 1 \) is a SES of groups with a \( G{\hbox{-}} \)action such that \( Z \) is in the center of \( H' \). Then there is a "LES"

```{=tex}
\begin{tikzcd}
    1 \\
    \\
    {Z^G} && {(H')^G} && {H^G} \\
    \\
    {H^1(G; Z)} && {H^1(G; H')} && {H^1(G; H)} \\
    \\
    {H^2(G; Z)}
    \arrow[from=1-1, to=3-1]
    \arrow[from=3-1, to=3-3]
    \arrow[from=5-1, to=5-3]
    \arrow[from=3-3, to=3-5]
    \arrow["{\delta_0}"', from=3-5, to=5-1, in=180,out=0]
    \arrow[from=5-3, to=5-5]
    \arrow["{\delta_1}"', from=5-5, to=7-1, in=180, out=0]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMCwwLCIxIl0sWzAsMiwiWl5HIl0sWzIsMiwiKEgnKV5HIl0sWzQsMiwiSF5HIl0sWzAsNCwiSF4xKEc7IFopIl0sWzIsNCwiSF4xKEc7IEgnKSJdLFs0LDQsIkheMShHOyBIKSJdLFswLDYsIkheMihHOyBaKSJdLFswLDFdLFsxLDJdLFs0LDVdLFsyLDNdLFszLDQsIlxcZGVsdGFfMCIsMl0sWzUsNl0sWzYsNywiXFxkZWx0YV8xIiwyXV0=)

Note that some terms here are only sets, so exactness means that differentials surject onto kernels, and \( H^1(G; Z)\curvearrowright H^1(G;H') \) and \( H^1(G; H) \) is the quotient by this action.
:::

::: {.remark}
:::

::: {.definition title="Brauer group"}
Take \( 1\to {\mathbb{G}}_m \to \operatorname{GL}_n \to \operatorname{PGL}_n \to 1 \), then we get a map
\[
H^1(k; \operatorname{PGL}_n(k^s)) \xrightarrow{\iota_n} H^2(k, (k^s)^{\times})
.\]
Then define the **Brauer group** of \( k \) to be
\[
\mathop{\mathrm{Br}}(k) \coloneqq\displaystyle\bigcup_{n} \operatorname{im}(\iota_n)
.\]
:::

::: {.remark}
Studying \( H^2 \) is hard in general, so this fact is the reason we can actually study Brauer groups.

```{=tex}
\todo[inline]{Something about Hilbert 90}
```
This surjection gives us geometric objects to work with. We'll show this is a group next time, along with the following theorem:
:::

::: {.theorem title="?"}
\[
\displaystyle\bigcup_n \operatorname{im}(\iota_n) = H^2(k; (k^s)^{\times})
.\]
:::

# Tuesday, September 07

## Intro: Historical POV on Brauer Groups

::: {.remark}
Last time we defined \( \mathop{\mathrm{Br}}(k) \coloneqq H^2(k; k^{\times}) \) and had a SES
\[
1 \to (k^s)^{\times}\to \operatorname{GL}_n(k^s)\to \operatorname{PGL}_n \to 1
.\]
We identified a subset of \( \operatorname{PGL}_n{\hbox{-}} \)torsors in \( H^1(k; \operatorname{PGL}_n(k^s)) \xrightarrow{\iota_n} H^2(k; (k^s)^{\times}) \), and alternatively defined \( \mathop{\mathrm{Br}}(k) = \cup_n \operatorname{im}(\iota_n) \). We'll now look at geometric interpretations of elements of \( H^1 \).
:::

::: {.example title="?"}
\( \mathop{\mathrm{Aut}}(X) = \operatorname{PGL}_n \) for the following:

-   \( {\mathbb{P}}^{n-1} \)
-   \( \operatorname{GL}_n \)
-   \( \operatorname{Mat}(n\times n) \), by the Skolem-Noether theorem.
:::

::: {.corollary title="?"}
For any of the \( X \) above, there is an isomorphism:
\[
H^1(k; \operatorname{PGL}_n(k^s)) 
\xrightarrow{\sim} \left\{{\text{Forms of $X$}}\right\}_{/ {\sim}} 
\xrightarrow{\sim} 
\left\{{\operatorname{PGL}_n{\hbox{-}}\text{torsors}}\right\}_{/ {\sim}} 
.\]
:::

::: {.definition title="Severi-Brauers"}
A **Severi-Brauer** variety over \( k \) is a form of \( {\mathbb{P}}^n_{/ {k}}  \) for some \( n \).
:::

::: {.example title="?"}
```{=tex}
\envlist
```
-   \( C \) a conic with no rational points, e.g. \( x^2 + y^2 + z^2 = 0 \) over \( {\mathbb{R}} \).
-   \( \operatorname{Sym}^n C \) is a nontrivial Severi-Brauer if \( n \) is odd. It's difficult to write any down for even \( n \), e.g. there are no Severi-Brauer surfaces over \( {\mathbb{R}} \).
:::

::: {.definition title="CSAs/Azumaya Algebras"}
A finite dimensional **central simple algebra** or **Azumaya algebra** over \( k \) is a associative algebra over \( k \) with no nontrivial 2-sided ideals with center \( k \) which is finite-dimensional as a \( k{\hbox{-}} \)vector space.
:::

::: {.theorem title="Classification of CSAs"}
Let \( A\in {\mathsf{Alg}}_{/ {k}}  \), then TFAE:

-   \( \exists \) a finite separable extension \( L _{/ {k}}  \) where after base-changing to \( L \) one obtains \( A\otimes_k L \cong \operatorname{Mat}(n\times n, L) \).
-   \( A\otimes_k k^s \cong \operatorname{Mat}(n\times n, k^s) \).
-   \( \exists \) a finite (not necessarily separable) extension \( L_{/ {k}}  \) such that \( A\otimes_k L \cong \operatorname{Mat}(n\times n, L) \).
-   \( A \) is a finite dimensional central simple algebra / Azumaya algebra.
-   \( A \) is a matrix algebra over a finite-dimensional central \( k{\hbox{-}} \)division algebra.

This is essentially a classification theorem: they're all forms of matrix algebras over division algebras. Moreover there is a bijection
\[
\left\{{\text{Central simple $k{\hbox{-}}$algebras }}\right\} \to H^2(k; (k^s)^{\times})
.\]
:::

::: {.definition title="Opposite algebra"}
If \( A \in \mathsf{CSA}_{/ {k}}  \), then \( A^{\operatorname{op}}\in \mathsf{CSA}_{/ {k}}  \) is an algebra with the same underlying vector space as \( A \) with \( a \cdot_{^{\operatorname{op}}} b \coloneqq ba \).
:::

::: {.definition title="Morita equivalence"}
\( A, B \) are Morita equivalent if \( A\otimes_k B^{\operatorname{op}} \) is isomorphic to a matrix algebra.
:::

::: {.theorem title="?"}
Given \( A, B \in \mathsf{CSA}_{/ {k}}  \) which correspond to elements \( [A], [B]\in H^2 \), then

-   \( [A] = [B] \iff A, B \) are Morita equivalent.
-   \( [A]^{-1}= [A^{\operatorname{op}}] \).
-   \( [A] \cdot [B] = [A\otimes_k B] \).
:::

## The Boundary Map and Twisted Vector Space

::: {.remark}
We'd now like to make the boundary map explicit:
\[
H^1(k; \operatorname{PGL}_n(k^s)) \to H^2(k; (k^s)^{\times})
.\]
Given \( [f] \in H^1 \), choose a representable cocycle \( f \):

```{=tex}
\begin{tikzcd}
    {{ \mathsf{Gal}} (k^s/k)} && {\operatorname{PGL}(k^s)} \\
    \\
    {{ \mathsf{Gal}} (L/k)} && {\operatorname{PGL}_n(L)}
    \arrow["f", from=1-1, to=1-3]
    \arrow[from=1-1, to=3-1]
    \arrow[hook, from=3-3, to=1-3]
    \arrow["{\tilde f}"', from=3-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXEdhbChrXnMvaykiXSxbMiwwLCJcXFBHTChrXnMpIl0sWzAsMiwiXFxHYWwoTC9rKSJdLFsyLDIsIlxcUEdMX24oTCkiXSxbMCwxLCJmIl0sWzAsMl0sWzMsMSwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMiwzLCJcXHRpbGRlIGYiLDJdXQ==)

To compute this boundary, we use the original SES:

```{=tex}
\begin{tikzcd}
    1 && {k^s} && {\operatorname{GL}_n(k^s)} && {\operatorname{PGL}_n(k^s)} && 1 \\
    \\
    &&&&&& {{ \mathsf{Gal}} (k^s/k)}
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-5, to=1-7]
    \arrow[from=1-7, to=1-9]
    \arrow["f", from=3-7, to=1-7]
    \arrow["{\text{Choose a set-theoretic lift } \tilde f}"{pos=0.8}, dashed, from=3-7, to=1-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCIxIl0sWzIsMCwia15zIl0sWzQsMCwiXFxHTF9uKGtecykiXSxbNiwwLCJcXFBHTF9uKGtecykiXSxbOCwwLCIxIl0sWzYsMiwiXFxHYWwoa15zL2spIl0sWzAsMV0sWzEsMl0sWzIsM10sWzMsNF0sWzUsMywiZiJdLFs1LDIsIlxcdGV4dHtDaG9vc2UgYSBzZXQtdGhlb3JldGljIGxpZnQgfSBcXHRpbGRlIGYiLDAseyJsYWJlbF9wb3NpdGlvbiI6ODAsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)

So \( \tilde f: { \mathsf{Gal}} (k^s/k) \to \operatorname{GL}_n(k^s) \) is a lieft of \( f \), and \( \delta f \) measures the failure of \( \tilde f \) to be a cocycle. We have
\[
\delta \tilde f(\sigma, \tau) = \tilde f(\sigma \tau) \qty{ \tilde f( \sigma) \tilde f (\tau)^{ \sigma} }^{-1}\in (k^s)^{\times}
,\]
using exactness since for \( f \) it lands in \( \operatorname{PGL}_n \) and is trivial.
:::

::: {.definition title="Twisted vector spaces"}
For \( L_{/ {k}}  \) a separable extension and \( \alpha: G{ {}^{ \scriptscriptstyle\times^{2} }  } \to L^{\times} \) a 2-cocycle, so \( [\alpha] \in H^2(L_{/ {k}} ; L^{\times}) \), a **twisted vector space** is a twisted semilinear action of \( { \mathsf{Gal}} (L_{/ {k}} ) \) on \( L^n \). I.e. it is a map
\[
\tilde f: { \mathsf{Gal}} (L_{/ {k}} ) &\to \mathop{\mathrm{Aut}}(L^n) = \operatorname{GL}_n(L) \\
\text{such that } \tilde f( \sigma \tau) &= \tilde f( \sigma) \tilde g( \tau)^{ \sigma} \alpha( \sigma, \tau)
.\]
:::

::: {.remark}
For each \( \sigma\in { \mathsf{Gal}} (L_{/ {k}} ) \) we get a \( \sigma{\hbox{-}} \)semilinear automorphism of \( L^n \), i.e. a map
\[
f_\sigma: L^n &\to L^n \\
\text{where } f_ \sigma(s \cdot v) &= \sigma(s) \cdot f_{ \sigma}(v)
,\]
which is just the definition of semilinearity, and moreover \( f_{ \sigma \tau} = f_{ \sigma} f_{ \tau} \alpha( \sigma, \tau) \).
:::

::: {.remark}
If \( \alpha = \operatorname{id} \), an \( \alpha{\hbox{-}} \)twisted vector space is the same as a \( k{\hbox{-}} \)vector space by Galois descent.
:::

::: {.proposition title="Properties of categories of twisted vector spaces"}
```{=tex}
\envlist
```
1.  \( \alpha \in \operatorname{im}\qty{ H^1(k; \operatorname{PGL}_n(k^s)) \to H^2(k; (k^s)^{\times}) } \iff \) there exists an \( n{\hbox{-}} \)dimensional \( \alpha{\hbox{-}} \)twisted vector space.

    The proof of this is just unwinding definitions, it's literally the same data!

2.  The category \( \mathsf{Tw}_\alpha \) of \( \alpha{\hbox{-}} \)twisted vector spaces is abelian -- the only nontrivial thing to check is that there are enough injectives.

3.  There are natural functors
    \[
    ({-}) \otimes({-}) &: 
    \mathsf{Tw}_\alpha \times \mathsf{Tw}_{\alpha'} \to \mathsf{Tw}_{\alpha \alpha'} \\
    \mathop{\mathrm{Hom}}({-}, {-})&:
    (\mathsf{Tw}_\alpha)^{^{\operatorname{op}}} \times \mathsf{Tw}_{\alpha'} \to \mathsf{Tw}_{\alpha' \alpha^{-1}} \\
    \operatorname{Sym}^n, \bigwedge\nolimits^n &:
    \mathsf{Tw}_\alpha \to \mathsf{Tw}_{\alpha^n}
    .\]

4.  If \( F_{/ {k}}  \) is a separable field extension, then
    \[
    ({-})\otimes F: \mathsf{Tw}_{\alpha}{}_{/ {k}}  \to \mathsf{Tw}_{\alpha}{}_{/ {F}} 
    .\]

5.  There is an equivalence of categories
    \[
    \mathsf{Tw}_{\operatorname{id}}{}_{/ {k}}  \xrightarrow{\sim} {\mathsf{k}{\hbox{-}}\mathsf{Mod}}
    .\]
:::

::: {.proposition title="?"}
There is a 1-dimensional \( \alpha{\hbox{-}} \)twisted vector space iff \( [\alpha] = 1\in H^1(k; (k^s)^{\times}) \).
:::

::: {.proof title="?"}
\( \impliedby \): First suppose \( \alpha \equiv 1 \), then \( \mathsf{Tw}_\alpha \xrightarrow{\sim} { \mathsf{Vect} }_{/ {k}}  \), so just take the vector space \( k \). If \( \alpha = \delta g \) for some \( g: { \mathsf{Gal}} (k^s/k) \to (k^s)^{\times} \). Then the action \( { \mathsf{Gal}} (k^s/k)\curvearrowright k^s \) where \( f_\sigma = g(\sigma) \) is a 1-dimensional \( \alpha{\hbox{-}} \)twisted vector space by sending \( 1\to g(\sigma) \) and extending semilinearly.

\( \implies \): Let \( V \) be a 1-dimensional \( \alpha{\hbox{-}} \)twisted vector space. Choose an isomorphism \( V \xrightarrow{\sim} k^s \) For each \( \sigma\in { \mathsf{Gal}} (k^s/k) \) set \( g(\sigma) = g(1) \) and \( g( \sigma \tau) = g( \sigma) g( \tau)^{ \sigma} \alpha( \sigma, \tau) \), then
\[ 
\alpha= \delta g = g( \sigma \tau )\qty{g( \sigma) g( \tau)^{ \sigma} }^{-1}
.\]
:::

::: {.theorem title="?"}
Suppose \( \alpha\in H^2(k; (k^s)^{\times}) \) is in \( \operatorname{im}\qty{ H^1(k; \operatorname{PGL}_n) \to H^2(k; (k^s)^{\times})} \), then \( \alpha^n = 1 \).
:::

::: {.proof title="?"}
If \( \alpha \) is in the image, there exists an \( n{\hbox{-}} \)dimensional \( \alpha{\hbox{-}} \)twisted vector space \( V\in \mathsf{Tw}_\alpha \), and so \( \bigwedge\nolimits^n V \in \mathsf{Tw}_{\alpha^n} \).
:::

::: {.definition title="Index and period"}
Given \( H^2(k; (k^s)^{\times}) = \mathop{\mathrm{Br}}(k) \) (which we'll prove soon), the **period** of \( \alpha \) is the order of \( \alpha \), and the **index** is defined the minimal \( n \) such that \( \alpha \) is in the above image. I.e.,
\[
\operatorname{period}(\alpha) &\coloneqq{\operatorname{Ord}}(\alpha) \\
\mathrm{index}(\alpha) &\coloneqq\min\left\{{ n {~\mathrel{\Big|}~}\alpha \in \operatorname{im}( H^1 \to H^2)}\right\}
.\]
:::

::: {.corollary title="?"}
Period divides index.
:::

::: {.question}
An open question: how different are the period and index? See the period-index problem.
:::

::: {.remark}
There are some maps between the categories \( \mathsf{Tw}_\alpha \), \( \mathsf{SB} \) (Severi-Brauers), and \( \mathsf{CSA} \):

```{=tex}
\begin{tikzcd}
    &&& V \\
    &&& {\mathsf{Tw}_\alpha} \\
    {{\mathbb{P}}(V)} &&&&& {\mathop{\mathrm{End}}_k(V)} \\
    {} & \mathsf{SB}&&& \mathsf{CSA}
    \arrow[from=2-4, to=4-5]
    \arrow[from=2-4, to=4-2]
    \arrow[dashed, maps to, from=1-4, to=3-1]
    \arrow[dashed, maps to, from=1-4, to=3-6]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNyxbMywxLCJcXFR3X1xcYWxwaGEiXSxbMSwzLCJcXFNCIl0sWzQsMywiXFxDU0EiXSxbMywwLCJWIl0sWzAsM10sWzAsMiwiXFxQUChWKSJdLFs1LDIsIlxcRW5kX2soVikiXSxbMCwyXSxbMCwxXSxbMyw1LCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn0sImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDYsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifSwiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d)

An analogy is that in vector spaces, \( {\mathbb{P}}^n \) is to \( \mathop{\mathrm{End}}(V) \) as \( \mathsf{SB} \) is to \( \mathsf{CSA} \) in twisted vector spaces. Note that \( { \mathsf{Gal}} (L_{/ {k}} ) "\curvearrowright" V \), which isn't a true action but only fails to be one up to a scalar. Thus projectivizing yields a semilinear action \( { \mathsf{Gal}} (L_{/ {k}} )\curvearrowright{\mathbb{P}}(V) \), and Galois descent yields forms of \( {\mathbb{P}}(V)_{/ {k}}  \).
:::

::: {.remark}
Why is \( \mathop{\mathrm{End}}(V) \) a form of \( \operatorname{Mat}(n\times n) \)? Since \( V\in \mathsf{Tw}_\alpha \), split it: choose an \( L \) such that \( { \left.{{ \alpha}} \right|_{{L}} } \) is trivial. Then \( \mathsf{Tw}_{{ \left.{{\alpha }} \right|_{{L}} }}= { \mathsf{Vect} }_{/ {L}}  \).
:::

# Thursday, September 09

::: {.remark}
Last time: 3 geometric avatars of elements \( \alpha \) of a Brauer group:

-   \( \alpha{\hbox{-}} \)twisted vector spaces \( \mathsf{Tw}_\alpha \)
-   After projectivizing: Severi-Brauer varieties
-   Taking endomorphisms: central simple algebras.

Here we set \( G \coloneqq{ \mathsf{Gal}} (L_{/ {k}} ) \) and \( \alpha: G{ {}^{ \scriptscriptstyle\times^{2} }  } \to L^{\times} \) representing \( [\alpha]\in H^2(G; L^{\times}) \), and defined an \( \alpha{\hbox{-}} \)twisted vector space as a \( V\in { \mathsf{Vect} }_{/ {L}}  \) with a semilinear map \( f_\sigma: V\to V \) for each \( \sigma\in G \) where \( \sigma(\ell v) = \sigma(\ell) \sigma(v) \) such that \( f_{ \sigma \tau} = f_{ \sigma} \circ f_{ \tau} \alpha(\sigma\tau) \). Last time we used this to show that
\[
\operatorname{im}\qty{H^1(k; \operatorname{PGL}_n) \to H^2(k; (k^s)^{\times}) }
\]
is \( n{\hbox{-}} \)torsion.
:::

::: {.theorem title="?"}
The category \( \mathsf{Tw}_\alpha \) is **semisimple**, i.e. every SES splits, and every object is a direct sum of simple objects.
:::

::: {.proof title="?"}
Note that in vector spaces, \( \mathop{\mathrm{Hom}}_k(A, B) \cong B\otimes_k A {}^{ \vee } \), so \( \mathop{\mathrm{Hom}}_k({-}, B) = ({-})\otimes_k B {}^{ \vee } \) as functors.

Take a SES
\[
0 \to V_2 \to W \to V_1 \to 0 \in \mathsf{Tw}_\alpha
.\]
We want to split this, a good trick to try every time: apply \( \mathop{\mathrm{Mor}}_{\mathsf{Tw}_\alpha}(V_1, \cdot) \):
\[
0 \to 
\mathop{\mathrm{Mor}}_{\mathsf{Tw}_\alpha}(V_1, V_2)
\to
\mathop{\mathrm{Mor}}_{\mathsf{Tw}_\alpha}(V_1, W)
\to
\mathop{\mathrm{Mor}}_{\mathsf{Tw}_\alpha}(V_1, V_1)
\to 0
.\]

This sequence is exact since we can write
\[
\mathop{\mathrm{Mor}}_{\mathsf{Tw}_\alpha}({-}, V_1) = ({-})\otimes_k V_1 {}^{ \vee }
.\]
It's enough to split this SES, since any splitting \( s: \mathop{\mathrm{Mor}}_{\mathsf{Tw}_\alpha}(V_1, V_2) \to \mathop{\mathrm{Mor}}(V_1, W) \) would allow taking \( s(\operatorname{id}_{V_1}) \) to split the original. But this sequence does split, since \( \mathop{\mathrm{Mor}}_{\mathsf{Tw}_\alpha}(V_1, V_1) \) is free, thus projective.
:::

::: {.theorem title="?"}
Any two simple objects \( D_1, D_2\in \mathsf{Tw}_\alpha \) are isomorphic.
:::

::: {.remark}
This is an analog of showing that every vector space is a sum of 1-dimensional sub-vector spaces, i.e. every vector space has a basis. In this situation, it's essentially Schur's lemma.
:::

::: {.proof title="?"}
\( \mathop{\mathrm{Mor}}_{\mathsf{Tw}_\alpha}(D_1, D_2)\in{ \mathsf{Vect} }_{/ {L}}  \) is of dimension \( d = \dim_L(d_1) \dim_L(d_2) > 0 \), so there exists a nonzero map \( f:D_1\to D_2 \). The claim is that \( f \) is an isomorphism: since both objects are simple, just use that \( \ker D_1 \leq D_1 \) and \( \operatorname{im}f \leq D_2 \) are sub-objects.
:::

::: {.corollary title="?"}
There exists a unique simple object \( D \) of \( \mathsf{Tw}_\alpha \), and every other object is of the form \( D{ {}^{ \scriptscriptstyle\oplus^{I} }  } \).
:::

::: {.corollary title="?"}
Any CSA is a matrix algebra over a division algebra.
:::

::: {.proof title="?"}
\( \mathop{\mathrm{End}}(D{ {}^{ \scriptscriptstyle\oplus^{n} }  }) = \operatorname{Mat}(n\times n, \mathop{\mathrm{End}}(D)) \), so it's enough to show \( \mathop{\mathrm{End}}(D) \) is a division algebra. This follows by the previous argument, again using Schur's lemma.
:::

::: {.corollary title="?"}
For \( X_{/ {k}}  \) a Severi Brauer, \( X\cong {\mathbb{P}}^n_{/ {k}}  \iff X(k) \neq \emptyset \).
:::

::: {.proof title="?"}
\( \implies \): Clear, since \( {\mathbb{P}}^n \) has rational points!

\( \impliedby \): We'll do a variant of the proof that uses \( \mathsf{Tw}_\alpha \). Let \( X = {\mathbb{P}}(V) \) for \( V\in \mathsf{Tw}_{\alpha} \), then any point \( x\in X \) yields a 1-dimensional (twisted!) subspace \( R \subseteq V \). Then \( [\alpha] = 0 \in H^2(k; (k^s)^{\times}) \), and by Hilbert 90 this comes from a point in the following composition:

```{=tex}
\begin{tikzcd}
    {H^1(k; \operatorname{GL}_n)} && {H^1(k; \operatorname{PGL}_n)} && {0\in H^2(k; (k^s)^{\times})} \\
    {[\alpha]} && {[X]} && 0
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-1, to=1-3]
    \arrow[maps to, from=2-3, to=2-5]
    \arrow[maps to, from=2-1, to=2-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJIXjEoazsgXFxHTF9uKSJdLFsyLDAsIkheMShrOyBcXFBHTF9uKSJdLFs0LDAsIjBcXGluIEheMihrOyAoa15zKVxcdW5pdHMpIl0sWzAsMSwiW1xcYWxwaGFdIl0sWzIsMSwiW1hdIl0sWzQsMSwiMCJdLFsxLDJdLFswLDFdLFs0LDUsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbMyw0LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV1d)

This forces \( X = {\mathbb{P}}^n \).
:::

::: {.proof title="$\\impliedby$, classical proof"}
Let \( X\in \mathsf{SB} \) with \( X(k) \neq \emptyset \), then Artin defines \( X {}^{ \vee } \), a dual Severi Brauer variety. This is constructed using that \( X_{k^s} = {\mathbb{P}}^n \) and sets \( X_{k^s} {}^{ \vee }= ({\mathbb{P}}^n) {}^{ \vee } \), which comes with descent data to \( k \). A rigorous construction is that if \( X = {\mathbb{P}}(V) \), we set \( X {}^{ \vee }= {\mathbb{P}}(V {}^{ \vee }) \). If \( X \) has a \( k{\hbox{-}} \)point, then \( X {}^{ \vee } \) has a rational hyperplane \( H \). The claim is that \( X {}^{ \vee }= {\mathbb{P}}^n \): this follows from the fact that \( {\mathcal{O}}(H) \) is a line bundle on \( X {}^{ \vee } \) which is isomorphic to \( {\mathcal{O}}(1) \) on \( ({\mathbb{P}}^n) {}^{ \vee } \) after base changing to \( k^s \). This follows from cohomology of base change, since
\[
{{\Gamma}\qty{X {}^{ \vee }, {\mathcal{O}}(H)_{/ {k^s}} } } = {{\Gamma}\qty{X_{k^s} {}^{ \vee }, {\mathcal{O}}(H)_{/ {k^s}} } } = {{\Gamma}\qty{{\mathbb{P}}^n_{/ {Y}} , {\mathcal{O}}(1)} }
.\]
So \( {\mathcal{O}}(H) \) yields a map \( X {}^{ \vee }\to {\mathbb{P}}^n \) which is an isomorphism after passing to \( k^s \). Now we can write \( X = (X {}^{ \vee }) {}^{ \vee } \) and \( X {}^{ \vee }= {\mathbb{P}}^n \), so
\[
X = (X {}^{ \vee }) {}^{ \vee }= ({\mathbb{P}}^n) {}^{ \vee }\cong {\mathbb{P}}^n
.\]
:::

::: {.definition title="Reduced norm and trace"}
Let \( A\in \mathsf{CSA}_{/ {k}}  \), then there are maps
\[
\operatorname{Nm}_{A_{/ {k}} }: A &\to k && \text{multiplicative} \\
\operatorname{Tr}_{A_{/ {k}} }: A &\to k && \text{additive}
.\]

How they're constructed: let \( A\in \mathop{\mathrm{End}}(V) = V\otimes V {}^{ \vee } \), then since \( \bigwedge\nolimits^*({-}) \) is a functor, there is a map
\[
\operatorname{Nm}_{A_{/ {k}} }: \mathop{\mathrm{End}}(V) &\to \mathop{\mathrm{End}}\qty{ \bigwedge\nolimits^{\dim V} V} = k \\
\operatorname{Tr}_{A_{/ {k}} }: \mathop{\mathrm{End}}(V) &{ { \, \xrightarrow{\sim}\, }}V\otimes V {}^{ \vee }\xrightarrow{{\left\langle {{-}},~{{-}} \right\rangle}} k
.\]
:::

::: {.proposition title="?"}
For \( A\in \mathsf{CSA}_{/ {k}}  \), then if there exists a nonzero \( f\in A \) with \( \operatorname{Nm}_{A_{/ {k}} }(f) = 0 \), then \( A \) is not a division algebra.

> Algebra: nontrivial matrix algebra over a field implies existence of matrices with determinant zero.
:::

::: {.proof title="?"}
The norm is multiplicative, so if \( f \) is a unit then \( \operatorname{Nm}(f f^{-1})= 1\neq 0 \).
:::

::: {.theorem title="?"}
There is a surjection
\[
\displaystyle\bigcup_n H^1(k; \operatorname{PGL}_n) \twoheadrightarrow H^2(k; (k^s)^{\times})
.\]
:::

::: {.proof title="sketch"}
It's enough to show the following surjection:
\[
\displaystyle\bigcup_n H^1(L_{/ {k}} ; \operatorname{PGL}_n) \to H^2(L_{/ {k}} ; L^{\times})
.\]
Given \( \alpha \) in the codomain, interpret it as a central extension:
\[
1 \to L^{\times}\to M_\alpha \to { \mathsf{Gal}} (L_{/ {k}} ) \to 1
.\]

::: {.definition title="Semilinear group rings"}
Define \( L[M_\alpha] \) to be the **semilinear group ring** of \( M_\alpha \):
\[
L[M_\alpha] \bigoplus_{\lambda \in M_\lambda} L[e_\lambda]
\]
where \( e_{\lambda_1} e_{ \lambda_2} = e_{ \lambda_1 \lambda_2} \) and \( \ell e_{ \lambda} = e_{\lambda} \lambda(\ell) \).
:::

::: {.claim}
\( A_\alpha \coloneqq L[M_{ \alpha}] / \left\langle{ \lambda e_1 - 1 e_{ \lambda}}\right\rangle \) is a CSA mapping to \( [\alpha] \). See Serre's *Local Fields*.
:::
:::

::: {.question}
Can this construction be done in \( \mathsf{SB} \) or \( \mathsf{Tw}_\alpha \)?
:::

## Computing Brauer Groups

::: {.remark}
:::

::: {.claim}
\( \mathop{\mathrm{Br}}({\mathbb{F}}_q) = 0 \).
:::

::: {.theorem title="?"}
Let \( k \) be a \( C_1{\hbox{-}} \)field, so any homogeneous polynomial in \( k \) with degree \( d < n \) has a nonzero solution. Then \( \mathop{\mathrm{Br}}(k) = 0 \).
:::

::: {.remark}
Note that [Chevalley--Warning](https://www.wikiwand.com/en/Chevalley%E2%80%93Warning_theorem) exactly says that finite fields are \( C_1 \).
:::

::: {.proof title="of theorem"}
```{=tex}
\envlist
```
::: {.claim}
Let \( A\in \mathsf{CSA}_{/ {k}}  \), then \( \operatorname{Nm}_{A_{/ {k}} }: A\to k \) is a polynomial function on \( n^2 \) variables of degree \( n \).
:::

::: {.proof title="?"}
This is true for the actual determinant, and this is a claim that can be checked after passing to \( k^s \) since the norm is a *form* of the determinant.
:::

::: {.corollary title="?"}
If \( k \) is \( C_1 \) and \( \operatorname{rank}A > 1 \), there exists a nonzero \( f\in A \) such that \( \operatorname{Nm}_{A_{/ {k}} }(f) = 0 \).
:::

But all \( k{\hbox{-}} \)division algebras are isomorphic to \( k \), here all CSAs are of the form \( \operatorname{Mat}(n\times n, k) \), so the Brauer group is trivial.
:::

::: {.theorem title="Tsem"}
If \( k = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \) and \( C_{/ {k}}  \) is a smooth proper curve, then the function field \( k(C) \) is \( C_1 \).
:::

::: {.proof title="?"}
Let \( f \) be a homogeneous polynomial, \( \deg f = d \), in \( n \) variables over \( k(C) \) with \( d < n \). Then regard \( f: k(C)^n \to k(C) \), we want to show \( f^{-1}(0) \) is big. Let \( p\in C \), and now \( f \) as a map
\[
f: {{\Gamma}\qty{C; {\mathcal{O}}(r\cdot p)^n} } \to {{\Gamma}\qty{C; {\mathcal{O}}(r d \cdot p)} }
,\]
which is a polynomial map of finite dimensional vector spaces that are subspaces of the previous domain/codomain. Using Riemann-Roch, the dimension of the left-hand side grows like \( r\cdot n \) and the right-hand side grows like \( r\cdot d \), and for \( r \) large enough, \( rn > rd \). Since \( f \) is homogeneous, \( f^{-1}(0) \) contains 0, so \( \dim f^{-1}(0)> 0 \). But a positive-dimensional variety over an algebraically closed field has lots of rational points!
:::

# Tuesday, September 14

::: {.remark}
Goal: Severi-Brauer varieties satisfy the Hasse principle, and develop the Brauer-Manin obstruction. We have the following theorem: if \( X\in \mathsf{SB}_{/ {k}}  \), then TFAE:

-   \( X \) has a rational point,
-   \( X \cong {\mathbb{P}}^n \) for some \( n \),
-   \( [X]\in \mathop{\mathrm{Br}}(k) \) is the trivial class.

We'll soon prove the following theorem:
:::

::: {.theorem title="Hasse principle for Severi Brauers"}
For \( K \) a number field, there is an injective map
\[
\mathop{\mathrm{Br}}(k) \hookrightarrow\bigoplus _{v\in  \mathrm{Pl}\qty{k}  } \mathop{\mathrm{Br}}(k_v)
,\]
which is a statement of the Hasse principle, since the previous theorem shows that if \( \mathop{\mathrm{Br}}(k_v) \) is empty for all \( k_v \), it will have to come from a zero class in \( \mathop{\mathrm{Br}}(k) \)
:::

::: {.remark}
Note that the cokernel of this map is prominent in class field theory! Today we'll compute \( \mathop{\mathrm{Br}}(k_v) \), or more generally \( \mathop{\mathrm{Br}}(F) \) for \( F \) a local field.
:::

## Cyclic Algebras

::: {.remark}
Setup: take \( k\in \mathsf{Field} \), \( L_{/ {k}}  \) a \( C_n{\hbox{-}} \)Galois extension, which is the data of
\[
\chi_L: { \mathsf{Gal}} (k^s_{/ {k}} )\to C_n
.\]
For \( a\in K^s \), we'll consider pairs \( (\chi, a) = L[x]^\chi / \left\langle{x^n - a}\right\rangle \) where commutation in \( L[x]^\chi \) is given by \( lx = x\sigma(\ell) \) for \( l\in L \) where \( C_n = \left\langle{\sigma}\right\rangle \). This is a \( k{\hbox{-}} \)vector space of dimension \( n^2 \), and the claim is that \( (\chi, a) \in \mathsf{CSA} \).
:::

::: {.example title="?"}
Take \( \chi: { \mathsf{Gal}} ({\mathbb{C}}_{/ {{\mathbb{R}}}} ) \to C_2 \) with \( a=-1 \), then \( (\chi, a) = {\mathbb{H}}= {\mathbb{R}}[i, j] / \left\langle{i^2,j^2,[ij]}\right\rangle \) is the (Hamilton) quaternions.
:::

::: {.fact}
One can view \( \chi \in H^1_{ \mathsf{Gal}} (k; C_n) \) and
\[
a\in H^1_{ \mathsf{Gal}} (k; \mu_n) = k^{\times}/ (k^{\times}){ {}^{\cdot 2} }
.\]
In this case
\[
(\chi, a) \coloneqq\chi \smile[a] \in H^2(k; \mu_n) \subseteq H^2(k; (k{ {}^{ \operatorname{sep} } })^{\times})
.\]
Note that this cup product can be computed explicitly from the product on \( \operatorname{Ext}  \) or using the standard resolution.
:::

::: {.remark}
Now to compute more Brauer groups! So far, we've only done relatively trivial examples. We'll start with local fields: for algebraically closed fields, Galois cohomology vanishes, so

-   \( \mathop{\mathrm{Br}}({\mathbb{C}}) = 0 \)
-   To compute \( \mathop{\mathrm{Br}}({\mathbb{R}}) = H^2({ \mathsf{Gal}} ({\mathbb{C}}_{/ {{\mathbb{R}}}} ); {\mathbb{C}}^{\times}) \), take the resolution

```{=tex}
\begin{tikzcd}
    && \vdots \\
    {P^\bullet:} && {{\mathbb{Z}}[x]/\left\langle{x^2-1}\right\rangle} \\
    && {{\mathbb{Z}}[x]/\left\langle{x^2-1}\right\rangle} \\
    && {{\mathbb{Z}}[x]/\left\langle{x^2-1}\right\rangle} \\
    && {{\mathbb{Z}}[x]/\left\langle{x^2-1}\right\rangle} & 1 \\
    && {\mathbb{Z}}& 1
    \arrow[from=5-3, to=6-3]
    \arrow["{x-1}", from=4-3, to=5-3]
    \arrow[from=5-4, to=6-4]
    \arrow["{x+1}", from=3-3, to=4-3]
    \arrow["{x-1}", from=2-3, to=3-3]
    \arrow[from=2-3, to=3-3]
    \arrow[from=4-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOSxbMiwzLCJcXFpaW3hdL1xcZ2Vuc3t4XjItMX0iXSxbMiw0LCJcXFpaW3hdL1xcZ2Vuc3t4XjItMX0iXSxbMiw1LCJcXFpaIl0sWzMsNCwiMSJdLFszLDUsIjEiXSxbMiwyLCJcXFpaW3hdL1xcZ2Vuc3t4XjItMX0iXSxbMiwxLCJcXFpaW3hdL1xcZ2Vuc3t4XjItMX0iXSxbMCwxLCJQXlxcYnVsbGV0OiJdLFsyLDAsIlxcdmRvdHMiXSxbMSwyXSxbMCwxLCJ4LTEiXSxbMyw0XSxbNSwwLCJ4KzEiXSxbNiw1LCJ4LTEiXSxbNiw1XSxbMCw1XV0=)

Then we can take \( H^*(\mathop{\mathrm{Hom}}_{{\mathsf{{ \mathsf{Gal}} }{\hbox{-}}\mathsf{Mod}}}(P^\bullet, {\mathbb{C}}^{\times})) \):

```{=tex}
\begin{tikzcd}
    && 1 && {z\mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu} \\
    {\mathbb{C}}^{\times}&& {\mathbb{C}}^{\times}&& {\mathbb{C}}^{\times}&& {\mathbb{C}}^{\times}\\
    z && {\mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5muz^{-1}} && z && {\mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5muz^{-1}}
    \arrow[from=2-1, to=2-3]
    \arrow[from=2-3, to=2-5]
    \arrow[from=2-5, to=2-7]
    \arrow[from=3-1, to=3-3]
    \arrow[from=3-5, to=3-7]
    \arrow[from=1-3, to=1-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTAsWzAsMSwiXFxDQ1xcdW5pdHMiXSxbMiwxLCJcXENDXFx1bml0cyJdLFswLDIsInoiXSxbMiwyLCJcXGJhcnt6fXpcXGludiJdLFs0LDEsIlxcQ0NcXHVuaXRzIl0sWzQsMiwieiJdLFs2LDIsIlxcYmFye3p9elxcaW52Il0sWzYsMSwiXFxDQ1xcdW5pdHMiXSxbMiwwLCIxIl0sWzQsMCwielxcYmFye3p9Il0sWzAsMV0sWzEsNF0sWzQsN10sWzIsM10sWzUsNl0sWzgsOV1d)

Check that \( \mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu z^{-1}= 1 \) then \( z = \mkern 1.5mu\overline{\mkern-1.5muz\mkern-1.5mu}\mkern 1.5mu \) so \( z\in {\mathbb{R}}^{\times} \) and \( \ker d = {\mathbb{R}}^{\times} \). Similarly, \( \operatorname{im}d = {\mathbb{R}}^{\times}_{>0} \), so
\[
\mathop{\mathrm{Br}}({\mathbb{R}}) = {\mathbb{R}}^{\times}/ {\mathbb{R}}^{\times}_{>0} = \left\{{\pm 1}\right\}
.\]
:::

::: {.example title="?"}
\( {\mathbb{H}} \) represents \( -1 \) in \( \mathop{\mathrm{Br}}({\mathbb{R}}) \), as does the corresponding Severi Brauer
\[
\left\{{x^2 + y^2 + z^2 = 0}\right\} \subseteq {\mathbb{P}}^2_{/ {{\mathbb{R}}}} 
.\]
Note that \( +1 \) is represented by the field itself, regarded as a \( 1\times 1 \) matrix algebra, or projective space.
:::

::: {.remark}
Write \( k^{\scriptscriptstyle\mathrm{un}} \) for the maximal unramified extensions, where an extension is *ramified* if the degree of the residue field changes (or the valuation remains an integer?) For example, for \( k = { {\mathbb{Q}}_p } \), we have \( k^{\scriptscriptstyle\mathrm{un}}= \operatorname{ff}(W(\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}_p\mkern-1.5mu}\mkern 1.5mu)) \) (i.e. the Witt vectors). In general, \( k^{\scriptscriptstyle\mathrm{un}}= k(\mu_\infty') \) where \( \mu_\infty' \) is the set of roots of unity of order prime to the characteristic. As a corollary, \( { \mathsf{Gal}} (k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ) = \mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}_q\mkern-1.5mu}\mkern 1.5mu/{\mathbb{F}}_1 = \widehat{{\mathbb{Z}}} \).
:::

::: {.theorem title="?"}
For \( k \) a nonarchimedean local field (a finite extension of \( { {\mathbb{Q}}_p } \)), then \( \mathop{\mathrm{Br}}(k) = {\mathbb{Q}}/{\mathbb{Z}} \)

-   \( H^2(k^{{\scriptscriptstyle\mathrm{un}}}_{/ {k}} ; (k^{\scriptscriptstyle\mathrm{un}})^{\times}) = {\mathbb{Q}}/{\mathbb{Z}} \)
-   \( H^2(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} , (k^{\scriptscriptstyle\mathrm{un}})^{\times}) { { \, \xrightarrow{\sim}\, }}H^2(k; (k^s)^{\times}) = \mathop{\mathrm{Br}}(k) \) is an isomorphism.
:::

::: {.remark}
Many proofs of this are delicate! We'll follow a mix of Cassels-Frolich and Milne for this proof.
:::

::: {.proof title="of 1"}
Take the SES coming from the valuation map:

```{=tex}
\begin{tikzcd}
    1 && {U_{k^{\scriptscriptstyle\mathrm{un}}}} && {(k^{\scriptscriptstyle\mathrm{un}})^{\times}} && {\mathbb{Z}}&& 0
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow["{\operatorname{val}}", from=1-5, to=1-7]
    \arrow[from=1-7, to=1-9]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwwLCIxIl0sWzIsMCwiVV97a15cXHVucmFtfSJdLFs0LDAsIihrXlxcdW5yYW0pXFx1bml0cyJdLFs2LDAsIlxcWloiXSxbOCwwLCIwIl0sWzAsMV0sWzEsMl0sWzIsMywiXFx2YWwiXSxbMyw0XV0=)

::: {.claim}
```{=tex}
\envlist
```
-   \( H^2(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; {\mathbb{Z}}) = {\mathbb{Q}}/{\mathbb{Z}} \).
-   \( H^*(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; U_{k^{\scriptscriptstyle\mathrm{un}}}) = 0 \)
:::

::: {.remark}
Why this implies the theorem: take the LES in cohomology to get the following:

```{=tex}
\begin{tikzcd}
    \textcolor{rgb,255:red,214;green,92;blue,92}{H^2(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; U_{k^{\scriptscriptstyle\mathrm{un}}})=0} && {H^2(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; (k^{\scriptscriptstyle\mathrm{un}})^{\times})} && {H^2(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; {\mathbb{Z}})} \\
    \\
    \textcolor{rgb,255:red,214;green,92;blue,92}{H^3(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; U_{k^{\scriptscriptstyle\mathrm{un}}}) = 0}
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[from=1-5, to=3-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJIXjIoa15cXHVucmFtIFxcc2xpY2UgazsgVV97a15cXHVucmFtfSk9MCIsWzAsNjAsNjAsMV1dLFswLDIsIkheMyhrXlxcdW5yYW0gXFxzbGljZSBrOyBVX3trXlxcdW5yYW19KSA9IDAiLFswLDYwLDYwLDFdXSxbMiwwLCJIXjIoa15cXHVucmFtIFxcc2xpY2UgazsgKGteXFx1bnJhbSlcXHVuaXRzICkiXSxbNCwwLCJIXjIoa15cXHVucmFtIFxcc2xpY2UgazsgXFxaWikiXSxbMCwyXSxbMiwzXSxbMywxXV0=)

A claim is that \( H^2(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; {\mathbb{Z}}) = H^2(\widehat{{\mathbb{Z}}}; {\mathbb{Z}}) \). One can compute this colimit explicitly, but there is a SES
\[
0\to {\mathbb{Z}}\to {\mathbb{Q}}\to {\mathbb{Q}}/{\mathbb{Z}}\to 0
.\]

Now note that \( H^{>0}(G; {\mathbb{Q}}) = 0 \) for profinite groups, since this is necessarily a torsion \( {\mathbb{Q}}{\hbox{-}} \)vector space. For a full proof, use that multiplication by \( n \) is an isomorphism the annihilates it. As a corollary, taking the LES above yields \( H^{i}(G; {\mathbb{Z}}) = H^{i-1}(G; {\mathbb{Q}}/Z) \) for \( i\geq 2 \). Thus
\[
H^2(\widehat{{\mathbb{Z}}}; {\mathbb{Z}}) = H^1(\widehat{{\mathbb{Z}}}; {\mathbb{Q}}/{\mathbb{Z}}) = \mathop{\mathrm{Hom}}_{{\mathsf{Top}}}(\widehat{{\mathbb{Z}}}, {\mathbb{Q}}/{\mathbb{Z}}) = {\mathbb{Q}}/{\mathbb{Z}}
,\]
and in fact
\[
H^1(\widehat{{\mathbb{Z}}}; {\mathbb{Q}}/{\mathbb{Z}}) = \colim_n \mathop{\mathrm{Hom}}(C_n; {\mathbb{Q}}/{\mathbb{Z}})
.\]
:::
:::

::: {.proof title="of b"}
Here we'll have to use the structure of \( U_{k^{\scriptscriptstyle\mathrm{un}}} \). It's enough to show
\[
H^{>0}(k_n{} _{/ {k}} ; U_{k_n}) = 0
\]
for \( k_n{}_{/ {k}}  \) unramified of finite degree \( n \), using that these are unique. We'll use the following:

::: {.definition title="?"}
There is a filtration \( {\operatorname{Fil}}_r U_{k_n} = \left\{{u\in U_{k_n} {~\mathrel{\Big|}~}u = 1 \operatorname{mod}\pi^r}\right\} \) for \( \pi \) a uniformizer.
:::

::: {.fact}
We can identify
\[
{\operatorname{Fil}}_r/{\operatorname{Fil}}_{r+1} 
=
\begin{cases}
\kappa_n^{\times}& r=0 
\\
\kappa_n^+ & r>0.
\end{cases}
,\]
where \( \kappa \) denotes residue fields, \( \kappa_n{}_{/ {\kappa}}  \) is the unique degree \( n \) extension, and \( \kappa^+ \) is the additive group. Why: use that these look like power series, and the associated graded picks off the \( r \)th coefficient. Moreover, things like \( 1+\pi^2 \) can be units by formally inverting using geometric series.
:::

Thus it's enough to show for residue fields that
\[
H^{>0}(\kappa_n{}_{/ {\kappa}} ; \kappa_n^{\times}) &= 0 \\
H^{>0}(\kappa_n{}_{/ {\kappa}} ; \kappa_n^+) &= 0
,\]
since each graded piece of the associated grading having zero cohomology implies the entire thing has zero cohomology.

For the first,

-   \( i=1 \) is Hilbert 90,
-   \( i=2 \) follows from \( \mathop{\mathrm{Br}}(\kappa_n{} _{/ {\kappa}} ) = 0 \),
-   \( i\geq 3 \) uses that \( H^* = H^*[-2] \), since the resolution used for cohomology of a cyclic group was 2-periodic.

For the second, to compute the cohomology of a cyclic group we take the 2-periodic resolution:

```{=tex}
\begin{tikzcd}
    x && {x^{q}-x} \\
    {k_n} && {k_n} && {k_n} && \cdots \\
    && x && {\sum x^{q^i}}
    \arrow[from=2-1, to=2-3]
    \arrow[from=2-3, to=2-5]
    \arrow["{\mathop{\mathrm{Frob}}- 1}", from=1-1, to=1-3]
    \arrow["\operatorname{tr}_ { {\kappa_n} {}_{/ {\kappa}}  }", from=3-3, to=3-5]
    \arrow[from=2-5, to=2-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMCwxLCJrX24iXSxbMCwwLCJ4Il0sWzIsMCwieF57cX0teCJdLFsyLDEsImtfbiJdLFs0LDEsImtfbiJdLFsyLDIsIngiXSxbNCwyLCJcXHN1bSB4XntxXml9Il0sWzYsMSwiXFxjZG90cyJdLFswLDNdLFszLDRdLFsxLDIsIlxcRnJvYiAtIDEiXSxbNSw2LCJcXHRleHR7XCJBZGRpdGl2ZSBub3JtXCJ9IiwyXSxbNCw3XV0=)

Then

-   \( H^2 = \ker/\operatorname{im} \), and \( \ker = k \) since Frobenius fixes everything, and use that
    \[
    \sum x^{q^i} = x + x^q + x^{q^2} + \cdots = \operatorname{tr}_{\kappa_n {}_{/ {\kappa}} }(x)
    .\]

-   If \( n \) is invertible, so \( p\notdivides n \), writing \( \operatorname{Tr}(1) = n \) we can take \( \operatorname{Tr}(a/n) = a \).

-   It suffices to show this polynomial isn't identically zero, but it's a polynomial of degree \( q^{n-1} \) but \( \# \kappa_n = q^n \).

-   Now use that \( a = \operatorname{tr}(x) \) for some \( a^{\bullet} \), then take \( b = \operatorname{tr}(bx/a) \).
:::

# Thursday, September 16

## Computing Brauer Groups

::: {.remark}
Let \( k \) be a \( p{\hbox{-}} \)adic field, our goal is to show \( \mathop{\mathrm{Br}}(k) = {\mathbb{Q}}/{\mathbb{Z}} \). We were trying to show

1.  \( H^2(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; (k^{\scriptscriptstyle\mathrm{un}})^{\times}) = {\mathbb{Q}}/{\mathbb{Z}} \),
2.  Any Brauer class is split by an *unramified* extension

This says that we can split the computation of \( \mathop{\mathrm{Br}}(k) \) into an interesting part (the ramified case) and a trivial part (the unramified case).

```{=tex}
\todo[inline]{Check 2!}
```
To prove 1, we used
\[
1 \to U_{k^{\scriptscriptstyle\mathrm{un}}} \to (k^{\scriptscriptstyle\mathrm{un}})^{\times}\to {\mathbb{Z}}\to 0
,\]

and

a.  \( H^2(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; {\mathbb{Z}}) = {\mathbb{Q}}/{\mathbb{Z}} \),
b.  \( H^{>0}(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; U_{k^{\scriptscriptstyle\mathrm{un}}}) = 0 \),

where we used a filtration
\[
{\operatorname{Fil}}_r U_{k^{\scriptscriptstyle\mathrm{un}}} 
=
\begin{cases}
U_{k^{\scriptscriptstyle\mathrm{un}}} &  r=0
\\
 \left\{{x{~\mathrel{\Big|}~}x\equiv 1\operatorname{mod}\pi^r}\right\}& r\geq 1.
\end{cases}
\]
and
\[
{\mathsf{gr}\,}^r({\operatorname{Fil}}_\bullet U_{k^{\scriptscriptstyle\mathrm{un}}}) 
=
\begin{cases}
\kappa^{\times}& r=0 
\\
\kappa & r\geq 1.
\end{cases}
.\]

We now want to show

-   \( H^{>0}(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; \mkern 1.5mu\overline{\mkern-1.5mu\kappa\mkern-1.5mu}\mkern 1.5mu^{\times}) = H^{>0}(\kappa; \mkern 1.5mu\overline{\mkern-1.5mu\kappa\mkern-1.5mu}\mkern 1.5mu^{\times}) \)
-   \( H^*( k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; \mkern 1.5mu\overline{\mkern-1.5mu\kappa\mkern-1.5mu}\mkern 1.5mu^{\times}) = H^*(\kappa; \mkern 1.5mu\overline{\mkern-1.5mu\kappa\mkern-1.5mu}\mkern 1.5mu^{\times}) = 0 \), and we were working on \( *=2 \).
:::

::: {.proposition title="?"}
For \( k \) any field, \( H^1(k; (k{ {}^{ \operatorname{sep} } })^+) = 0 \), where \( k^+ \) denotes taking the additive group.
:::

::: {.proof title="?"}
\( H^1 \) here classifies forms of SESs
\[
0\to k \to V\to k \to 0
,\]
since automorphisms of this SES correspond to matrices \( \left\{{ {
\begin{bmatrix}
  {1} & {*} 
\\
  {0} & {1}
\end{bmatrix}
} {~\mathrel{\Big|}~}*\in k^+}\right\} \cong k^+ \). But any form of this splits, since any SES of vector spaces splits.
:::

::: {.theorem title="?"}
For \( k \) any field, \( H^{>0}(k; (k{ {}^{ \operatorname{sep} } })^+) = 0 \).
:::

::: {.proof title="?"}
It's enough to show this for finite extensions, so consider \( H^{>0}(L_{/ {k}} ; L^+) = 0 \). The normal basis theorem implies that \( L^+ \cong k[G] \) as a \( G{\hbox{-}} \)module, since this is the regular representation. We'll use the following common lemma:

::: {.lemma title="Shapiro's Lemma"}
If \( H\leq G \) are finite groups and \( M \in {\mathsf{H}{\hbox{-}}\mathsf{Mod}} \) then
\[
H^*(G; \mathop{\mathrm{Ind}}_H^G M)\cong H^*(H; M), &&
\mathop{\mathrm{Ind}}_H^G M = M\otimes_{{\mathbb{Z}}[H]} {\mathbb{Z}}[G]
.\]
:::

Now use that
\[
H^*( { \mathsf{Gal}} (L_{/ {k}} ); k[{ \mathsf{Gal}} (L_{/ {k}} )] ) = H^*(1; k) = 0 && *>0
.\]
:::

::: {.proof title="of Shapiro's lemma"}
Let \( P^\bullet \rightrightarrows{\mathbb{Z}}\in {\mathsf{{\mathbb{Z}}[G]}{\hbox{-}}\mathsf{Mod}} \) be a free resolution and use Frobenius reciprocity to write
\[
H^*(G; \mathop{\mathrm{Ind}}_H^G M) 
&= H^*(\mathop{\mathrm{Hom}}(P^\bullet, \mathop{\mathrm{Ind}}_H^G M)) \\
&= H^*(\mathop{\mathrm{Hom}}( \mathop{\mathrm{Res}}^G_H P^\bullet, M)) \\
&= H^*(H; M)
,\]
where \( \mathop{\mathrm{Res}}_H^G P^\bullet \rightrightarrows{\mathbb{Z}}\in {\mathsf{{\mathbb{Z}}[H]}{\hbox{-}}\mathsf{Mod}} \) is a free resolution, since \( P^\bullet = {\mathbb{Z}}[G]{ {}^{ \scriptscriptstyle\oplus^{I} }  } \) (using that it's free) and thus \( \mathop{\mathrm{Res}}_H^G P^\bullet = {\mathbb{Z}}[H]{ {}^{ \scriptscriptstyle\oplus^{I'} }  } \).
:::

::: {.proof title="of theorem, part b"}
We now want to prove (3),
\[
H^*(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; U_{k^{\scriptscriptstyle\mathrm{un}}} / {\operatorname{Fil}}^r) = 0 && *>0
.\]
By induction on \( r \), since we have a SES
\[
0 \to{\operatorname{Fil}}^{r-1}/{\operatorname{Fil}}^r \to U_{k^{\scriptscriptstyle\mathrm{un}}}/{\operatorname{Fil}}^r \to U_{k^{\scriptscriptstyle\mathrm{un}}}/ {\operatorname{Fil}}_{r-1} \to 1
,\]
where \( H^* \) of the two outer terms vanishes and thus so does \( H^* \) of the middle by the LES in cohomology.

For (4), we want to show \( H^*(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; U_{k^{\scriptscriptstyle\mathrm{un}}}) \to \lim_r H^*(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; U_{k^{\scriptscriptstyle\mathrm{un}}} / {\operatorname{Fil}}_r) \). We can move an inverse limit in:
\[
\invlim_r \invlim_n H^*({k_n}_{/ {k}} ; U_{k^{\scriptscriptstyle\mathrm{un}}} / {\operatorname{Fil}}^r)
&= \invlim_r \invlim_n H^*(\mathop{\mathrm{Hom}}(P^\bullet, U_{k^{\scriptscriptstyle\mathrm{un}}} / {\operatorname{Fil}}^r)) \\
&= H^*(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; \invlim_r U_{k^{\scriptscriptstyle\mathrm{un}}} / {\operatorname{Fil}}^r)
.\]

This uses the Mittag-Leffler condition to show that \( \lim_1 \) vanishes, which applies because we actually have surjectivity.
:::

::: {.theorem title="Hasse"}
If \( D_{/ {k}}  \) is a division algebra over \( k \) a \( p{\hbox{-}} \)adic field (or any local field) with \( \dim_k D = n^2 \) (using that it's a form of a matrix algebra), then \( D \) is split by the unique **unramified** extension of \( k \) of degree \( n \).
:::

::: {.remark}
That there is a unique such extensions follows from the fact that \( \widehat{{\mathbb{Z}}} \) has a unique subgroup of every index.
:::

## Proof of theorem

::: {.remark}
Write \( k_n \) for the unique unramified extension of degree \( n \). We'll want to show

1.  Show that it's enough to show \( K_n \subseteq D \),
2.  Actually show \( k_n \subseteq D \).
:::

::: {.lemma title="?"}
For \( k \) any field and \( D_{/ {k}}  \) any division algebra of \( \dim_k D = n^2 \), then if \( L _{/ {k}}  \subseteq D \) is a Galois extension of degree \( n \), then \( D \) splits over \( L \).

> This is true without the extension being Galois.
:::

::: {.proof title="of lemma, using $\\Tw$"}
Write \( D = \mathop{\mathrm{End}}(V) \in \mathsf{Tw}_{/ {k}}  \) for some \( V\in \mathsf{Tw} \) of dimension \( n \), then
\[
D { \underset{\scriptscriptstyle {k} }{\times} {L} } = \mathop{\mathrm{End}}(V{ \underset{\scriptscriptstyle {k} }{\times} {L} }) \in \mathsf{Tw}_{/ {L}} 
.\]
Then since \( L \subseteq D \), we have \( L\curvearrowright V \) so \( L\otimes_k L \curvearrowright V_L \), then use that \( L\otimes_k L { { \, \xrightarrow{\sim}\, }}L^{n} \) for \( n\coloneqq\# { \mathsf{Gal}} (L_{/ {k}} ) \).

> Why: write \( L\otimes_k L = k[x] / I \) and use the Chinese remainder theorem!

We can write \( L^n = \oplus Le_i \), so \( V_L = \oplus e_i V_L \) which is dimension 1 and thus its Brauer class is trivial.
:::

::: {.remark}
Other proofs of this seem much more difficult!

So now let's show \( k_n \) splits \( D \). We'll need to develop some valuation theory for division algebras.
:::

::: {.definition title="Valuations on division algebras"}
Define a valuation \( v: D\to {\mathbb{Z}}\cup\left\{{\infty}\right\} \) extending the valuation on \( K \subseteq D \) given by \( 1/n {\operatorname{val}}(\operatorname{Nm}_{D_{/ {k}} }(x)) \). Equivalently, for \( x\in D \), use that \( k(x) \subseteq D \) is a finitely generated \( k{\hbox{-}} \)algebra in which every nonzero element is a unit, so it's a field and carries a natural valuation.
:::

::: {.definition title="Valuation ring"}
Define
\[
{\mathcal{O}}_D &\coloneqq\left\{{x{~\mathrel{\Big|}~}v(x) \geq 0}\right\} \subseteq D\\
{\mathfrak{m}}_D &\coloneqq\left\{{x{~\mathrel{\Big|}~}v(x) > 0}\right\} \subseteq D \\
{\mathcal{I}}&\coloneqq{\mathcal{O}}_D/{\mathfrak{m}}_D
,\]
where \( {\mathfrak{m}}_D \in \operatorname{mSpec}D \), and set
\[
f &\coloneqq[{\mathcal{I}}: k] && \text{Degree of field extensions} \\
e &\coloneqq[{\operatorname{val}}(k) : {\operatorname{val}}(D)] && \text{Ramification index}
.\]
:::

::: {.remark}
Note that \( {\mathcal{I}} \) is a field, since all division algebras over finite fields are field extensions (using our computation of the Brauer groups of fields).
:::

::: {.fact}
\( ef=n^2 \), where the same proof for extensions of \( p{\hbox{-}} \)adic fields goes through.
:::

::: {.claim}
\[
e=f=n
.\]
:::

::: {.remark}
We'll show

1.  \( e\leq n \),

2.  \( f\leq n \),

Then since \( ef=n^2 \) this forces \( e=f=n \).
:::

::: {.lemma title="?"}
Any commutative \( L \in {\mathsf{Alg}}_{/ {k}}  \) with \( L \subseteq D \) satisfies \( \dim_k L \leq n \).
:::

::: {.proof title="?"}
It's enough to prove this for \( \operatorname{Mat}(n\times n; k) \), since the dimension won't change after passing to a finite extension, and proving here is classical.

::: {.exercise title="?"}
Prove this!
:::
:::

::: {.proof title="of claim"}
For (1): chose \( \pi\in {\mathcal{O}}_D \) with \( v(\pi) = 1/e \), i.e. something with minimal positive valuation. Then \( k(\pi) \subseteq D \) is an extension over \( k \) of degree at most \( n \), by the lemma.

For (2): Write \( {\mathcal{I}}= \kappa( \alpha) \) for \( \alpha \) a primitive element, and let \( \tilde \alpha \in D \) be a lift. Then \( k( \tilde \alpha) \subseteq D \) is a field extension of degree \( \leq n \) by the lemma, and its residue field is \( {\mathcal{I}} \).
:::

::: {.corollary title="?"}
We have an exact equality
\[
[k( \tilde \alpha): k] = n
,\]
so \( k(\tilde \alpha)_{/ {k}}  \) is unramified, and there's a unique such extension, and since \( \kappa(\tilde \alpha) \subseteq D \).
:::

::: {.remark}
A proof of this theorem using \( \mathsf{Tw} \) or \( \mathsf{SB} \) would be clarifying.
:::

::: {.claim}
The following map is an isomorphism:
\[
{\mathbb{Q}}/{\mathbb{Z}}\cong H^2(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; (k^{\scriptscriptstyle\mathrm{un}})^{\times}) { { \, \xrightarrow{\sim}\, }}H^2(k; \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu^{\times})
.\]
:::

::: {.proof title="of claim"}
Use that the LHS is isomorphic to \( H^2(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; H^0(k^{\scriptscriptstyle\mathrm{un}}; \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu ^{\times})) \), and consider the Hochschild-Serre spectral sequence
\[
H^p(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; H^q(k^{\scriptscriptstyle\mathrm{un}}; \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu ^{\times})) \Rightarrow H^{p+q}(k; \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu ^{\times})
.\]

The spectral sequence reads:

```{=tex}
\begin{tikzcd}[column sep=0.05in]
    & {} \\
    \\
    \\
    \\
    && \textcolor{rgb,255:red,92;green,92;blue,214}{H^2(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; H^0(k^{\scriptscriptstyle\mathrm{un}}; \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu ^{\times})) = {\mathbb{Q}}/{\mathbb{Z}}} \\
    && \textcolor{rgb,255:red,214;green,92;blue,92}{H^1(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; H^0(k^{\scriptscriptstyle\mathrm{un}}; \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu ^{\times})) =_{90} 0} & \textcolor{rgb,255:red,214;green,92;blue,92}{H^1(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; H^1(k^{\scriptscriptstyle\mathrm{un}}; \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu ^{\times})) = 0} \\
    && \textcolor{rgb,255:red,92;green,92;blue,214}{H^0(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; H^0(k^{\scriptscriptstyle\mathrm{un}}; \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu ^{\times})) = k^{\times}} & \textcolor{rgb,255:red,214;green,92;blue,92}{H^0(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; H^1(k^{\scriptscriptstyle\mathrm{un}}; \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu ^{\times})) =_{90}0} & \textcolor{rgb,255:red,214;green,92;blue,92}{H^0(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ; H^2(k^{\scriptscriptstyle\mathrm{un}}; \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu ^{\times})) = 0} \\
    {} &&&&&& {} \\
    & {}
    \arrow[from=1-2, to=9-2]
    \arrow[from=8-1, to=8-7]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTAsWzIsNiwiSF4wKGteXFx1bnJhbVxcc2xpY2UgazsgSF4wKGteXFx1bnJhbTsgXFxiYXIgayBcXHVuaXRzKSkgPSBrXFx1bml0cyIsWzI0MCw2MCw2MCwxXV0sWzIsNSwiSF4xKGteXFx1bnJhbVxcc2xpY2UgazsgSF4wKGteXFx1bnJhbTsgXFxiYXIgayBcXHVuaXRzKSkgPV97OTB9IDAiLFswLDYwLDYwLDFdXSxbMiw0LCJIXjIoa15cXHVucmFtXFxzbGljZSBrOyBIXjAoa15cXHVucmFtOyBcXGJhciBrIFxcdW5pdHMpKSA9IFxcUVEvXFxaWiIsWzI0MCw2MCw2MCwxXV0sWzMsNiwiSF4wKGteXFx1bnJhbVxcc2xpY2UgazsgSF4xKGteXFx1bnJhbTsgXFxiYXIgayBcXHVuaXRzKSkgPV97OTB9MCIsWzAsNjAsNjAsMV1dLFszLDUsIkheMShrXlxcdW5yYW1cXHNsaWNlIGs7IEheMShrXlxcdW5yYW07IFxcYmFyIGsgXFx1bml0cykpID0gMCIsWzAsNjAsNjAsMV1dLFs0LDYsIkheMChrXlxcdW5yYW1cXHNsaWNlIGs7IEheMihrXlxcdW5yYW07IFxcYmFyIGsgXFx1bml0cykpID0gMCIsWzAsNjAsNjAsMV1dLFsxLDBdLFsxLDhdLFswLDddLFs2LDddLFs2LDddLFs4LDldXQ==)

Then for degree reasons, there are no nontrivial differentials to kill the two nonzero terms. One can alternatively use the SES
\[
0 \to \mathop{\mathrm{Br}}(k^{\scriptscriptstyle\mathrm{un}}_{/ {k}} ) \to \mathop{\mathrm{Br}}(k) \to \mathop{\mathrm{Br}}(k^{\scriptscriptstyle\mathrm{un}})
.\]
:::

# Tuesday, September 21

::: {.remark}
Last time: for \( k \) a \( p{\hbox{-}} \)adic field, we have \( \mathop{\mathrm{Br}}(k) = {\mathbb{Q}}/{\mathbb{Z}} \). The plan for today:

-   Examples

-   A SES for \( L \) a number field:
    \[
    0\to \mathop{\mathrm{Br}}(L) \to \bigoplus_{v\in  \mathrm{Pl}\qty{k}  } { L_{\widehat{v}} }\to {\mathbb{Q}}/{\mathbb{Z}}\to 0
    .\]

-   Possibly the Hasse-Minkowski theorem

-   The Brauer-Manin obstruction.
:::

## Construction of Brauer classes over \( K \) {#construction-of-brauer-classes-over-k}

::: {.remark}
Fix a character to a cyclic group
\[
\chi: { \mathsf{Gal}} (k{ {}^{ \operatorname{sep} } }_{/ {k}} ) \to C_n = \left\langle{\sigma}\right\rangle
\]
and set \( k_\chi \) to be the fixed field.
:::

::: {.definition title="Cyclic Algebra"}
For \( a\in k^{\times}/(k^{\times}){ {}^{\cdot n} } \), write
\[
(\chi, a) = k_\chi \left\langle{\sigma}\right\rangle / \left\langle{ \sigma s = s^{\sigma} \sigma, \sigma^n - a}\right\rangle && s\in k_\chi
.\]
:::

::: {.remark}
We have
\[
[(\chi, a)] \coloneqq[X] \smile[a] \in H^1(K; C_n)\cup H^1(K; \mu_n) = \mathop{\mathrm{Br}}(k)
.\]
There are cases where it's not known if these types of algebras are generators of certain Brauer groups.
:::

::: {.remark}
For \( k \) a \( p{\hbox{-}} \)adic field and \( k_n \) the unique unramified degree \( n \) extension, we can construct a character
\[
\chi_n: { \mathsf{Gal}} (k{ {}^{ \operatorname{sep} } }_{/ {k}} ) \to { \mathsf{Gal}} (k_n{}_{/ {k}} ) { \underset{{\mathrm{can}}}{{ { \, \xrightarrow{\sim}\, }}} }C_n
,\]
where the isomorphism is canonical, sending the Galois group to the Frobenius.
:::

::: {.theorem title="?"}
Let \( \pi \) be a uniformizer of \( {\mathcal{O}}_K \). Every CSA is equivalent to one of the form
\[
(\chi_n, \pi^m) \to {m\over n} \in {\mathbb{Q}}/{\mathbb{Z}}= \mathop{\mathrm{Br}}(k)
.\]
:::

::: {.remark}
If \( m, n \) are coprime one gets a division algebra.
:::

::: {.proof title="Sketch"}
This is mostly a computation that involves unwinding the isomorphism \( \mathop{\mathrm{Br}}(k) \to {\mathbb{Q}}/{\mathbb{Z}} \). A sketch:

-   The class \( [(\chi_n, \pi)] \) has order \( n \),
-   The class \( [(\chi_n, \pi)]^m = [(\chi_n, \pi^m)] \), which is given by a cup product.
:::

::: {.remark title="An algorithm to compute"}
Let \( D_{/ {k}}  \) be a division algebra.

-   Find a copy of \( k_n \) in \( D \), which can be done since this is a division algebra of dimension \( n^2 \).
-   There exists a \( \sigma \in D \) such that \( \sigma\curvearrowright K_n \) by conjugation is the canonical generator of \( { \mathsf{Gal}} (k_n {}_{/ {k}} ) { \underset{{\mathrm{can}}}{{ { \, \xrightarrow{\sim}\, }}} }C_n \) (where we take \( \mathop{\mathrm{Frob}} \) as the canonical generator).
-   Then \( [D] \mapsto {v(\sigma) \over n} \in {\mathbb{Q}}/{\mathbb{Z}}= \mathop{\mathrm{Br}}(k) \), where \( v \) is the normalized valuation on \( D \) we constructed previously. Note that this is well defined since changing \( D \) changes the output by an integer.
:::

::: {.example title="The simplest case: $n=2$"}
Using that there is in fact a canonical isomorphism \( \mu_2 \cong C_2 \) since there's only one nontrivial element in each group, we have
\[
H^1(k; C_2) = H^1(k; \mu_2) = k^{\times}/(k^{\times}){ {}^{\cdot 2} }
.\]
Hence any character
\[
\chi: { \mathsf{Gal}} (k{ {}^{ \operatorname{sep} } }_{/ {k}} ) \to C_2 = \mu_2
\]
is represented by some \( b_\chi \in k^{\times}/(k^{\times}){ {}^{\cdot 2} } \). So we have an identification
\[
(\chi, a) \leadsto (b_\chi, a)_2 = (a, b_\chi)_2
=
\begin{cases}
0 & v(a) \equiv v(b) \operatorname{mod}2 
\\
{1\over 2} & \text{else}.
\end{cases}
\]
For the corresponding extension to be unramified, one needs the valuation to be zero. So for example taking \( k(\pi)_{/ {k}}  \) yields a ramified extension since \( v(\pi ) = 1 \).

> Note that here \( ({-}, {-})_n \) is generally a Hilbert or norm-residue symbol.
:::

::: {.exercise title="?"}
Prove that these cyclic algebras are CSAs.
:::

## The SES

::: {.remark}
Our goal for today: for \( k \) a number field, show the following sequence is exact
\[
0\to \mathop{\mathrm{Br}}(k) \to \bigoplus_{v\in  \mathrm{Pl}\qty{k}  } { k_{\widehat{v}} }\xrightarrow{\sum} {\mathbb{Q}}/{\mathbb{Z}}\to 0
.\]
:::

::: {.proposition title="?"}
For \( \alpha \in \mathop{\mathrm{Br}}(k) \), using the pullback of \( i_v \),
\[
\mathop{\mathrm{Br}}(K) \xrightarrow{\prod_{i_v^*}} \prod_v \mathop{\mathrm{Br}}({ k_{\widehat{v}} })
\]
factors through \( \bigoplus_v \mathop{\mathrm{Br}}({ k_{\widehat{v}} }) \), i.e. \( i_v^*( \alpha) = 0 \) for almost all \( v \).
:::

::: {.proof title="of prop, proof 1"}
First represent \( \alpha \) by \( X\in \mathsf{SB} \), so \( X({ k_{\widehat{v}} }) \neq \emptyset \) for almost all \( v \). This implies \( X_{{ k_{\widehat{v}} }} \cong {\mathbb{P}}^n_{/ {k}}  \) for almost all \( v \).
:::

::: {.definition title="Ideles"}
\[
{\mathbb{I}}_k \coloneqq\prod_v' ({ k_{\widehat{v}} }^{\times}, {\mathcal{O}}_{{ k_{\widehat{v}} }}^{\times}) = \left\{{ (x_v) \in \prod_v { k_{\widehat{v}} }^{\times}{~\mathrel{\Big|}~}x_v \in {\mathcal{O}}_{{ k_{\widehat{v}} }}^{\times}\, \text{ for almost all } v}\right\}
.\]
A basis of open sets is given by \( (x) \cdot \prod_v {\mathcal{O}}_{{ k_{\widehat{v}} }}^{\times} \).
:::

::: {.warnings}
There is a map
\[
{\mathbb{I}}_k &\hookrightarrow{\mathbb{A}}_k^2 \\
x &\mapsto (x, x^{-1})
,\]
and there is a subspace topology -- but this is not equivalent to the topology above, and is in fact a source of an infamous error!
:::

::: {.definition title="S-ideles"}
If \( S \) is a finite set of places of \( K \) containing all infinite places, then define
\[
{\mathbb{I}}_{k, S} = \prod_{v\in S} { k_{\widehat{v}} }^{\times}\times \prod_{v\not\in S} {\mathcal{O}}_{{ k_{\widehat{v}} }}^{\times}\subseteq {\mathbb{I}}_K
.\]
:::

::: {.fact}
\[
{\mathbb{I}}_k = \colim_{S} {\mathbb{I}}_{k, s}
.\]
:::

::: {.remark}
The idea will be to study the following SES of Galois modules:
\[
1 \to L^{\times}\to {\mathbb{I}}_L \to C_L \to 1
,\]
where \( C_L \) is the idele class group.
:::

::: {.proposition title="?"}
\[
H^2(L_{/ {k}} ; {\mathbb{I}}_L) &= \bigoplus_{v\in \mathrm{Pl}\qty{k} }\mathop{\mathrm{Br}}({ L_{\widehat{v}} }{}_{/ {{ k_{\widehat{v}} }}} ) \\
H^2(k; {\mathbb{I}}_{k{ {}^{ \operatorname{sep} } }}) &= \bigoplus_{v\in \mathrm{Pl}\qty{k} } \mathop{\mathrm{Br}}({ k_{\widehat{v}} })
,\]
:::

::: {.theorem title="?"}
\[
H^1(L_{/ {k}} ; C_L) &= 0 \\
H^2(L_{/ {k}} ; C_L) &= [d] \in {\mathbb{Q}}/{\mathbb{Z}}, \quad d\coloneqq{1\over [L:k]}
.\]

This will imply
\[
H^1(k; C_{k{ {}^{ \operatorname{sep} } }}) &= 0 \\
H^2(k; C_{k{ {}^{ \operatorname{sep} } }}) &= {\mathbb{Q}}/{\mathbb{Z}}
.\]
:::

::: {.proof title="sketch"}
We can write
\[
H^2(L_{/ {k}} ; {\mathbb{I}}_L) 
&= H^2(L_{/ {k}} ; \directlim_T {\mathbb{I}}_{L, T}) \\
&= \directlim_T H^2(L_{/ {k}} ; {\mathbb{I}}_{L, T})
,\]
so it's enough to show that for \( S \) a finite set of places of \( K \) and \( T \) a set of places over \( S \) that we have
\[
H^2(L_{/ {k}} ; {\mathbb{I}}_{L, T}) = \bigoplus_{v\in S} \mathop{\mathrm{Br}}({ L_{\widehat{v}} }_{/ {{ k_{\widehat{v}} }}} )
.\]
:::

::: {.exercise title="?"}
Try to prove this, it uses Shapiro's lemma and isn't too difficult.
:::

# Thursday, September 23

::: {.remark}
Let \( k\in \mathsf{Field} \), we have a SES \( 1\to k^{\times}\to {\mathbb{I}}_k \to C_k \to 1 \). An exercise from last time: for \(  \mathrm{Pl}\qty{k}  \) the places of \( k \), prove that
\[
H^2(L_{/ {k}} ; {\mathbb{I}}_L) = \bigoplus_{v\in  \mathrm{Pl}\qty{k} } \mathop{\mathrm{Br}}({ L_{\widehat{v}} }/{ k_{\widehat{v}} })
,\]
where \( { L_{\widehat{v}} } \) was obtained by choosing any place above \( v \) in \( L \) and completing.
:::

## Proof of Theorem

::: {.remark}
For \( S \subseteq  \mathrm{Pl}\qty{k}  \) a finite set of places containing all of the infinite places and \( T \) a set of places of \( L \) above \( S \), we have
\[
{\mathbb{I}}_{L, T} = \prod_{w\in T}L_w^{\times}\times \prod_{w\not\in T} {\mathcal{O}}_{{ L_{\widehat{v}} }}^{\times}
.\]
We can also write \( H^2(L_{/ {k}} ; {\mathbb{I}}_L) = \directlim_T H^2(L_{/ {k}} ; {\mathbb{I}}_{L, T}) \), so it's enough to show the following:
\[
H^2(L_{/ {k}} ; {\mathbb{I}}_{L, T}) &= \bigoplus_{v\in S} \mathop{\mathrm{Br}}({ L_{\widehat{v}} }/ { k_{\widehat{v}} }) \\
H^2(L_{/ {k}} ; {\mathbb{I}}_{\mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu, T}) &= \bigoplus_{v\in S} \mathop{\mathrm{Br}}({ k_{\widehat{v}} })
.\]
We have
\[
H^2(L_{/ {k}} ; {\mathbb{I}}_{L, T}) = \prod_{v\in S} H^2(L_{/ {k}} ; \prod_{w_{/ {v}} } L_w^{\times}) \times \prod_{v\in S} H^2(L_{/ {k}} ; \prod_{w_{/ {v}} } {\mathcal{O}}_{L_w} ^{\times}) 
,\]
noting that we need to take the entire product to actually get a Galois module.
:::

::: {.claim}
\[
H^2(L_{/ {k}} ; \prod_{w_{/ {v}} } { L_{\widehat{v}} }^{\times}) &= \mathop{\mathrm{Br}}({ L_{\widehat{v}} }{}_{/ { { k_{\widehat{v}} }}}  ) \\
H^2(L_{/ {k}} ; \prod_{w_{/ {v}} } { L_{\widehat{v}} }^{\times}) &= 0 
.\]
:::

::: {.proof title="of 1"}
\[
H^2(L_{/ {k}} ; \prod_{w_{/ {v}} } L_w^{\times}) 
&=
H^2(L_{/ {k}} ; \mathop{\mathrm{Ind}}_{{ \mathsf{Gal}} (L/k)}^{{ \mathsf{Gal}} ({ L_{\widehat{v}} }/{ k_{\widehat{v}} })} { L_{\widehat{v}} }^{\times}) \\
&= H^2({ L_{\widehat{v}} }_{/ {{ k_{\widehat{v}} }}} ; { L_{\widehat{v}} }^{\times}) \\
&\coloneqq\mathop{\mathrm{Br}}({ L_{\widehat{v}} }_{/ {{ k_{\widehat{v}} }}} )
.\]
:::

::: {.proof title="of 2"}
Write
\[
H^2(L_{/ {k}} ; \prod_{w_{/ {v}} } L_w^{\times}) 
&= 
H^2(L_{/ {k}} ; \mathop{\mathrm{Ind}}_{{ \mathsf{Gal}} (L/k)}^{{ \mathsf{Gal}} ({ L_{\widehat{v}} }/{ k_{\widehat{v}} })} {\mathcal{O}}_{{ L_{\widehat{v}} }}^{\times}) \\
&= 
H^2({ L_{\widehat{v}} }_{/ {{ k_{\widehat{v}} }}} ; {\mathcal{O}}_{{ L_{\widehat{v}} }}^{\times})\\
&= 0
.\]
:::

::: {.corollary title="?"}
```{=tex}
\begin{tikzcd}
    {\mathop{\mathrm{Br}}(k)} && {\bigoplus_{v} \mathop{\mathrm{Br}}({ k_{\widehat{v}} })} \\
    \\
    {H^2(k; \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu^{\times})} && {H^2(k; \mathbb{I}_{\mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu}) }
    \arrow[from=1-1, to=1-3]
    \arrow[from=3-1, to=3-3]
    \arrow[Rightarrow, no head, from=1-1, to=3-1]
    \arrow[Rightarrow, no head, from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXEJyKGspIl0sWzIsMCwiXFxiaWdvcGx1c197dn0gXFxCcihrX3YpIl0sWzAsMiwiSF4yKGs7IFxcYmFye2t9XFx1bml0cykiXSxbMiwyLCJIXjIoazsgXFxJSV97XFxiYXIga30pIl0sWzAsMV0sWzIsM10sWzAsMiwiIiwxLHsibGV2ZWwiOjIsInN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMSwzLCIiLDEseyJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dXQ==)
:::

## Injectivity

::: {.theorem title="Injectivity"}
\( \mathop{\mathrm{Br}}(k) \hookrightarrow\bigoplus_v \mathop{\mathrm{Br}}({ k_{\widehat{v}} }) \) is injective, since \( H^1(L_{/ {k}} ; C_L) = 0 \).
:::

::: {.theorem title="Actual IRL application of Sylow theorems"}
If \( G \) is a finite group and \( M\in {\mathsf{G}{\hbox{-}}\mathsf{Mod}} \) then \( H^i(G; M) = 0 \) if \( H^i(G_p; { \left.{{M}} \right|_{{G_p}} }) = 0 \) for all \( p \) where \( G_p \) is a \( p{\hbox{-}} \)Sylow subgroup of \( G \).
:::

::: {.proof title="?"}
There's a map
\[
\qty{H^1(G; M) \xrightarrow{\operatorname{res}}H^1(G_p; { \left.{{M}} \right|_{{G_p}} }) \xrightarrow{\mathop{\mathrm{coRes}}} H^1(G; M) } = {\operatorname{mult}}_d, d \coloneqq[G: G_p]
.\]
Since \( d \) is prime to \( p \), \( \operatorname{res} \) is injective on \( p{\hbox{-}} \)power torsion, making \( H^1(G; M) \) torsionfree. Then since \( G \) is finite, \( H^i(G; M) \) is torsion, and the only torsion torsionfree group is zero.
:::

::: {.remark}
There will be multiple steps:

-   It's enough to prove this for \( { \mathsf{Gal}} (L_{/ {k}} ) \) a \( p{\hbox{-}} \)group, using theorem on applications of Sylow. We know enough about the structure of \( p{\hbox{-}} \)groups to make induction arguments!

-   It's enough to show that \( H^i(L_{/ {k}} ; C_L) = 0 \) for \( L_{/ {k}}  \) cyclic. Letting \( L_{/ {k}}  \) be Galois with \( G\coloneqq H^i(L_{/ {k}} ) \) a \( p{\hbox{-}} \)group, then let \( H \leq G \) be a nontrivial normal cyclic subgroup. Then the inflation-restriction exact sequence yields
    \[
    0 \to H^1(G/H; C_L^H) \to H^1(G; C_L) \to H^1(H; C_L) 
    ,\]
    using idele class groups and writing \( C_L^H \) for the class group of the fixed field by \( H \), and recalling that this comes from the Hochschild-Serre spectral sequence. By induction on the size of \( G \), we'll know the right-hand side is 0, and the left-hand side is 0 by induction on \( \# G \). However, note that we have to show this for *all* cyclic extensions!

-   Prove the following theorem;
:::

::: {.remark}
Note that \( C_L \) will not even be finitely generated!
:::

::: {.theorem title="?"}
If \( L_{/ {k}}  \) is cyclic, then \( H^1(L_{/ {k}} ; C_L) = 0 \), and \( \# H^2(L_{/ {k}} ; C_L) = [L: k] \).
:::

::: {.warnings}
Note that \( \# H^1 = 1 \) in this case!
:::

::: {.definition title="Herbrand Quotient"}
If \( G \) is finite cyclic and \( M\in {\mathsf{G}{\hbox{-}}\mathsf{Mod}} \), define the **Herbrand quotient** as
\[
q(M) \coloneqq{ \# H^2(G; M) \over \# H^1(G; M) }
,\]
whenever this ratio is defined.
:::

::: {.remark}
Taking logs makes this look like an Euler characteristic.
:::

::: {.lemma title="Herbrand quotients are multiplicative"}
Suppose \( 0\to A\to B\to C\to 0 \) is a SES of \( G{\hbox{-}} \)modules for \( G \) cyclic. Then
\[
q(A) q(C) = q(B)
.\]
:::

::: {.exercise title="A fun one"}
Prove this! It's the same proof that \( \chi(A) + \chi(C) = \chi(B) \).
:::

::: {.lemma title="?"}
If \( M \) is finite, then \( q(M) = 1 \), so this invariant for infinite modules.
:::

::: {.proof title="?"}
We first claim that \( \# M^G = \# M_G \), recalling that \( M_G = M/\left\langle{g-1}\right\rangle = M/IM \) for \( I \) the augmentation ideal. Note that in finite groups, for a SES \( 0\to A\to B\to C\to 0 \) yields \( \#B = (\# A)\cdot (\# C) \), or equivalently \( (\#A)\cdot (\# B)^{-1}\cdot (\# C) = 1 \) and this extends to longer exact sequences.

Now use the exact sequence
\[
0 \to M^G \to M \xrightarrow{g-1} M \to M_G \to 0
,\]
and so
\[
(\# M^G) \cdot (\# M)^{-1}\cdot (\# M) \cdot (\# M_G)^{-1}= 1
.\]

Now to show that the sizes are equal, Recall that
\[
H^*(G; M) = H^*\qty{ M \xrightarrow{g-1} M \xrightarrow{\sum g^i} M \to \cdots}
.\]
Thus we get
\[
0 \to H^1(G; M) \to \operatorname{coker}( M \xrightarrow{g-1} M) \xrightarrow{\sum g^i} \ker(M \xrightarrow{g-1} M) \twoheadrightarrow H^2(G; M) \to 0 \\
\implies 0 \to H^1(G; M) \to M_G \xrightarrow{\sum g^i} M^G \twoheadrightarrow H^2(G; M) \to 0
,\]
so
\[
\# H^1(G; M) \cdot (\# M_G)^{-1}\cdot(\# M^G) \cdot (\# H^2(G; M))^{-1}= 1 = q(M)^{-1}
.\]
:::

::: {.lemma title="?"}
If \( M, N \) are finitely generated in \( {\mathsf{G}{\hbox{-}}\mathsf{Mod}} \) and \( M\otimes{\mathbb{R}}\cong N\otimes{\mathbb{R}}\in {\mathsf{G}{\hbox{-}}\mathsf{Mod}} \), then \( q(M) = q(N) \).
:::

::: {.remark}
Analogy: Reidemeister torsion! Tensoring up to \( {\mathbb{R}} \) somehow doesn't lose all torsion information.
:::

::: {.proof title="of lemma"}
We'll first show \( M\otimes{\mathbb{Q}}{ { \, \xrightarrow{\sim}\, }}N\otimes{\mathbb{Q}} \) implies \( q(M) = q(N) \).

::: {.claim}
There is a map \( M/{\operatorname{tors}}\to N/{\operatorname{tors}} \) with finite kernel and cokernel.
:::

```{=tex}
\begin{tikzcd}[column sep=0.25in]
    0 && 0 \\
    \\
    {M_{\operatorname{tors}}} && {N_{\operatorname{tors}}} \\
    &&&& 0 & {M_{\operatorname{tors}}} & M & {N/N_{\operatorname{tors}}} & {\text{torsion!}} & 0 \\
    M && N \\
    \\
    {M\otimes{\mathbb{Q}}} && {N\otimes{\mathbb{Q}}}
    \arrow[from=1-1, to=3-1]
    \arrow[from=3-1, to=5-1]
    \arrow[from=5-1, to=7-1]
    \arrow["{\sim, \quad n\cdot p}", from=7-1, to=7-3]
    \arrow[from=3-3, to=5-3]
    \arrow[from=5-3, to=7-3]
    \arrow[from=1-3, to=3-3]
    \arrow[from=5-1, to=5-3]
    \arrow[from=3-1, to=3-3]
    \arrow[dashed, from=5-1, to=7-3]
    \arrow[from=4-5, to=4-6]
    \arrow[from=4-6, to=4-7]
    \arrow[from=4-7, to=4-8]
    \arrow[from=4-8, to=4-9]
    \arrow[from=4-9, to=4-10]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTQsWzAsMCwiMCJdLFswLDIsIk1fXFx0b3JzIl0sWzAsNCwiTSJdLFswLDYsIk1cXHRlbnNvciBcXFFRIl0sWzIsNiwiTlxcdGVuc29yIFxcUVEiXSxbMiw0LCJOIl0sWzIsMiwiTl9cXHRvcnMiXSxbMiwwLCIwIl0sWzQsMywiMCJdLFs1LDMsIk1fXFx0b3JzIl0sWzYsMywiTSJdLFs3LDMsIk4vTl9cXHRvcnMiXSxbOCwzLCJcXHRleHR7dG9yc2lvbiF9Il0sWzksMywiMCJdLFswLDFdLFsxLDJdLFsyLDNdLFszLDQsIlxcc2ltLCBcXHF1YWQgblxcY2RvdCBwIl0sWzYsNV0sWzUsNF0sWzcsNl0sWzIsNV0sWzEsNl0sWzIsNCwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzgsOV0sWzksMTBdLFsxMCwxMV0sWzExLDEyXSxbMTIsMTNdXQ==)

::: {.claim}
\[
M\otimes{\mathbb{R}}\cong N\otimes{\mathbb{R}}
\iff
M\otimes{\mathbb{Q}}\cong N \otimes{\mathbb{Q}}
.\]
:::

::: {.exercise title="?"}
Prove this!
:::
:::

# Tuesday, September 28

> See fppf cohomology. Note: statements of the form \( A\otimes C \cong B\otimes C \implies A\cong B \) aren't quite descent! There's no descent data or e.g. Galois equivariance, and the downstairs maps may not be related to the original map at all.

::: {.theorem title="?"}
For \( L_{/ {k}}  \) cyclic of degree \( n \),
\[
q(C_L)=n
.\]
:::

::: {.remark}
Recall that \( q \) is multiplicative in exact sequences, equals 1 for finite \( G{\hbox{-}} \)modules, and if \( M\otimes R \cong N\otimes R \) then \( q(M)= q(N) \).
:::

::: {.proof title="of 3rd property"}
It's enough to show this for \( M, N \) torsionfree, since \( q(M) = q(M/M_{\operatorname{tors}}) \). The claim is that for \( R \) sufficiently divisible, letting \( M\otimes{\mathbb{Q}}\xrightarrow{\phi} N \otimes{\mathbb{Q}} \), \( { \left.{{\phi}} \right|_{{M}} } \) factors through \( N \) with torsion kernel. Use that \( M\otimes{\mathbb{R}}{ { \, \xrightarrow{\sim}\, }}N\otimes{\mathbb{R}} \) implies \( M\otimes{\mathbb{Q}}{ { \, \xrightarrow{\sim}\, }}N\otimes{\mathbb{Q}} \) Now we claim that if \( G \in {\mathsf{Grp}} \) and \( V_1, V_2\in {\mathsf{G}{\hbox{-}}\mathsf{Mod}} \) over a field \( k \) and \( L_{/ {k}}  \) is any extension, then \( V_1\otimes L { { \, \xrightarrow{\sim}\, }}V_2\otimes L \) implies \( V_1 { { \, \xrightarrow{\sim}\, }}V_2 \).
:::

::: {.proof title="of claim"}
1: Use that \( \mathop{\mathrm{Hom}} \) commutes with tensor products in the following way:
\[
\mathop{\mathrm{Hom}}_G(V_1\otimes L, V_2\otimes L) = \mathop{\mathrm{Hom}}_G(V_1, V_2)\otimes L
.\]
We can write the LHS as \( (V_1 {}^{ \vee }\otimes V_2 \otimes_k L)^G \), and the right-hand side as \( (V_1 {}^{ \vee }\otimes V_2)^G \otimes_k L \). It's enough to show that for any \( G{\hbox{-}} \)representation \( V \), since \( V^G \otimes L \cong (V\otimes L)^G \) where \( V^G \coloneqq\ker( V{ {}^{ \scriptscriptstyle\oplus^{q} }  } \xrightarrow{q} \bigoplus _{g\in G} V ) \). But now we're done since \( L_{/ {k}}  \) is flat.

2: If both \( V_i \) are irreducible over \( L \), this follows from Schur. For \( V_i \) irreducible over \( k \) an infinite field, then being an isomorphism is a Zariski open condition, and any Zariski open subset of \( {\mathbb{A}}^{n}_{/ {k}}  \) has infinitely many rational points.
:::

::: {.theorem title="?"}
If \( L_{/ {k}}  \) is cyclic and \( S \) is a set of primes of \( K \) including all infinite primes, all primes that ramify, and all primues under a set of generators of the class group of \( L \), letting \( T \) be the set of primes of \( L \) over \( S \), we have

-   \( q({\mathbb{I}}_{L, T}) = \prod_{v\in S} [{ L_{\widehat{v}} }: { k_{\widehat{v}} }] \)
-   \( [L: k] q({\mathcal{O}}_{L, T}^{\times}) = \prod_{v} [{ L_{\widehat{v}} }: { k_{\widehat{v}} }] \)
-   \( q(C_L) = [L : k] \)
:::

::: {.proof title="1 and 2 imply 3"}
There is a SES
\[
0 \to {\mathcal{O}}_{L, T}^{\times}\to {\mathbb{I}}_{L, T} \to C_L \to 1
,\]
where \( {\mathcal{O}}_{L, T}^{\times} \) allows denominators in \( T \). Then using (1) and (2),
\[
q(C_L) = q({\mathbb{I}}_{L, T}) / q({\mathcal{O}}_{L, T}^{\times}) = [L: k]
.\]
:::

::: {.proof title="of 1"}
Write \( {\mathbb{I}}_{L, T} = \prod_{v\in T} { L_{\widehat{v}} }^{\times}\times \prod_{v \not\in T} {\mathcal{O}}_{{ L_{\widehat{v}} }}^{\times} \), so
\[
q({\mathbb{I}}_{L, T})
&= \prod_{v\in S} q( \prod_{w\in  \mathrm{Pl}\qty{/L}  } L_w^{\times}) \\
&= \prod_{v\in S} { \# H^2({ L_{\widehat{v}} }_{/ {{ k_{\widehat{v}} }}} ; { L_{\widehat{v}} }^{\times}) \over \# H^2({ L_{\widehat{v}} }_{/ {{ k_{\widehat{v}} }}} ; { L_{\widehat{v}} }^{\times}) }\\
&= \prod_{v\in S} \# \mathop{\mathrm{Br}}({ L_{\widehat{v}} }_{/ {{ k_{\widehat{v}} }}} )\\
&= \prod_{v\in S} [{ L_{\widehat{v}} }: { k_{\widehat{v}} }]
.\]
:::

::: {.proof title="of 2"}
Write \( L_1 \coloneqq\mathop{\mathrm{Hom}}_{\mathsf{Set}}(T, {\mathbb{Z}}) \) and
\[
L_2 \coloneqq m(\lambda: {\mathcal{O}}_{L, T}^{\times}&\to L_1\otimes{\mathbb{R}})
\alpha &\mapsto ( \log{\left\lvert { \alpha} \right\rvert}_w )_{w\in T} 
.\]
Dirichlet's unit theorem implies \( L_2 \hookrightarrow L_1^0\otimes{\mathbb{R}}\coloneqq\left\{{\mathbf{x} {~\mathrel{\Big|}~}\sum x_i = 0}\right\} \) is a lattice. We can write
\[
L_1 
&= \bigoplus _{v\in S} \bigoplus _{w_{/ {v}} } {\mathbb{Z}}\\
&= \bigoplus _{v\in S} \mathop{\mathrm{Ind}}_{{ \mathsf{Gal}} ({ L_{\widehat{v}} }_{/ {{ k_{\widehat{v}} }}} )}^{ { \mathsf{Gal}} (L_{/ {k}} )} {\mathbb{Z}}
,\]
Thus
\[
q(L_1)
&=
\prod _{v\in S} q\qty{ \mathop{\mathrm{Ind}}_{{ \mathsf{Gal}} ({ L_{\widehat{v}} }_{/ {{ k_{\widehat{v}} }}} )}^{ { \mathsf{Gal}} (L_{/ {k}} )} {\mathbb{Z}}} \\
&=
\prod_{v\in S} q({ L_{\widehat{v}} }_{/ {{ k_{\widehat{v}} }}} , {\mathbb{Z}}) \\
&= \prod_{v\in S} [{ L_{\widehat{v}} }: { k_{\widehat{v}} }]
.\]

To compute the other side, use that there is a SES \( 0\to L_1^0 \to L_1 \xrightarrow{\Sigma} {\mathbb{Z}}\to 0 \). So
\[
q(L_1^0) = q(L_1) / q(L_{/ {k}} ; {\mathbb{Z}}) = {\prod [{ L_{\widehat{v}} }: { k_{\widehat{v}} }] \over [L: k] } 
.\]
Now note \( q(L_k) = q({\mathcal{O}}_{L, T}^{\times}) \) and there is a SES
\[
0 \to \mu(L) \to {\mathcal{O}}_{L, T}^{\times}\to L_k \to 0 \implies q({\mathcal{O}}_{L, T}^{\times}) = q(L_k)
,\]
where \( \mu(L) \) are the roots of unity in \( L \), which form a finite group. Then
\[
q({\mathcal{O}}_{L, T}^{\times}) = q(L_1^0) = {\prod [{ L_{\widehat{v}} }: { k_{\widehat{v}} }] \over [L:k] }
.\]
:::

::: {.fact title="from class field theory"}
\[
\#\qty{{\mathbb{I}}_K \over  k^{\times}\operatorname{Nm}_{L_{/ {k}} } {\mathbb{I}}_L } = [L: k]
.\]
How to prove: reduce to Kummer extensions, adjoin \( p \)th roots of unity, etc.
:::

::: {.remark}
This fact implies \( H^1(L_{/ {k}} ; C_L) = 1 \). The proof is that \( \#\qty{H^2/H^1} = [L: k] \), which implies \( \# H^1 = 1 \).
:::

::: {.theorem title="?"}
Severi-Brauer varieties over \( k \) satisfy the Hasse principle, i.e. the following sequence is exact:
\[
0 \to \mathop{\mathrm{Br}}(k) \to \bigoplus _{v\in  \mathrm{Pl}\qty{k} } \mathop{\mathrm{Br}}({ k_{\widehat{v}} })
.\]
:::

## Proof

::: {.theorem title="Hasse-Minkowski"}
Let \( q \) be a quadratic form over a number field \( k \), then the projective quadric \( X\coloneqq\left\{{q=0}\right\} \subseteq {\mathbb{P}}^n_{/ {k}}  \) satisfies the Hasse principle: \( X \) has rational points over \( k \) iff \( X \) has rational points over \( { k_{\widehat{v}} } \) for all \( v\in \mathrm{Pl}\qty{k}  \).
:::

::: {.definition title="Quadratic forms representing elements"}
Given \( q \) a quadratic form over \( k \) a field (e.g. a number field or a local field), then for \( a\in k \), we say \( q \) **represents** \( a \) if there exist elements \( \mathbf{x}\in k^n\setminus\left\{{0}\right\} \) such that \( q(\mathbf{x}) = 0 \).
:::

::: {.theorem title="a stronger one"}
Given \( a\in k \), \( q \) represents \( a \) iff over \( k \) iff \( q \) represents \( a \) over \( { k_{\widehat{v}} } \) for all \( v\in  \mathrm{Pl}\qty{k}  \). Moreover, rational points are Zariski dense on \( q(x) = a \).
:::

::: {.remark}
That this implies the first theorem is easy, setting \( a=0 \). Conversely, consider \( q'(\mathbf{x}, z) \coloneqq q(\mathbf{x}) - az^2 \). Then \( q \) represents \( a \) iff \( q' \) represents 0 -- however, this can go wrong if \( z=0 \)! Exercise: find a good proof.
:::

::: {.proof title="?"}
Let \( n \) be the number of variables.

-   For \( n=1 \), we saw that \( x^2=a \) satisfies the Hasse principle in the first class. Moreover rational points are Zariski dense on the projective variety \( x^2 = ay^2 \).
-   For \( n=2 \), consider \( q(x_1, x_2) = a \). We'll pick this up next time!
:::

# Tuesday, October 05

::: {.remark}
Goal: prove the Hasse-Minkowski theorem. We looked at \( n\leq 3 \), so today we'll look at \( n=4 \).
:::

::: {.theorem title="?"}
Let \( Q \subseteq {\mathbb{P}}^3_{/ {k}}  \) be a smooth quadric, then
\[
Q(k) \neq \emptyset \iff Q({ k_{\widehat{v}} }) \neq \emptyset
\]
for all places \( v\in  \mathrm{Pl}\qty{k}  \).
:::

::: {.proof title="$n=4$ case"}
Let \( X \subseteq {\operatorname{Gr}}_1({\mathbb{P}}^3) \) be the variety of lines in \( Q \), and consider \( {\mathcal{I}}\to X \) the universal family. Then \( X_{ { \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu } } = {\mathbb{P}}^1 \cup{\mathbb{P}}^1 \) since \( Q_{ { \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu } } = {\mathbb{P}}^1 \times {\mathbb{P}}^1 \xhookrightarrow{{\mathcal{O}}(1, 1)} {\mathbb{P}}^3 \). Consider the case when \( X \) is not connected. Then

-   \( {\mathcal{U}}_c \to Q \) is an isomorphism, which can be checked over \(  { \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu }  \).
-   \( Q({ k_{\widehat{v}} }) \neq \emptyset \) implies \( {\mathcal{U}}_c({ k_{\widehat{v}} }) \neq \emptyset \) and thus \( C({ k_{\widehat{v}} }) \neq \emptyset \) for all \( v \).
-   By the Hasse principle for Severi-Brauers, if \( C={\mathbb{P}}^1 \) implies \( C(k) \neq \emptyset \).
-   Then \( {\mathcal{U}}_c \to C \) is Zariski trivial, so \( {\mathcal{U}}_c \cong Q \) has rational points.

```{=tex}
\begin{tikzcd}
    {{\mathcal{U}}_c} && {\mathcal{U}}&& Q \\
    \\
    C && X
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=3-3]
    \arrow[hook, from=3-1, to=3-3]
    \arrow[from=1-1, to=3-1]
    \arrow[from=1-3, to=1-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwwLCJcXG1jdV9jIl0sWzAsMiwiQyJdLFsyLDIsIlgiXSxbMiwwLCJcXG1jdSJdLFs0LDAsIlEiXSxbMCwzXSxbMywyXSxbMSwyLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFswLDFdLFszLDRdXQ==)

Now consider the case when \( X \) is connected. The claim is that there exists a quadratic extensions \( k'/k \) where \( X_{k'} \) is not connected:

-   \( k' = {{\Gamma}\qty{X; {\mathcal{O}}_X} } \), which is a rank 2 vector bundle (which can be checked over \(  { \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu }  \)). So
    \[
    {{\Gamma}\qty{X_{k'}; {\mathcal{O}}_{X_{k'}}} } = {{\Gamma}\qty{X; {\mathcal{O}}_X} }_{k'} = k' \otimes_k k' \cong k' \oplus k'
    ,\]
    so \( X_{k'} \) is disconnected.

-   We can take \( [Q] \in H^1(k; {\operatorname{O}}_n) \xrightarrow{\operatorname{det}} H^1(k; \mu_2) \), and it maps to \( [k'] \).

-   \( { \mathsf{Gal}} ( { \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu } _{/ {k}} ) \) acts on \( {\operatorname{Pic}}(Q) \cong {\mathbb{Z}}{ {}^{ \scriptscriptstyle\times^{2} }  } \), and this action factors through \( \left\{{\pm 1}\right\} \). Here \( {\operatorname{O}}_n = \mathop{\mathrm{Aut}}(\sum x_i^2) \).

    -   Why: this action preserves the *effective cone* in \( {\operatorname{Pic}}(Q_{ { \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu } }) \) spanned by \( \pi_1^* {\mathcal{O}}(1) \) and \( \pi_2^* {\mathcal{O}}(1) \), which are those bundles with global sections (which is preserved by Galois).

::: {.warnings}
Even if \( [L] \in {\operatorname{Pic}}Q \) is Galois-invariant, this does not imply that \( L \) is defined over \( k \)! This can be a common source of errors.
:::

By case 1, \( X(k')\neq \emptyset \), so there exists a rational line \( L \subseteq Q \) contained in one connected component of \( X_{k'} \). There is an action \( { \mathsf{Gal}} (k'_{/ {k}} )\curvearrowright L \), so take \( \sigma \in { \mathsf{Gal}} (k'_{/ {k}} ) \). Then \( \sigma(L) \) is in the other component \( X_{k'} \), since Galois interchanges its components pointwise. Then considering the two rulings of the quadric yields the following picture, where they intersect at a point:

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/RationalPoints/sections/figures}{2021-10-05_10-08.pdf_tex} };
\end{tikzpicture}
```
But then \( \sigma(p) = p \) is Galois fixed, and is thus a \( k{\hbox{-}} \)rational point.
:::

::: {.theorem title="?"}
Let \( n\geq 5 \) and \( Q = \sum_{l\leq i \leq n} a_i x_i^2 \) be a nondegenerate quadratic form over a number field \( k \). Then \( Q \) satisfies the Hasse principle.
:::

::: {.proof title="General case"}
We'll proceed by induction on \( n\geq 5 \). Write \( Q = a_1 x_1^2 + a_2 x_2^2 + G(x_3,\cdots, x_n) \).

::: {.claim}
\( G \) represents \( { k_{\widehat{v}} } \) for almost all \( v\in  \mathrm{Pl}\qty{k}  \).
:::

It's enough to show that \( G'(x_3,\cdots, x_{n+1}) \coloneqq G(x_3, \cdots, x_n) + ax_{n+1}^2 \) represents 0 for all \( a\in { k_{\widehat{v}} } \) and almost all \( v \). Without loss of generality, we can assume \( G \) is nondegenerate over the residue field \( \kappa(v) \), by throwing out finitely many things. Then \( G' \) has rank at least \( n-2 \) over \( \kappa(v) \) for almost all \( v \).

::: {.claim}
\( G' \) has a smooth rational point for for all
:::

Using the Lang-Weil estimates (using absolute irreducibility), \( G'(\kappa(v)) \) has about \( (\# \kappa(v))^{n-3} \) rational points, where the error term is uniform in \( v \). The singular locus is a dimension smaller, so about \( (\# \kappa(v))^{n-4} \), and for \( n \) large enough for this to hold, the former is larger.

Now use Hensel's lemma, any smooth rational point on the special fiber lifts to the generic fiber (i.e. the infinitesimal smoothness criteria). This proves the first claim that \( G \) represents \( { k_{\widehat{v}} } \) for almost all \( v \).

::: {.fact}
For almost all \( v \), \( G(x_3,\cdots, x_n) \) represents *every* element of \( k \).
:::

Let \( U \subseteq (\prod { k_{\widehat{v}} }) { {}^{ \scriptscriptstyle\times^{n-2} }  } k[v] \) be the set \( \left\{{ (x_3, v), \cdots, (x_n, v)}\right\} \) such that there exists an \( (x_1, v), (x_2, v) \) with \( Q(x_1, \cdots, x_n) = 0 \). Some claims:

-   \( U \) is open, which follows from the fact above,
-   \( U \) is nonempty since \( Q \) represents 0 locally by hypothesis,
-   The set \( U' \subseteq (\prod { k_{\widehat{v}} }){ {}^{ \scriptscriptstyle\times^{2} }  } \) of pairs \( (x_1, v), (x_2, v) \) such that there exist \( (x_3,v),\cdots,(x_n, v) \) with \( Q(x_1,\cdots, x_n)=0 \) is also open.

Then by weak approximation, there exist \( x_1, x_2\in k \) such that \( (x_1, x_2)\in U \). So write \( c = a_1 x_1^2 + a_2 x_2^2\in k \) and define \( Q'(z, x_3,\cdots, x_n) = -cz^2 + G(x_3,\cdots, x_n) \). This is a quadratic form in \( n-1 \) variables that represents 0 locally. Now by induction, \( Q' \) represents zero globally.
:::

# Tuesday, October 12

> Reference: FGA Explained.

::: {.proposition title="?"}
For \( R \) a complete local ring with residue field \( \kappa \), there is an isomorphism \( \mathop{\mathrm{Br}}(R) { { \, \xrightarrow{\sim}\, }}\mathop{\mathrm{Br}}(\kappa) \).
:::

::: {.remark}
We'll prove a stronger claim that there is a bijection \( \mathsf{SB}{\mathsf{Sch}}_{/ {R}} /\sim \to \mathsf{SB}{\mathsf{Sch}}_{/ {k}} /\sim \), which requires some deformation theory. A summary of obstruction theory for schemes:

Let \( A \in \mathsf{CRing} \), \( I{~\trianglelefteq~}A \) is square zero ideal, and \( X_{/ {A/I}}  \) a smooth scheme. Then there exists a functorial class \( \operatorname{obs} (X) \in H^2(X; {\mathbf{T}}_X \otimes_{A/I} I) \) such that \( X \) admits a flat lift to \( A \) iff \( \operatorname{obs} (X) = 0 \). If the obstruction vanishes, the set of lifts is a torsor for \( H^1 \), and the automorphisms of the lift are given by \( H^0 \). Here \( {\mathbf{T}}_X \) is the tangent sheaf, and a *flat lift* is a flat scheme \( \tilde X_{/ {A}}  \) equipped with an isomorphism \( \tilde X\otimes(A/I) { { \, \xrightarrow{\sim}\, }}X \).

A word on this deformation-theoretic result is proved:

-   Show affine schemes lift, e.g. using Cohen structure theorem. Alternatively, something about being étale?

-   Try to glue, which may not satisfy the cocycle condition -- failure to glue will show up in this cohomology. Why the tangent sheaf: the difference between two gluing data is a derivation.

Note that for vector bundles \( E\to X \), the cohomology would be in \( \mathop{\mathrm{End}}(E) \).

> See also tangent/cotangent complex.
:::

::: {.proof title="?"}
We'll try to lift a Severi-Brauer over \( k \) to one over \( R \). Claim: letting \( R_n \coloneqq R/{\mathfrak{m}}^n \), given a lift to \( R_n \), there exists a unique lift to \( S_n \coloneqq R_{n+1} \). We have
\[
\operatorname{obs} (S_n) \in H^2(S^n; {\mathbf{T}}_{S_n} \otimes{\mathfrak{m}}^n/{\mathfrak{m}}^{n+1}) = H^2(S_n; {\mathbf{T}}_{S_n}) \otimes_k {\mathfrak{m}}^n/{\mathfrak{m}}^{n+1}
,\]
which follows from base change in cohomology using \( {\mathbf{T}}_{S_n} \otimes_{R_n} k \otimes_k {\mathfrak{m}}^n/{\mathfrak{m}}^{n+1} \). Here \( \operatorname{obs} (S_n) = 0 \), since
\[
H^2(S; {\mathbf{T}}_S) \otimes_k  { \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu } = H^2(S_{ { \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu } }; {\mathbf{T}}_{S,  { \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu } }) = H^2({\mathbb{P}}^n_{/ { { \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu } }} ; {\mathbf{T}}_{{\mathbb{P}}^n_{/ {k}} }) = 0
.\]

See Hartshorne, this uses the Euler exact sequence.

So a lift exists for each \( R_n \).

This lift is unique since lifts are torsors for \( H^1(S_n; {\mathbf{T}}_{S_n} \otimes{\mathfrak{m}}^n/{\mathfrak{m}}^{n+1}) \).

Why this lifts to \( R \): formal GAGA, which gives a way of going from formal schemes to actual schemes. See "FGA Explained", Ch. 8. This is because giving a scheme over \( R^n \) for all \( n \) amounts to giving a formal scheme, since the underlying topological spaces are the same. The input is an ample line bundle: here for \( {\mathbb{P}}^n \) we can take the dual of the dualizing sheaf \( {\mathcal{O}}_{S_n} {}^{ \vee } \).
:::

::: {.remark}
Formal GAGA: one of the most useful techniques!
:::

::: {.proposition title="?"}
Suppose \( X\in {\mathsf{Var}}_{/ {k}}  \) and let \( A\in \mathop{\mathrm{Br}}(X) \) (e.g. represented by an Azumaya algebra), then

-   If \( k \) is a \( p{\hbox{-}} \)adic field, then there is a map
    \[
    X(k) &\to \mathop{\mathrm{Br}}(X) \\
    x &\mapsto x^*(A)
    .\]

-   For \( k={\mathbb{R}} \), the map \( X({\mathbb{R}}) \to \mathop{\mathrm{Br}}(k) = {1\over 2}{\mathbb{Z}}/{\mathbb{Z}} \) is locally constant, i.e. constant on connected components.
:::

::: {.proof title="?"}
For \( x\in X(k) \), \( \widehat{{\mathcal{O}}_{X, x}} \) is a complete local \( k{\hbox{-}} \)algebra with residue field \( k \). Then for \( A\in \mathop{\mathrm{Br}}(X) \), we have a map \( \psi: { \left.{{A}} \right|_{{\widehat{ {\mathcal{O}}_{X, x} } }} } { { \, \xrightarrow{\sim}\, }}(A_x)\otimes_k \widehat{{\mathcal{O}}_{X, x}} \). We want to spread \( \psi \) out to a \( p{\hbox{-}} \)adic neighborhood of \( x \). In the analytic setting, this can be done using **Artin approximation**, which will imply there exists an étale neighborhood \( U \) of \( x \) and a map
\[
U &\to X \\
y &\mapsto x
,\]
which extends (?) and induces an isomorphism on complete local rings. Now applying the implicit function theorem, there exists a \( p{\hbox{-}} \)adic neighborhood of \( x \) in any \( U(k) \).
:::

::: {.corollary title="?"}
Let \( X_{/ {k}}  \) for \( k \) a number field and \( A\in \mathop{\mathrm{Br}}(X) \). Then

a.  The following map on adeles is locally constant:
    \[
    A^*: X({\mathbb{A}}_k) &\to {\mathbb{Q}}/{\mathbb{Z}}\\
    x &\mapsto \sum_{v\in  \mathrm{Pl}\qty{k} } m_{v_x}(x^* A)
    .\]

b.  \( X({\mathbb{A}})^{{\mathbb{A}}} \coloneqq(A^*)^{-1}(0) \) is closed and open.

c.  \( X({\mathbb{A}})^{\mathop{\mathrm{Br}}} = \displaystyle\bigcap_{A\in \mathop{\mathrm{Br}}(X)} X({\mathbb{A}})^{{\mathbb{A}}} \) is closed.

d.  \( \mkern 1.5mu\overline{\mkern-1.5muX(k)\mkern-1.5mu}\mkern 1.5mu \subseteq X({\mathbb{A}})^{\mathop{\mathrm{Br}}} \).

e.  If \( X \) is proper, then \( X({\mathbb{A}})^{\mathop{\mathrm{Br}}} \neq X({\mathbb{A}}) \) and weak approximation does not hold.
:::

::: {.proof title="?"}
```{=tex}
\envlist
```
a.  Use the same Lang-Weil argument used previously, and that this is a sum of locally constant maps.
b.  0 is closed and open in \( {\mathbb{Q}}/{\mathbb{Z}} \) and \( A^* \) is continuous.
c.  This is an intersection of closed sets.
d.  We already know \( X(k) \) is contained in the RHS, and by (c) we know it's closed, so the RHS contains its closure.
e.  Immediate from (d).
:::

::: {.warnings}
The adelic topology is not the product topology.
:::

::: {.definition title="Symbol Algebra"}
For \( k\in \mathsf{Field} \) and let \( \chi: { \mathsf{Gal}} ( { \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu } _{/ {k}} )\to C_n \) and \( a\in k^{\times}/ (k^{\times})^n \), then recall that \( (\chi, a) \coloneqq L_\chi\left\langle{x}\right\rangle_{\sigma}/\left\langle{x^n-a}\right\rangle \) where \( L_\chi \) is the fixed field of \( \chi \) and \( L_\chi\left\langle{x}\right\rangle_\sigma \) is the twisted polynomial ring where \( \ell x = x\sigma(\ell) \).
:::

::: {.example title="?"}
Take a smooth proper model of \( U = \left\{{y^2 + z^2 = (3-x^2)(x^2-2)}\right\} \) and the *symbol algebra* \( A = (3-x^2, -1) \).

::: {.exercise title="Homework"}
Check that this has points locally!
:::

Our goal is to show that \( X({\mathbb{A}})^A = \emptyset \). By Kummer theory, choosing an isomorphism \( \mu_n(k) \to C_n \) induces a bijection
\[
k^{\times}/(k^{\times})^n &{ { \, \xrightarrow{\sim}\, }}\left\{{\chi: { \mathsf{Gal}} ( { \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu } _{/ {k}} ) \to C_n}\right\} \\
a &\mapsto k[x] / \left\langle{x^n-a}\right\rangle
.\]

For \( n=2 \) and \( \operatorname{ch}k \neq 2 \), there is a canonical isomorphism \( \left\{{\pm 1}\right\} { { \, \xrightarrow{\sim}\, }}\mu_2(k) { { \, \xrightarrow{\sim}\, }}C_2 \). View \( (\chi, a) \in H^2(k, \mu_n) \), and there is a cup product
\[
H^1(k; C_n) \times H^1(k; \mu_n) &\to H^2(l; \mu_n) \\
\chi &\mapsto [\chi] \smile[a]
.\]

Another point of view: if \( L_{/ {k}}  \) is Galois with Galois group \( C_n \), it comes with a choice of generator \( \sigma \) and thus a canonical element in \( [ \sigma] \in H^2(L_{/ {k}} ; {\mathbb{Z}}) { { \, \xrightarrow{\sim}\, }}C_n \). Then there is another cup product
\[
k^{\times}= H^0(L_{/ {k}} ; L^{\times}) \xrightarrow{({-}) \smile[\sigma]} H^2(L_{/ {k}} ; L^{\times}) = \mathop{\mathrm{Br}}(L_{/ {k}} ) = k^{\times}/\operatorname{Nm}_{L_{/ {k}} } k^{\times}
,\]
in which case \( (\chi, a) = a \smile[\sigma] \).
:::

::: {.corollary title="?"}
\( (\chi, a) =0 \iff a \in \operatorname{Nm}_{L_{/ {k}} } L^{\times} \).
:::

::: {.remark}
For \( n=2 \), one has \( (a, b) = k { \left[ {\sqrt{b}} \right] } \left\langle{x}\right\rangle_\sigma / \left\langle{x^n-a}\right\rangle \), and this splits iff \( a \) is a norm from \( k(\sqrt{b}) \) when this is a field.
:::

::: {.exercise title="?"}
What are the equations for the Severi-Brauer arising from \( (a, b) \).
:::
