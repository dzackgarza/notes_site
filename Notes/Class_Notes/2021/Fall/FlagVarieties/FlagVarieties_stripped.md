












# First Examples of Flag/Schubert Varieties (Wednesday, August 18)

::: {.remark}
Course description from Scott's syllabus:

> Schubert varieties are key examples of algebraic varieties that on one hand have an intrinsic interest and beauty, and on the other hand have many applications to algebraic geometry, algebraic topology, and representation theory; e.g., category \( {\mathcal{O}} \), infinite dimensional representation theory of real reductive groups, modular representation theory, polar varieties, Chern classes, Schubert calculus, etc.
>
> The course goal is to understand Schubert varieties and their algebraic geometry, equivariant cohomology, and equivariant K-theory. There are many open problems related to basic geometry of Schubert varieties, so we will of course not complete this goal. One of the key applications of equivariant cohomology and equivariant K-theory of flag varieties is the complete description of the singular locus of any Schubert variety, and we will settle on learning this theory as our goal. This result was originally obtained by the author of our course textbook, and is described completely by him in Chapter XII.
>
> The language of this result is naturally and originally described in the ominous generality of (possibly infinite dimensional) Kac-Moody groups -- which are becoming increasingly more important in many areas -- and the result at the time was new even for the finite dimensional case. In fact much recent literature on Schubert varieties is written in this language and at the same time is new for the finite dimensional case.
:::

::: {.remark}
The goal of this course: describe the singular locus of arbitrary Schubert varieties. Note that we'll assume all varieties and schemes are reduced!

**References:**

-   *Introduction to Lie Algebras and Representation Theory*, Humphreys.
-   *Representations of Semisimple Lie Algebras in the BGG Category \( {\mathcal{O}} \)*, Humphreys.
-   *Linear Algebraic Groups*, Humphreys.
    -   *Linear Algebraic Groups*, Springer.
-   *Kac-Moody Groups, their Flag Varieties, and their Representation Theory*, Shrawan Kumar.
-   *Chries-Ginzburg.*, particularly for \( {\mathsf{K}}{\hbox{-}} \)theory of abelian categories. See Youtube lectures and course notes from Geordie's course!
-   Brian' Conrad's notes on group schemes: <http://math.stanford.edu/~conrad/papers/luminysga3.pdf>
-   Björner and Brenti: *Combinatorics of Coxeter Groups*
:::

::: {.remark}
First up, defining the words in the course title: flag varieties, equivariant cohomology, \( {\mathsf{K}}{\hbox{-}} \)theory.

-   Flag variety: complete homogeneous algebraic variety, i.e. with a transitive algebraic group action.
-   Cohomology: it suffices to work with \( H^*_{\mathrm{sing}}(X, A; {\mathbb{R}}) \), the relative singular cohomology. See also Borel-Moore homology.
-   \( {\mathsf{K}}{\hbox{-}} \)theory: The study of coherent sheaves (take the Grothendieck group on the category \( \mathsf{C} = {\mathsf{Coh}}(X) \))
:::

::: {.definition title="$T\\dash$spaces"}
For \( T \cong ({\mathbb{C}}^{\times})^n \) a torus, define a **\( T{\hbox{-}} \)space** \( X \) as a space \( X \) with an action \( T \times X\to X \) which is also an algebraic morphism.
:::

::: {.remark}
Notions of *equivariance* will take into account this action. For cohomology, we'll consider a space \( E\times^T X = (E\times X)/T \) where \( T \) acts by \( (e, x)t \coloneqq(et, t^{-1}x) \). This is not a variety, but instead an *Ind-variety*.

For \( {\mathsf{K}}{\hbox{-}} \)theory, the version we'll work with is the following:
:::

::: {.definition title="$T\\dash$equivariant sheaves"}
Let \( m: T\times T\to T \) be the multiplication map. For \( X \) a \( T{\hbox{-}} \)space, a sheaf \( {\mathcal{F}}\in{\mathsf{Sh}}({\mathsf{{\mathcal{O}}_X}{\hbox{-}}\mathsf{Mod}}) \), **\( T{\hbox{-}} \)equivariant** iff

1.  There is a given isomorphism of sheaves on \( T\times X \) written \( I: a^* {\mathcal{F}}\to{\operatorname{pr}}_2 {\mathcal{F}} \) where \( {\operatorname{pr}}_2^* :T\times X\to X \) is projection onto the second coordinate and \( a:T\times X\to X \) is the given action map.

2.  The pullbacks by \( \operatorname{id}\times a \) and \( m\times\operatorname{id} \) if the isomorphism \( I \) are given by the equation
    \[
    {\operatorname{pr}}_{23}^* I \circ (\operatorname{id}_G \times a) I = (m\times\operatorname{id}_X)^* I
    .\]

3.  There is an isomorphism \( I_{e\times X} = \operatorname{id} \) and \( {\mathcal{F}}= a^* {\mathcal{F}}{ \left.{{}} \right|_{{e\times X}} } \xrightarrow{\sim} {\mathcal{F}}_{e\times X} = {\mathcal{F}} \).
:::

::: {.example title="?"}
Note that for \( f: X\to Y \) and \( {\mathcal{F}}\in {\mathsf{Sh}}(Y) \), then
\[
f^{\star} {\mathcal{F}}= {\mathcal{O}}_X \otimes_{f^* {\mathcal{O}}_Y} f^* {\mathcal{F}}
.\]
For any \( T{\hbox{-}} \)space \( X \), \( {\mathcal{O}}_X \) has a canonical \( T{\hbox{-}} \)equivariant structure given by
\[
{\operatorname{pr}}_2^* {\mathcal{O}}_X \cong {\mathcal{O}}_{T\times X} \cong a^\star {\mathcal{O}}_X
.\]
:::

::: {.example title="1"}
Take \( X\coloneqq{\operatorname{pt}}\cong G/G \), since any group action is transitive and we get a complete space. This is a silly but important example! We can take \( H_G^* = H_G^*({\operatorname{pt}}) \coloneqq H^*_{\mathrm{sing}}({\mathbf{B}}G) \). For \( G = {\mathbb{C}}^{\times} \), this is a polynomial ring, and for \( T = ({\mathbb{C}}^{\times})^n \) it's just a polynomial ring in more variables. One can then take the constant sheaf \( \underline{{\mathbb{C}}} \in {\mathsf{Sh}}(X) \) which is \( {\mathbb{C}} \) for \( U=X \) and \( 0 \) otherwise.
:::

::: {.example title="2"}
\( X\coloneqq{\mathbb{P}}^1 \) with an action by \( G\coloneqq{\operatorname{SL}}_2({\mathbb{C}}) \):

```{=tex}
\begin{tikzpicture}
\fontsize{40pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures}{2021-08-18_14-28.pdf_tex} };
\end{tikzpicture}
```
In the coordinate chart \( {\left[ {z_1, z_2} \right]} \) with \( z_2\neq 0 \), we can scale \( z_2 \) to 1 and set
\[
{
\begin{bmatrix}
  {a} & {b} 
\\
  {c} & {d}
\end{bmatrix}
} {\left[ {z, 1} \right]} = {\left[ {{az+b\over cz+d}, 1} \right]} && cz +d\neq 0
.\]
Then

-   \( G\curvearrowright X \) transitively, and

-   \( B\coloneqq{\operatorname{Stab}}_G({\left[ {0, 1} \right]}) \) is a nontrivial Borel given by upper triangular matrices, and \( X = G/B \).

\<-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-08-18_14-26.xoj --\>

![](figures/2021-08-18_14-27-15.png)

Note that \( {\mathcal{O}}_X({\mathbb{P}}^1) = {\mathbb{C}} \) by Liouville's theorem, and \( {\mathcal{O}}_X(U) \cong {\mathbb{C}}[x] \) for \( U \subseteq {\mathbb{P}}^1 \).
:::

::: {.example title="3"}
The Grassmannian of \( k{\hbox{-}} \)planes, given by
\[
X^Y\coloneqq{\operatorname{Gr}}_k({\mathbb{C}}^n) = \left\{{E \subseteq {\mathbb{C}}^n {~\mathrel{\Big|}~}\dim(E) = k}\right\}
.\]
This has the structure of an algebraic group, either by taking some transitive algebraic group action and lifting structure from the quotient, or taking a Segre embedding. For notation, write \( {\mathbb{C}}^i \coloneqq{\operatorname{span}}_{\mathbb{C}}\left\{{e_1,\cdots, e_i}\right\} \) for the span of the first \( i \) standard basis vectors.

