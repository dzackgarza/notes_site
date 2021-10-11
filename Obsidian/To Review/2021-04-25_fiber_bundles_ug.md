---
date: "2021-04-25T02:33"
---

-   [Fiber Bundles](#fiber-bundles)
    -   [Proposition:](#proposition)
    -   [Proposition:](#proposition-1)














\#homotopy \#bundles \#fibration \#algebraic_topology

# Fiber Bundles

What is a fiber bundle? Generally speaking, it is similar to a fibration - we require the homotopy lifting property to hold, although it is not necessary that path lifting is unique.

![lifting - todo tikz](https://upload.wikimedia.org/wikipedia/en/b/b9/Homotopy_lifting_property.png)

However, it also satisfies more conditions - in particular, the condition of *local triviality*. This requires that the total space looks like a product locally, although there may some type of global monodromy. Thus with some mild conditions[^1], fiber bundles will be instances of fibrations (or alternatively, fibrations are a generalization of fiber bundles, whichever you prefer!)

As with fibrations, we can interpret a fiber bundle as "a family of $F$s indexed/parameterized by $B$s", and the general shape data of a fiber bundle is similarly given by

`<p style="text-align:center;"> <img class="tikzcd" src="figures/85cf00122420d82ee65fb8867795af4d6ad3eae2.svg"></p>`{=html}

where $B$ is the base space, $E$ is the total space, $\pi: E \to B$ is the projection map, and $F$ is "the" fiber (in this case, unique up to homeomorphism). Fiber bundles are often described in shorthand by the data $E \xrightarrow{\pi}B$, or occasionally by tuples such as $(E, \pi, B)$.

The local triviality condition is a requirement that the projection $\pi$ locally factors through the product; that is, for each open set $U\in B$, there is a homeomorphism $\varphi$ making this diagram commute:

`<p style="text-align:center;"> <img class="tikzcd" src="figures/ef3a5b8dcba171a050803b6cb715cd4811477d05.svg"></p>`{=html}

Fiber bundles may admit right-inverses to the projection map $s: B\to E$ satisfying $\pi \circ s = \operatorname{id}_B$, denoted *sections*. Equivalently, for each $b\in B$, a section is a choice of an element $e$ in the preimage $\pi^{-1}(b) \simeq F$ (i.e. the fiber over $b$). Sections are sometimes referred to as *cross-sections* in older literature, due to the fact that a choice of section yields might be schematically represented as such:

Here, we imagine each fiber as a cross-section or "level set" of the total space, giving rise to a \"foliation of $E$ by the fibers.[^2]

For a given bundle, it is generally possible to choose sections locally, but there may or may not exist globally defined sections. Thus one key question is **when does a fiber bunde admit a global section?**

A bundle is said to be *trivial* if $E = F \times B$, and so another important question is **when is a fiber bundle trivial?**

**Definition**: A fiber bundle in which $F$ is a $k{\hbox{-}}$vector space for some field $k$ is referred to as a *rank $n$ vector bundle.* When $k={\mathbb{R}}, {\mathbb{C}}$, they are denoted real/complex vector bundles respectively. A vector bundle of rank $1$ is often referred to as a *line bundle*.

**Example**: There are in fact non-trivial fiber bundles. Consider the space $E$ that can appear as the total space in a line bundle over the circle

`
<span class="math display">
\begin{align*} {\mathbb{R}}^1 \to E \to S^1\end{align*}
<span>`{=html}

That is, the total spaces that occur when a one-dimensional real vector space (i.e. a real line) is chosen at each point of $S^1$. One possibility is the trivial bundle $E \cong S^1 \times{\mathbb{R}}\cong S^1 \times I^\circ \in \text{DiffTop}$, which is an "open cylinder":

But another possibility is $E \cong M^\circ \in\text{DiffTop}$, an open Mobius band:

Here we can take the base space $B$ to be the circle through the center of the band; then every open neighborhood $U$ of a point $b\in B$ contains an arc of the center circle crossed with a vertical line segment that misses ${\partial}M$. Thus the local picture looks like $S^1 \times I^\circ$, while globally $M\not\cong S^1 \times I^\circ \in \text{Top}$.[^3]

So in terms of fiber bundles, we have the following situation


`<p style="text-align:center;"> <img class="tikzcd" src="figures/31b21e2a5eef429b26845b5245dfda05704f3bba.svg"></p>`{=html}

and thus $M$ is associated to a nontrivial line bundle over the circle.

------------------------------------------------------------------------

**Remark:** In fact, these are the only two line bundles over $S^1$. This leads us to a natural question, similar to the group extension question: **given a base $B$ and fiber $F$, what are the isomorphism classes of fiber bundles over $B$ with fiber $F$?** In general, we will find that these classes manifest themselves in homology or homotopy. As an example, we have the following result:

**Notation**: Let $I(F, B)$ denote isomorphism classes of fiber bundles of the form $F \to {-}\to B$.

## Proposition:

The set of isomorphism classes of smooth line bundles over a space $B$ satisfies the following isomorphism of abelian groups:

`
<span class="math display">
\begin{align*}I({\mathbb{R}}^1, B) \cong H^1(B; {\mathbb{Z}}_2) \in \text{Ab}\end{align*}
<span>`{=html}

in which the RHS is generated by the first Stiefel-Whitney class $w_1(B)$.

*Proof:*

*Lemma:* The structure group of a vector bundle is a general linear group. (Or orthogonal group, by Gram-Schmidt)

*Lemma:* The classifying space of $\operatorname{GL}(n, {\mathbb{R}})$ is ${\operatorname{Gr}}(n, {\mathbb{R}}^\infty)$

*Lemma*: ${\operatorname{Gr}}(n, {\mathbb{R}}^\infty) = {\mathbb{RP}}^\infty \simeq K({\mathbb{Z}}_2, 1)$

*Lemma:* For $G$ an abelian group and $X$ a CW complex, $[X, K(G, n)] \cong H^n(X; G)$

The structure group of a vector bundle can be taken to be either the general linear group or the orthogonal group, and the classifying space of both groups are homotopy-equivalent to an infinite real Grassmanian.

`
<span class="math display">
\begin{align*}
I({\mathbb{R}}^1, B) &= [B, {\mathbf{B}}\mathop{\mathrm{Aut}}_{{ \mathsf{Vect} }}({\mathbb{R}})]\\
&= [B, {\mathbf{B}}\operatorname{GL}(1, {\mathbb{R}})]\\
&= [B, {\operatorname{Gr}}_1({\mathbb{R}}^\infty)] \\
&= [B, {\mathbb{RP}}^\infty] \\
&= [B, K({\mathbb{Z}}/2, 1)] \\
&= H^1(B; {\mathbb{Z}}/2)
\end{align*}
<span>`{=html}

This is the general sort of pattern we will find - isomorphism classes of bundles will be represented by homotopy classes of maps into classifying spaces, and for nice enough classifying spaces, these will represent elements in cohomology.

**Corollary**: There are two isomorphism classes of line bundles over $S^1$, generated by the Mobius strip, since $H^1(S^1, {\mathbb{Z}}_2) = {\mathbb{Z}}_2$ (Note: this computation follows from the fact that $H_1(S^1) = {\mathbb{Z}}$ and an application of both universal coefficient theorems.)

**Note:** The Stiefel-Whitney class is only a complete invariant of *line* bundles over a space. It is generally an incomplete invariant; for higher dimensions or different types of fibers, other invariants (so-called *characteristic classes*) will be necessary.

Another important piece of data corresponding to a fiber bundle is the *structure group*, which is a subgroup of $\text{Sym}(F) \in \text{Set}$ and arises from imposing conditions on the structure of the transition functions between local trivial patches. A fiber bundle with structure group $G$ is referred to as a *$G{\hbox{-}}$bundle*.

> See next: [[2021-04-25_vector_bundles_ug | 2021-04-25_vector_bundles_ug.html]]

What is a fiber bundle? Generally speaking, it is similar to a fibration - we require the homotopy lifting property to hold, although it is not necessary that path lifting is unique. ![lifting - todo tikz](https://upload.wikimedia.org/wikipedia/en/b/b9/Homotopy_lifting_property.png)

However, it also satisfies more conditions - in particular, the condition of *local triviality*. This requires that the total space looks like a product locally, although there may some type of global monodromy. Thus with some mild conditions[^4], fiber bundles will be instances of fibrations (or alternatively, fibrations are a generalization of fiber bundles, whichever you prefer!)

As with fibrations, we can interpret a fiber bundle as "a family of $B$s indexed/parameterized by $F$s", and the general shape data of a fiber bundle is similarly given by

`latex {cmd=true, hide=true, run_on_save=true} \documentclass{standalone} \usepackage{tikz-cd} \usepackage{adjustbox} \begin{document} \adjustbox{scale=2,center}{%     \begin{tikzcd}     F \arrow[rr, hook] &  & E \arrow[dd, "\pi", two heads] \\      &  &  \\      &  & B \arrow[uu, "s", dotted, bend left]     \end{tikzcd} } \end{document}`

where $B$ is the base space, $E$ is the total space, $\pi: E \to B$ is the projection map, and $F$ is "the" fiber (in this case, unique up to homeomorphism). Fiber bundles are often described in shorthand by the data $E \xrightarrow{\pi}B$, or occasionally by tuples such as $(E, \pi, B)$.

The local triviality condition is a requirement that the projection $\pi$ locally factors through the product; that is, for each open set $U\in B$, there is a homeomorphism $\varphi$ making this diagram commute:

`latex {cmd=true, hide=true} \documentclass{standalone} \usepackage{tikz-cd} \usepackage{adjustbox} \begin{document} \adjustbox{scale=2,center}{%     \begin{tikzcd}     \pi^{-1}(U) \arrow[dd, "\pi", two heads] \arrow[rr, "\varphi", dashed] &  & U\times F \arrow[lldd, "{(a,b) \mapsto a}"] \\      &  &  \\     U &  &     \end{tikzcd} } \end{document}`

Fiber bundles may admit right-inverses to the projection map $s: B\to E$ satisfying $\pi \circ s = \operatorname{id}_B$, denoted *sections*. Equivalently, for each $b\in B$, a section is a choice of an element $e$ in the preimage $\pi^{-1}(b) \simeq F$ (i.e. the fiber over $b$). Sections are sometimes referred to as *cross-sections* in older literature, due to the fact that a choice of section yields might be schematically represented as such:

Here, we imagine each fiber as a cross-section or "level set" of the total space, giving rise to a "foliation" of $E$ by the fibers.[^5]

For a given bundle, it is generally possible to choose sections locally, but there may or may not exist globally defined sections. Thus one key question is **when does a fiber bundle admit a global section?**

A bundle is said to be *trivial* if $E = F \times B$, and so another important question is **when is a fiber bundle trivial?**

**Definition**: A fiber bundle in which $F$ is a $k{\hbox{-}}$vector space for some field $k$ is referred to as a *rank $n$ vector bundle.* When $k={\mathbb{R}}, {\mathbb{C}}$, they are denoted real/complex vector bundles respectively. A vector bundle of rank $1$ is often referred to as a *line bundle*.

**Example**: There are in fact non-trivial fiber bundles. Consider the space $E$ that can appear as the total space in a line bundle over the circle

`
<span class="math display">
\begin{align*} {\mathbb{R}}^1 \to E \to S^1\end{align*}
<span>`{=html}

That is, the total spaces that occur when a one-dimensional real vector space (i.e. a real line) is chosen at each point of $S^1$. One possibility is the trivial bundle $E \cong S^1 \times{\mathbb{R}}\cong S^1 \times I^\circ \in \text{DiffTop}$, which is an "open cylinder":

But another possibility is $E \cong M^\circ \in\text{DiffTop}$, an open Möbius band:

Here we can take the base space $B$ to be the circle through the center of the band; then every open neighborhood $U$ of a point $b\in B$ contains an arc of the center circle crossed with a vertical line segment that misses ${\partial}M$. Thus the local picture looks like $S^1 \times I^\circ$, while globally $M\not\cong S^1 \times I^\circ \in \text{Top}$.[^6]

So in terms of fiber bundles, we have the following situation `
<span class="math display">
\begin{align*}
\begin{array}
&{\mathbb{R}}&\to &~~~M &\to &S^1\\
\require{HTML} \style{display: inline-block; transform: rotate(90deg)}{=} &&~~~\require{HTML} \style{display: inline-block; transform: rotate(90deg)}{\neq} &&\require{HTML} \style{display: inline-block; transform: rotate(90deg)}{=}\\
{\mathbb{R}}&\to &S^1 \times I^\circ &\to &S^1
\end{array}
\end{align*}
<span>`{=html}

and thus $M$ is associated to a nontrivial line bundle over the circle.

------------------------------------------------------------------------

**Remark:** In fact, these are the only two line bundles over $S^1$. This leads us to a natural question, similar to the group extension question: **given a base $B$ and fiber $F$, what are the isomorphism classes of fiber bundles over $B$ with fiber $F$?** In general, we will find that these classes manifest themselves in homology or homotopy. As an example, we have the following result:

**Notation**: Let $I(F, B)$ denote isomorphism classes of fiber bundles of the form $F \to {-}\to B$.

## Proposition:

The set of isomorphism classes of smooth line bundles over a space $B$ satisfies the following isomorphism of abelian groups:

`
<span class="math display">
\begin{align*}I({\mathbb{R}}^1, B) \cong H^1(B; {\mathbb{Z}}_2) \in \text{Ab}\end{align*}
<span>`{=html}

in which the RHS is generated by the first Stiefel-Whitney class $w_1(B)$.

*Proof:*

*Lemma:* The structure group of a vector bundle is a general linear group. (Or orthogonal group, by Gram-Schmidt)

*Lemma:* The classifying space of $\operatorname{GL}(n, {\mathbb{R}})$ is ${\operatorname{Gr}}(n, {\mathbb{R}}^\infty)$

*Lemma*: ${\operatorname{Gr}}(n, {\mathbb{R}}^\infty) = {\mathbb{RP}}^\infty \simeq K({\mathbb{Z}}_2, 1)$

*Lemma:* For $G$ an abelian group and $X$ a CW complex, $[X, K(G, n)] \cong H^n(X; G)$

The structure group of a vector bundle can be taken to be either the general linear group or the orthogonal group, and the classifying space of both groups are homotopy-equivalent to an infinite real Grassmanian. `
<span class="math display">
\begin{align*}\begin{align}
I({\mathbb{R}}^1, B) &= [B, B( {\left.{{\text{(Sym$~{\mathbb{R}}$)}}} \right|_{{\text{Vect}}} } )]\\
&= [B, B(\operatorname{GL}(1, {\mathbb{R}}))]\\
&= [B, {\operatorname{Gr}}(1, {\mathbb{R}}^\infty)] \\
&= [B, {\mathbb{RP}}^\infty] \\
&= [B, K({\mathbb{Z}}_2, 1)] \\
&= H^1(B; {\mathbb{Z}}_2)
\end{align}
\end{align*}
<span>`{=html} $\hfill\blacksquare$

This is the general sort of pattern we will find - isomorphism classes of bundles will be represented by homotopy classes of maps into classifying spaces, and for nice enough classifying spaces, these will represent elements in cohomology.

**Corollary**: There are two isomorphism classes of line bundles over $S^1$, generated by the Möbius strip, since $H^1(S^1, {\mathbb{Z}}_2) = {\mathbb{Z}}_2$ (Note: this computation follows from the fact that $H_1(S^1) = {\mathbb{Z}}$ and an application of both universal coefficient theorems.)

**Note:** The Stiefel-Whitney class is only a complete invariant of *line* bundles over a space. It is generally an incomplete invariant; for higher dimensions or different types of fibers, other invariants (so-called *characteristic classes*) will be necessary.

Another important piece of data corresponding to a fiber bundle is the *structure group*, which is a subgroup of $\text{Sym}(F) \in \text{Set}$ and arises from imposing conditions on the structure of the transition functions between local trivial patches. A fiber bundle with structure group $G$ is referred to as a *$G{\hbox{-}}$bundle*.

[^1]: A fiber bundle $E \to B$ is a fibration when $B$ is paracompact.

[^2]: When $E$ is in fact a product $F\times B$, this actually is a foliation in the technical sense.

[^3]: Due to the fact that, for example, $M$ is nonorientable and orientability distinguishes topological spaces up to homeomorphism.

[^4]: A fiber bundle $E \to B$ is a fibration when $B$ is paracompact.

[^5]: When $E$ is in fact a product $F\times B$, this actually is a foliation in the technical sense.

[^6]: Due to the fact that, for example, $M$ is nonorientable and orientability distinguishes topological spaces up to homeomorphism.