-   \( G\coloneqq\operatorname{GL}_n \) acts transitively by \( g.E \coloneqq gE \), for example by extending a basis from \( E \) to \( {\mathbb{C}}^n \) and using that \( \operatorname{GL}_n \) sends bases to bases, thus sending \( E\to E' \) another \( k{\hbox{-}} \)plane.

-   \( {\operatorname{Stab}}_G({\mathbb{C}}^2) \) are upper block-triangular matrices:

\<-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-08-18_14-33.xoj --\>

![](figures/2021-08-18_14-34-50.png)

Then define \( X^Y \coloneqq G/P \), noting that here \( P \) is a parabolic.
:::

::: {.remark}
Much study of Schubert varieties reduces to studies of the combinatorics of the Weyl group. Write \( W^Y \) for the Young diagrams on an set of \( k\times(n-k) \) blocks.

For example, for \( n=4, k=2 \):

\<-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-08-18_14-36.xoj --\>

![](figures/2021-08-18_14-38-46.png)
:::

::: {.definition title="?"}
For every \( \lambda\in W^Y \), define
\[
X_\lambda^Y = \left\{{E\in X^Y {~\mathrel{\Big|}~}\forall i=1,\cdots, k,\, \dim({\mathbb{C}}^{\sum \lambda_i + i} \cap E )\geq i}\right\}
.\]
:::

```{=tex}
\todo[inline]{Does this have a name?}
```
::: {.example title="?"}
For \( \lambda = (1, 2) \), we have
\[
X_\lambda^Y = \left\{{ E \in {\operatorname{Gr}}_2({\mathbb{C}}^4) {~\mathrel{\Big|}~}\dim({\mathbb{C}}^2 \cap E) \geq 1, \dim({\mathbb{C}}^4 \cap E) \geq 2 }\right\} 
.\]
:::

# Friday, August 20

::: {.remark}
Recall that we were discussing example 3, Grassmannians, and defined \( W^Y \) as Young diagrams in a \( k\times (n-k) \) grid. We write
\[
X^Y_{\lambda} = \left\{{ E \in X^Y = {\operatorname{Gr}}_k({\mathbb{C}}^n) {~\mathrel{\Big|}~}\forall 1\leq i \leq k ,\, \dim({\mathbb{C}}^{\lambda_i + i} \cap E) \geq i}\right\}
.\]
:::

::: {.example title="?"}
\[
X_{(1, 2)}^Y = \left\{{ E {~\mathrel{\Big|}~}\dim({\mathbb{C}}^2 \cap E) \geq 1, \dim({\mathbb{C}}^4 \cap E)\geq 2 }\right\} 
.\]
Note that the second condition is redundant since \( E \subset {\mathbb{C}}^4 \) is a 2-plane. Why is this a closed variety? Perhaps the easiest way to see this is using Plucker relations. Using more technology later, this allows follows from looking at \( B{\hbox{-}} \)orbits and Bruhat decompositions.
:::

::: {.fact}
Note that for the rank function \( {\operatorname{rank}}: \operatorname{Mat}(m\times n)\to {\mathbb{Z}} \), one can compute the closure
\[
\mkern 1.5mu\overline{\mkern-1.5mu\operatorname{rank}^{-1}(r)\mkern-1.5mu}\mkern 1.5mu = \operatorname{rank}^{-1}\qty{[0, r)}
.\]
Also note that \( {\operatorname{pr}}_2: {\mathbb{C}}^r\to {\mathbb{C}}^q \), we have \( \ker ({ \left.{{{\operatorname{pr}}_2}} \right|_{{E}} }) = {\mathbb{C}}^2 \cap E \).
:::

## Example 4: The Full Flag Variety

::: {.example title="4: The Full Flag Variety (Type $A_{n-1}$)"}
Define the full flag variety
\[
X \coloneqq\left\{{ F^\bullet = \qty{0 \subseteq F^1 \subseteq F^2 \subseteq \cdots \subseteq F^{n-1} \subseteq {\mathbb{C}}^n } {~\mathrel{\Big|}~}\dim(F^k) = k}\right\} 
.\]

Write \( {\mathbb{C}}^\bullet \coloneqq\qty{0 \subseteq {\mathbb{C}}^1 \subseteq \cdots \subseteq {\mathbb{C}}^n} \) for a distinguished basepoint.

-   This is a complete homogeneous space,
-   \( GL_n\curvearrowright X \) transitively,
-   \( {\operatorname{Stab}}_G({\mathbb{C}}^\bullet) = B \), the Borel of upper triangular matrices.
-   \( X \cong G/B \).

For \( G \) a linear algebraic group and \( B \) a closed subgroup, \( G/B \) will generally be a variety.
:::

::: {.definition title="Weyl Group"}
The Weyl group is generally given by \( W = N_G(T)/T \) for \( T \) a torus.
:::

::: {.remark}
Some facts:

-   \( N_G(T) \) is the set of permutation matrices with arbitrary nonzero entries.
-   \( W = S_n \) in general, and can be written \( W = \left\{{ (w(1), w(2), \cdots, w(n) ) {~\mathrel{\Big|}~}w\in S_n }\right\} \).
-   \( W \hookrightarrow X \) sits in the flag variety via \( w\mapsto c {\mathbb{C}}^\bullet \), i.e. acting on the distinguished basepoint.

As an example, we can write permutation matrices in one-line notation, using that \( w(e_i) = e_{w(i)} \):

\[
A = {\left[ {e_4, e_1, e_2, e_3} \right]} \leadsto (4,1,2,3)
.\]

Using that \( B/B \cong {\mathbb{C}}^\bullet \) is the basepoint, we have \( w{\mathbb{C}}^{\bullet} = wB/B \in BwB/B \).
:::

::: {.proposition title="?"}
\[
BwB / B \cong \left\{{ F^\bullet \in X {~\mathrel{\Big|}~}\forall i,j,\,\, \dim({\mathbb{C}}^i \cap F^j) \cap\dim({\mathbb{C}}^i \cap w{\mathbb{C}}^j) }\right\} 
.\]
:::

::: {.remark title="?"}
Moreover, \( \dim({\mathbb{C}}^i \cap w{\mathbb{C}}^j) = \#\left\{{ k {~\mathrel{\Big|}~}k\leq i, w(k) \leq j}\right\} \). Just compute \( \left\langle{e_1}\right\rangle \cap w\left\langle{e_1}\right\rangle = \left\langle{e_4}\right\rangle = 0 \) for entry \( 1, 1 \), and continue:
\[
\begin{bmatrix}
0 & 1 & 1 & 1 \\
0 & 1 & 2 & 2 \\
0 & 1 & 2 & 3 \\
1 & 2 & 3 & 4 \\
\end{bmatrix}
.\]

Now check that counting \( \left\{{k {~\mathrel{\Big|}~}k\leq j,\, w(k) \leq i}\right\} \) yields the same entries in the \( i, j \) spot, and thus the same matrix.
:::

## Combining Examples 3 and 4

::: {.remark}
There is a map
\[
\pi: X &\to X^Y \\
F^\bullet &\mapsto F^k
,\]
which is equivalently sending a Borel to its corresponding parabolic, and geometrically corresponding to sending \( T{\hbox{-}} \)fixed points to \( T{\hbox{-}} \)fixed points. This induces a map \( W\to W^Y \), and since \( W\cong S_n \), this is sending a Young diagram to a partition.

-   This is \( G{\hbox{-}} \)equivariant for \( G\coloneqq\operatorname{GL}_n \)
-   \( \pi(w) = \lambda \), so there is a map \( w\to \left\{{w(1), \cdots, w(k)}\right\} = \left\{{ \lambda_1 - 1, \lambda_2 - 2, \cdots, \lambda_k - k}\right\} \).
:::

::: {.example title="?"}
Given \( \lambda \) and \( 1\leq i \leq k \), let \( w(i) = \lambda_i + i \) and extend \( w \) by filling in the remaining numbers in increasing order, so \( w(k+1) < w(k+2) < \cdots < w(n) \). For example, take \( (1, 2)\mapsto w = (2, 4 {~\mathrel{\Big|}~}1, 3) \), recalling that \( (1, 2) \) has this form:

```{=html}
<!-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-08-20_14-31.xoj -->
```
![](figures/2021-08-20_14-32-17.png)

One could also do \( w_{\max} = (4, 2 {~\mathrel{\Big|}~}3, 1) \).
:::

::: {.remark}
Note that the Hasse diagrams under a given diagram give the closure relations under \( B{\hbox{-}} \)orbits: For \( \lambda = (1, 2) \), the \( B{\hbox{-}} \)orbits in \( X_\lambda^Y \) are given by the following:

```{=html}
<!-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-08-20_14-35.xoj -->
```
![](figures/2021-08-20_14-37-13.png)

We get \( BwP/P = {\mathbb{C}}^{\ell(w^r)} \), and we in fact get a CW structure. Since \( H_{\mathrm{sing}}^2(X_\lambda^Y; {\mathbb{Z}}) \neq H_{\mathrm{sing}}^4(X_\lambda^Y; {\mathbb{Z}}) \), this doesn't satisfying Poincare duality, so it can not be a smooth manifold. So what is the singular locus?
:::

::: {.remark}
The open element is not in the singular locus. Note that \( P \) acts on \( X_\lambda^Y \), where \( P \) is defined as `<!-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-08-20_14-40.xoj -->`{=html}

![](figures/2021-08-20_14-40-59.png)

One can determine that the singular locus is the single point \( \left\{{{\mathbb{C}}^2}\right\} \) corresponding to the empty diagram:

```{=html}
<!-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-08-20_14-41.xoj -->
```
![](figures/2021-08-20_14-42-09.png)
:::

# Lecture 2 (Monday, August 23)

## A Lightning Introduction to Groups and Representations

::: {.remark}
Throughout, *finite type* means finitely generated over the base field.
:::

::: {.remark}
Which \( G \) are important for equivariant cohomology of the flag variety, and equivariant \( {\mathsf{K}}{\hbox{-}} \)theory. We'll consider only connected reductive groups, and work over \( k \coloneqq{\mathbb{C}} \).
:::

::: {.definition title="Pertaining to Linear Algebraic Groups"}
```{=tex}
\envlist
```
-   A group \( G \in {\mathsf{Alg}}{\mathsf{Grp}} \) be is a **linear algebraic group** if

    -   The coordinate ring \( {\mathbb{C}}[G] \) is a reduced (so no nonzero nilpotents) \( {\mathbb{C}}{\hbox{-}} \)algebra of finite type.
    -   \( G \) is a group where multiplication \( m:G^{\times 2}\to G \) and inverseion \( i:G\to G \) are algebraic morphisms

-   A **maximal torus** of \( G \) is a torus not properly contained in any other torus of the form \( ({\mathbb{C}}^{\times})^{\times n} \).

-   A **Cartan** subgroup is the centralizer of a maximal torus. Note that maximal torii are the same as Cartans in the connected reductive case.

-   \( G \) is **unipotent** if every representation has a nonzero fixed vector.

-   The **unipotent radical** \( R_u(G)\leq G \) is a maximal closed connected normal subgroup of \( G \).

-   \( G \) is **reductive** iff \( R_u(G) = \left\{{e}\right\} \).
:::

::: {.proposition title="?"}
To study \( {\mathsf{Rep}}(G)^{{\mathrm{irr}}} \) for \( G\in {\mathsf{Alg}}{\mathsf{Grp}} \) linear, we can assume that \( G \) is reductive.
:::

::: {.proof title="?"}
Let \( V\in {\mathsf{Rep}}(G)^{{\mathrm{irr}}} \), we'll show that the unipotent radical acts trivially. Then \( V \) is the data of

1.  \( G\to \operatorname{GL}(V) \) for some \( V \), a morphism of varieties and algebraic groups
2.  There is an action map \( G\times V\to V \).

Let \( V_0 =  \mathrm{Fix} (R_u(G)) \subseteq V \) be the fixed points of \( R_u(G) \), by restricting the \( G \) action to an \( R_u(G)\leq G \) action by a subgroup. We know \( V_0 \neq 0 \), and we have for every \( g\in G, r\in R_u(G), v\in V_0 \). We'd like to show \( V_0 = V \), which means that \( R_u(G) \) acts trivially. So we'll show \( r \) fixes every \( gv \):
\[
r(gv) = g(g^{-1}r g)v \in g R_u(G) v = gv
,\]
using that \( R_u(G) \) fixes \( v \). So \( V_0 \) is \( G{\hbox{-}} \)stable, and since \( V_0 \) is irreducible and \( V \) is irreducible, we get equality.
:::

::: {.remark}
So \( R_u(G) \) won't matter for irreducible representations, or in turn for equivariant \( {\mathsf{K}}{\hbox{-}} \)theory, and we can assume \( R_u(G) = \left\{{e}\right\} \) is trivial. If \( G \) is not reductive, just replace it with \( R/R_u(G) \), which is a reductive linear algebraic group when \( G \) is a linear algebraic group since \( R_u(G) {~\trianglelefteq~}G \).

Next question: how can we relate compact groups to complex reductive groups?
:::

::: {.remark}
Let \( K \in \operatorname{Lie}{\mathsf{Grp}} \) be compact, and set \( {\mathbb{C}}[K] \) to be the \( {\mathbb{C}}{\hbox{-}} \)span of matrix coefficients of finite dimensional representations of \( K \). For \( V \) a finite-dimensional representation of \( K \) (just a continuous representation of a compact group), define
\[
\phi: V {}^{ \vee }\otimes_{\mathbb{C}}V &\to {\mathbb{C}}[K] \\
f\otimes v &\mapsto \qty{k \xrightarrow{\phi_{f, v}}  f(kv)}
.\]
:::

::: {.fact}
\( {\mathbb{C}}[K] \) is a finite type reduced algebra. Such algebras correspond to an affine variety, i.e. it is the ring of functions on some affine variety. Thus \( {\mathbb{C}}[K] = {\mathbb{C}}[G] \) for \( G\in {\mathsf{Aff}}{\mathsf{Var}}_{/ {{\mathbb{C}}}}  \) where \( K \subseteq G \).
:::

::: {.theorem title="Chevalley"}
```{=tex}
\envlist
```
1.  \( G \) is a *reductive* algebraic group.
2.  Every locally finite continuous representation of \( K \) extends uniquely to an algebraic representation of \( G \), and every algebraic representation of \( G \) restricts to a locally finite representation of \( K \).
:::

::: {.remark}
So despite \( {\mathbb{C}}[G] \) being infinite dimensional, every representation is contained in some finite dimensional piece. Note that there is an equivalence of categories between algebraic and compact groups, but there are differences: e.g. there are no irreducible infinite dimensional representations of compact groups.

> Side note, see stuff by David Vogan!
:::

::: {.remark}
The next result reduces representations to Cartans, which are *almost* tori, and is along the lines of what Langlands was originally thinking about.
:::

::: {.theorem title="Cartan-Weyl"}
There is a bijection
\[
\widehat{G} \coloneqq\left\{{\substack{
  \text{Irreducible representations} \\
  \text{of }G
}}\right\}
&\rightleftharpoons
\left\{{\substack{
  \text{Irreducible dominant representations} \\
  \text{of a Cartan subgroup } H\leq G
}}\right\}
\]

Moreover,

1.  If \( G \) is finite, \( \left\{{e}\right\} = B \supseteq = \left\{{e}\right\} \), so there is no reduction in this case, noting that the centralizer ends up being the whole group.
2.  If \( G \) is connected reductive, then \( T=H \) and there reduce to dominant characters of a torus.
:::

::: {.remark}
See David Vogan's orange book on unitary representations of real reductive groups.
:::

::: {.exercise title="?"}
Try proving this directly!
:::

::: {.definition title="Dominant characters"}
Define
\[
X(T) \coloneqq\left\{{T \xrightarrow{f} {\mathbb{C}}^{\times}{~\mathrel{\Big|}~}f \text{ is algebraic}}\right\}
,\]
which is a moduli of irreducible representations of \( G \). Then
\[
X(T) \supseteq D_{\mathbb{Z}}\coloneqq\left\{{\chi \in X {~\mathrel{\Big|}~}\chi \text{ is dominant for } B}\right\}
.\]
Note that this may make more sense after seeing root systems.
:::

::: {.remark}
Given \( \lambda \in D_{\mathbb{Z}} \), define a \( G{\hbox{-}} \)equivariant line bundle on the flag variety as \( {\mathcal{L}}(\lambda) \coloneqq(G\times{\mathbb{C}}_{-\lambda})/B \), where \( (-\lambda)t \coloneqq\lambda(t)^{-1} \). This can be extended to a representation of \( B \) by
\[
B \to B/R_u(B) \cong T \xrightarrow{\lambda} {\mathbb{C}}^{\times}
.\]
This makes sense thinking of a Borel as upper-triangular matrices, tori as diagonal matrices, and unipotent as strictly upper triangular. So we can extend representations by making them trivial on a normal subgroup?

```{=tex}
\todo[inline]{Check}
```
We refer to \( \lambda \) as the map and \( {\mathbb{C}}_{\lambda} \) as the vector space in the representation \( G\to \operatorname{GL}(V) \). Note that \( B \) acts on the right of \( G\times {\mathbb{C}}_{-\lambda} \) by
\[
(g, z)b \coloneqq(gb, b^{-1}z) \coloneqq(gb, \lambda(b)^{-1}z)
.\]
:::

::: {.fact}
\( {\mathcal{L}}(\lambda) \) is an algebraic variety.
:::

# More Broad Overview (Wednesday, August 25)

::: {.remark}
We'll assume background in affine varieties, but not necessarily sheaves. Today's material: see Springer.
:::

::: {.definition title="Ringed Spaces"}
Let \( X\in {\mathsf{Top}} \), then a **ringed space** is the data of \( X \) and for all \( U\in {\mathsf{Open}}(X) \) an assignment \( {\mathcal{O}}(U) \in {\mathsf{Alg}}_{{\mathbb{C}}} \) a \( {\mathbb{C}}{\hbox{-}} \)algebra of complex functions satisfying *restriction* and *extension*, also known as a sheaf of \( {\mathbb{C}}{\hbox{-}} \)valued functions. A **morphism** of ringed spaces \( \xi:X\to Y \) is a continuous function such that for all \( W\in {\mathsf{Open}}(Y) \), one can form the pullback
\[
\xi_W^*f: \xi^{-1}(W) \xrightarrow{\xi} W \xrightarrow{f} {\mathbb{C}}
,\]
and we require that there is a well-defined induced map \( \xi_W^*: {\mathcal{O}}_Y(W) \to {\mathcal{O}}_X(\xi^{-1}(W)) \).
:::

::: {.example title="?"}
For \( X \) an affine variety, the sheaf \( {\mathcal{O}}_X \) of regular functions satisfies this property. Note that \( {\mathcal{O}} \) can be an arbitrary sheaf though, not necessarily just regular functions.
:::

::: {.definition title="Prevariety"}
A **prevariety** \( X \) is a quasicompact space \( X \) such that every \( x\in X \) admits a neighborhood \( U \subseteq X \) such that \( (U, \mathop{\mathrm{Res}}({\mathcal{O}}_X, U)) \) is isomorphic to an affine variety. A prevariety is a **variety** if it is additionally separated, so \( \Delta_X \subseteq X^{\times 2} \) is closed.
:::

::: {.remark}
Last time we said that \( {\mathcal{L}}(\lambda) \) is an *algebraic variety*, so it satisfies the above definitions.
:::

::: {.remark}
From now on \( G \) will be a connected reductive group. \( \pi: G\to {\mathcal{L}}(\lambda) \) will always be the map from the group to the flag variety.
:::

::: {.remark}
Let \( X \in {\mathsf{Alg}}{\mathsf{Var}}_{/ {{\mathbb{C}}}}  \) and \( H\in {\mathsf{Alg}}{\mathsf{Grp}} \) be linear where \( H\curvearrowright X \). Then \( X/H \) is a quotient in \( {\mathsf{Top}} \), by just taking the quotient topology. Let \( \rho: X\to X/H \) be the projection, then define the ring of functions as
\[
{\mathcal{O}}_{X/H}(U) \coloneqq\left\{{f\in \mathop{\mathrm{Hom}}(U, {\mathbb{C}}) {~\mathrel{\Big|}~}\mathop{\mathrm{Res}}(f \circ \rho, \rho^{-1}(U) ) \in {\mathcal{O}}_X(\rho^{-1}(U))}\right\}
.\]
In this way \( {\mathcal{O}}_{X/H}(U) \) can be identified with \( H{\hbox{-}} \)invariant functions \( {\mathcal{O}}_X(\rho^{-1}(U))^H \). This makes \( X/H \) a ringed space, which is often (but not necessarily) an algebraic variety.
:::

::: {.example title="?"}
This is not always an algebraic variety, e.g. taking \( {\mathbb{C}}^{\times}\curvearrowright{\mathbb{C}} \) by multiplication. This yields two orbits (0 and everything else) and isn't a variety.
:::

::: {.remark}
If \( \pi: G\to G/H \) has local sections, then \( (G\times X)/H \in {\mathsf{Alg}}{\mathsf{Var}} \) using \( (g, x)h \coloneqq(gh, h^{-1}x) \). Note that this is a fiber bundle for the Zariski topology, and doesn't have local sections (contrasting the analytic topology).
:::

::: {.claim}
The map \( \pi: G\to G/B \) has local sections (but no global sections).
:::

::: {.remark}
Side note: we have the Bruhat decomposition \( G = {\textstyle\coprod}_{w\in W} BwB \) as a partition into double cosets, quotienting by an action of \( B\times B \). The theorem is that these are parameterized by the Weyl group.
:::

::: {.remark}
Let \( B = TU \) where \( T \) is a torus and \( U \) unipotent (so upper triangular, ones along the diagonal) and set \( U^- \) to be the *opposite unipotent radical* (e.g. lower triangular, ones along diagonal). Define a map
\[
\phi: U^i \times B &\to G \\
(\mkern 1.5mu\overline{\mkern-1.5muu\mkern-1.5mu}\mkern 1.5mu, b) &\mapsto \mkern 1.5mu\overline{\mkern-1.5muu\mkern-1.5mu}\mkern 1.5mub^{-1}
.\]
Then \( \operatorname{im}(\phi) = U^- B \), and \( \phi \) is injective since \( U^- \cap B = \left\{{e}\right\} \). The argument on matrices holds more generally: \( B \) are the upper triangular matrices and \( U^- \) has ones on the diagonal, so these intersect only at the identity. \( \phi \) is an open embedding: one can show that the derivative is surjective:
\[
d\phi(1, 1): {\mathfrak{u}}^- \times {\mathfrak{b}}&\to {\mathfrak{y}}\\
(x, y) &\mapsto x-y
.\]
Rewriting the target as \( {\mathfrak{u}}^- \oplus {\mathfrak{h}}\oplus {\mathfrak{u}}^+ \) where \( {\mathfrak{b}}= {\mathfrak{h}}\oplus {\mathfrak{u}}^+ \), one can find preimages of any element.

Define a local section: \( \sigma: U\to G \) where \( U \subseteq G/B \). Use the composite \( U^- \times B\to G \to G/B \supseteq U^- \) to view \( U^- \) as a subset of the flag variety. An explicit formula for section is the following:
\[
\sigma(\mkern 1.5mu\overline{\mkern-1.5muu\mkern-1.5mu}\mkern 1.5mu) \coloneqq(\mkern 1.5mu\overline{\mkern-1.5muu\mkern-1.5mu}\mkern 1.5mu, 1) \in U^- \times B \subseteq G
.\]
Although this only constructs a section for one open set, translating by elements of \( g \) yields an open cover, and everything is equivariant.
:::

::: {.remark}
Using this, \( (G\times X)/B \) is always an algebraic variety, since \( G\to G/B \) always has local sections. For other groups, \( X \) quasiprojective will also make the quotient algebraic, but the proof is more difficult. However it still involves constructing local sections. It turns out that \( G{ \underset{\scriptscriptstyle {B} }{\times} }X\to G/B \) is a locally trivial fiber bundle.
:::

::: {.remark}
A note on notation: \( (G\times X)B \) is sometimes written \( G{ \underset{\scriptscriptstyle {B} }{\times} } X \) (as above), but this is *not* a fiber product. In this notation, \( {\mathcal{L}}(\lambda) = G{ \underset{\scriptscriptstyle {B} }{\times} } {\mathbb{C}}_{- \lambda} \). Note that this is a line bundle on \( G/B \), so we can take sections.
:::

::: {.theorem title="Borel-Weil"}
```{=tex}
\envlist
```
1.  There is a correspondence
    \[
      H^0(G/B; {\mathcal{L}}(\lambda)) \cong \left\{{f:G\to {\mathbb{C}}{~\mathrel{\Big|}~}f(g) = bf(gb) }\right\} && G \in {\mathbb{C}}[G]
      .\]

A section \( \sigma: G/B \to G{ \underset{\scriptscriptstyle {B} }{\times} } {\mathbb{C}}_{- \lambda} \) gets sent to \( \sigma(gB/B) = [g, f(g)] \). Use that the quotient acts like a tensor over \( B \), so
\[
  gB/B = gbB/B = [gb, f(gb)] = [g, b f(gb)]
  .\]

2.  \( H^0(G/B; {\mathcal{L}}(\lambda)) = L_{\lambda} {}^{ \vee } \) for \( \lambda \) a dominant character in \( D_{\mathbb{Z}} \), where \( L_\lambda \) is the irreducible finite dimensional representation of \( G \) with highest weight \( \lambda \). Note that in the finite case, we have \( L_\lambda {}^{ \vee }= L_{w_0 \lambda} \), but in the Kac-Moody case one doesn't have \( w_0 \).
:::

::: {.example title="?"}
For \( \lambda = 0 \in X(T) \) a character, we get
\[
\left\{{f:G\to {\mathbb{C}}{~\mathrel{\Big|}~}f(g) = f(gb)}\right\} = {\mathbb{C}}[G/B] = {\mathcal{O}}_{G/B}(G/B)={\mathbb{C}}
.\]
:::

::: {.remark}
Chapter 1 of Kumar, Cartan matrices.
:::

# Starting Kumar (Friday, August 27)

## 1.1: Definition of Kac-Moody Algebras

::: {.definition title="Realization"}
Let \( A\in \operatorname{Mat}(\ell\times\ell, {\mathbb{C}}) \) be rank \( r \). A **realization** of \( A \) is a triple \( ({\mathfrak{h}}, \pi, \pi {}^{ \vee }) \) where \( h\in{\mathsf{{\mathbb{C}}}{\hbox{-}}\mathsf{Mod}} \), \( \pi = \left\{{\alpha_1, \cdots, \alpha_\ell}\right\} \subseteq {\mathfrak{h}} {}^{ \vee } \) are column vectors, and \( \left\{{ \alpha_1 {}^{ \vee }, \cdots, \alpha_\ell {}^{ \vee }}\right\} \subseteq {\mathfrak{h}} \) are row vectors are indexed sets satisfying

1.  \( \pi, \pi {}^{ \vee } \) are linearly independent sets.
2.  \( \alpha_j( \alpha_i {}^{ \vee }) = a_{i, j} \)
3.  \( \ell - r = \dim_{\mathbb{C}}({\mathfrak{h}}) - \ell \)
:::

::: {.proposition title="?"}
There exists a realization of \( A \) that is unique up to isomorphism. Moreover, realizations of \( A, B \) are isomorphic iff \( B \) is similar to \( A \) via a permutation of the index set.
:::

::: {.proof title="?"}
Assume \( A \) is of the form
\[
A = 
\begin{bmatrix}
A_1  
\\
A_2
\end{bmatrix}
,\]
where \( A_1 \) is \( r\times \ell \) block where \( \operatorname{rank}A_1 = r \) and \( A_2 \) is \( l-r\times \ell \) Set
\[
C \coloneqq
\begin{bmatrix}
A_1 & 0 
\\
A_2 & I_{\ell-r}
\end{bmatrix}\in \operatorname{Mat}(\ell \times (2\ell - r))
.\]
For \( {\mathfrak{h}}= {\mathbb{C}}^{2\ell - r} \), set \( \alpha_1, \cdots, \alpha_\ell \) to be the first \( \ell \) coordinate functions \( \alpha_1 {}^{ \vee },\cdots \) as the rows of \( C \). This is a realization.

Conversely, given a realization \( ({\mathfrak{h}}, \pi, \pi {}^{ \vee }) \), we can produce a matrix: complete \( \pi \) to a basis of \( {\mathfrak{h}} {}^{ \vee } \). This can done in such a way that \( \alpha_j(\alpha_i {}^{ \vee }) = [A_1, B; A_2, D^{-1}]\in \operatorname{Mat}(\ell \times 2\ell -r \). Using column operations, i.e. multiplication on the right, this can be mapped to \( [A_1, 0; A_2, I] \).
:::

::: {.definition title="Free Lie algebra generated by a vector space"}
Let \( V\in {\mathsf{{\mathbb{C}}}{\hbox{-}}\mathsf{Mod}} \) and \( T^\bullet(V) \) be its (associative) tensor algebra. Set \( [ab] = ab-ba \) and take \( F(V) \subseteq T(V) \) to be the free Lie algebra generated by \( T^1(V) \). We call \( F(V) \) the **free Lie algebra generated by \( V \)**. There is a universal property: for any linear hom \( \theta: V\to {\mathfrak{sl}} \), there is a commuting diagram

```{=tex}
\begin{tikzcd}
    V && {\mathfrak{s}} \\
    \\
    & {F(V)}
    \arrow["\theta", from=1-1, to=1-3]
    \arrow["F"', from=1-1, to=3-2]
    \arrow["{\exists\tilde \theta}"', dashed, from=3-2, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJWIl0sWzIsMCwiXFxtYXRoZnJha3tzfSJdLFsxLDIsIkYoVikiXSxbMCwxLCJcXHRoZXRhIl0sWzAsMiwiRiIsMl0sWzIsMSwiXFxleGlzdHNcXHRpbGRlIFxcdGhldGEiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=)

Note that \( U(F(V)) = T(V) \).

This can be constructed as
\[
{\mathfrak{h}}\oplus \left\langle{e_1, \cdots, e_\ell}\right\rangle \bigoplus \left\langle{f_1, \cdots, f_\ell}\right\rangle / \sim
\\ \\
\sim \coloneqq
\begin{cases}
[e_i f_i] = \delta_{ij} \alpha_i {}^{ \vee }& i, j = 1,\cdots, \ell 
\\
[hh'] = 0 & h,h'\in{\mathfrak{h}}
\\
[he_i = \alpha_i(h)e_i & 
\\
[hf_i = \alpha_i(h)f_i & i=1,\cdots,\ell, h\in {\mathfrak{h}}
\end{cases}
.\]
Then set \( \tilde {\mathfrak{g}}(A) \coloneqq F(V)/\sim \) We'll find that this only depends on the realization of \( A \).
:::

::: {.definition title="Generalized Cartan Matrices"}
A matrix \( A = (\alpha_{ij}) \) is a **generalized Cartan matrix (GCM)**:

-   \( \alpha_{ii} = 2 \)
-   \( \alpha_{ij} \leq 0, i\neq j \)
-   \( \alpha_{ij} = 0 \) if \( \alpha_{ji} =0 \)
:::

::: {.definition title="Kac-Moody Lie Algebras"}
The **Kac-Moody Lie algebra** is defined by \( {\mathfrak{g}}\coloneqq{\mathfrak{g}}(A) \coloneqq\tilde{\mathfrak{g}}(A)/\sim \), where we mod out by the **Serre relations**:
\[
(\operatorname{ad}e_i)^{1 - a_{ij}}(e_j) &= 0\\
(\operatorname{ad}f_i)^{1 - a_{ij}}(f_j) &= 0
.\]
:::

::: {.remark}
```{=tex}
\envlist
```
-   There is an injection \( {\mathfrak{h}}\hookrightarrow{\mathfrak{g}} \), so we refer to \( {\mathfrak{h}} \) as the **Cartan subalgebra**.
-   The \( e_i, f_i \) are **Chevalley generators**.
-   The **nilradicals** are \( {\mathfrak{n}}\coloneqq\left\langle{\left\{{e_1,\cdots,e_\ell}\right\}}\right\rangle \) and \( {\mathfrak{n}}^- \coloneqq\left\langle{ \left\{{f_1, \cdots, f_\ell}\right\}}\right\rangle \).
-   \( {\mathfrak{b}}\coloneqq{\mathfrak{h}}\oplus {\mathfrak{n}} \) is the **standard Borel**.
-   \( {\mathfrak{b}}^- \coloneqq{\mathfrak{h}}\oplus {\mathfrak{n}} \)
-   \( \tilde {\mathfrak{n}}, \tilde {\mathfrak{n}}^-, \tilde {\mathfrak{b}}, \tilde {\mathfrak{b}}^- \) can similarly be defined for \( \tilde {\mathfrak{g}} \).
:::

::: {.remark}
A big theorem from algebraic groups: a connected reductive group \( G \) corresponds to a root datum\( ({\mathfrak{g}}, \left\{{\alpha_i}\right\}_{i\leq \ell}, \left\{{ \alpha_i {}^{ \vee }}\right\}_{i\leq \ell} ) \) where \( \alpha_i, \alpha_i {}^{ \vee }\in {\mathbb{Z}}^n \) such that \( a_{ij} \coloneqq{\left\langle {\alpha_i},~{\alpha_i {}^{ \vee }} \right\rangle} \) form a Cartan matrix \( A \coloneqq(a_{ij}) \).
:::

::: {.example title="?"}
Consider pairs of \( K, G \) where \( G \) is the complexification of \( K \):

-   \( {\mathsf{Sp}}_n \leadsto {\mathsf{Sp}}_{2n}({\mathbb{C}}) \), \( Z(G) = {\mathbb{Z}}/2 \) for \( n\geq 1 \)
-   \( {\operatorname{SU}}_n \leadsto {\operatorname{SL}}_n({\mathbb{C}}) \), \( Z(G) = {\mathbb{Z}}/4n \) for \( n\geq 3 \)
-   \( {\operatorname{Spin}}_n \leadsto {\operatorname{Spin}}_n({\mathbb{C}}) \), \( Z(G) = ({\mathbb{Z}}/2)^2 \), \( n\geq 8 \) even
-   \( F_4 \), \( Z(G) = {\mathbb{Z}}/4 \) for \( n\geq 7 \) odd
-   \( G_2 \)
-   \( E_6 \)
-   \( E_7 \)
-   \( E_8 \)

Here we take the simply connected groups for the last 5, and the last 4 have cyclic centers.
:::

::: {.theorem title="?"}
There exist

1.  Simple, simply connected, connected groups \( G_1, \cdots, G_k \),
2.  A finite central subgroup \( F \subseteq \prod G_i \times T' \) where \( T' \) is a (not necessarily maximal) torus,

such that \( G\cong (\prod G_i \times T')/F \). All connected reductive groups arise this way!
:::

::: {.example title="?"}
Let \( G\coloneqq\operatorname{GL}_n = {\operatorname{SL}}_n \cdot {\mathbb{C}}^{\times} \), and they intersect at roots of unity, so
\[
\operatorname{GL}_n = ({\operatorname{SL}}_n \times {\mathbb{C}}^{\times}) / \left\langle{\zeta_n I_n, \zeta_n^{-1}}\right\rangle
.\]
The map (in the reverse direction) is \( (g, z)\mapsto gz \), and if \( gz= I \) in \( \operatorname{GL}_n \) then \( g = \zeta_n^k I_n \) and \( z = \zeta_k^{-1} \).
:::

::: {.remark}
Assume \( G \) is semisimple, simply connected, and connected. Then

1.  The equivariant cohomology is
    \[
    H^*_T(G/B; {\mathbb{Q}}) \cong S_{\mathbb{Q}}\otimes_{S_{\mathbb{Q}}^W} S_{\mathbb{Q}}
    \]
2.  The equivariant \( {\mathsf{K}}{\hbox{-}} \)theory
    \[
    K^T(G/B) = A(T) \otimes_{A(T)^W}A(T)
    \]

Note that
\[
W &= N_G(T)/T \\
S &= S({\mathfrak{h}} {}^{ \vee }), && \pi \subseteq {\mathfrak{h}} {}^{ \vee }\\
A(T) &= {\mathbb{Z}}[X(T)]
.\]
:::

::: {.remark}
Think about semisimple, simply connected, and connected groups most of the semester.
:::

# Kac-Moody Groups (Monday, August 30)

::: {.remark}
See exercises in first two sections, 1.1 and 1.2. See also the proof of the Borel-Weil theorem.
:::

## 1.2: Root Space Decompositions

::: {.remark}
Starting with a generalized Cartan matrix \( A \), we produced a Lie algebra \( \tilde{\mathfrak{g}}(A) \) by taking the free Lie algebra and modding out by certain relations. This algebra only depended on the realization of \( A \), namely \( ({\mathfrak{g}}, \pi, \pi {}^{ \vee }) \), which we thought of as \( ({\mathfrak{g}},{\mathfrak{h}} {}^{ \vee }, {\mathfrak{h}}) \), yielding \( {\mathfrak{g}}(A) \) modulo Serre relations.
:::

::: {.definition title="Root Lattice"}
Define
\[
Q &\coloneqq{\mathbb{Z}}\pi \subseteq {\mathfrak{h}} {}^{ \vee }&& \text{the root lattice }\\
Q^+ &\coloneqq{\mathbb{Z}}_{\geq 0} \pi \subseteq {\mathfrak{h}} {}^{ \vee }\\
{\mathfrak{g}}_\alpha &\coloneqq\left\{{x\in g {~\mathrel{\Big|}~}\forall h\in{\mathfrak{h}}, [hx] = \alpha(h) x}\right\} && \text{for }\alpha\in{\mathfrak{h}} {}^{ \vee }
.\]
:::

::: {.theorem title="?"}
```{=tex}
\envlist
```
1.  \( {\mathfrak{g}}= {\mathfrak{n}}^- \oplus {\mathfrak{h}}\oplus {\mathfrak{n}} \), which are all nonzero.
2.  \( {\mathfrak{n}}^{\pm \alpha} = \bigoplus_{\alpha\in Q^+\setminus\left\{{0}\right\}} {\mathfrak{g}}_{\pm \alpha} \).
3.  \( \dim_{\mathbb{C}}{\mathfrak{g}}_\alpha < \infty \).
4.  \( {\mathfrak{n}}\coloneqq\left\langle{e_1,\cdots, e_\ell}\right\rangle \) subject *only* to the Serre relations, i.e. no additional relations are needed for this subalgebra.
:::

::: {.proof title="?"}
First step: prove for \( \tilde {\mathfrak{g}} \) and put a tilde on everything appearing in the theorem statement.

Let \( \left\{{v_1, \cdots, v_\ell}\right\} \) be a basis for \( V \) and fix \( \lambda \in {\mathfrak{h}} {}^{ \vee } \). Define an action of generators of \( \tilde {\mathfrak{g}} \) on \( T(V) \) in the following way:

1.  \( \alpha: \) Set \( f_i(\alpha) \coloneqq v_i\otimes a \) for \( a\in T(V) \)
2.  \( \beta: \) set \( h(1) \coloneqq{\left\langle {\lambda},~{h} \right\rangle}1 \coloneqq\lambda(h)\cdot 1 \), and inductively on \( s \) set
    \[
    h(v_j \otimes a) \coloneqq- {\left\langle {\alpha_j},~{h} \right\rangle} v_j \otimes a + v_j \otimes h(a) && a\in T^{s-1}(V), h\in {\mathfrak{h}}, 1\leq j \leq \ell
    .\]
3.  \( \gamma: \) Set \( e_i(1) \coloneqq 0 \) to kill constants, and inductively on \( s \),
    \[
    e_i(v_j \otimes a) = \delta_{ij}\alpha {}^{ \vee }_{i}(a) + v_j\otimes e_i(a) && a\in T^{s-1}(V), 1\leq j \leq \ell
    .\]

One should show that these define a representation by checking the Serre relations. Consider instead how this works in the \( {\mathfrak{g}}= {\mathfrak{sl}}_2 \) case:

::: {.example title="?"}
For \( {\mathfrak{sl}}_2 \), take the realization \( ({\mathbb{C}}, \left\{{\alpha}\right\}, \left\{{ \alpha {}^{ \vee }}\right\} ) \) corresponds to the matrix \( A = (s) \). Here \( T(V) = {\mathbb{C}}[x] \), and since there are no Serre relations, \( \tilde {\mathfrak{g}}= {\mathfrak{g}} \). We have \( e = [0,1; 0,0], f = [0,0; 1,0] \) which generate the positive/negative unipotent parts respectively. Then \( h = \left\{{ \operatorname{diag}(h, -h) }\right\} \). Checking the action:

1.  \( \alpha: {
    \begin{bmatrix}
      {0} & {0} 
    \\
      {1} & {0}
    \end{bmatrix}
    } p = xp \) which raises degree by 1. M

2.  
    \[
    \beta:
    h(1) = \lambda(h)1
    \implies
    h(xp) = -\alpha(h)xp + x(hp)
    ,\]
    where \( p\in {\mathbb{C}}[x]_{g-1} \). For example,
    \[
      h(x) &= -\alpha(x) + x \lambda(h) = (\lambda - \alpha)(h)x \\
      h(x^2) &= (\lambda - 2\alpha)(h)x^2
      ,\]
    so this acts diagonally and preserves degree.

3.  Check
    \[
    {
    \begin{bmatrix}
      {0} & {1} 
    \\
      {0} & {0}
    \end{bmatrix}
    } \cdot (1) &= 0 \\
    {
    \begin{bmatrix}
      {0} & {1} 
    \\
      {0} & {0}
    \end{bmatrix}
    } \cdot (xp) &= p + x {
    \begin{bmatrix}
      {0} & {1} 
    \\
      {0} & {0}
    \end{bmatrix}
    } p
    .\]

Check that \( ex = 1+0 \) and \( ex^2 = x+x = 2x \), so \( e \) acts by differentiation.
:::

Note that \( {\mathfrak{h}} \) forms a subalgebra since it's a nondegenerate map. This follows from the fact that we get a representation \( \rho_{\lambda} \) of \( \tilde{\mathfrak{g}} \) on \( T(V) \), which for each \( h \) acts nontrivially on some \( T(V) \). So use \( \rho_{\lambda} \) to deduce the theorem for \( \tilde{\mathfrak{g}} \):
\[
\left\{{ [ x, y] {~\mathrel{\Big|}~}x,y\in {\mathfrak{h}}= \left\langle{\left\{{e_i, f_i}\right\}_{i=1}^\ell}\right\rangle }\right\}  \subseteq 
\tilde {\mathfrak{n}}^- + {\mathfrak{h}}+ \tilde{\mathfrak{n}}
= {\mathfrak{g}}
,\]
we'll show this sum is direct.

Let \( u = n^- + h + n^+ = 0 \), then in \( T(V) \) we have \( u(1) = n^-(1) + {\left\langle {\lambda},~{h} \right\rangle}1 \), which forces \( {\left\langle {\lambda},~{h} \right\rangle} = 0 \) for all \( \lambda\in{\mathfrak{h}} {}^{ \vee } \) and thus \( h = 0 \). Use the restriction \( \tilde{\mathfrak{g}}\to \tilde{\mathfrak{n}} \) to get a map \( U(\tilde{\mathfrak{n}}^-)\to T(V) \) out of the enveloping algebra, using that \( T(V) \) is an associative algebra. Using \( f_i \mapsto v_i \), this is surjective and in fact an isomorphism. Sending \( {\mathfrak{n}}^- \mapsto {\mathfrak{n}}^-(1) \) yields \( \tilde{\mathfrak{n}}^- \subseteq U(\tilde{\mathfrak{n}}^-) = T(V) \). This yields \( n^- = 0 \), making the sum direct.

We can write \( \tilde{\mathfrak{n}}^- = F\left\langle{f_1,\cdots, f_\ell}\right\rangle \)\
and \( \tilde{\mathfrak{n}}= F\left\langle{e_1,\cdots, e_\ell}\right\rangle \) and by the PBW theorem, \( \dim \tilde{\mathfrak{g}}_\alpha < \infty \). This uses that the weight spaces for \( \tilde{\mathfrak{n}}^- \) are contained in \( U(\tilde{\mathfrak{n}}^-) \). Note that there is a *Cartan involution*
\[
\tilde\omega: \tilde{\mathfrak{g}}&{\circlearrowleft}\\
e_i &\mapsto -f_i \\
f_i &\mapsto -e_i \\
h &\mapsto -h
.\]

Now to prove the theorem for \( {\mathfrak{g}} \) itself, write \( \tilde {\mathfrak{r}}\coloneqq\ker( \tilde{\mathfrak{g}}\xrightarrow{\gamma} {\mathfrak{g}}_\alpha) {~\trianglelefteq~}\tilde{\mathfrak{g}} \). This is an ideal, and thus \( {\mathfrak{h}}{\hbox{-}} \)stable. We can thus write
\[
\tilde{\mathfrak{r}}= 
\qty{
\bigoplus_{\alpha\in Q^+ \setminus\left\{{0}\right\}} {\mathfrak{r}}_{-\alpha}
}
\oplus 
\tilde{\mathfrak{r}}_0
\oplus 
\qty{
\bigoplus_{\alpha\in Q^+ \setminus\left\{{0}\right\}} {\mathfrak{r}}_{\alpha}
}
\]
where \( \tilde{\mathfrak{r}}_{\beta} \coloneqq\tilde{\mathfrak{r}}\cap\tilde{\mathfrak{g}}_{\beta} \) and \( \tilde {\mathfrak{r}}_0 = \tilde{\mathfrak{r}}\cap{\mathfrak{h}} \). We have ideals \( \tilde{\mathfrak{r}}^{\pm} {~\trianglelefteq~}\tilde{\mathfrak{n}}^{\pm} \), which are respectively generated by
\[
\left\{{e_{i, j} = (\operatorname{ad}e_i)^{1 - a_{i, j}} (e_{j}) {~\mathrel{\Big|}~}i\neq j }\right\}
&&
\left\{{f_{i, j} = (\operatorname{ad}f_i)^{1 - a_{i, j}} (f_{j}) {~\mathrel{\Big|}~}i\neq j }\right\}
,\]
where \( \operatorname{ad}f_k (e_{i, j}) = 0 \) for all \( k \) and \( i\neq j \). Skipping a few things that are spelled out in the book, e.g. that \( \tilde {\mathfrak{r}}_0 = 0 \), we conclude that \( \tilde{\mathfrak{r}}= \tilde{\mathfrak{r}}^+ \oplus \tilde{\mathfrak{r}}^- \), both of which are ideals in \( \tilde{\mathfrak{g}} \). Since \( \tilde{\mathfrak{r}}_0 = 0 \), we get \( {\mathfrak{h}}\subseteq {\mathfrak{g}} \), and using that \( \gamma \) is surjective we have an isomorphism of \( {\mathbb{C}}{\hbox{-}} \)modules
\[
{\mathfrak{g}}= \tilde{\mathfrak{g}}/\tilde{\mathfrak{r}}= \tilde{\mathfrak{n}}^-/ \tilde{\mathfrak{r}}^- \oplus {\mathfrak{h}}\oplus \tilde{\mathfrak{n}}/ \tilde{\mathfrak{r}}^+
.\]

Write \( \Delta \coloneqq\left\{{\alpha\in Q\setminus\left\{{0}\right\} {~\mathrel{\Big|}~}{\mathfrak{g}}_\alpha \neq 0}\right\} \) the *set of roots* and \( {\mathfrak{g}}_{\alpha} \) the *root space*, then set
\[
\Delta^+ &\coloneqq\Delta \cap Q^+ \\
\Delta^- &\coloneqq\Delta \cap(-Q^+) \\
\Delta &\coloneqq\Delta^+ \cup\Delta^-
.\]
Also for \( Y \subseteq \left\{{1,\cdots,\ell}\right\} \) write
\[
\Delta_Y &\coloneqq\Delta \cap\qty{\bigoplus_{i\in Y} {\mathbb{Z}}\alpha_i } \\
{\mathfrak{g}}_Y &\coloneqq{\mathfrak{h}}\oplus \qty{ \bigoplus_{\alpha\in \Delta_Y} {\mathfrak{g}}_\alpha  }
.\]
We say \( Y \) is *finite type* if \( {\mathfrak{g}}_Y \) is finite dimensional, and given \( A \) we can associate some matrix \( (a_{i, j})_{i, j\in Y} \).
:::

::: {.remark}
See Ch. 13 for how this generalizes the semisimple case.
:::

# Weyl Groups, 1.3 (Wednesday, September 01)

::: {.remark}
We'll spend a few days discussing Weyl groups, since they're important in the study of Schubert varieties. For other references, see

-   Björner and Brenti: *Combinatorics of Coxeter Groups*
:::

## Root Systems

::: {.remark}
Recall that given a generalized Cartan matrix \( A \), there is an associated realization \( ({\mathfrak{h}}, \pi \subseteq {\mathfrak{h}} {}^{ \vee }, \pi {}^{ \vee }) \).
:::

::: {.definition title="Reflections"}
For \( 1\leq i \leq \ell \), define a **reflection** \( s_i\in \mathop{\mathrm{Aut}}({\mathfrak{h}} {}^{ \vee }) \) as
\[
s_i(\chi) \coloneqq\chi - {\left\langle {\chi},~{\alpha_i {}^{ \vee }} \right\rangle}\alpha_i && \forall \chi \in {\mathfrak{h}} {}^{ \vee }
.\]
:::

::: {.remark}
One can check that this fixes a hyperplane, and \( s_i^2 = \operatorname{id} \).
:::

::: {.definition title="Crystallographic Root Systems"}
A subset \( \Phi \) of Euclidean space \( (V, {\left\langle {{-}},~{{-}} \right\rangle}) \) is a **crystallographic root system** in \( V \) iff

1.  \( \Phi \) is finite, \( {\operatorname{span}}_{\mathbb{R}}\Phi = V \), and \( 0\not\in\Phi \).
2.  If \( \alpha \in \Phi \), then \( {\mathbb{R}}\alpha \cap\Phi = \pm \alpha \).
3.  If \( \alpha \in \Phi \), then \( s_\alpha \) leaves \( \Phi \) invariant
4.  If \( \alpha, \beta\in \Phi \), then \( {(\beta, \alpha) \over 2(\alpha, \alpha)} \in {\mathbb{Z}} \).
:::

::: {.remark}
Note that for a Kac Moody Lie algebra, \( \Phi \) is often infinite, so condition 1 can fail. Condition 2 can fail if \( \alpha \) is imaginary, in which case \( n\alpha \in \Phi \) for some \( n\in {\mathbb{Z}} \).
:::

::: {.definition title="Weyl Groups"}
Let \( W \subseteq \mathop{\mathrm{Aut}}({\mathfrak{h}} {}^{ \vee }) \) be the subgroup generated by \( \left\{{s_i {~\mathrel{\Big|}~}1\leq i\leq \ell}\right\} \), then \( W \) is said to be the **Weyl group** of \( {\mathfrak{g}} \).
:::

::: {.definition title="Lengths"}
Let \( {\mathcal{W}} \) be the group generated by a fixed set \( S \) of elements of order 2 in \( W \). Then for \( w\in {\mathcal{W}} \), the **length** \( \ell(w) \) is the smallest number \( \ell \) such that \( w = \prod_{i=1}^\ell s_i \).
:::

::: {.remark}
Note that \( \ell(1) = 0 \), and for \( Y \subseteq S \), we set \( {\mathcal{W}}_Y \) to be the subgroup generated by \( \left\{{s{~\mathrel{\Big|}~}s\in Y}\right\} \). We'll prove that any Weyl group is a Coxeter group, but for now \( W \) is a Weyl group and \( {\mathcal{W}} \) is a Coxeter group.
:::

::: {.theorem title="1.3.11"}
Let \( ({\mathcal{W}}, S) \) be as above, then TFAE:

1.  The Coxeter condition: \( {\mathcal{W}} \) is a quotient of the free group \( \widehat{{\mathcal{W}}} \) generated by \( S \), modulo the following relations:

-   \( s^2= 1 \) for all \( s\in S \).
-   \( (st)^{m_{s, t}} = 1 \) for all \( s\neq t \) in \( S \) and for some integers \( m_{t, s} = m_{s, t} \geq 2 \) (or possibly \( \infty \)).

2.  The root system condition: There exists a representation \( V \) of \( {\mathcal{W}} \) over \( {\mathbb{R}} \) together with a subset \( \Delta \subseteq V\setminus\left\{{0}\right\} \) such that

-   Symmetric: \( \Delta = -\Delta \)

-   \( {\mathcal{W}}{\hbox{-}} \)invariance/stability: there exists a subset \( \pi \coloneqq\left\{{\alpha_s}\right\}_{s\in S} \subseteq \Delta \) such that for any \( \alpha \in \Delta \) exactly one of \( \alpha \) or \( -\alpha \) belongs to the set of positive linear combinations of "simple roots" \( \sum_{s\in S} {\mathbb{R}}_{>0} \alpha_s \). If \( \alpha \) is in this subset, we'll say \( \alpha \) is **positive**, and if \( -\alpha \) is in it, we'll say \( \alpha \) is **negative**.

-   For every \( s\in S \), if \( \alpha \neq \alpha_s \) and \( \alpha > 0 \) is positive, then \( s\alpha_s <0 \) is negative and \( s\alpha > 0 \). [^1]

-   For \( s, t\in S \) and \( w\in {\mathcal{W}} \), then \( w \alpha_s = \alpha_t \) implies that \( wsw^{-1}= t \), so the group action is captured in a conjugation action.

3.  The *strong exchange* condition: For \( s\in S \) and \( v, w\in {\mathcal{W}} \) with \( \ell(vsv^{-1}w) \leq \ell(w) \), for any expression \( w = \prod_{i=1}^n s_i \) with \( s_i \in S \), we have \( vsv^{-1}w = \prod_{i\neq j}^n s_i \) for some \( j \).

4.  The *exchange condition*: For \( s\in S, w\in {\mathcal{W}} \) with \( \ell(sw) \leq \ell(w) \), then for any reduced expression \( w = \prod_{i=1}^n s_i \), we have \( sw = \prod_{i\neq j}^n s_i \) for some \( j \).
:::

::: {.remark}
These conditions show up in a lot of proofs!
:::

::: {.definition title="Crystallographic Coxeter groups"}
If \( S \) is finite (which it will be for us), we can take \( V \) to be finite dimensional. Writing \( S \coloneqq\left\{{s_1, \cdots, s_\ell}\right\} \) and set \( m_{ij} \coloneqq{\operatorname{Ord}}(s_i s_j) \). If every \( m_{ij} \) is one of \( \left\{{2,3,4,6,\infty}\right\} \), call the Coxeter group **crystallographic**.
:::

::: {.remark}
An open problem is that all Coxeter groups *should* come from geometry, e.g. from projective varieties (?), but it's not clear what these varieties should be. The crystallographic ones will precisely come from Kac-Moody Lie algebras. This is closely related to problems concerning KL polynomials: take an Ind variety, stratify it, and take intersection cohomology.
:::

::: {.remark}
Every *finite* irreducible Coxeter group (with exceptions \( H_3, H_4, I_2(m) \)) occur as Weyl groups of crystallographic root systems.
:::

::: {.proof title="of theorem, $1\\implies 2$"}
Let \( V \) be the \( {\mathbb{R}}{\hbox{-}} \)module with basis \( \left\{{\alpha_s {~\mathrel{\Big|}~}s\in S}\right\} \). For any \( s\in S \), define an inner product by extending the following \( {\mathbb{R}}{\hbox{-}} \)bilinearly:
\[
(\alpha_s, \alpha_s) &= 1 \\
(\alpha_{s_1}, \alpha_{s_2}) &= \cos({\pi \over m_{s_1s_2}}) && s_1\neq s_2 
.\]

For \( s, v\in V \), define
\[
s(v) \coloneqq v - 2(v, \alpha_s) \alpha_s
.\]
A quick computation shows
\[
s( \alpha_s) = \alpha_s - 2 (\alpha_s, \alpha_s) \alpha_s = - \alpha_s
.\]
One can check that the formula is \( {\mathbb{R}}{\hbox{-}} \)linear, and using this we have
\[
s^2(v) 
&= s(v - 2(v, \alpha_s) \alpha_s) \\
&= s(v) - 2(v, \alpha_s) s(\alpha_s) \\
&= (v -2(v, \alpha_s) \alpha_s) - 2(v, \alpha_s)s( \alpha_s) \\
&= (v -2(v, \alpha_s) \alpha_s) - 2(v, \alpha_s)(- \alpha_s) \\
&= v
,\]
so \( s^2 = \operatorname{id} \). By assumption, we have \( (s_1 s_2)^{m_{s_1 s_2}}(v) = v \). Using that this formula factors through the relations, we can extend this to an action \( {\mathcal{W}}\curvearrowright V \). Then
\[
(s(v), s(v')) 
&= (v - 2(v, \alpha_s) \alpha_2, v' - 2(v', \alpha_s) \alpha_s) \\
&= (v, v') - 2(v', \alpha_s)(v, \alpha_s) - 2(v, \alpha_s)(\alpha_s, v') + 4(v, \alpha_s)(v', \alpha_s)(\alpha_s, \alpha_s) \\
&= (v, v') - 4(v', \alpha_s)(v, \alpha_s) + 4(v, \alpha_s)(v', \alpha_s)\\
&= (v, v')
,\]
where we've used that \( ({-}, {-}) \) is symmetric. Thus \( (wv, wv') = (v, v') \).

Let \( \Delta\coloneqq\displaystyle\bigcup_{s\in S} \mathcal{W} ( \alpha_s) \), we'll work with this more next time.
:::

# Wednesday, September 08

::: {.remark}
Today: finish chapter one.
:::

::: {.definition title="Bruhat-Chevalley Partial Order"}
For \( v, w\in W \) we set \( v\leq w \iff \) there exists \( { {t}_1, {t}_2, \cdots, {t}_{p}} \in T \) such that

-   \( v = t_p\cdots t_1 w \)
-   \( \ell(t_{j} \cdots t_1 w) \leq \ell(t_{j-1} \cdots t_1 w) \).
:::

::: {.definition title="Minimal length representatives"}
For \( Y \subseteq S \) we set
\[
W'_Y \coloneqq\left\{{\ell(wv) \geq \ell(w) \forall v\in W_Y}\right\}
.\]
:::

::: {.example title="?"}
Consider \( W = S_3 \) with \( S\coloneqq\left\{{s_1, s_2}\right\} = \left\{{1, 2}\right\} \). The Hasse diagram is the following:

```{=tex}
\begin{tikzcd}
    & {(3,2,1)} \\
    {(2,3,1)} && {(3,1,2)} \\
    {s_1 = (2,1,3)} && {(1,3,2) = s_2} \\
    & {(1,2,3)}
    \arrow[from=2-1, to=1-2]
    \arrow[from=2-3, to=1-2]
    \arrow[from=3-1, to=2-1]
    \arrow[from=3-3, to=2-3]
    \arrow[from=3-1, to=2-3]
    \arrow[from=3-3, to=2-1]
    \arrow[from=4-2, to=3-1]
    \arrow[from=4-2, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMSwwLCIoMywyLDEpIl0sWzAsMSwiKDIsMywxKSJdLFsyLDEsIigzLDEsMikiXSxbMCwyLCJzXzEgPSAoMiwxLDMpIl0sWzIsMiwiKDEsMywyKSA9IHNfMiJdLFsxLDMsIigxLDIsMykiXSxbMSwwXSxbMiwwXSxbMywxXSxbNCwyXSxbMywyXSxbNCwxXSxbNSwzXSxbNSw0XV0=)

We have

-   \( \emptyset \subseteq \left\{{1}\right\} \subseteq {1, 2} \)

-   
    \[
    G/B = \left\{{0 \subseteq F^1 \subseteq F^2 \subseteq {\mathbb{C}}^3}\right\} \to \left\{{0 \subseteq F^2 \subseteq {\mathbb{C}}^3}\right\} \coloneqq{\operatorname{Gr}}_2({\mathbb{C}}^3) \to \left\{{0 \subseteq {\mathbb{C}}^3}\right\} = G/G
    .\]
    Note that Kumar writes
    \[
    X^{\emptyset} &\coloneqq G/B \\
    X^{\left\{{1}\right\}} &= {\operatorname{Gr}}_2({\mathbb{C}}^3)\\
    X^{\left\{{1,2}\right\}} &= G/G
    .\]

-   For \( Y\coloneqq\left\{{1}\right\} \), we just have to check how lengths change upon swapping the first two positions. Thus \( W_Y = \left\{{e, s_1}\right\} \) since \( (2,3,1) \) is minimal length. Similarly \( (1,3,2) \) and \( (1,2,3) \) are minimal length.

```{=html}
<!-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-09-08_14-03.xoj -->
```
![](figures/2021-09-08_14-05-35.png)

-   For \( Y = \left\{{1, 2}\right\} \), we get \( W_Y = W \) with a minimal element \( (1,2,3) \).
:::

::: {.lemma title="?"}
Fix a reduced expression \( w = \prod_{i\leq n} s_i \). Then \( v\leq w \) iff there exist indices \( 1\leq j_1 < j_2 < \cdots < j_p \leq n \) such that \( v = \prod_{i\neq j_k} s_i \).
:::

::: {.example title="?"}
For \( m_{12} = 3 \), if \( (s_1 s_2)^{m_{12} = 3} = e \), so \( s_1 s_2 s_1 = s_2 s_1 s_2 \), which is a braid relation that corresponds to \( (3,2,1) \). Let \( w_0 \) be the maximal element (which generally only works when the Coxeter group is finite), so here \( w_0 = s_1 s_2 s_1 \). We can cross out various reflections to get closure relations:

```{=tex}
\begin{tikzcd}
    & {w_0 = s_1 s_2 s_1 = s_2 s_1 s_2} \\
    {s_1 s_2} && {s_2 s_1} \\
    {s_1} && {s_2} \\
    & e
    \arrow[from=4-2, to=3-1]
    \arrow[from=4-2, to=3-3]
    \arrow[from=3-3, to=2-3]
    \arrow[from=2-3, to=1-2]
    \arrow[from=2-1, to=1-2]
    \arrow[from=3-1, to=2-1]
    \arrow[from=3-1, to=2-3]
    \arrow[from=3-3, to=2-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMSwwLCJ3XzAgPSBzXzEgc18yIHNfMSA9IHNfMiBzXzEgc18yIl0sWzAsMSwic18xIHNfMiJdLFsyLDEsInNfMiBzXzEiXSxbMCwyLCJzXzEiXSxbMiwyLCJzXzIiXSxbMSwzLCJlIl0sWzUsM10sWzUsNF0sWzQsMl0sWzIsMF0sWzEsMF0sWzMsMV0sWzMsMl0sWzQsMV1d)

Here for \( Y = \left\{{1}\right\} = \left\{{s_1}\right\} \), we get minimal length elements \( e, s_2, s_1 s_2 \).
:::

::: {.example title="?"}
In general, we start with a GCM \( A \), take a realization \( ({\mathfrak{h}}, \pi, \pi {}^{ \vee }) \), get Kac-Moody Lie algebra \( {\mathfrak{g}} \), and extract a group \( W \) which we now know is a Coxeter group. Write \( \left\{{{ {\alpha}_1, {\alpha}_2, \cdots, {\alpha}_{\ell}}}\right\} \subseteq {\mathfrak{h}} {}^{ \vee } \) and \( S = \left\{{s_1, \cdots, s_\ell}\right\} \), then for any \( 1\leq i\leq \ell \) set
\[
s_i(\chi) \coloneqq\chi - {\left\langle {\chi},~{\alpha_i {}^{ \vee }} \right\rangle}\alpha_i && \forall \chi\in{\mathfrak{h}} {}^{ \vee }
.\]
Fix a real form \( {\mathfrak{h}}_{\mathbb{R}} \) of \( {\mathfrak{h}} \) satisfying

-   \( \pi {}^{ \vee }\subseteq {\mathfrak{h}}_{\mathbb{R}} \),
-   \( \alpha_i({\mathfrak{h}}_{\mathbb{R}}) \subseteq {\mathbb{R}} \) for all \( 1\leq i \leq \ell \).
:::

::: {.definition title="Dominant Chamber"}
Define the **dominant chamber** \( D_{\mathbb{R}}\subseteq {\mathfrak{h}}_{\mathbb{R}} {}^{ \vee }\coloneqq\mathop{\mathrm{Hom}}_{{\mathsf{{\mathbb{R}}}{\hbox{-}}\mathsf{Mod}}}({\mathfrak{h}}_{\mathbb{R}}, {\mathbb{R}}) \) as
\[
D_{\mathbb{R}}\coloneqq\left\{{ \lambda\in {\mathfrak{h}}_{\mathbb{R}} {}^{ \vee }{~\mathrel{\Big|}~}\lambda(\alpha_i) \geq 0 \, \forall i}\right\}
.\]
:::

::: {.definition title="Tits Cone"}
Define the **Tits cone** as
\[
C \coloneqq\displaystyle\bigcup_{w\in W} wD_{\mathbb{R}}
.\]
:::

::: {.remark}
Consider the reductive group \( {\mathsf{Sp}}_4({\mathbb{C}}) \), which is semisimple, simply connected, and connected. One way to realize this group is as
\[
{\mathsf{Sp}}_4({\mathbb{C}}) \coloneqq\left\{{ g\in \operatorname{GL}_4({\mathbb{C}}) {~\mathrel{\Big|}~}\Theta(g) = g}\right\}
\]
for \( \Theta \) some involution of \( \operatorname{GL}_4({\mathbb{C}}) \). Noting that we always have associated root datum \( (n, \left\{{ \alpha_i}\right\}_{i=1}^\ell ,\left\{{\alpha_i {}^{ \vee }}\right\}_{i=1}^\ell ) \), here we have
\[
{\mathsf{Sp}}_4({\mathbb{C}}) = (2, \left\{{ (1,-1), (0, 2)}\right\}, \left\{{(1, -1), (0, 1)}\right\} )
.\]
This yields a GCM
\[
A = {
\begin{bmatrix}
  {2} & {-2} 
\\
  {-1} & {2}
\end{bmatrix}
}
,\]
which comes from computing \( (A)_{ij} \coloneqq\alpha_i(\alpha_j {}^{ \vee }) \). Here
\[
G/Z(G) = (2, \left\{{ (1, 0), (0, 1) }\right\} , \left\{{ (2, -2), (-1, 2) }\right\} )
.\]
Note that these two root data are distinct over \( {\mathbb{Z}} \). We can consider the real form \( {\mathfrak{h}}_{\mathbb{R}} {}^{ \vee } \):

```{=html}
<!-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-09-08_14-27.xoj -->
```
![](figures/2021-09-08_14-30-01.png)

We have

-   \( \chi \in {\mathfrak{h}}_{\mathbb{R}} {}^{ \vee }= \left\{{(x, y)}\right\} \),
-   \( s_1(x, y) = (x, y) - {\left\langle {(x, y)},~{(1, -1)} \right\rangle}(1, -1) = (y, x) \)
-   \( s_2(x, y) = (x, y) - {\left\langle {(x, y)},~{(0, 1)} \right\rangle}(0, 2) = (x, -y) \)

We can look at the \( W{\hbox{-}} \)orbits of these, and it turns out to recover all of the roots:

![](figures/2021-09-08_14-35-37.png)

\( W \subseteq \mathop{\mathrm{Aut}}({\mathfrak{h}}_{\mathbb{R}} {}^{ \vee }) \) is the subgroup given by \( \left\{{s_1, s_2}\right\} \), and there are maps
\[
s_1 s_2: (x, y) &\mapsto (-y, x)\\
s_2 s_1 s_2: (x, y) &\mapsto (y, -x)\\
s_1s_2 s_1 s_2: (x, y) &\mapsto (-x, -y)\\
s_2 s_1s_2 s_1 s_2: (x, y) &\mapsto (-x, y)\\
\vdots &\quad  \vdots \\
(s_1s_2)^4: (x, y) &\mapsto (x, y) \implies m_{12} = 4
.\]
Here we've used that \( (s_1 s_2)^2 = (s_2 s_1)^2 \). We can then find the dominant chamber:

![](figures/2021-09-08_14-40-17.png)

For \( \lambda \in D_{\mathbb{R}} \), we set \( W_\lambda \coloneqq\left\{{w\in W {~\mathrel{\Big|}~}w(\lambda) = \lambda}\right\} \). This is generated by the simple reflections it contains. Setting \( Y = Y(\lambda) = \left\{{s_i \in S {~\mathrel{\Big|}~}\lambda( \alpha_i {}^{ \vee }) = 0}\right\} \), we actually get \( W_\lambda = W_Y \).
:::

::: {.remark}
Recall what regular weights are!
:::

# Category \( {\mathcal{O}} \) (Friday, September 10) {#category-mathcalo-friday-september-10}

Counterexamples: Kac Moodys that aren't usual Lie algebras: affine Kac Moodys.

::: {.remark}
Our setup: \( A \leadsto ({\mathfrak{h}},\pi,\pi {}^{ \vee }) \). Fix \( \lambda \in {\mathfrak{h}} {}^{ \vee } \) and \( c\in {\mathbb{C}}_{ \lambda} \ni z \) a representation of \( {\mathfrak{h}} \) by \( x.\cdot \coloneqq\lambda(x)z \). Recall that we have a triangular decomposition \( {\mathfrak{g}}= {\mathfrak{n}}^- \oplus {\mathfrak{h}}\oplus {\mathfrak{n}} \) with \( {\mathfrak{h}}\oplus {\mathfrak{n}}\leq {\mathfrak{b}} \) a subalgebra of the Borel. Since \( {\mathfrak{n}}{~\trianglelefteq~}{\mathfrak{b}} \) is an ideal, we can quotient to extend the representation
\[
{\mathfrak{b}}\to {\mathfrak{b}}/{\mathfrak{n}}\cong {\mathfrak{h}}\xrightarrow{\lambda} {\mathbb{C}}_{\lambda}
.\]
This extends from \( {\mathfrak{h}} \) to \( {\mathfrak{b}} \) by making it zero on \( {\mathfrak{n}} \), and generally one can do this with nilradicals.
:::

::: {.definition title="Verma Modules"}
\[
M(\lambda) \coloneqq U({\mathfrak{g}}) \otimes_{U({\mathfrak{b}})} {\mathbb{C}}_{\lambda} \in {\mathsf{{\mathfrak{g}}}{\hbox{-}}\mathsf{Mod}}
,\]
where \( {\mathfrak{b}}\curvearrowright{\mathbb{C}}_{\lambda} \) extends to the universal enveloping algebra.
:::

::: {.remark}
The PBW theorem implies that every \( M(\lambda)\cong U({\mathfrak{n}}^-) \otimes_{\mathbb{C}}{\mathbb{C}}_{\lambda} \) as vector spaces, which is in fact an isomorphism in \( {\mathsf{{\mathfrak{b}}^-}{\hbox{-}}\mathsf{Mod}} \). This means \( M( \lambda) \) is a weight module for \( {\mathfrak{h}} \), i.e. there is a decomposition \( M(\lambda) = \bigoplus_{\mu \in {\mathfrak{h}} {}^{ \vee }}M(\lambda)_{ \mu} \) where
\[
M(\lambda)_{\mu} \coloneqq\left\{{v\in M( \lambda) {~\mathrel{\Big|}~}h\cdot v = \mu(h) v,\,\quad h\in {\mathfrak{h}}}\right\}
.\]
:::

::: {.definition title="Highest weight modules"}
Any nonzero quotient \( L \) of \( M(\lambda) \) in \( {\mathsf{{\mathfrak{g}}}{\hbox{-}}\mathsf{Mod}} \) is a **highest weight module** with highest weight \( \lambda \).
:::

::: {.remark}
Why *highest weight*? There is a partial order on weights:
\[
\mu \leq \lambda\iff \lambda- \mu\in Q^+ \coloneqq{\mathbb{Z}}_{> 0} \pi
.\]
Also note that \( M( \lambda) \) is a highest weight module.
:::

::: {.definition title="Category $\\OO$"}
There is a full subcategory \( {\mathcal{O}}\leq {\mathsf{{\mathfrak{g}}}{\hbox{-}}\mathsf{Mod}} \) where every \( M\in {\operatorname{Ob}}({\mathcal{O}}) \) satisfies the following:

-   (Finite multiplicities) \( M \) is a weight module with finite-dimensional weight spaces.
-   There exist finitely many weights \( { {\lambda}_1, {\lambda}_2, \cdots, {\lambda}_{k}}\in {\mathfrak{h}} {}^{ \vee } \) (depending on \( M \)) such that \( P(M) \subseteq \displaystyle\bigcup_{1\leq j\leq k} {\mathfrak{h}} {}^{ \vee }_{\leq \lambda_j} \):

```{=html}
<!-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-09-10_14-07.xoj -->
```
![](figures/2021-09-10_14-08-34.png)
:::

::: {.lemma title="?"}
Any \( M(\lambda) \) has a unique proper maximal \( {\mathfrak{g}}{\hbox{-}} \)submodule \( M'(\lambda) \). In particular, \( \lambda\not \in M'(\lambda) \), and there is a unique irreducible quotient \( L(\lambda) \coloneqq M( \lambda)/M'( \lambda) \).

> The proof is easy: use that \( \lambda \) generated \( M(\lambda) \) as a \( {\mathfrak{g}}{\hbox{-}} \)module.
:::

::: {.lemma title="?"}
For any irreducible \( L \in {\operatorname{Ob}}({\mathcal{O}}) \), there exists a unique \( \lambda \in {\mathfrak{h}} {}^{ \vee } \) such that \( L \cong L(\lambda) \).
:::

::: {.definition title="Dominant Integral Weights"}
Define the **dominant integral weights**
\[
D \coloneqq\left\{{ \lambda\in {\mathfrak{h}} {}^{ \vee }{~\mathrel{\Big|}~}\forall \alpha_i {}^{ \vee }\in \pi {}^{ \vee },\,\, {\left\langle { \lambda},~{\alpha_i {}^{ \vee }} \right\rangle} \in {\mathbb{Z}}_{> 0} }\right\}
.\]
:::

::: {.definition title="Maximal integrable highest weight modules"}
For \( \lambda \in D \), define \( M_1(\lambda) \subseteq M( \lambda) \) as the submodule generated by \( \left\{{ f_i^{ \lambda(\alpha_i {}^{ \vee }) + 1 } \otimes 1}\right\}_{i=1}^\ell \), and define
\[
L^{\max}( \lambda) \coloneqq{M(\lambda) \over M_1( \lambda)}
,\]
the operators that act locally nilpotently (so there is an exponent depending on the vector)
:::

::: {.example title="?"}
Let \( A = {\left[ {2} \right]} \) be a \( 1\times 1 \) GCM, which yields \( ({\mathbb{C}}, \left\{{ 2}\right\}, \left\{{ 1}\right\})\leadsto {\mathfrak{sl}}_2({\mathbb{C}}) \). Given \( \lambda\in {\mathbb{C}}, \) we have
\[ 
M( \lambda) 
&= U({\mathfrak{sl}}_2) \otimes_{U({\mathfrak{b}})} {\mathbb{C}}_{\lambda} \\
&\cong U({\mathfrak{n}}^-) \otimes_{\mathbb{C}}{\mathbb{C}}_{\lambda} \\
&= {\mathbb{C}}[y] \otimes_{\mathbb{C}}{\mathbb{C}}_{ \lambda}
.\]
where noting that \( {\mathfrak{n}}^- = \left\langle{f_i}\right\rangle \) and \( {\mathfrak{n}}= \left\langle{e_i}\right\rangle \), we identify the variable \( y \) with \( f \).

This has weights \( \lambda, \lambda-2, \lambda-4, \cdots \), identifying elements as \( y^k \otimes 1 \). How do \( e,f,h \in {\mathfrak{g}} \) act in this basis?

-   \( h(y^k \otimes 1) = (hy^k) \otimes 1 = (\lambda - 2k)(y^k\otimes 1) \).
-   \( f(y^k\otimes 1) = y(y^k\otimes 1) = y^{k+1}\otimes 1 \).
-   \( e \): more complicated!

The game: move \( e \)s across the tensor product to kill terms:

-   For \( k=0 \):
    \[
    e(1\otimes 1) = e\otimes 1 = 1\otimes e(1) = 0
    \]
    since we extended \( \lambda \) by zero on \( {\mathfrak{n}} \).

-   For \( k=1 \):
    \[
    e(y\otimes 1) 
    &= e(f\otimes 1) \\
    &= (ef)\otimes 1 \\
    &= ([ef] + fe)\otimes 1 \\
    &= [ef] \otimes 1 \\
    &= \alpha {}^{ \vee }\otimes 1 \\
    &= 1\otimes\alpha {}^{ \vee }\cdot 1 \\
    &= \lambda( \alpha {}^{ \vee })(1\otimes 1) \\
    &= \lambda
    ,\]
    using \( ef = [e,f] + fe = ef-fe + fe \) and \( fe\otimes 1 = f\otimes e(1) = 0 \).

-   For \( k=2 \):
    \[
    eff\otimes 1 
    &= ([ef] + fe)f \otimes 1 \\
    &=( \alpha {}^{ \vee }f + fef )\otimes 1 \\
    &= ( \alpha {}^{ \vee }f + f([ef] + fe) ) \otimes 1 \\
    &= (\alpha {}^{ \vee }f + f[ef]) \otimes 1 \\
    &= (\alpha {}^{ \vee }f + f \alpha {}^{ \vee }) \otimes 1 && f \alpha {}^{ \vee }\in {\mathfrak{h}}\\
    &= ( \alpha {}^{ \vee }f + \lambda f) \otimes 1 \\
    &= ( [\alpha {}^{ \vee }, f] + f \alpha {}^{ \vee }+ \lambda f) \otimes 1 \\ 
    &= ( - \alpha( \alpha {}^{ \vee }) f + 2 \lambda f) \otimes 1 && \text{using Kac-Moody relns.} \\
    &= 2( \lambda- 1)f \otimes 1
    .\]

Then general pattern is \( e(y^k \otimes 1) = k ( \lambda - (k-1) ) \qty{ y^{k-1} \otimes 1 } \).

Here
\[
D =\left\{{ \lambda\in {\mathfrak{h}} {}^{ \vee }= {\mathbb{C}}{~\mathrel{\Big|}~}{\left\langle { \lambda},~{ \alpha {}^{ \vee }} \right\rangle} \in {\mathbb{Z}}_{>0} }\right\} = {\mathbb{Z}}_{>0} \subseteq {\mathbb{C}}= {\mathfrak{h}} {}^{ \vee }
\]
and for \( \lambda \in D \),\
\[
M_1( \lambda) = \left\{{f^{ \lambda( \alpha_i {}^{ \vee }) + 1} \otimes 1}\right\}_{1\leq i \leq \ell = 1} = \left\{{f^{\lambda+ 1} \otimes 1}\right\}
.\]
Note that \( e\cdot f^{ \lambda+1}\otimes 1 = 0 \), which can be checked from the above formula:
\[
e(y^{\lambda+1} \otimes 1) = ( \lambda+1)( \lambda- \lambda) y^{ \lambda} = 0
.\]
Thus \( M_1( \lambda) = {\mathbb{C}}\left\langle{y^{\lambda+1}, y^{ \lambda+2}, \cdots}\right\rangle \). Finally,
\[
{M( \lambda) \over M_1( \lambda)} = L^{\max}( \lambda) = L( \lambda)
.\]
:::

# Tits Systems, 5.1 (Monday, September 13)

::: {.remark}
The basic setup from the book:
\[
A\leadsto ({\mathfrak{h}}, \pi, \pi {}^{ \vee }) \leadsto {\mathfrak{g}}\leadsto (W, S)
.\]
We'll think of \( G\leadsto ({\mathfrak{h}}, \pi, \pi {}^{ \vee }) \) as the root data associated to a semisimple simply connected connected algebraic group. Warning: this association isn't unique in the non-semisimple case! Noting that \( (W, S) \) is a Coxeter group, is there a way to recover an algebra \( {\mathfrak{g}} \) and a Kac-Moody group \( {\mathcal{G}} \)?

For today: take

-   \( G\coloneqq\operatorname{GL}_n \), Note that \( G \) is not semisimple or simply connected.

-   \( B \) the fixed Borel (maximum connected closed solvable subgroup) of upper-triangular matrices. Flag varieties are homogeneous projective spaces, so \( G/B \) is a flag variety.

-   \( T \) the maximal torus of diagonal matrices

-   \( N = N_G(T) \) to be the subgroup generated by all permutation and scalar matrices.

-   The Weyl group \( W\coloneqq N/ B \cap N = N/T \) since \( B \cap N = T \). Note that \( W\cong S_n \) is a Coxeter group.

-   \( S \subseteq W \) is the subset of simple reflections, writing \( w = (w_1, \cdots, w_n) \) and taking only those permutations that transpose two adjacent coordinates, so
    \[
    \tau_{k}: (w_1, \cdots, w_k, w_{k+1}, \cdots, w_n) &\mapsto
    (w_1, \cdots, w_{k+1}, w_{k}, \cdots, w_n)
    .\]

    This can be written as \( \left\langle{\tau_k}\right\rangle \coloneqq\left\langle{(k, k+1) {~\mathrel{\Big|}~}{1\leq k \leq n-1}}\right\rangle \).
:::

::: {.remark}
More generally, \( G \supseteq B \supseteq T \) and we set \( W \coloneqq N_G(T) / Z_G(T) \) and show \( Z_G(T) = T \), but what is \( B \cap N \) generally? Maybe use the fact that \( N_G(B) = B \)? Or that the unipotent radical intersects it trivially.
:::

::: {.definition title="Tits Systems"}
A **Tits system** is a tuple \( (G,B,N,S) \) where \( B,N\leq G \) are subgroups and \( S \subseteq W = N/B \cap N \), which collectively adhere to the following axioms:

1.  \( B \cap N {~\trianglelefteq~}N \),
2.  \( B, N \) generate \( G \),
3.  For all \( s_i\in S \), we have \( sBs^{-1}\not\subseteq B \)
4.  For \( w\in S_n \) and \( s\in S \), defining \( C(x) \coloneqq B \mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu B \subseteq G \) for any coset representative \( \mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu \) of \( x \) in \( N \), we require \( C(s) C(w) \subseteq C(w) \cup C(sw) \).
:::

::: {.remark}
Consider elements in \( BN \) for \( \operatorname{GL}_n \): \( B \) is upper triangular, \( N \) has one (possibly) nonzero entry in each row/column, and multiplying this can "smear" the entries upward by filling a column above an entry:

```{=html}
<!-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-09-13_14-13.xoj -->
```
![](figures/2021-09-13_14-15-01.png)

Similarly, multiplying on the right smears rightward, and it's not so hard to convince yourself that these generate \( \operatorname{GL}_n \).

For the conjugation axiom, consider the following:

```{=html}
<!-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-09-13_14-16.xoj -->
```
![](figures/2021-09-13_14-17-38.png)

We also have \( B\mkern 1.5mu\overline{\mkern-1.5mus\mkern-1.5mu}\mkern 1.5mu B\mkern 1.5mu\overline{\mkern-1.5muw\mkern-1.5mu}\mkern 1.5mu B \subseteq B\mkern 1.5mu\overline{\mkern-1.5muw\mkern-1.5mu}\mkern 1.5mu B \cup B \mkern 1.5mu\overline{\mkern-1.5mus\mkern-1.5mu}\mkern 1.5mu \mkern 1.5mu\overline{\mkern-1.5muw\mkern-1.5mu}\mkern 1.5mu B \). To prove this, we'll show

-   \( \mkern 1.5mu\overline{\mkern-1.5mus\mkern-1.5mu}\mkern 1.5mu B \mkern 1.5mu\overline{\mkern-1.5muw\mkern-1.5mu}\mkern 1.5mu \subseteq \) the RHS,
-   The right-hand side is stable under the \( B\times B \) action of left/right multiplication.

To see the first, consider the example:

```{=html}
<!-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-09-13_14-21.xoj -->
```
![](figures/2021-09-13_14-25-25.png)

For the second, consider
\[
(1,3,2,4)(3,4,1,2) = (2,4,1,3)
.\]
The hard case is when lengths of the result change.
:::

::: {.definition title="Parabolics"}
Any \( B \subseteq P \subseteq G \) is called a **standard parabolic**. Any subgroup \( Q \) conjugate to \( P \) is called **parabolic**.
:::

::: {.remark}
Standard parabolics correspond to subsets \( Y \) of simple reflections \( \emptyset \subseteq Y \subseteq S \). Any subgroup containing the upper triangular matrices looks like the following:

```{=html}
<!-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-09-13_14-31.xoj -->
```
![](figures/2021-09-13_14-32-29.png)

For \( P_Y \), we take everything but skip the first index.
:::

::: {.remark}
```{=tex}
\envlist
```
-   Take \( S \subseteq \left\{{w\in W {~\mathrel{\Big|}~}w^2 = \operatorname{id}}\right\} \) a subset of order 2 elements.

-   \( P_Y = BW_Y B = \displaystyle\coprod_{s\in U} B \mkern 1.5mu\overline{\mkern-1.5mus\mkern-1.5mu}\mkern 1.5mu B \subseteq {\mathcal{G}} \).

-   \( G = \displaystyle\coprod_{w\in W} C(w) \)

-   There is a decomposition into double coset orbits:
    \[
    G = \displaystyle\coprod_{w\in \dcoset{W_Y}{W}{W_{Y'}} } P_Y w P_{Y'}
    .\]

-   We have
    \[
    C(s) C(w) = 
    \begin{cases}
    C(sw)  & \ell(sw) \geq \ell(w) 
    \\
    C(w) \cup C(s) & \ell(sw) = \ell(w).
    \end{cases}
    \]

-   \( (W, S) \) is a Coxeter group.

-   For any parabolic \( P \) (not necessarily standard), its normalizer satisfies \( N_G(P) = P \). Note that you can plug in a Borel here. Moreover \( G/P = G/N_G(P) \), which parameterizes parabolic subgroups of \( G \).

    -   \( w\in W_Y'(Y) \cong W/W_Y \). Fixing a *reduced* decomposition \( w = w_1\cdots w_k \), i.e. \( \ell(w) =\sum_{i=1}^k \ell(w_i) \).

    -   For any \( A_i \subseteq C(w_i) \) where \( A_i \to C(w_i)/B \) is bijective (resp. surjective), the multiplication \( \phi: A_1\times \cdots A_{k} \to BwP_Y/P_Y \) is bijective (resp. surjective).
:::

# Generalized Flag Varieties, 7.1 (Wednesday, September 15)

::: {.remark}
Most of the things we'll look at will be motivated by the finite-type case, but the statements still go through more generally. The setup: \( A \) a GCM \( \leadsto \) root datum \( ({\mathfrak{h}}, \pi, \pi {}^{ \vee }) \leadsto {\mathfrak{g}} \) a Kac-Moody Lie algebra \( \leadsto (W, S) \) a Coxeter group \( \leadsto T \subseteq B \) a maximal torus, where \( T = \mathop{\mathrm{Hom}}_{\mathbb{Z}}({\mathfrak{h}}_{\mathbb{Z}}, {\mathbb{C}}^{\times}) \) and \( B \) plays the role of the Borel, \( \leadsto {\mathcal{G}} \) a Kac-Moody group. Here \( {\mathfrak{h}}_{\mathbb{Z}} \) is the integer span of coroots, using that \( {\mathfrak{h}}\subseteq \pi {}^{ \vee } \). Note that since \( {\mathcal{G}} \) arises from a Tits system, so even though we haven't described it set-theoretically yet, we know many nice properties it has by previous propositions.
:::

::: {.fact}
For \( G\in {\mathsf{Alg}}{\mathsf{Grp}} \) arbitrary and \( H\leq G \), the quotient space \( G/H \) is a variety (See Springer's book for a proof). Write \( G/H = (X, a) \) where \( a= H/H \) is a distinguished point. Quotients have a universal property: for any pair \( (Y, b) \) of pointed \( G{\hbox{-}} \)spaces whose isotropy (stabilizer) group contains \( H \), there exists a unique equivariant pointed morphism \( \phi: G/H\to Y \) such that \( \phi(a) = b \).
:::

::: {.remark}
Today: we defined a flag variety to be any projective homogeneous space, and today we'll see that \( G/B \) is a *projective* variety. In fact, we'll show that \( {\mathcal{G}}/P_Y \) is a projective *ind-variety*, where \( P_Y \) is the standard parabolic coming from the Tits system.
:::

::: {.definition title="Ind-varieties"}
An **Ind-variety** is a set with a countable filtration \( X_0 \subseteq X_1 \subseteq \cdots \) such that

-   \( X = \colim_n X_n = \displaystyle\bigcup_n X_n \),
-   Each \( X_n \hookrightarrow X_{n+1} \) is a closed embedding of finite-dimensional varieties.

\( X \) will be projective/affine iff its filtered pieces are projective/affine.
:::

::: {.remark}
Note that we don't require a stratification here, but there will be a stratification on the flag varieties we'll use, which induces a filtration.
:::

::: {.example title="?"}
Infinite affine space \( {\mathbb{A}}^\infty_{/ {k}}  \) can be written as
\[
{\mathbb{A}}^\infty_{/ {k}}  = \left\{{ (a_1,a_2,\cdots) {~\mathrel{\Big|}~}a_i \in k, \text{ finitely many } a_i\neq 0}\right\}
.\]
The filtration is given by
\[
{\mathbb{A}}^1 &\hookrightarrow{\mathbb{A}}^\infty \\
x &\mapsto (x,0,0,\cdots) \\ \\
{\mathbb{A}}^2 &\hookrightarrow{\mathbb{A}}^\infty \\
(x, y) &\mapsto (x,y,0,\cdots) \\
\vdots & 
\]
:::

::: {.example title="?"}
For \( V\in {\mathsf{{\mathbb{C}}}{\hbox{-}}\mathsf{Mod}} \) with \( \dim_{\mathbb{C}}V = \infty \), we have \( V\cong {\mathbb{A}}^\infty_{/ {{\mathbb{C}}}}  \) as Ind-varieties.
:::

::: {.example title="?"}
For any \( V\in {\mathsf{{\mathbb{C}}}{\hbox{-}}\mathsf{Mod}} \), the space \( {\mathbb{P}}(V) \coloneqq{\operatorname{Gr}}_1(V) \) (the space of lines in \( V \)) is a projective Ind-variety.
:::

::: {.remark}
For any integrable highest weight \( {\mathfrak{g}}{\hbox{-}} \)module \( V = V(\lambda) \) for \( \lambda \in D_{\mathbb{Z}} \) an integral dominant weight, this will yield a \( {\mathcal{G}}{\hbox{-}} \)module. Here for \( {\mathfrak{g}} \) semisimple, it integrates to the simply connected \( {\mathcal{G}} \).
:::

::: {.definition title="?"}
For any \( v_\lambda \neq 0\in V \), define
\[
\mkern 1.5mu\overline{\mkern-1.5mu\iota\mkern-1.5mu}\mkern 1.5mu_v: {\mathcal{G}}&\to {\mathbb{P}}(V) \\
g &\mapsto [gv_\lambda]
,\]
:::

::: {.definition title="?"}
For any \( Y \subseteq \left\{{1,\cdots,\ell}\right\} \), define \( D_Y^0 \) the **\( Y{\hbox{-}} \)regular weights** by
\[
D_Y^0 \coloneqq\left\{{ \lambda\in D_{\mathbb{Z}}{~\mathrel{\Big|}~}{\left\langle { \lambda},~{ \alpha_i} \right\rangle} = 0 \iff i \in Y}\right\}
.\]
This partitions the integral dominant chamber:

```{=tex}
\begin{tikzpicture}
\fontsize{41pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures}{2021-09-15_14-18.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.lemma title="?"}
For \( \lambda \in D_Y^0 \) the map \( \mkern 1.5mu\overline{\mkern-1.5mu\iota\mkern-1.5mu}\mkern 1.5mu_v \) factors through \( {\mathcal{G}}/P_Y \) to give an injection
\[
\iota_v: G/P_Y \hookrightarrow{\mathbb{P}}(V)
.\]
So any Kac-Moody maps into an Ind-variety.
:::

::: {.remark}
We'll show that \( \operatorname{im}\iota_v \subseteq {\mathbb{P}}(V) \) is closed, i.e. that its intersection with any finite filtered piece is closed. The variety structure will be induced from this embedding.
:::

::: {.proof title="?"}
We have a distinguished point \( [v_\lambda] \in {\mathbb{P}}(V) \), so \( {\operatorname{Stab}}_G([v_ \lambda]) \supseteq P_Y \). Showing this amounts to showing that for all \( s\in Y \), \( \mkern 1.5mu\overline{\mkern-1.5mus\mkern-1.5mu}\mkern 1.5mu\in G \) fixes \( [v _{\lambda} ] \), but this follows from the definition of \( v_\lambda \).
:::

::: {.remark}
A great class of varieties: Bott-Samelson-Demazure-Hansen varieties, which capture the geometry of words in Coxeter groups. We'll have \( w\in W, \mkern 1.5mu\overline{\mkern-1.5muw\mkern-1.5mu}\mkern 1.5mu\in N \), and we'll define \( {\mathfrak{W}}\ni w \) as words:
\[
{\mathfrak{W}}\coloneqq\left\{{w = (s_{i_1}, \cdots, s_{i_n} ) {~\mathrel{\Big|}~}n\geq 0}\right\}
,\]
which is a poset under deleting symbols. For any \( w\in {\mathfrak{W}} \), define \( Z_w \coloneqq\prod_{k\leq n} P_{i_k} / B{ {}^{ \scriptscriptstyle\times^{n} }  } \), where the action of the Borel is the *right mixed space action*:
\[
(p_1, \cdots, p_n)(b_1, \cdots, b_n) = (p_1 b_1, b_1^{-1}p_2 b_2, b_2^{-1}p_3 b_3,\cdots, b_{n-1}^{-1}p_n b_n)
.\]
:::

::: {.example title="?"}
Take \( G = \operatorname{GL}_3({\mathbb{C}}) \), so \( S = (s_1, s_2) \) and \( w= (s_{i_1}, s_{i_2}) \), then
\[
Z_w = (P_{i_1} \times P_{i_2})/B{ {}^{ \scriptscriptstyle\times^{2} }  } = P_{i_1} \overset{\scriptscriptstyle {B} }{\times} P_{i_2}/B = P_{i_1}{ \underset{\scriptscriptstyle {B} }{\times} } P_{i_2}/B \to P_{i_1}/M \cong {\mathbb{P}}^1
,\]
so these are all bundles over \( {\mathbb{P}}^1 \) with fibers \( {\mathbb{P}}^1 \), and are in fact Hirzebruch surfaces.
:::

::: {.fact}
```{=tex}
\envlist
```
1.  \( Z_w \) is an irreducible smooth variety with a \( P_{i_1}{\hbox{-}} \)action.

2.  \( Z_w\to P_{i_1}/B \) is locally trivial with fiber \( Z_{w'} \) where \( w' \) is obtained from \( w \) by deleting the first reflection, so \( s' = (s_{i_2}, \cdots, s_{i_n}) \).

3.  \( Z_w \xrightarrow{\psi} Z_{w_1} \) where \( w_1 \coloneqq w[n-1] \coloneqq(s_1, \cdots, s_{i_n - 1}) \) where \( [p_1,\cdots, p_n] \xrightarrow{\psi} [p_1,\cdots, p_{n-1}] \). This admits a section \( [p_1,\cdots, p_{n-1}] \xrightarrow{\sigma} [p_1,\cdots, p_{n-1}, 1] \).

4.  \( Z_w \) is a projective variety.
:::

::: {.remark}
Why projective: it's a fiber bundle of compact varieties, thus compact and complete. A bit more goes into fully showing projectivity.
:::

::: {.definition title="?"}
Define a map
\[
m_w: Z_w &\to {\mathcal{G}}/B \\
[p_1, \cdots, p_n] &\mapsto p_1\cdots p_n B
,\]
then \( \operatorname{im}m_w = \displaystyle\bigcup_{v\leq w} BvB/B \subseteq {\mathcal{G}}/B \).
:::

::: {.remark}
This is where the projective variety structure comes from, and we'll discuss when the image hits Schubert varieties.
:::

# 7.1 (Friday, September 17)

::: {.remark}
See Fulton, Young Tableaux.
:::

::: {.remark}
Given \( A \) we produce \( {\mathcal{G}} \) a Kac-Moody group, with standard parabolics \( P_{\lambda} \subseteq {\mathcal{G}} \). We'll show \( G/P_{\lambda} \hookrightarrow{\mathbb{P}}(V) \) for some projective space over \( V \) an integrable highest weight space in \( {\mathsf{{\mathfrak{g}}}{\hbox{-}}\mathsf{Mod}} \), which is generally an Ind-variety, and if we show it's closed it will inherit the structure of a projective variety. Write \( V = L^{\max}( \lambda) = V_{ \lambda} \) as a highest weight module.

Idea: for \( m_w: Z_w \to {\mathcal{G}}/B \) for \( Z_w \) a BSDH, for any word \( w\in {\mathcal{W}} \), if \( w\in W_Y' \) is reduced, compose the above map with \( {\mathcal{G}}/B \to {\mathcal{G}}/ P_{Y} \) to get a map
\[
m_w^Y: Z_w \to {\mathcal{G}}/P_Y
.\]

We'll show \( Z_w \) is projective, which is easier since it's an iterated line bundle. Let \( v_0 \in V_\lambda \) (thought of in the finite type case as a highest weight vector in the irreducible, but may generally not coincide) consider the maps

\[
\mkern 1.5mu\overline{\mkern-1.5mu\iota\mkern-1.5mu}\mkern 1.5mu_V: {\mathcal{G}}&\to {\mathbb{P}}(V) \\
\iota_V: {\mathcal{G}}/P_Y &\to {\mathbb{P}}(V) \\
m_w(v_0) = \iota_{v_0} \circ m_w^Y: Z_w &\to {\mathbb{P}}(V) 
.\]
:::

::: {.theorem title="?"}
```{=tex}
\envlist
```
1.  \( m_w(v_0) \) a morphism of varieties: easy to believe, hard to show! See the book.

2.  
    \[
    \operatorname{im}(m_w(v_0)) = \displaystyle\bigcup_{v\leq w, v\in W_Y'} BvP_Y/P_Y \subseteq {\mathcal{G}}/P_Y
    ,\]
    which is some subvariety of the flag variety which we'll define as the Schubert variety \( X_W^Y \).
:::

::: {.proposition title="5.1.3"}
For \( Y \subseteq S, w\in W_Y' \), and let \( w = w_1\cdots w_k \) a reduced decomposition, \( \ell(w) = \sum \ell(w_i) \). Let \( Z_i \subseteq P_{w_i} \coloneqq P_{\left\{{w_i}\right\}} \) be a subset of a simple parabolic such that \( Z_i \twoheadrightarrow P_{w_i}/B \). [^2]

Then
\[
\operatorname{im}\qty{\prod Z_i \xrightarrow{\text{mult}} G \twoheadrightarrow G/P_Y} = \displaystyle\bigcup_{v\leq w} BvP_Y/P_Y
.\]
:::

::: {.remark}
Where does the additional condition \( v\in W_Y' \) come from in the theorem statement? Take a Bruhat decomposition
\[
{\mathcal{G}}/B = \displaystyle\coprod_{\substack{ v\leq w \\ v\in \dcoset{W}{W_Y}{W_Y} }} P_{Y'}vP_V
.\]
:::

::: {.example title="?"}
Take \( G = \operatorname{GL}_n \), then

-   \( \lambda\in X {}^{ \vee }(T) \)
-   \( \lambda(t) = t_1\cdots t_k \) for \( 1\leq k\leq n \),
-   \( \lambda \in D_{\mathbb{Z}} \) and \( V_{\lambda} = \bigwedge\nolimits^k {\mathbb{C}}^n \).
-   \( S = \left\{{1, \cdots, \ell}\right\} \) where \( \ell = n-1 \).
-   \( G/P_Y \subseteq {\mathbb{P}}( \bigwedge\nolimits^k {\mathbb{C}}^n) \),
-   \( Y( \lambda) \coloneqq\left\{{1\leq i \leq \ell {~\mathrel{\Big|}~}\lambda(\alpha_i {}^{ \vee }) = 0}\right\} \).

Then
\[
\lambda &\in (1, \cdots_k, 1, 0, \cdots_{n-k}, 0)\\
\alpha_i {}^{ \vee }&= (0, \cdots, 1, -1, 0, \cdots, 0)
,\]
so we can write \( Y( \lambda) = \left\{{1,\cdots, k-1, k+1, \cdots, n-1}\right\} = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \). Then set \( F^k \in {\mathbb{P}}(\bigwedge\nolimits^k {\mathbb{C}}^n) = {\operatorname{Gr}}_k({\mathbb{C}}^n) \), so \( 0 \subseteq F^k \subseteq {\mathbb{C}}^n \), and define the map
\[
\iota_{\lambda}(F^k) = [f_1 \vee f_2 \vee\cdots \vee f_k]
,\]
where \( \left\{{f_i}\right\} \) is a choice of ordered basis.
:::

::: {.fact}
Some facts about \( Z_w = \prod^B_{1\leq k\leq m} P_{i_k}/B \), recalling the action of \( B \) given last time. Set \( w= (s_{i_1}, \cdots, s_{i_m}) \in {\mathcal{W}} \). There is a map
\[
\varphi: P_{i_1}\overset{\scriptscriptstyle {B} }{\times} \cdots \overset{\scriptscriptstyle {B} }{\times} P_{i_m} &\to B/B \times G/B \times \cdots \times G/B \\
[p_1,\cdots, p_m] &\mapsto [B/B, p_1 B/B, p_1p_2 B/B, \cdots, p_1\cdots p_m B/B]
.\]

Showing this is well-defined: follows from universal property of quotients, looking at where point stabilizers are contained. Then
\[
\operatorname{im}\varphi = 
B/B { \underset{\scriptscriptstyle {G/P_{i_1}} }{\times} }
G/B { \underset{\scriptscriptstyle {G/P_{i_2}} }{\times} }
\times \cdots 
{ \underset{\scriptscriptstyle {G/P_{i_m}} }{\times} } G/B
.\]

How to define the BSDH: construct a lattice by deleting elements in the sequence of flags corresponding to various words, and take the right-most flag in the result:

```{=tex}
\begin{tikzcd}
    & {i_1=n-2} &&&& {i_m = n-2} \\
    {{\mathbb{C}}^n} && {{\mathbb{C}}^{n}} && {{\mathbb{C}}^{n}} && {{\mathbb{C}}^{n}} &&& {{\mathbb{C}}^n} &&&&&&& {{\mathbb{C}}^n} \\
    {{\mathbb{C}}^{n-1}} && {A^{n-1}} && {E^{n-1}} && {F^{n-1}} &&& {{\mathbb{C}}^{n-1}} &&&& {E^{n-1}} &&& {E^{n-1}} \\
    {{\mathbb{C}}^{n-2}} && {A^{n-2}} && {E^{n-2}} && {F^{n-2}} &&& {{\mathbb{C}}^{n-2}} && {A^{n-2}} &&& {F^{n-2}} && {F^{n-2}} \\
    \vdots && \vdots && \vdots && \vdots && {} & \vdots &&& {C_2} & {D_3} &&& {D^3} \\
    {{\mathbb{C}}^1} && {A^1} && {E^1} && {F^1} &&& {{\mathbb{C}}^{1}} && {B_1} && \ddots &&& {C^2} \\
    0 && 0 && 0 && 0 &&& 0 &&&&&&& {B^1} \\
    &&&&&&&&&&&&&&&& 0
    \arrow["{\text{can differ}}", from=4-1, to=4-3]
    \arrow[Rightarrow, from=5-7, to=5-9]
    \arrow[from=3-10, to=4-12]
    \arrow[from=4-10, to=4-12]
    \arrow[from=7-10, to=6-12]
    \arrow[from=6-12, to=5-10]
    \arrow[from=6-12, to=5-13]
    \arrow[from=5-13, to=5-10]
    \arrow[from=4-12, to=5-14]
    \arrow[from=5-13, to=5-14]
    \arrow[from=4-12, to=3-14]
    \arrow[from=2-10, to=3-14]
    \arrow[from=3-14, to=4-15]
    \arrow[from=5-14, to=4-15]
    \arrow[from=5-13, to=6-14]
    \arrow["{\text{can differ}}"{description}, from=4-5, to=4-7]
    \arrow[from=8-17, to=7-17]
    \arrow[from=7-17, to=6-17]
    \arrow[from=6-17, to=5-17]
    \arrow[from=5-17, to=4-17]
    \arrow[from=4-17, to=3-17]
    \arrow[from=3-17, to=2-17]
    \arrow[from=7-3, to=6-3]
    \arrow[from=7-1, to=6-1]
    \arrow[from=4-1, to=3-1]
    \arrow[from=3-1, to=2-1]
    \arrow[from=3-3, to=2-3]
    \arrow[from=4-3, to=3-3]
    \arrow[from=3-5, to=2-5]
    \arrow[from=4-5, to=3-5]
    \arrow[from=4-7, to=3-7]
    \arrow[from=3-7, to=2-7]
    \arrow[from=3-10, to=2-10]
    \arrow[from=4-10, to=3-10]
    \arrow[from=7-10, to=6-10]
    \arrow[from=7-7, to=6-7]
    \arrow[from=7-5, to=6-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNDcsWzAsMSwiXFxDQ15uIl0sWzAsMiwiXFxDQ157bi0xfSJdLFswLDMsIlxcQ0Nee24tMn0iXSxbMiwxLCJcXENDXntufSJdLFsyLDIsIkFee24tMX0iXSxbNCwyLCJFXntuLTF9Il0sWzYsMiwiRl57bi0xfSJdLFs0LDEsIlxcQ0Nee259Il0sWzYsMSwiXFxDQ157bn0iXSxbMiwzLCJBXntuLTJ9Il0sWzQsMywiRV57bi0yfSJdLFs2LDMsIkZee24tMn0iXSxbMCw0LCJcXHZkb3RzIl0sWzIsNCwiXFx2ZG90cyJdLFs0LDQsIlxcdmRvdHMiXSxbNiw0LCJcXHZkb3RzIl0sWzAsNSwiXFxDQ14xIl0sWzIsNSwiQV4xIl0sWzQsNSwiRV4xIl0sWzYsNSwiRl4xIl0sWzAsNiwiMCJdLFsyLDYsIjAiXSxbNCw2LCIwIl0sWzYsNiwiMCJdLFs5LDEsIlxcQ0NebiJdLFs5LDIsIlxcQ0Nee24tMX0iXSxbOSwzLCJcXENDXntuLTJ9Il0sWzksNSwiXFxDQ157MX0iXSxbOSw2LCIwIl0sWzgsNF0sWzExLDUsIkJfMSJdLFsxMiw0LCJDXzIiXSxbMTEsMywiQV57bi0yfSJdLFs5LDQsIlxcdmRvdHMiXSxbMTMsNCwiRF8zIl0sWzEzLDIsIkVee24tMX0iXSxbMTQsMywiRl57bi0yfSJdLFsxMyw1LCJcXGRkb3RzIl0sWzE2LDEsIlxcQ0NebiJdLFsxNiwyLCJFXntuLTF9Il0sWzE2LDMsIkZee24tMn0iXSxbMTYsNCwiRF4zIl0sWzE2LDUsIkNeMiJdLFsxNiw2LCJCXjEiXSxbMTYsNywiMCJdLFs1LDAsImlfbSA9IG4tMiJdLFsxLDAsImlfMT1uLTIiXSxbMiw5LCJcXHRleHR7Y2FuIGRpZmZlcn0iXSxbMTUsMjksIiIsMCx7ImxldmVsIjoyfV0sWzI1LDMyXSxbMjYsMzJdLFsyOCwzMF0sWzMwLDMzXSxbMzAsMzFdLFszMSwzM10sWzMyLDM0XSxbMzEsMzRdLFszMiwzNV0sWzI0LDM1XSxbMzUsMzZdLFszNCwzNl0sWzMxLDM3XSxbMTAsMTEsIlxcdGV4dHtjYW4gZGlmZmVyfSIsMV0sWzQ0LDQzXSxbNDMsNDJdLFs0Miw0MV0sWzQxLDQwXSxbNDAsMzldLFszOSwzOF0sWzIxLDE3XSxbMjAsMTZdLFsyLDFdLFsxLDBdLFs0LDNdLFs5LDRdLFs1LDddLFsxMCw1XSxbMTEsNl0sWzYsOF0sWzI1LDI0XSxbMjYsMjVdLFsyOCwyN10sWzIzLDE5XSxbMjIsMThdXQ==)

Here the word is \( (i_{n-2}, i_1, i_2, i_{3}, i_{n-1}, i_{n-2}) \).
:::

# Equivariant \( {\mathsf{K}}{\hbox{-}} \)theory (Wednesday, September 22) {#equivariant-mathsfkhbox-theory-wednesday-september-22}

::: {.remark}
The setup: \( G\curvearrowright X \) a topological group acting on a space.

-   Gelfand (30s): replace \( X \) with a topological vector space \( T \), e.g. "generalized functions" on \( X \). This linearises the problem, but is usually something like a infinite dimensional Hilbert space.

-   Harish-Chandra, Vogan: Replace \( T \) with an algebraic object (usually finite-dimensional) and apply \( {\mathsf{K}}{\hbox{-}} \)theory. Here \( {\mathsf{K}}{\hbox{-}} \)theory simplifies the problem, since all invariants that are additive on exact sequences can be recovered from it.

Classical literature on this is phrased in terms of \( X \) a *separated algebraic space*, since even nice quotients of varieties are often not again varieties. We'll assume \( X \) is an algebraic variety, automatically separated, and quasiprojective. This will imply that \( X \subseteq G/P \) embeds into a flag variety, e.g. for \( G = \operatorname{GL}_n \) and \( P \) a parabolic this covers \( {\mathbb{P}}^n \). For us, projective will mean that \( X \subseteq G/P \) is closed, which will turn out to admit ample line bundles.
:::

::: {.definition title="?"}
Let \( ({-})^ {\operatorname{gp} }  \) denote taking the Grothendieck group, then
\[
G_0(G, X) \coloneqq{\mathsf{Coh}}^G(X)^ {\operatorname{gp} } \\
{\mathsf{K}}_0(G, X) \coloneqq{ {\mathsf{Bun}}\qty{\operatorname{GL}_r} }^G_{/ {X}} 
,\]
i.e. the \( G{\hbox{-}} \)equivariant coherent sheaves and vector bundles respectively.
:::

::: {.remark}
Note that vector bundles don't form an abelian category -- here instead you take the additive monoid generated by addition of vector bundle. However coherent sheaves do form an abelian category, so this denotes the usual Grothendieck group for abelian categories. Of modern interest: split Grothendieck groups, triangulated, etc.

Here one should think of \( {\mathsf{G}} \) as something analogous to Borel-Moore homology, and \( {\mathsf{K}} \) is closer to cohomology. Note that in classical settings, one could cap against the fundamental class to get a map between them.
:::

::: {.proposition title="?"}
If \( X \) is a smooth \( G{\hbox{-}} \)variety admitting an equivariant ample line bundle, then there is an isomorphism
\[
{\mathsf{K}}_0(G, X) \xrightarrow{?} G_0(G, X)
.\]
:::

::: {.remark}
This map records how a vector bundle can be regarded as a coherent sheaf! For the rest of today, we'll assume \( X \) admits a \( G{\hbox{-}} \)equivariant ample line bundle and refer to this as condition \( \star \). If this proposition holds, notationally we'll always write \( {\mathsf{K}}^G(X) = {\mathsf{K}}_0(X) = G_0(X) \).
:::

::: {.example title="?"}
Consider the coherent sheaf \( {\mathcal{O}}_x{ {}^{ \scriptscriptstyle\oplus^{n} }  } \), which should correspond to the trivial bundle \( X\times {\mathbb{C}}^n \to X \). If \( \xi \) is a vector bundle, then the sheaf of sections is a locally free coherent sheaf.
:::

::: {.proposition title="?"}
Every \( G{\hbox{-}} \)equivariant coherent sheaf \( {\mathcal{F}}\in {\mathsf{Coh}}^G(X) \) on \( X \) admits a finite resolution by \( G{\hbox{-}} \)equivariant locally free sheaves of finite type.
:::

::: {.example title="?"}
```{=tex}
\envlist
```
-   If \( G =1 \), then admitting an ample line bundle as above is equivalent to \( X \subseteq G/P \) being a subvariety. Then \( {\mathsf{K}}^G(X) = {\mathsf{K}}(X) \), the algebraic \( {\mathsf{K}}{\hbox{-}} \)theory, of \( X \).

-   If \( X = {\operatorname{pt}} \), it is smooth, and \( {\mathsf{K}}^G(X) = R(G) \), the representation ring of \( G \). This holds for \( G \) any linear algebraic group.
:::

::: {.remark}
So this mixes usual \( {\mathsf{K}}{\hbox{-}} \)theory and representation theory! It turns out that for \( X={\operatorname{pt}} \), there is an equivalence of categories \( {\mathsf{Coh}}^G({\operatorname{pt}}) = { {\mathsf{Bun}}\qty{\operatorname{GL}_r} }^G = {\mathsf{G}{\hbox{-}}\mathsf{Mod}}^{\mathrm{fd}} \).

If \( X \) is projective and \( G \) is semisimple, then \( \star \) is true. If \( E\to X \) is a \( G{\hbox{-}} \)vector bundle on \( X \) smooth projective, then we'll write \( {\mathsf{K}}^G(X) \) for \( {\mathsf{G}}_0(G, X) = {\mathsf{K}}_0(G, X) \).
:::

::: {.lemma title="?"}
Every \( {\mathcal{F}}\in {\mathsf{Coh}}^G(X) \) is a quotient of a \( G{\hbox{-}} \)equivariant locally free sheaf \( {\mathcal{E}} \) of finite type on \( X \).
:::

> See proof: Borho, Byrlinksi, MacPherson. Geometric perspective on ring theory?

::: {.remark}
Let \( G \in {\mathsf{Alg}}{\mathsf{Grp}} \) be linear acting on \( V\in {\mathsf{{\mathbb{C}}}{\hbox{-}}\mathsf{Mod}} \) possibly infinite dimensional. This is common, e.g. when \( G \) consists of regular functions. This is infinite dimensional, but not so bad -- it's not quite as big as a Hilbert space. We'll say the action is **algebraic** if it acts locally finitely: the \( G{\hbox{-}} \)orbit of any vector should be a finite dimensional subspace. Consider \( \mathop{\mathrm{Maps}}(G, M) \coloneqq\mathop{\mathrm{Hom}}_{{\mathsf{Set}}}(G, M) = \left\{{ f:G\to M}\right\} \) with no conditions at all on the functions. There is a subspace of "regular functions with coefficients in \( M \)", using the following well-defined map:
\[
{\mathbb{C}}[G] \otimes_{\mathbb{C}}M &\to \mathop{\mathrm{Maps}}(G, M) \\
\sum f_i \otimes m_i &\mapsto \sum f(g_i) m_i
,\]
using that the \( f(g_i) \) are scalars in \( M \).

For a fixed \( m \), there is a \( G{\hbox{-}} \)action \( g\mapsto gm \), and so letting \( m \) vary yields a map \( M \xrightarrow{a_M} \mathop{\mathrm{Maps}}(G, M) \).

::: {.claim}
\( G \) acts algebraically on \( M \) iff \( \operatorname{im}a_m \subseteq {\mathbb{C}}[G]\otimes_{\mathbb{C}}M \).
:::

If the action is algebraic, take \( G_m \subseteq V \subseteq M \) with \( V \) a \( G{\hbox{-}} \)stable finite dimensional subspace. Expanding in a basis and writing \( g\mapsto gm \) in this basis yields the \( f_i \), which are regular.
:::

::: {.lemma title="?"}
If \( {\mathcal{F}}\in {\mathsf{Coh}}^G(X) \), then \( {{\Gamma}\qty{X; {\mathcal{F}}} } \) has the natural structure of an algebraic \( G{\hbox{-}} \)module.
:::

# Localization in Equivariant \( {\mathsf{K}}{\hbox{-}} \)theory (Friday, September 24) {#localization-in-equivariant-mathsfkhbox-theory-friday-september-24}

## Localization Theorems

> Reference: Thomason.

::: {.definition title="Localization theorems"}
Suppose \( A\in {\mathsf{Ab}}{\mathsf{Alg}}{\mathsf{Grp}} \) is reductive, and \( X \subseteq G/P \) is contained in a flag variety (so \( X \) is quasiprojective). Fix \( a\in A \), and consider the fixed point set \( X^a \) and the inclusion \( \iota: X^a \xrightarrow{\subseteq } X \). We'll say the **localization theorem holds for \( X \)** if the following induced hom is an isomorphism:
\[
i_*: {\mathsf{K}}^A(X^a) \left[ { \scriptstyle { {{\mathfrak{m}}_a}^{-1}}  } \right] \to {\mathsf{K}}^A(X) \left[ { \scriptstyle { {{\mathfrak{m}}_a}^{-1}}  } \right]
.\]
:::

::: {.remark}
Thomason shows that this is true in this situation. Recall that we identified \( R(A) = {\mathsf{K}}^A({\operatorname{pt}}) \). Taking the trace of a representation yields a map \( R(A) \hookrightarrow{\mathbb{C}}[A] \), the ring of regular functions. For varieties, we can obtain \( {\mathcal{O}}_{X, x} \) by localizing rings at their maximal ideals, thinking of these as functions on \( X \). Let
\[
R_a &\coloneqq R(A) \left[ { \scriptstyle { { \qty{ R(A)\setminus{\mathfrak{m}}_a} }^{-1}}  } \right] \\
M_a &\coloneqq R(A) \otimes_{R(A)} M
.\]
:::

## Proper Pushforward

::: {.remark}
We'll need proper maps for the ever-popular *decomposition theorem*. However, almost every scheme we use in this class will be reduced, although one does rarely have to worry about this.
:::

::: {.definition title="Proper Maps (and prerequisite notions)"}
**Pullbacks** are universal with respect to the following squares, and have a concrete description for us:

```{=tex}
\begin{tikzcd}
    {\left\{{(x, z) \in X\times Z {~\mathrel{\Big|}~}f(x) = z(g)}\right\}} \\
    {X{ \underset{\scriptscriptstyle {Y} }{\times} }Z} && Z \\
    \\
    X && Y
    \arrow["g", from=2-3, to=4-3]
    \arrow["f"', from=4-1, to=4-3]
    \arrow["{g'}"', from=2-1, to=4-1]
    \arrow["{f'}", from=2-1, to=2-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=2-1, to=4-3]
    \arrow[Rightarrow, no head, from=1-1, to=2-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwxLCJYXFxmaWJlcnByb2R7WX1aIl0sWzIsMSwiWiJdLFswLDMsIlgiXSxbMiwzLCJZIl0sWzAsMCwiXFx0c3soeCwgeikgXFxpbiBYXFx0aW1lcyBaIFxcc3QgZih4KSA9IHooZyl9Il0sWzEsMywiZyJdLFsyLDMsImYiLDJdLFswLDIsImcnIiwyXSxbMCwxLCJmJyJdLFswLDMsIiIsMSx7InN0eWxlIjp7Im5hbWUiOiJjb3JuZXIifX1dLFs0LDAsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d)

The **diagonal** is the unique morphism \( \Delta: X\to X{ \underset{\scriptscriptstyle {Y} }{\times} } X \) whose compositions with projections are the identity:

```{=tex}
\begin{tikzcd}
    X \\
    \\
    && {X{ \underset{\scriptscriptstyle {Y} }{\times} } X} && X \\
    \\
    && X && Y
    \arrow[from=3-5, to=5-5]
    \arrow[from=5-3, to=5-5]
    \arrow[from=3-3, to=5-3]
    \arrow[from=3-3, to=3-5]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=3-3, to=5-5]
    \arrow["{\operatorname{id}_X}", from=1-1, to=3-5]
    \arrow["{\operatorname{id}_X}"', from=1-1, to=5-3]
    \arrow["\Delta"{description}, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMiwyLCJYXFxmaWJlcnByb2R7WX0gWCJdLFs0LDIsIlgiXSxbMiw0LCJYIl0sWzQsNCwiWSJdLFswLDAsIlgiXSxbMSwzXSxbMiwzXSxbMCwyXSxbMCwxXSxbMCwzLCIiLDEseyJzdHlsZSI6eyJuYW1lIjoiY29ybmVyIn19XSxbNCwxLCJcXGlkX1giXSxbNCwyLCJcXGlkX1giLDJdLFs0LDAsIlxcRGVsdGEiLDFdXQ==)

A morphism is **separated** if the diagonal is a closed embedding.

A morphism \( f:X\to Y \) is **universally closed** if for any \( g:Z\to Y \), the base change \( f': X{ \underset{\scriptscriptstyle {Y} }{\times} } Z\to Z \) is a closed morphism. This replaces the notion of "\( K \) compact \( \implies f^{-1}(K) \) compact" for analytic varieties.

A morphism \( f \) is **proper** if \( f \) is separated, finite type, and universally closed.
:::

::: {.example title="?"}
```{=tex}
\envlist
```
-   Closed embeddings are proper, and open maps are usually not.
-   If \( f \) is proper, its base change \( f' \) is always proper.
-   Compositions of proper morphisms are again proper.
-   Any morphism between projective varieties is proper.
:::

::: {.theorem title="18.8.1, Rising Sea"}
Let \( f:X\to Y \) be proper and \( {\mathcal{F}}\in {\mathsf{Coh}}(X) \). Note that \( {{\Gamma}\qty{X, {-}} } \) is exact and \( {\mathsf{Coh}}(X) \) is abelian, so we can take its derived functor. Let \( f_*: {\mathsf{Sh}}_{/ {X}} \to {\mathsf{Sh}}_{/ {Y}}  \), then e.g. 
\[
{\mathbb{R}}^i f_* {\mathcal{F}}(U) = H^i(f^{-1}(U); {\mathcal{F}})
.\]

This satisfies several properties:

1.  \( {\mathbb{R}}^if_*: {\mathsf{Coh}}(X) \to {\mathsf{Coh}}(Y) \) is a covariant functor. Without properness, one can just replace \( {\mathsf{Coh}} \) with \( {\mathsf{QCoh}} \).

2.  \( {\mathbb{R}}^0 f_* = f_* \)

3.  A SES \( 0\to{\mathcal{F}}_1\to{\mathcal{F}}_2\to{\mathcal{F}}_3\to 0 \) induces a LES.
:::

::: {.theorem title="Rising Sea, 18.8.5"}
If \( f:X\to Y \) is a proper projective morphism, then \( {\mathbb{R}}^{i>d} f_* {\mathcal{F}}= 0 \) for \( d \) defined as the maximum dimension of the fiber, \( d\coloneqq\max_{y\in Y} \dim f^{-1}(y) \).
:::

::: {.definition title="Proper Pushforward"}
Let \( X, Y \) be arbitrary quasiprojective varieties and \( f:X\to Y \) be proper and \( G{\hbox{-}} \)equivariant. Then there is a natural direct image morphism \( f_*: {\mathsf{K}}^G(X) \to {\mathsf{K}}_G(Y) \).

We define it as follows: note that a map such as \( f_*([{\mathcal{F}}]) \coloneqq[f_* {\mathcal{F}}] \) won't necessarily be well-defined, since SESs are additive in the Grothendieck group. For \( {\mathcal{F}}\in {\mathsf{Coh}}^G(X) \), then it turns out that \( {\mathbb{R}}f_* {\mathcal{F}}\in {\mathsf{Coh}}^G(Y) \) and the higher direct images vanish in large enough degree. We then define
\[
f_*: {\mathsf{K}}^G(X) &\to {\mathsf{K}}_G(Y) \\
[{\mathcal{F}}] &\mapsto \sum (-1)^i [{\mathbb{R}}^i f_* {\mathcal{F}}]
.\]
:::

::: {.example title="?"}
Let \( G \) be connected reductive with \( A \coloneqq T \) a maximal torus, which is abelian reductive. Then take \( a\in A \) a *regular* element, so \( X^a = X^T \). In our case, \( X^T = W_Y' \), and \( X = G/P_Y \). Then \( {\mathsf{K}}{\hbox{-}} \)theory is concentrated on the fixed locus:
\[
i_* {\mathsf{K}}^T(X^T) \left[ { \scriptstyle { {{\mathfrak{m}}_a}^{-1}}  } \right] { { \, \xrightarrow{\sim}\, }}{\mathsf{K}}^T(X) \left[ { \scriptstyle { {{\mathfrak{m}}_a}^{-1}}  } \right]
.\]
:::

# Line Bundles on \( {\mathcal{X}}^Y \) (Monday, September 27) {#line-bundles-on-mathcalxy-monday-september-27}

::: {.remark}
Notation: \( {\mathcal{X}} \) will denote a Kac-Moody flag variety, and \( X \) a usual flag variety. For any \( \lambda \in D_Y^0 \), define the algebraic line bundle \( {\mathcal{L}}(-\lambda) \to {\mathcal{X}}^Y \) to be the pullback of the tautological bundle on \( {\mathbb{P}}(L^{\max}(\lambda)) \) via the morphism \( \iota_\lambda: {\mathcal{X}}^Y \to {\mathbb{P}}(L^{\max} (\lambda)) \). Recall that we defined \( Y{\hbox{-}} \)regular weights to get an embedding into a flag variety.

Let \( X \) be a finite dimensional variety, then a vector bundle on \( X \) is a map \( {\mathcal{E}}\xrightarrow{\pi} X \) with each fiber a \( {\mathbb{C}}{\hbox{-}} \)module and for all \( x\in X \) there exists an open \( U \subseteq X \) and a homeomorphism \( \phi: U \times {\mathbb{C}}^n \to \pi^{-1}(U) \) over \( U \), so the following diagram commutes:

```{=tex}
\begin{tikzcd}
    {\pi^{-1}(U)} && {U\times {\mathbb{C}}^n} \\
    \\
    & U
    \arrow["\pi"', from=1-1, to=3-2]
    \arrow["{{\operatorname{pr}}_1}", from=1-3, to=3-2]
    \arrow["\phi", from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJcXHBpXFxpbnYoVSkiXSxbMiwwLCJVXFx0aW1lcyBcXENDXm4iXSxbMSwyLCJVIl0sWzAsMiwiXFxwaSIsMl0sWzEsMiwiXFxwcl8xIl0sWzAsMSwiXFxwaGkiXV0=)

We refer to \( \phi \) as a trivialization. Writing \( U_{12} \coloneqq U_1 \cap U_2 \), given trivializations over \( U_i \) we require that the trivializations on \( U_{12} \) are related by an element \( T_{12} \in \operatorname{GL}_n \), and the induced map \( U_{12} \times {\mathbb{C}}^n{\circlearrowleft} \) are essentially given by matrices with entries given by functions on \( U_{12} \) The key is that these satisfy the cocycle condition:
\[
T_{kj}\mathrel{\Big|}_{U_{ijjk}} T_{ji} \mathrel{\Big|}_{U_{ijk}} = T_{ki}\mathrel{\Big|}_{U_{ijk}}
.\]

Given a vector bundle, set \( {\mathcal{F}} \) to be the sheaf of sections of \( \pi: {\mathcal{E}}\to X \). If for example \( U \subseteq X \) is trivializable, then \( {{\Gamma}\qty{U, {\mathcal{F}}} } \) are \( n{\hbox{-}} \)tuples of functions \( U\to {\mathbb{C}} \), so \( { \left.{{{\mathcal{F}}}} \right|_{{U}} }\cong {\mathcal{O}}_U{ {}^{ \scriptscriptstyle\oplus^{n} }  } \), making it locally free.
:::

::: {.proposition title="about locally free sheaves"}
Given a vector bundle, set \( {\mathcal{F}} \) to be the sheaf of sections of \( \pi: {\mathcal{E}}\to X \). Then

1.  If \( {\mathcal{F}} \) is locally free, then \( \mathop{\mathrm{Hom}}_{{\mathsf{Sh}}_{/ {X}} }({\mathcal{F}}, {\mathcal{O}}_X) \in {\mathsf{Sh}}_{/ {X}}  \) is locally free.
2.  If \( n=1 \), then \( {\mathcal{F}}\otimes{\mathcal{F}} {}^{ \vee }\cong {\mathcal{O}}_X \), making it an invertible sheaf under the monoidal tensor product.
3.  Pullbacks of locally free sheaves are again locally free:

```{=tex}
\begin{tikzcd}
Z{ \underset{\scriptscriptstyle {X} }{\times} } {\mathcal{E}}
  \ar[r] 
  \ar[d]
& 
{\mathcal{E}}
  \ar[d] 
\\
Z
  \ar[r]
& 
X 
\end{tikzcd}
```
where we equivalently write \( f^* {\mathcal{F}} \).
:::

::: {.remark}
How to think about a flag variety: given \( w\in W_Y' \) and \( U_W \subseteq X^Y \), so \( U^- \subseteq G/P \). Then \( \left\{{U_w}\right\}_{w\in W_Y'} \rightrightarrows X^Y \) is an open cover with \( U_w \cong {\mathbb{C}}^{\ell(w_0')} \) with \( w_0 \) the longest element and \( w_0' \) is a minimal coset representative. If \( v\in U_w \iff v=w \) for any \( T{\hbox{-}} \)fixed point \( v \), so there's only one such fixed point in every open. We have elements \( wP/p \in X^Y \), so

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures}{2021-09-27_14-18.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.example title="?"}
For \( G \coloneqq{\operatorname{SL}}_{n+1} \), we have \( Y = \left\{{2,\cdots, n}\right\}, W = S_{n+1} = \left\{{(w_0 \cdots w_n)}\right\} \) and the minimal length representatives have increasing coordinates, so we get
\[
W_Y' = \left\{{(0 \mathrel{\Big|}1,2\cdots, n), (1 \mathrel{\Big|}0, 2, \cdots, n), \cdots , (n\mathrel{\Big|}0,1\cdots, n-1)}\right\}
.\]
For every \( i\in W_Y' = \left\{{0, \cdots, n}\right\} \), we have \( U_i \subseteq X^Y \subseteq G/P_Y \). We can obtain \( {\mathbb{P}}^n \cong \leftquotient{{\mathbb{C}}^{\times}}{{\mathbb{C}}^{n+1}} \), which is \( G/P^Y = X^Y \) here. So we can take \( U_i \coloneqq\left\{{ {\left[ {x_0,\cdots, x_n} \right]} {~\mathrel{\Big|}~}x_i\neq 0 }\right\} \subseteq {\mathbb{C}}^n \), which is dimension \( n \) since the longest element is \( (n \mathrel{\Big|}0,1,\cdots, n-1) \).
:::

::: {.example title="?"}
Let \( k\in {\mathbb{Z}} \), we'll define \( {\mathcal{O}}_{{\mathbb{P}}^n}(k) \), a line bundle on \( {\mathbb{P}}^n \). Taking \( n=1 \) to get \( {\operatorname{SL}}_2 \) and \( {\mathbb{P}}^1 \) above, we have \( W_Y' = \left\{{0, 1}\right\} \) and \( {\mathbb{C}}= U_1 = \operatorname{Spec}{\mathbb{C}}[x_{0/1}] \) and \( U_0 = \operatorname{Spec}{\mathbb{C}}[x_{0/1}] \), then on their intersection we have \( x_{0/1} = x_{1/0}^{-1} \). So transitioning \( U_0\to U_1 \) is given by \( x_{0/1}^k = x_{1/0}^{-k} \), and \( U_1\to U_0 \) by \( x_{1/0}^k = x_{0/1}^{-k} \), which defines a line bundle denoted \( {\mathcal{E}}\coloneqq{\mathcal{O}}(k) \). What are the global sections \( {{\Gamma}\qty{{\mathbb{P}}^1; {\mathcal{O}}(k)} } \)? This requires \( f(x_{0/1}^{-1}) x_{0/1}^k = g(x_{0/1}) \), so the global sections are \( {\mathbb{C}}[x,y]_{k} \) the homogeneous polynomials of degree \( k \). One can check that \( \dim {{\Gamma}\qty{{\mathbb{P}}^n; {\mathcal{O}}(k)} } = {n+k \choose k} \).
:::

::: {.remark}
Next time: we'll try to match these up with line bundles of the form \( G \overset{\scriptscriptstyle {P} }{\times} {\mathbb{C}}_\lambda \).
:::

# Wednesday, September 29

::: {.remark}
Ch. 7 and 8 in Kumar: algebraic vector bundles, particularly line bundles on ind-varieties. Let \( {\mathcal{E}}\xrightarrow{\pi} X \) be an algebraic vector bundle, so there are local trivializations:

```{=tex}
\begin{tikzcd}
\pi^{-1}(U) 
  \ar[rd, "\pi"]
  \ar[rr, "{\operatorname{pr}}_1"] 
& 
& 
U\times {\mathbb{C}}^n
  \ar[ld, ""] 
\\
& 
U 
& 
\end{tikzcd}
```
i.e. these look like projections onto the first coordinate of an actual product on sufficiently small sets. We write \( {\mathcal{E}}_x \coloneqq\pi^{-1}(x) \). The key data: transition functions.

Our first examples were \( {\mathcal{O}}_{{\mathbb{P}}^n}(k) \), particularly for \( n=1 \).
:::

::: {.remark}
Equivariant coherent sheaves yields algebraic representations by taking global sections. Kumar uses character formulas to compute global sections.
:::

::: {.definition title="Equivariant vector bundles"}
For \( G\in {\mathsf{Alg}}{\mathsf{Grp}} \) is linear (and e.g. connected reductive), if \( \pi \) is \( G{\hbox{-}} \)equivariant and \( G \) maps \( {\mathcal{E}}_x\to {\mathcal{E}}_{gx} \) *linearly*, then \( \pi \) yields an **equivariant vector bundle**.
:::

::: {.remark}
For \( G \) connected reductive and \( T \subseteq G \) a maximal torus, a character \( \lambda \in X^*(T) \) is a map \( \lambda: T\to {\mathbb{C}}^{\times} \), and using \( T \subseteq B \subseteq G \) we get a representation \( \lambda: B\to {\mathbb{C}}^{\times} \) of the Borel. We then define
\[
G\overset{\scriptscriptstyle {B} }{\times} {\mathbb{C}}_{\lambda} \coloneqq(G\times {\mathbb{C}})/B
.\]
There is a map

```{=tex}
\begin{tikzcd}
    {G\times {\mathbb{C}}} && {G\overset{\scriptscriptstyle {B} }{\times}{\mathbb{C}}_{\lambda}} && {[g, z]} \\
    \\
    G && {G/B} && {gB/B}
    \arrow["{{\operatorname{pr}}_1}", from=1-1, to=3-1]
    \arrow["{{-}/B}", from=3-1, to=3-3]
    \arrow[from=1-3, to=3-3]
    \arrow[dashed, from=1-1, to=1-3]
    \arrow[maps to, from=1-5, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMiwwLCJHXFxtaXh7Qn1cXENDX3tcXGxhbWJkYX0iXSxbMiwyLCJHL0IiXSxbNCwwLCJbZywgel0iXSxbNCwyLCJnQi9CIl0sWzAsMCwiR1xcdGltZXMgXFxDQyJdLFswLDIsIkciXSxbNCw1LCJcXHByXzEiXSxbNSwxLCJcXHdhaXQvQiJdLFswLDFdLFs0LDAsIiIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDMsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XV0=)

Even better, if \( Y = \left\{{1\leq i\leq \ell {~\mathrel{\Big|}~}{\left\langle {\lambda},~{\alpha_i {}^{ \vee }} \right\rangle} }\right\} \) then taking \( \lambda \in D_Y^0 \) so \( \lambda: P \to {\mathbb{C}}^{\times} \) yields a map \( G\overset{\scriptscriptstyle {P} }{\times} {\mathbb{C}}_{ \lambda} \xrightarrow{\pi} G/P \) where \( G/P \supseteq U_w \). Write \( P = LU \) and \( P^- = LU^- \) for \( L \) the Levi and \( U^\pm \) the unipotent radical and its opposite:

```{=html}
<!-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-09-29_14-07.xoj -->
```
![](figures/2021-09-29_14-08-16.png)

There is an embedding
\[
U^- &\hookrightarrow G/P\\
u &\mapsto uP/P
.\]
For \( w\in W_Y' \), we have
\[
\eta_w: {}^w U^- &\to G/P \\
wuw^{-1}&\mapsto wuP/P
,\]
and \( {}^w U^- = wU^- w^{-1} \) for \( w\in W= N_G(T)/T \).
:::

::: {.example title="?"}
Let \( {\mathbb{P}}^1 = G/P \) for \( G= {\operatorname{SL}}_2 \). Here \( W = \left\{{e, s}\right\}\cong C_2 \) and \( S = \left\{{s}\right\} \supseteq Y \), and we want \( Y = \emptyset \). Any \( \lambda \in X^*(T) \) needs to be orthogonal to \( \alpha {}^{ \vee } \). We can take a realization \( {\operatorname{SL}}_2({\mathbb{C}}, \left\{{2}\right\}, \left\{{1}\right\}) \) which yields \( X^*(T) = {\mathbb{Z}} \). So \( {\left\langle { \lambda},~{ \alpha {}^{ \vee }} \right\rangle} = 0 \iff 1\cdot \lambda \neq 0 \), forcing \( \lambda\neq 0 \) for this to be a flag variety. For \( \lambda = k \), we have \( \lambda \cdot {
\begin{bmatrix}
  {t} & {0} 
\\
  {0} & {t^{-1}}
\end{bmatrix}
} = t^k \). We get a line bundle \( G\overset{\scriptscriptstyle {B} }{\times} {\mathbb{C}}_{\lambda} \xrightarrow{\pi} G/B={\mathbb{P}}^1 \), how does this compare to \( {\mathcal{O}}_{{\mathbb{P}}^1}(k) \)? The flag varieties look like the following:

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures}{2021-09-29_14-17.pdf_tex} };
\end{tikzpicture}
```
Here \( s, e \) are the two \( T{\hbox{-}} \)fixed points. We have \( U_s \cap U_e \cong {\mathbb{C}}^{\times} \), and we'll replace \( U_s \to {}^s U^- \) and \( U_e \to {}^{e}U^- = U^- \). The transition functions read:

```{=tex}
\begin{tikzcd}
    {{}^{s}U^- \times {\mathbb{C}}} && {\pi^{-1}(U_s)} && {\pi^{-1}(U_e)} && {U^-\times {\mathbb{C}}} \\
    \\
    & {U_s} &&&& {U_e}
    \arrow["\pi", from=1-3, to=3-2]
    \arrow["{{\operatorname{pr}}_1}"', from=1-1, to=3-2]
    \arrow["\cong", from=1-1, to=1-3]
    \arrow["\cong", from=1-5, to=1-7]
    \arrow["{{\operatorname{pr}}_1}", from=1-7, to=3-6]
    \arrow["\pi"', from=1-5, to=3-6]
    \arrow["{\text{on }U_e \cap U_s}"', from=1-3, to=1-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMiwwLCJcXHBpXFxpbnYoVV9zKSJdLFswLDAsInt9XntzfVVeLSBcXHRpbWVzIFxcQ0MiXSxbNCwwLCJcXHBpXFxpbnYoVV9lKSJdLFs2LDAsIlVeLVxcdGltZXMgXFxDQyJdLFsxLDIsIlVfcyJdLFs1LDIsIlVfZSJdLFswLDQsIlxccGkiXSxbMSw0LCJcXHByXzEiLDJdLFsxLDAsIlxcY29uZyJdLFsyLDMsIlxcY29uZyJdLFszLDUsIlxccHJfMSJdLFsyLDUsIlxccGkiLDJdLFswLDIsIlxcdGV4dHtvbiB9VV9lIFxcaW50ZXJzZWN0IFVfcyIsMl1d)

We have \( U_s \cap U_e \cong {\mathbb{C}}^{\times} \), so what map \( {\mathbb{C}}^{\times}{\circlearrowleft} \) do we get? Consider \( U^-B/B \cap sU^-B/B \), so
\[
u_{\alpha} (x) = {
\begin{bmatrix}
  {1} & {x} 
\\
  {0} & {1}
\end{bmatrix}
} && u_{-\alpha}(x) = {
\begin{bmatrix}
  {1} & {0} 
\\
  {x} & {1}
\end{bmatrix}
}
.\]
Then and \( u_{-\alpha}(x) = s u_\alpha(-x)s^{-1} \), so
\[
u_{-\alpha}(x) B &= u_{- \alpha}(y) B \\
s u_{\alpha}(-x)s^{-1}B &= s u_{- \alpha}(y) B \\
u_{ \alpha}(-x) s^{-1}B &= u_{-\alpha} B
.\]

Now check that
\[
{
\begin{bmatrix}
  {1} & {-x} 
\\
  {0} & {1}
\end{bmatrix}
} {
\begin{bmatrix}
  {0} & {-1} 
\\
  {1} & {0}
\end{bmatrix}
} = {
\begin{bmatrix}
  {1} & {0} 
\\
  {y} & {1}
\end{bmatrix}
} {
\begin{bmatrix}
  {a} & {b} 
\\
  {0} & {a^{-1}}
\end{bmatrix}
}&& \text{for some }{
\begin{bmatrix}
  {a} & {b} 
\\
  {0} & {a^{-1}}
\end{bmatrix}
}\in B \\ \\
{
\begin{bmatrix}
  {-x} & {-1} 
\\
  {1} & {0}
\end{bmatrix}
} = {
\begin{bmatrix}
  {a} & {b} 
\\
  {ay} & {yb+a^{-1}}
\end{bmatrix}
}
,\]
so we have \( -x=y^{-1} \). Thus
\[
T_{es}U_s^{\times}\times {\mathbb{C}}&\to U_e^{\times}\times {\mathbb{C}}\\
(x, z) &\mapsto (x^{-1}, x^{-k} z) \\ \\
T_{se}U_e^{\times}\times {\mathbb{C}}&\to U_s^{\times}\times {\mathbb{C}}\\
(x, z) &\mapsto (x^{-1}, x^{-k} z)
.\]

> These computations are hard, even in the case of \( {\operatorname{SL}}_2 \)! Perhaps a motivation for having character formulas.

We then identify \( G\overset{\scriptscriptstyle {B} }{\times} {\mathbb{C}}_{ \lambda} \xrightarrow{\pi} G/B \) with \( {\mathcal{O}}(-k) \), and \( {\mathcal{L}}( \lambda) = G\overset{\scriptscriptstyle {B} }{\times} {\mathbb{C}}_{\lambda} \).
:::

# Kumar Ch. 8: Demazure Character Formulas (Friday, October 01)

::: {.remark}
For any \( \lambda \in D_Y^0 \) define the algebraic line bundle \( {\mathcal{L}}^Y(- \lambda) \) over \( X^Y = {\mathcal{G}}/P_Y \) to be the following pullback:

```{=tex}
\begin{tikzcd}
    {{\mathcal{G}}/P_y} && \eta \\
    \\
    {{\mathcal{X}}^Y} && {{\mathbb{P}}(L^{\max} ( \lambda ))}
    \arrow["{\iota_{\lambda}}", from=3-1, to=3-3]
    \arrow[from=1-3, to=3-3]
    \arrow[from=1-1, to=3-1]
    \arrow[from=1-1, to=1-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXG1jZy9QX3kiXSxbMiwwLCJcXGV0YSJdLFsyLDIsIlxcUFAoTF57XFxtYXh9ICggXFxsYW1iZGEgKSkiXSxbMCwyLCJcXG1jeF5ZIl0sWzMsMiwiXFxpb3RhX3tcXGxhbWJkYX0iXSxbMSwyXSxbMCwzXSxbMCwxXSxbMCwyLCIiLDEseyJzdHlsZSI6eyJuYW1lIjoiY29ybmVyIn19XV0=)

Let \( H^Y = {\operatorname{Gr}}_k({\mathbb{C}}^n) = G/P^Y \) for \( G\coloneqq\operatorname{GL}_n \).
:::

::: {.definition title="The Tautological Bundle"}
Then define a vector bundle
\[
{\mathcal{E}}\coloneqq\left\{{ (x, v) \in X^Y \times {\mathbb{C}}^n {~\mathrel{\Big|}~}v\in x}\right\} = \left\{{(E, v) \in {\operatorname{Gr}}_k({\mathbb{C}}^n) \times {\mathbb{C}}^n {~\mathrel{\Big|}~}v\in E}\right\}
,\]
and define \( {\mathcal{E}}\xrightarrow{\pi} X^Y = {\operatorname{Gr}}_k({\mathbb{C}}^n) \) to be projection to the first factor such that

1.  \( \pi^{-1}(E) \cong E \in {\mathsf{{\mathbb{C}}}{\hbox{-}}\mathsf{Mod}}^{\dim = k} \) is a \( k{\hbox{-}} \)dimensional vector space for any \( E\in X^Y \).
2.  \( \pi \) is \( G{\hbox{-}} \)equivariant: \( \pi(g\cdot (x, v)) = g \cdot \pi(x, v) \), where the first action is \( g\cdot (x, v) = (gx, gv) \), and \( \pi(x, v) = gx \). Moreover \( G \) acts on fibers linearly, so \( g\cdot({-}): \pi^{-1}(x) \to \pi^{-1}(gx) \) which sends \( E\to gE \) as subspaces in \( {\mathbb{C}}^n \), and we require that this map of subspaces is a \( {\mathbb{C}}{\hbox{-}} \)linear map.
:::

::: {.remark}
Equivariant bundles on homogeneous spaces are determined by the representation of the stabilizer on the corresponding fiber. We can pick a base point \( {\operatorname{span}}_{\mathbb{C}}\left\{{e_1,\cdots, e_k}\right\} \cong {\mathbb{C}}^k \in {\operatorname{Gr}}_k({\mathbb{C}}^n) \), whence \( {\operatorname{Stab}}_G({\mathbb{C}}^k) = P \) is all but the lower-left block:

```{=html}
<!-- Xournal file: /home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures/2021-10-01_14-09.xoj -->
```
![](figures/2021-10-01_14-10-55.png)

Then \( \pi^{-1}({\mathbb{C}}^k) = {\mathbb{C}}^k \). We conclude
\[
{\mathcal{E}}: G \overset{\scriptscriptstyle {P} }{\times} {\mathbb{C}}^k &\to G/P \\
[g, v] &\mapsto gv
.\]
:::

::: {.example title="?"}
For \( k=1 \), we're considering \( {\operatorname{Gr}}_1({\mathbb{C}}^n) = {\mathbb{P}}^{n-1} \).

-   \( T \subseteq \operatorname{GL}_n \) are diagonal matrices, and \( t\curvearrowright{\left[ {x_1, 0, \cdots, 0} \right]} = {\left[ {tx_1, 0, \cdots, 0} \right]} \).

-   \( Y = \left\{{1\leq i \leq n-1 {~\mathrel{\Big|}~}{\left\langle {\lambda},~{\alpha_i {}^{ \vee }} \right\rangle} = 0}\right\} = \left\{{2, \cdots, n-1}\right\} \).

-   Taking \( \lambda = {\left[ {1, 0,\cdots, 0} \right]} \), we have a character
    \[
    \lambda: T &\to {\mathbb{C}}^{\times}\\
    \operatorname{diag}(t_1,\cdots, t_n) &\mapsto t_1^1 t_2^0\cdots t_n^0
    .\]

-   \( {\mathcal{E}}= G\overset{\scriptscriptstyle {P} }{\times} {\mathbb{C}}^1 = G\overset{\scriptscriptstyle {P} }{\times} {\mathbb{C}}_{{\left[ {1, 0, \cdots, 0} \right]}} = {\mathcal{L}}(- \lambda) \).

Note that since this weight \( \lambda \) is dominant (and not antidominant), there are no global sections.
:::

::: {.remark}
Define
\[
{\mathfrak{h}} {}^{ \vee }_{{\mathbb{Z}}, Y} \coloneqq\left\{{ \lambda\in {\mathfrak{h}} {}^{ \vee }_{\mathbb{Z}}{~\mathrel{\Big|}~}{\left\langle { \lambda},~{ \alpha_i  {}^{ \vee }} \right\rangle} = 0, i\in Y}\right\}
.\]
For any \( \lambda\in {\mathfrak{h}} {}^{ \vee }_{\mathbb{Z}} \) take \( \lambda_1, \lambda_2 \in D_Y^0 \) such that \( \lambda= \lambda_1 - \lambda_2 \), i.e. we can write any weight as a difference of dominant weights:

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures}{2021-10-01_14-21.pdf_tex} };
\end{tikzpicture}
```
Set
\[
{\mathcal{L}}( \lambda) \coloneqq\mathcal{L} ^Y( - \lambda_2) \otimes{\mathcal{L}}( - \lambda_1) {}^{ \vee }
.\]
For example, given \( T \subseteq G \) and \( \lambda\in X(T) \), we have
\[
\mathcal{L} (\lambda) = G\overset{\scriptscriptstyle {P} }{\times} {\mathbb{C}}_{ - \lambda}
.\]
:::

::: {.remark}
Given \( w\in W \), define
\[
{\mathcal{L}}_w( \lambda) \coloneqq P_{i_1}\overset{\scriptscriptstyle {B} }{\times} P_{i_2} \overset{\scriptscriptstyle {B} }{\times} \cdots \overset{\scriptscriptstyle {B} }{\times} P_{i_n} \overset{\scriptscriptstyle {B} }{\times} {\mathbb{C}}_{ - \lambda}
.\]
:::

::: {.claim}
Let

-   \( {w} = (s_{i_1}, \cdots, s_{i_n}) \)
-   \( i_{\lambda}: {\mathcal{G}}/P_Y \to {\mathbb{P}}(L^{\max} ( \lambda)) \)
-   \( m_w: Z_w \to {\mathcal{G}}/P_Y \)

Then
\[
{\mathcal{L}}_{w} (\lambda) = m_{w} {}^{ \vee }\mathcal{L} ^Y(\lambda)
.\]
:::

::: {.proof title="?"}
Define
\[
f: {\mathcal{L}}_{w}( \lambda) &\to Z_w 
= P_{i_1}\overset{\scriptscriptstyle {B} }{\times} P_{i_2} \overset{\scriptscriptstyle {B} }{\times} \cdots \overset{\scriptscriptstyle {B} }{\times} P_{i_n} \overset{\scriptscriptstyle {B} }{\times} {\mathbb{C}}_{ - \lambda}
\\ 
[p_1,p_2, \cdots, p_n, z] &\mapsto [p_1, p_2, \cdots, p_n B/B] \\ \\ 
g: {\mathcal{L}}_{w}( \lambda) &\to {\mathcal{L}}^Y( \lambda)  \\
[p_1,p_2, \cdots, p_n, z] &\mapsto [p_1 \cdot p_2 \cdots p_n, z]
.\]

::: {.exercise title="?"}
Check that these maps are well-defined.
:::

Using the universal property of pullbacks, we get a diagram:

```{=tex}
\begin{tikzcd}
    {{\mathcal{L}}_w(\lambda)} \\
    \\
    && {m_w^* {\mathcal{L}}^Y(\lambda) = Z_w { \underset{\scriptscriptstyle {G/P} }{\times} } {\mathcal{L}}^Y(\lambda)} && {{\mathcal{L}}^Y(\lambda)} \\
    \\
    && {Z_w} && {G/P}
    \arrow["\pi", from=3-5, to=5-5]
    \arrow["{m_w}"', from=5-3, to=5-5]
    \arrow[from=3-3, to=5-3]
    \arrow[from=3-3, to=3-5]
    \arrow["g", curve={height=-24pt}, from=1-1, to=3-5]
    \arrow["f", curve={height=24pt}, from=1-1, to=5-3]
    \arrow["{\exists \varphi}", dashed, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMiw0LCJaX3ciXSxbNCw0LCJHL1AiXSxbNCwyLCJcXG1jbF5ZKFxcbGFtYmRhKSJdLFsyLDIsIm1fd14qIFxcbWNsXlkoXFxsYW1iZGEpID0gWl93IFxcZmliZXJwcm9ke0cvUH0gXFxtY2xeWShcXGxhbWJkYSkiXSxbMCwwLCJcXG1jbF93KFxcbGFtYmRhKSJdLFsyLDEsIlxccGkiXSxbMCwxLCJtX3ciLDJdLFszLDBdLFszLDJdLFs0LDIsImciLDAseyJjdXJ2ZSI6LTR9XSxbNCwwLCJmIiwwLHsiY3VydmUiOjR9XSxbNCwzLCJcXGV4aXN0cyBcXHZhcnBoaSIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==)

The claim is that \( \phi \) is an isomorphism, we'll show this by explicitly construction its inverse algebraic morphism. We have \( \phi([p_1, \cdots, p_n, z]) = ( [p_1, \cdots, p_n B/B] \times [ p_1p_2\cdots p_n, z] ) \). Define
\[
\psi: m_w^* {\mathcal{L}}^Y( \lambda) &\to {\mathcal{L}}_w( \lambda) \\
[p_1, \cdots, p_nB/B] \times [g, z] &\mapsto [p_1, \cdots, p_n, p_n^{-1}\cdots p_1^{-1}gz]
,\]
where \( p_1^{-1}\cdots p_1^{-1}g\in P \). This will clearly be an inverse, it remains to show it's well-defined. Note that
\[
p_1\cdots p_n P/P = gP/P \implies f^{-1}p_1\cdots p_n \in P
,\]
which follows from chasing the fiber product diagram around the two sides.
:::

::: {.exercise title="?"}
Check that this is well-defined by showing a different representative has the same image. Then compose \( \phi, \psi \) in both orders.
:::

# Cohomology of Certain Line Bundles \( Z_w \) (Monday, October 04) {#cohomology-of-certain-line-bundles-z_w-monday-october-04}

::: {.remark}
Some references:

-   Fulton, *Intersection Theory*. Similar difficulty to Hartshorne if you're going through it yourself!

    -   See Young Tableaux books.

-   Eisenbud-Harris, *3264 and All That*. A more Vakil-style approach.
:::

::: {.definition title="Chow Group"}
The **Chow group** of \( X\in{\mathsf{Var}}_{/ {k}}  \) is the quotient \( A_*(X) \coloneqq Z(X)/ \operatorname{Rat}(X) \), where \( Z(X) = {\mathbb{Z}}[{\mathrm{Sub}}(X)] \), the free \( {\mathbb{Z}}{\hbox{-}} \)module on subvarieties of \( X \). The group \( Z(X) \) are **algebraic cycle**, and we mod out by rational equivalence.
:::

::: {.example}
If \( G\curvearrowright X \), then \( Y\sim gY\in A_*(X) \), and something similar happens for many algebraic group actions. Another example is that in \( {\mathbb{P}}^1 \), \( x \sim x' \) for all points \( x,x' \) since \( {\operatorname{PSL}}_2\curvearrowright{\mathbb{P}}^1 \).
:::

::: {.remark}
Note that there is also an equivariant Chow group/ring. In general, \( A_*(X) \) is difficult/impossible to compute (according to Harris) unless there is an affine stratification. In these cases, it coincides with Borel-Moore homology.
:::

::: {.theorem title="?"}
If \( X \) is smooth, then \( A^*(X) \) forms a ring, where the grading is given by codimension of subvarieties. Thus there is a multiplication \( [A] \cdot [B] = [A \cap B] \) when \( A\pitchfork B \) generically. Here transversality refers to an open condition on tangent spaces.
:::

::: {.remark}
We have three ways of thinking about line bundles:

-   Local trivializations
-   Algebraic morphisms with 1-dimensional fibers
-   Invertible sheaves

Now we'll add a fourth in terms of divisors. Define:

-   \( A_{n-1}(X)\in {\mathsf{Grp}} \), **Weil divisors**
-   \( {\operatorname{Pic}}(X) \in {\mathsf{Grp}} \), the group of isomorphism classes of algebraic line bundles on \( X \) where \( [L_1] \cdot [L_2] \coloneqq[L_1 \oplus L_2] \).
:::

::: {.proposition title="?"}
Taking the Chern class yields a group morphism \( c_1: {\operatorname{Pic}}(X) \to A_{n-1}(X) \). If the line bundle is generated by global sections, take the zero section of the global section. If \( X \) is smooth, \( c_1 \) is an isomorphism, and we write \( c_1({\mathcal{O}}_X(Y)) \coloneqq[Y]\in A_{n-1}(X) \). Note that this is slightly different to the ideal sheaf definition in Vakil.
:::

::: {.remark}
See relation to Schubert varieties and Grassmannians in the referenced books. Bott-Samelson-Demazure and flag varieties will be smooth, although we'll have to be careful for Schubert varieties.
:::

::: {.proposition title="8.1.2"}
Define the length of a word \( w\in W \) to be the number of simple reflections, regardless of whether or not \( w \) is reduced. Let \( n\coloneqq\ell(w) \), then there is a formula for the canonical bundle \( K_{Z_w} \) of any Bott-Samelson-Demazure variety \( Z_w \) (even Kac-Moody types):
\[
{\mathcal{L}}_w(-\rho) \otimes{\mathcal{O}}_{Z_w}( - \sum_{q=1}^n Z_{w(q)} )
.\]
:::

::: {.remark}
Here \( \rho\in {\mathfrak{h}} {}^{ \vee }_{\mathbb{Z}} \) (e.g. characters of the torus in the semisimple simply connected case) is any element satisfying \( \rho( \alpha_i {}^{ \vee }) = 1 \) for all \( 1\leq i \leq \ell \). Recall that
\[
Z_w = P_{i_1}\overset{\scriptscriptstyle {B} }{\times} \cdots \overset{\scriptscriptstyle {B} }{\times} P_{i_n} / B = \left\{{ {\left[ {p_1, \cdots, p_n B/B } \right]}}\right\}
,\]
and \( Z_w(q) \) means deleting the \( q \)th factor, so \( Z_w(q) = \left\{{{\left[ {p_1,\cdots, 1,\cdots, p_nB/B} \right]}}\right\} \) has the \( q \)th coordinate set to 1. Note that there is a quotient map \( Z_w \to Z_{w(n)} \), which has a section, and we can use this to induct.
:::

::: {.proof title="?"}
Consider \( G \) connected and reductive and let \( X=G/B \) be the flag variety, which is smooth. Then for \( \lambda \in X(T) \) corresponds to the algebraic line bundle \( {\mathcal{L}}^{\emptyset}( \lambda) = G\overset{\scriptscriptstyle {B} }{\times} {\mathbb{C}}_{ - \lambda} \). This yields a function \( X(T) \to {\operatorname{Pic}}(X) \xrightarrow{c_1} A_{n-1}(X) \) given by forgetting the \( G{\hbox{-}} \)action. This is a group morphism, where adding characters maps to tensoring bundles.

Note that for \( T = {\mathbb{C}}^{\times} \), we have
\[
X(T) = \mathop{\mathrm{Hom}}_{{\mathsf{Alg}}{\mathsf{Grp}}}({\mathbb{C}}^{\times}, {\mathbb{C}}^{\times})= \left\{{z \mapsto z^k {~\mathrel{\Big|}~}k\in {\mathbb{Z}}}\right\} { { \, \xrightarrow{\sim}\, }}_{{\mathsf{Ab}}{\mathsf{Grp}}} {\mathbb{Z}}
,\]
where negatives are permitted since \( 0\not\in {\mathbb{C}}^{\times} \). More generally, \( X(T) { { \, \xrightarrow{\sim}\, }}_{{\mathsf{Ab}}{\mathsf{Grp}}} {\mathbb{Z}}^n \) for \( n=\operatorname{rank}T \), where \( {\left[ {{ {t}_1, {t}_2, \cdots, {t}_{n}}} \right]} \xrightarrow{\lambda} \lambda_1^{k_1}\cdots \lambda_n^{k_n} \). Since we have an affine stratification by Schubert cells, we can write \( A_*(X) = \bigoplus_{w\in W} [X_w] \), and in fact \( A_k(X) = \bigoplus _{\ell(w) = k} [X_w] \). Considering the lattice for \( W \), there are \( \ell \) dimension 1 Schubert cells, and identifying them as CW cells and applying Poincare duality, there are \( \ell \) codimension 1 cells:

```{=tex}
\begin{tikzcd}
    && w \\
    \\
    {w_0 s_1} && {w_0 s_j} && {w_0 s_n} \\
    \vdots && \vdots && \vdots \\
    \vdots && \vdots && \vdots \\
    {s_1} & \cdots & {s_j} & \cdots & {s_n} \\
    \\
    && e
    \arrow[from=3-1, to=1-3]
    \arrow[from=3-3, to=1-3]
    \arrow[from=3-5, to=1-3]
    \arrow[from=8-3, to=6-1]
    \arrow[from=8-3, to=6-3]
    \arrow[from=8-3, to=6-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTYsWzIsNywiZSJdLFswLDUsInNfMSJdLFsyLDUsInNfaiJdLFs0LDUsInNfbiJdLFsxLDUsIlxcY2RvdHMiXSxbMyw1LCJcXGNkb3RzIl0sWzAsMiwid18wIHNfMSJdLFsyLDIsIndfMCBzX2oiXSxbNCwyLCJ3XzAgc19uIl0sWzIsMCwidyJdLFsyLDMsIlxcdmRvdHMiXSxbMiw0LCJcXHZkb3RzIl0sWzAsNCwiXFx2ZG90cyJdLFswLDMsIlxcdmRvdHMiXSxbNCwzLCJcXHZkb3RzIl0sWzQsNCwiXFx2ZG90cyJdLFs2LDldLFs3LDldLFs4LDldLFswLDFdLFswLDJdLFswLDNdXQ==)

It turns out that the map is given as follows:
\[
{\mathbb{Z}}^n \cong X(T) &\longrightarrow A_{n-1}(X) \cong {\mathbb{Z}}^\ell \\
\lambda&\mapsto \sum_{i=1}^\ell {\left\langle {\lambda},~{ \alpha_i {}^{ \vee }} \right\rangle}[X_{w_0 s_i}] && n\geq \ell
.\]
:::

::: {.example title="?"}
For \( G = {\operatorname{SL}}_2, {\mathcal{L}}( \lambda_k) = {\mathcal{O}}_{{\mathbb{P}}^1}(k) \) and \( X(T) \cong {\mathbb{Z}} \). Recall that \( {{\Gamma}\qty{{\mathbb{P}}^1, {\mathcal{O}}_{{\mathbb{P}}^1}(k)} } = {\mathbb{C}}[x, y]_k \) are homogeneous polynomials of degree \( k \) when \( k\geq 0 \), otherwise there are no global sections. For example, \( {\mathbb{C}}[x, y]_2 = \left\langle{x^2, xy, y^2}\right\rangle \) is dimension \( 3 = 2 + 1 \). All points are rationally equivalent, so we can take the basepoint \( B/B \), and so the map will need to track the multiplicity of points. The composition is given by the following:

```{=tex}
\begin{tikzcd}
    {X(T)} && {{\operatorname{Pic}}(X)} && {A_{n-1}(X)} \\
    \\
    {{\mathcal{L}}(\lambda_k)} && {{\mathcal{O}}_{{\mathbb{P}}^1}(k)} && {k[B/B]}
    \arrow[from=1-1, to=1-3]
    \arrow[from=1-3, to=1-5]
    \arrow[maps to, from=3-1, to=3-3]
    \arrow[maps to, from=3-3, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMCwwLCJYKFQpIl0sWzIsMCwiXFxQaWMoWCkiXSxbNCwwLCJBX3tuLTF9KFgpIl0sWzIsMiwiXFxPT197XFxQUF4xfShrKSJdLFs0LDIsImtbQi9CXSJdLFswLDIsIlxcbWNsKFxcbGFtYmRhX2spIl0sWzAsMV0sWzEsMl0sWzUsMywiIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9fX1dLFszLDQsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XV0=)

The cotangent bundle of \( X \) is given by \( G\overset{\scriptscriptstyle {P} }{\times} u = T {}^{ \vee }G/P \) where \( P = LU \). The canonical bundle is the top wedge power, and here we get \( G\overset{\scriptscriptstyle {B} }{\times} {\mathfrak{n}}= G\overset{\scriptscriptstyle {B} }{\times} {\mathbb{C}}_2 = {\mathcal{L}}(-2) \), noting that the canonical is equal to the cotangent bundle here, and we've identified which equivariant bundle this is.
:::

# Friday, October 08

::: {.remark}
Continuing some stuff from Kumar Ch. 8: the goal is to understand the Demazure and Weyl-Kac character formulas. Open question: how can one compute the singular locus of a given Schubert variety? This is surprisingly a hot topic this semester, c/o multiple Arxiv papers that have come out over the past few months.

Our first goal: showing \( X_w^Y \) is normal. Note that most varieties in representation theory are not normal, and this complicates things significantly, so normality is a great condition here.

Recall that for \( X\in {\mathsf{Var}} \), the stalks \( {\mathcal{O}}_{X, x} \) are local rings, and the **cotangent space at \( x \)** is defined as \( {\mathfrak{m}}_x/{\mathfrak{m}}_x^2 \).

> Cohomology vanishing: some of the hardest and most important results in this area!
:::

::: {.theorem title="8.1.8, Main Result"}
Let \( w = (s_{i_1} \cdots, s_{i_n}) \in W \) be a word and consider \( j, k \) such that \( 1\leq j\leq k\leq n \). Suppose that the subword \( v = (s_{i_j} \cdots, s_{i_k}) \) is reduced. Considering the associated BSDH-varieties, we have a subvariety
\[
Z_v \coloneqq P_{i_j}\overset{\scriptscriptstyle {B} }{\times} \cdots P_{i_k}/B \hookrightarrow
Z_w \coloneqq P_{i_1}\overset{\scriptscriptstyle {B} }{\times} \cdots P_{i_n}/B
.\]
Recall that \( {\mathcal{L}}^Y(\lambda) \coloneqq G\overset{\scriptscriptstyle {P_Y} }{\times} {\mathbb{C}}_{- \lambda} \), and
\[
{\mathcal{L}}_w( \lambda) \coloneqq P_{i_1}\overset{\scriptscriptstyle {B} }{\times} \cdots \overset{\scriptscriptstyle {B} }{\times} P_{i_n} {\mathbb{C}}_{- \lambda} = f^* {\mathcal{L}}^Y( \lambda)
,\]
and we write \( w(n) \) for \( w \) with the \( n \)th letter omitted. Moreover codimension 1 subvarieties correspond to line bundles under the Chern class isomorphism. Then for any integral dominant \( \lambda \in D_{\mathbb{Z}} \), there are 3 vanishing formulas:

1.  
    \[
    H^{\geq 1 } \qty{ Z_w; {\mathcal{L}}_w( \lambda) \otimes{\mathcal{O}}_{Z_w}(- \sum_{q=0}^k Z_{w(q)} ) } &= 0 
    .\]

2.  
    \[
    H^{\geq 1} \qty{Z_w; {\mathcal{L}}_w( \lambda) } &= 0 
    .\]

3.  If \( k<n \) and \( v' \coloneqq(s_{i_k} \cdots, s_{i_k} s_{i_{k+1}}) \) is *not* reduced, then

\[
H^{\geq 0 } \qty{ Z_w; {\mathcal{L}}_w( \lambda) \otimes{\mathcal{O}}_{Z_v}(- \sum_{q=j}^k Z_{w(q)} ) } &= 0 \\
.\]
:::

::: {.remark}
We'll often use **Serre duality** in the following form: given a set of nice assumptions, there is a perfect pairing
\[
H^i(X; {\mathcal{F}}) \times H^{n-i}(X; K_X \otimes{\mathcal{F}} {}^{ \vee }) \to {\mathbb{C}}
,\]
where \( {\mathcal{F}} {}^{ \vee }\coloneqq\mathop{\mathrm{Hom}}_{{\mathcal{O}}_X}({\mathcal{F}}, {\mathcal{O}}_X) \) and \( K_X \) is the dualizing sheaf. Note that if \( X \) is smooth and projective, one can take \( K_X \) to be the canonical sheaf.
:::

::: {.lemma title="8.18"}
For any finite-dimensional representation \( M \) of \( B{ {}^{ \scriptscriptstyle\times^{n} }  } \), there is a functorial assignment a \( P_{i_1}{\hbox{-}} \)equivariant algebraic vector bundle \( {\mathcal{L}}_w(M) \to Z_w \) on the BSDH variety. which is an exact functor on \( {\mathsf{B{ {}^{ \scriptscriptstyle\times^{n} }  }}{\hbox{-}}\mathsf{Mod}}^{\dim < \infty} \), given by
\[
{\mathcal{L}}_w( - \lambda ) = {\mathcal{L}}_w( {\mathbb{C}}_{ \lambda})
.\]
This is induced by \( B{ {}^{ \scriptscriptstyle\times^{n} }  } \xrightarrow{{\operatorname{pr}}_n} B \to {\mathbb{C}}_{\lambda} \).
:::

::: {.remark}
Using this formula,
\[
{\mathcal{L}}(\lambda) {}^{ \vee }= {\mathcal{L}}( {\mathbb{C}}_{- \lambda}) {}^{ \vee }= {\mathcal{L}}({\mathbb{C}}_{- \lambda}  {}^{ \vee })
,\]
where given \( V_{ \lambda} \) a highest weight representation of \( G \) (connected reductive finite type), we have \( V_{ \lambda} {}^{ \vee }= V_{-w_0 \lambda} \). Here \( {\mathbb{C}}_{ - \lambda} \) is a representation of the torus, for which \( w_0 = \operatorname{id} \).
:::

::: {.example title="?"}
For \( w = v = (s) \) and \( 1\leq j\leq k \leq n =1 \), we have \( Z_{(s)} = P_s/B \cong {\mathbb{P}}^1 \). Noting \( Z_{ \emptyset} = B/B = {\operatorname{pt}} \), using the formula we obtain
\[
H^p( P_s/B; {\mathcal{L}}_{(s)} ( \lambda) \otimes{\mathcal{O}}_{Z_{(s)}} (-B/B) )
.\]
This is an (equivariant) line bundle on \( {\mathbb{P}}^1 \), which are all of the form \( {\mathcal{O}}(n) \) -- which one is it? Write \( a \coloneqq{\left\langle { \lambda},~{ \alpha {}^{ \vee }} \right\rangle} \in {\mathbb{Z}}_{\geq 0} \) since \( \lambda \) was dominant integral. Forgetting the group action yields an algebraic bundle which we can write as
\[
H^p(P_s/B ; {\mathcal{O}}_{{\mathbb{P}}^1}(a) \otimes{\mathcal{O}}_{{\mathbb{P}}^1}(-1) )
.\]

This can also be described by tensoring \( {\mathbb{C}}_{ \lambda} \otimes{\mathbb{C}}_{ \mu} \cong {\mathbb{C}}_{ \lambda+ \mu} \). Finally, we can identify this homology with
\[
H^p(P_s/B ; {\mathcal{O}}_{{\mathbb{P}}^1}(a-1) )
.\]

Note that the canonical for \( {\mathbb{P}}^1 \) is \( G\overset{\scriptscriptstyle {B} }{\times} {\mathbb{C}}_{2} = {\mathcal{L}}(-2) = {\mathcal{O}}(-2) \) (noting that \( -n \) has no global sections). So if \( {\mathcal{F}}= {\mathcal{O}}(k) \) then \( {\mathcal{F}} {}^{ \vee }= {\mathcal{O}}(-k) \). Applying Serre duality yields
\[
H^i( {\mathbb{P}}^1; {\mathcal{O}}(k) ) \times H^{n-i}({\mathbb{P}}^1; {\mathcal{O}}(-2) \otimes{\mathcal{O}}(-k) ) \to {\mathbb{C}}
.\]

Note that \( H^0({\mathbb{P}}^1; {\mathcal{O}}(k)) = 0 \) for \( k<0 \), since these look like homogeneous polynomials in degree \( k \) (and there are none of negative degree), so taking \( k=-1 \) we have \( H^0({\mathbb{P}}^1; {\mathcal{O}}(-1)) = 0 \). By duality, this pairs with \( H^1({\mathbb{P}}^1; {\mathcal{O}}(-1)) \), and continuing yields a pairing:

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures}{2021-10-08_14-34.pdf_tex} };
\end{tikzpicture}
```
:::

::: {.example title="?"}
Let \( w=(s, s), v=(s), v'=(s), \eta = \emptyset, \mu = \emptyset \). Write \( \sigma = \psi: Z_w \to Z_v \), which is projection onto the first coordinates in the corresponding BSDH varieties:
\[
P_s \overset{\scriptscriptstyle {B} }{\times} P_s/B &\to P_s/B \\
[p_1, p_2B/B] &\mapsto [p_1 B/B]
.\]
Note that
\[
{\mathcal{O}}_{Z_w}( -B\overset{\scriptscriptstyle {B} }{\times} P_s /B) = \sigma^* ( {\mathcal{O}}_{Z_v}(-B/B) )
.\]
There are 3 important facts we'll revisit:

1.  A projection formula,
2.  Lemma 8.1.5,
3.  The Leray spectral sequence.
:::

# Monday, October 11

::: {.remark}
Chapter 8: actually equivariant \( {\mathsf{K}}{\hbox{-}} \)theory without saying so! Also deals with Demazure operators. Goal: show that \( X^Y_w \) is normal.
:::

::: {.definition title="Normal varieties"}
Let \( X\in {\mathsf{Var}}_{/ {k}}  \) be irreducible, then \( X \) is **normal** at \( x\in X \) iff \( {\mathfrak{m}}_x \coloneqq{\mathcal{O}}_{X, x} \) is integrally closed in its field of fractions \( \operatorname{ff}({\mathfrak{m}}_x) \).
:::

::: {.remark}
Note that there are implications smooth \( \implies \) factorial \( \implies \) normal in \( {\mathsf{Var}}_{/ {k}}  \). We write \( \Sigma(X) \subseteq X \) to be the singular locus, and if \( X \) is normal then \( \operatorname{codim}_X \Sigma(X) \leq 2 \).
:::

::: {.example title="Whitney's Umbrella"}
Let \( f(x,y,z) = x^2-zy^2 \) and consider \( X \coloneqq V(f) \subseteq {\mathbb{A}}^3_{/ {{\mathbb{C}}}} \in {\mathsf{Aff}}{\mathsf{Var}}_{/ {{\mathbb{C}}}}  \). Checking normality for affine varieties just amounts to checking on regular functions, so \( X \) is normal iff \( {\mathbb{C}}[X] \hookrightarrow{\mathbb{C}}(X) \) is integrally closed. One direction involves checking that localizations are integrally closed, which is an easy exercise in commutative algebra, while the other direction is harder. Consider \( X({\mathbb{R}}) \):

```{=tex}
\begin{tikzpicture}
\fontsize{45pt}{1em} 
\node (node_one) at (0,0) { \import{/home/zack/SparkleShare/github.com/Notes/Class_Notes/2021/Fall/FlagVarieties/sections/figures}{2021-10-11_14-03.pdf_tex} };
\end{tikzpicture}
```
The claim is that \( X \) is not normal. Setting \( \xi = x/y \) is not a regular function on \( X \) since \( y \) vanishes at some points of \( X \), but \( \xi^2 = x^2/y^2 = z \in {\mathbb{C}}[X] \) is regular.
:::

::: {.remark}
Motivating question: normality is a local condition, so where can \( X \) be non-normal? There is a process of **normalization** which associates to \( X \) a unique normal variety \( \tilde X \) with a unique finite birational morphism \( \nu: \tilde X\to X \). Here *finite* means points have finite fibers and the map is proper.

Some properties: - \( \nu \) is unique.

-   \( \tilde X \xrightarrow{\nu} X \) satisfies a universal property: For \( X\to Y \) for any \( Y \) normal, then there exists a unique lift

```{=tex}
\begin{tikzcd}
    {\tilde X} \\
    \\
    X && Y
    \arrow["f", from=3-1, to=3-3]
    \arrow["\nu", from=3-1, to=1-1]
    \arrow["{\exists ! \tilde f}", dotted, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwyLCJYIl0sWzIsMiwiWSJdLFswLDAsIlxcdGlsZGUgWCJdLFswLDEsImYiXSxbMCwyLCJcXG51Il0sWzIsMSwiXFxleGlzdHMgISBcXHRpbGRlIGYiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XV0=)

> See also **Stein factorization** for proper morphisms.

-   If \( f:X\to Y \) is a birational projective morphism between irreducible varieties and \( Y \) is normal, then \( f_* {\mathcal{O}}_X = {\mathcal{O}}_Y \).

    > See also **Zariski's main theorem**.
:::

::: {.example title="?"}
Let \( X \) be the umbrella from above. Consider \( \nu(u, v) = {\left[ {uv, v, v^2} \right]} \), so \( {\mathbb{A}}^2_{/ {{\mathbb{C}}}}  \xrightarrow{\nu} X \subseteq {\mathbb{A}}^3_{/ {{\mathbb{C}}}}  \), and let \( f(x,y,z) = x^2 - zy^2 \), so \( f(uv, v, v^w) = (uv)^2 - u^2v^2 = 0 \) is a regular function on \( X \). One can check that \( \Im(\nu) \subseteq X \) so this is surjective, and the conclusion is that \( X \) is irreducible with 2-dimensional fibers. Consider the fibers of \( \nu \):

1.  \( \mathbf{x} = 0 \) yields \( \nu^{-1}(\mathbf{x}) = \left\{{ {\left[ {u, v} \right]} \in {\mathbb{A}}^2 {~\mathrel{\Big|}~}{\left[ {uv, v, u^2} \right]} = \mathbf{0}}\right\} = {\operatorname{pt}} \).
2.  \( \mathbf{x} = {\left[ {0,0, z} \right]} \) with \( z\neq 0 \) yields \( \nu^{-1}(\mathbf{x}) = \left\{{{\left[ {uv, v, u^2} \right]} = {\left[ {0,0,z} \right]}}\right\} = \left\{{p_1, p_2}\right\} \) which have nonzero 2nd coordinates, by choosing a square root of \( u \).
3.  \( \mathbf{x} = {\left[ {x,y,z} \right]} \) with \( x\neq 0 \) yields \( \nu^{-1}(\mathbf{x}) = \left\{{{\left[ {uv, v, u^2} \right]} = {\left[ {x,y,z} \right]}}\right\} \). This forces \( v=y \), and \( x = uv= uy \) which is nonzero and can be solved for \( u \), so we again get a single point \( \nu^{-1}(\mathbf{x}) = {\operatorname{pt}} \).

Note that just considering the real points misses the entire \( -z \) axis. This can be analyzed by regarding \( u,v\in {\mathbb{C}} \) as a pair of points in the same plane; then if \( u=v=0 \) corresponds to (1), \( v=0 \) with \( u \) varying yields (2) (and two-point fibers), and moving \( v \) from 0 yields (3). Here \( X \) is normal at the points in (1), but not normal in (2) and (3).

Moral: we can study singularities by looking at fibers.
:::

::: {.remark}
Next time: Schubert varieties.
:::

# Appendix: Preliminary Notions

To define

-   Sheaves
    -   Coherent sheaves
-   Complete variety
-   Homogeneous variety
-   Algebraic group
    -   Morphisms of algebraic groups
    -   Reductive group
-   Borel
-   Parabolic
-   Equivariant
-   \( {\mathbf{B}}G \)
    -   Some examples? \( {\mathbb{CP}}^\infty, {\mathbf{B}}\operatorname{GL}_n({\mathbb{R}}) \), etc.
-   \( {\mathsf{K}}{\hbox{-}} \)theory of an abelian category.
-   Segre embedding
-   Weyl group
-   Modular representation
-   Polar variety
-   Chern class
-   Borel-Moore homology
-   Relative homology
-   Ind-varieties and Ind-schemes

[^1]: So the simple reflection changes the sign of only the corresponding simple root, and preserves the sign of all other simple roots.

[^2]: See Fulton for an explicit description, taking a Plucker embedding and studying actual equations.
