---
date: "2021-04-25T02:31"
---

-   [Classifying the Homotopy Category of Spaces](#classifying-the-homotopy-category-of-spaces)
    -   [Types](#types)
    -   [Homotopy Groups](#homotopy-groups)
    -   [Eilenberg-MacLane Spaces: The Atoms of Homotopy Theory](#eilenberg-maclane-spaces-the-atoms-of-homotopy-theory)
    -   [Assembling the Atoms](#assembling-the-atoms)
    -   [Twisted Products](#twisted-products)
    -   [Postnikov Towers](#postnikov-towers)
-   [The Atoms of Homotopy Theory](#the-atoms-of-homotopy-theory)
-   [Twisted Products](#twisted-products-1)
-   [Postnikov Towers](#postnikov-towers-1)














\#homotopy \#EM_spaces \#classification \#postnikov_towers

# Classifying the Homotopy Category of Spaces

The point of this note is to reword and fill in some details in [Akhil Mathew's post](https://amathew.wordpress.com/2010/12/06/eilenberg-maclane-spaces/amp/)

## Types

To fix some terminology, if we have fixed category $\mathcal{C}$, given an object $X\in {\operatorname{Ob}}(\mathcal{C})$, we define its **$\mathcal{C}{\hbox{-}}$type** $[X]$ to be the set of all objects $X' \in {\operatorname{Ob}}(\mathcal{C})$ that admit an isomorphism $f\in \hom_{\mathcal{C}}(X, X')$. For example, in the category $\mathcal{C} = {\mathsf{Top}}$ of topological spaces and homeomorphisms, we'll say that $X$ has a unique corresponding *homeomorphism* type, where we identify $X$ with any space it is homeomorphic to. Similarly, in the homotopy category of topological spaces ${\mathsf{hoTop}}$, we identify$X$ with all spaces homotopy-equivalent to $X$, and denote the class of all such spaces $[X]$. We often abuse notation, however, and simply write $X$ in places of $[X]$.

We start off with a basic question:

::: {.question .proofenv}
Given a category $\mathcal{C}$, how much data about an object $X$ is needed to uniquely specify its $\mathcal{C}{\hbox{-}}$type $[X]$?
:::

This data, if it exists, will be referred to as a *complete set of invariants* for $\mathcal{C}$.

One example that doesn't admit an easy answer is $\mathcal{C} = {\mathsf{Top}}$, where I'm not sure if there are any clear results along these lines. In fact, I'd expect that this is the case for most categories of interest! A slightly more tractable example is $\mathcal{C} = {\mathsf{hoTop}}$, where it will turn out there is relatively small set of data that determines the homotopy type of a space completely, i.e. there does indeed exist a known complete set of invariants in this category. One critical ingredient is the computation of $\pi_*(X)$.

## Homotopy Groups

First recall that a homeomorphism induces a homotopy equivalence, and conversely if two spaces are *not* homotopy equivalent then they can not be homeomorphic. So let's reduce to this one piece of the problem: suppose we are given a pointed topological space $(X, x_0)$ (where $x_0$ is some choice of a basepoint) and we wish to compute the graded group structure of the homotopy groups `
<span class="math display">
\begin{align*}
\pi_*(X) \coloneqq\bigoplus_{j=1}^\infty \pi(X; x_0)
\end{align*}
<span>`{=html}

Why do this? The easy answer is because this is the clearest obstruction to two spaces being homotopy equivalent -- if $\pi_*(X) \neq \pi_*(X')$, then we can possibly have $X\simeq X'$, and thus $[X], [X']$ are two distinct homotopy types.

Since $\pi_*$ is functorial, any homeomorphism $f \in \hom_{{\mathsf{Top}}}(X, X')$ will induce a homotopy equivalence $f_*^h \in \hom_{{\mathsf{hoTop}}}(X, X')$ and an isomorphism $f_* \in \hom_{{\mathsf{gr}\,}{\mathsf{Grp}}}( \pi_*(X), \pi_*(X'))$ of graded groups, so this provides some invariant of homeomorphism types of spaces. However, we should be careful to note that $\pi_*$ is not a *complete* invariant of the topological type of $X$ -- that is, we can generally construct spaces $X'$ that are homotopy-equivalent to $X$ but not *homeomorphic* to $X$. They will however provide partial information that will allow us to find obstructions to homotopy equivalences and thus homeomorphisms.

Moreover, in this process we will determine what extra information is needed to in fact obtain a *complete* set of homotopy invariants for $X$. In other words, we hope to answer the question of how much data it takes to uniquely specify $[X]$, the homotopy type of $X$.

We'll restrict our attention first to the subcategory of CW complexes. Why is this a good move at this point? We have the following theorem:

::: {.theorem .proofenv title="CW Approximation"}
Todo
:::

From this, nice enough spaces $X$ will admit a weak equivalence to some CW complex $X'$, and so $\pi_*(X) \cong \pi_*(X')$. So if we're just interested in computing homotopy groups, this is a harmless step. But there is in fact a strict advantage: we have many nice tools and theorems that specifically work for CW complexes. So we implicitly work in this subcategory from here onward. The very first thing we'll do is replace $X$ with a CW complex $\tilde X$ that is homotopy-equivalent to $X$, and we'll immediately abuse notation by just writing $X$ for $\tilde X$ everywhere.

## Eilenberg-MacLane Spaces: The Atoms of Homotopy Theory

For any group $G$, suppose for a moment that there existed a space $K(G,n)$ (where $n$ is a natural numbers) satisfying `
<span class="math display">
\begin{align*}
\pi_i(K(G,n)) = \begin{cases}
G, & i = n \\
0, & \text{else}
\end{cases}
\end{align*}
<span>`{=html} where $0$ denotes the trivial group. If such a space existed, this would perhaps be the simplest type of object to work with within homotopy theory -- it has exactly one homotopy group concentrated in one dimension. We will show later that not only does such a space exist, and can be constructed in a relatively straightforward manner, but also that it is unique up to homotopy-equivalence, and are thus referred to as *Eilenberg-MacLane spaces*.

## Assembling the Atoms

For the moment, let's focus on one particular degree on homotopy groups, say $G = \pi_i(X)$. Note that for our original space, if we make the assumption that $G$ is finitely generated, we can appeal to the classification of (finitely generated) abelian groups and write $G \cong {\mathbb{Z}}^n \bigoplus_{j=1}^m {\mathbb{Z}}_{k_j}$ for some $n$ and some $m$. That is, it decomposes as a free group of rank $n$, along with a sum of finite cyclic groups with orders given by the invariant factors $k_j$. As an aside, it is perhaps worth mentioning that $\pi_i(X)$ is abelian for $n\geq 2$, so the categorical product and coproduct (here the direct sum) will coincide. This leaves the $i=1$ case; however, the fundamental group can generally be computed using more elementary methods such as covering space theory and Van Kampen's theorem.

So we've come up with the "atoms" that we might hope to build spaces out of, and we've realized that we can break any given homotopy group of $X$ into free and cyclic groups. The strategy now is to see if we can work out what kind of spaces $K({\mathbb{Z}}^n, i)$ and $K({\mathbb{Z}}_k, i)$ are, and hope we can prove a theorem that says something like $K(G_1, i) \oplus K(G_2, i) =K(G_1 \oplus G_2, i)$. If we can do this, we now have a method of constructing a space that has the same homotopy groups as $X$ in degree $i$. If we can then show something like `
<span class="math display">
\begin{align*}
\pi_i(K(G_1, j) \oplus K(G_2, k)) = \begin{cases}
G_1, & i = j \\
G_2, & i = k \\
0, & \text{else}
\end{cases}
\end{align*}
<span>`{=html} then we will be in business. Explicitly, splitting the homotopy groups of $X$ up by degree and writing `
<span class="math display">
\begin{align*}\pi_*(X) = \bigoplus_{i=1}^\infty \pi_i(X),\end{align*}
<span>`{=html} we could assemble a space $X'$ that has the exact same homotopy groups $X$ by taking `
<span class="math display">
\begin{align*}
X' = \bigvee_{i=1}^\infty K(\pi_i(X), i).
\end{align*}
<span>`{=html}

What does this buy us? It's not quite the case that $X' \simeq X$, since having isomorphic homotopy groups alone is insufficient to guarantee homotopy equivalence. A standard counterexample here are the spaces $S^2\times{\mathbb{RP}}^3$ and $S^3 \times{\mathbb{RP}}^2$; one in fact needs a single map *inducing* all of the isomorphisms on homotopy groups simultaneously for this kind of result to hold.

So the naive hope of writing $X$ as a product of simple spaces won't work. As it turns out, what we *can* get is a way to write $X$ in a way that's often referred to as a "twisted" product, which is formalized in the notion of a (Serre) fibration.

## Twisted Products

It's perhaps worth spelling out exactly what "twisted product" means here, since it's often glossed over. Suppose we have a fibration $F \hookrightarrow E \xrightarrow{p} B$ which is in fact a fiber bundle -- note that this is a strictly stronger condition, requiring the fibration to have *local trivialization*. This amounts to asking that for every open neighborhood $U \in B$, we have $p^{-1}(B) = F \times B$ up to homeomorphism. This is of course strictly weaker than requiring $E\cong F\times B$ globally, which would be denoted a trivial bundle; there may in fact be monodromy in the total space $E$ that topologically distinguishes it from this product. A primary example of this phenomenon is the Mobius bundle,

`<p style="text-align:center;"> <img class="tikzcd" src="figures/166772f14a25770bfff7b1e1811fdb1867513e75.svg"></p>`{=html}

which is a line bundle over the circle. Note that locally we do have $M \cong S^1 \times I$, but since $M$ is not homeomorphic to a cylinder, this produces a nontrivial bundle. There is instead a global "twist", arising from the fact $M$ is nonorientable and parallel-transporting a small arc in $M$ once around the core circle is not the identity map. By a somewhat non-precise abuse of notation, one might instead write something like $M \cong S^1 \rtimes_\varphi I$, indicating that this is a nontrivial bundle. One could further ask, given a base $B$ and a fiber $F$, how many distinct nontrivial bundles $F \to E \to B$ exist, which is a bit far afield for us now but leads to the rich and fruitful theory classifying spaces.

The moral of the story here is that we can generalize a product of spaces $A \times B \times C \times \cdots$ as a "twisted product" $A \rtimes_{\varphi_1} B \rtimes_{\varphi_1} C \rtimes_{\varphi_1} \cdots$ by constructing an interlocking series of fibrations. Luckily for us, our next step towards solving our original problem will involve the construction of [[Postnikov towers | ../Unsorted/Postnikov%20tower.html]], which explicitly encode how this interlocking works.

## Postnikov Towers

First I want to define exactly what a Postnikov tower is and how we can explicitly build them using CW complexes, since this is something that is treated differently among different sources.

::: {.definition .proofenv title="Postnikov Tower"}
The data is a Postnikov tower is a sequence of spaces $\left\{{X_i}\right\}$ equipped with maps $p_n: X_n \to X_{n-1}$, where each $p_n$ is a fibration, and `
<span class="math display">
\begin{align*}
\pi_i(X_n) =
\begin{cases}
\pi_i(X), & i \leq n \\
0, & i > n.
\end{cases}
\end{align*}
<span>`{=html} such that the following diagram commutes:

`<p style="text-align:center;"> <img class="tikzcd" src="figures/85e21c63060b849e3de4f4f3c8eb483707498127.svg"></p>`{=html}

The maps $k_i$ are known as the **$k{\hbox{-}}$invariants** of $X$.
:::

::: {.remark .proofenv}
Note that we have fibrations

`<p style="text-align:center;"> <img class="tikzcd" src="figures/35dec461364641b29efef561bb57453b1c1c99e0.svg"></p>`{=html}

for all $i > 1$, and so using our earlier notation we can suggestively write $X_i \cong K(\pi_{i+1}(X) \rtimes X_{i-1}$. It also turns out there is a weak equivalence $X \to \lim_i X_i$, and so carrying this out inductively allows us to write `
<span class="math display">
\begin{align*}
X \simeq K(\pi_{1}(X),2) \rtimes K(\pi_{2}(X),3) \rtimes K(\pi_{3}(X),4) \rtimes\cdots
\end{align*}
<span>`{=html}

yielding our "twisted product".
:::

This spaces can be constructed by a relatively easy process. If $X$ already has the homotopy type of a $CW$ complex, first let $X_i = X^{(i)}$, the $i{\hbox{-}}$skeleton of $X$. Since every finitely-generated group has a presentation, we can write $\pi_{i+1}(X) = \left\langle{a, b, c, \cdots}\right\rangle / \left\langle{R_1, R_2, \cdots}\right\rangle$ where $a,b,c,\cdots$ are generators and $R_i$ are relations.

The point of this note is to reword and fill in some details in [Akhil Mathew's post](https://amathew.wordpress.com/2010/12/06/eilenberg-maclane-spaces/amp/) \# The Setup

We start with a very general problem: suppose we are given a topological space $X$ and wish to compute $\pi_*(X)$. Although the homotopy groups themselves are not a complete invariant of $X$ -- that is, we can generally construct spaces that are homotopy-equivalent to $X$ but not homeomorphic -- this will get us partially there. Moreover, in this process we will determine what extra information is needed to in fact obtain a *complete* set of invariants for $X$.

The very first thing we'll do is replace $X$ with a CW complex that is homotopy-equivalent to $X$. By the CW approximation theorem, we can do this for any space $X$, and since many theorems are much nicer for CW complexes than arbitrary spaces, we implicitly work in this subcategory from here on.

For any group $G$, suppose for a moment that there existed a space $K(G,n)$ (where $n$ is a natural numbers) satisfying `
<span class="math display">
\begin{align*}
\pi_i(K(G,n)) = \begin{cases}
G, & i = n \\
0, & \text{else}
\end{cases}
\end{align*}
<span>`{=html} where $0$ denotes the trivial group. If such a space existed, this would perhaps be the simplest type of object to work with within homotopy theory -- it has exactly one homotopy group concentrated in one dimension. We will show later that not only does such a space exist, and can be constructed in a relatively straightforward manner, but also that it is unique up to homotopy-equivalence, and are thus referred to as *Eilenberg-MacLane spaces*.

# The Atoms of Homotopy Theory

For the moment, let's focus on one particular degree on homotopy groups, say $G = \pi_i(X)$. Note that for our original space, if we make the assumption that $G$ is finitely generated, we can appeal to the classification of (finitely generated) abelian groups and write $G \cong {\mathbb{Z}}^n \bigoplus_{j=1}^m {\mathbb{Z}}_{k_j}$ for some $n$ and some $m$. That is, it decomposes as a free group of rank $n$, along with a sum of finite cyclic groups with orders given by the invariant factors $k_j$. As an aside, it is perhaps worth mentioning that $\pi_i(X)$ is abelian for $n\geq 2$, so the categorical product and coproduct (here the direct sum) will coincide. This leaves the $i=1$ case; however, the fundamental group can generally be computed using more elementary methods such as covering space theory and Van Kampen's theorem.

So we've come up with the "atoms" that we might hope to build spaces out of, and we've realized that we can break any given homotopy group of $X$ into free and cyclic groups. The strategy now is to see if we can work out what kind of spaces $K({\mathbb{Z}}^n, i)$ and $K({\mathbb{Z}}_k, i)$ are, and hope we can prove a theorem that says something like $K(G_1, i) \oplus K(G_2, i) =K(G_1 \oplus G_2, i)$. If we can do this, we now have a method of constructing a space that has the same homotopy groups as $X$ in degree $i$. If we can then show something like `
<span class="math display">
\begin{align*}
\pi_i(K(G_1, j) \oplus K(G_2, k)) = \begin{cases}
G_1, & i = j \\
G_2, & i = k \\
0, & \text{else}
\end{cases}
\end{align*}
<span>`{=html} then we will be in business. Explicitly, splitting the homotopy groups of $X$ up by degree and writing `
<span class="math display">
\begin{align*}\pi_*(X) = \bigoplus_{i=1}^\infty \pi_i(X),\end{align*}
<span>`{=html} we could construct a space $X'$ that has the exact same homotopy groups $X$ by taking `
<span class="math display">
\begin{align*}X' = \bigoplus_{i=1}^\infty K(\pi_i(X), i).\end{align*}
<span>`{=html}

What does this buy us? It's not quite the case that $X' \simeq X$, since having isomorphic homotopy groups alone is insufficient to guarantee homotopy equivalence. A standard counterexample here are the spaces $S^2\times{\mathbb{RP}}^3$ and $S^3 \times{\mathbb{RP}}^2$; one in fact needs a single map *inducing* all of the isomorphisms on homotopy groups simultaneously for this kind of result to hold.

So the naive hope of writing $X$ as a product of simple spaces won't work. As it turns out, what we *can* get is a way to write $X$ in a way that's often referred to as a "twisted" product, which is formalized in the notion of a (Serre) fibration.

# Twisted Products

It's perhaps worth spelling out exactly what "twisted product" means here, since it's often glossed over. Suppose we have a fibration $F \hookrightarrow E \xrightarrow{p} B$ which is in fact a fiber bundle -- note that this is a strictly stronger condition, requiring the fibration to have *local trivialization*. This amounts to asking that for every open neighborhood $U \in B$, we have $p^{-1}(B) = F \times B$ up to homeomorphism. This is of course strictly weaker than requiring $E\cong F\times B$ globally, which would be denoted a trivial bundle; there may in fact be monodromy in the total space $E$ that topologically distinguishes it from this product. A primary example of this phenomenon is the Mobius bundle, `
<span class="math display">
\begin{align*}
I \hookrightarrow M \twoheadrightarrow S^1
\end{align*}
<span>`{=html}

which is a line bundle over the circle. Note that locally we do have $M \cong S^1 \times I$, but since $M$ is not homeomorphic to a cylinder, this produces a nontrivial bundle. There is instead a global "twist", arising from the fact $M$ is nonorientable and parallel-transporting a small arc in $M$ once around the core circle is not the identity map. By a somewhat non-precise abuse of notation, one might instead write something like $M \cong S^1 \rtimes_\varphi I$, indicating that this is a nontrivial bundle. One could further ask, given a base $B$ and a fiber $F$, how many distinct nontrivial bundles $F \to E \to B$ exist, which is a bit far afield for us now but leads to the rich and fruitful theory classifying spaces.

The moral of the story here is that we can generalize a product of spaces $A \times B \times C \times \cdots$ as a "twisted product" $A \rtimes_{\varphi_1} B \rtimes_{\varphi_1} C \rtimes_{\varphi_1} \cdots$ by constructing an interlocking series of fibrations. Luckily for us, our next step towards solving our original problem will involve the construction of Postnikov towers, which explicitly encode how this interlocking works.

# Postnikov Towers

First I want to define exactly what a Postnikov tower is and how we can explicitly build them using CW complexes, since this is something that is treated differently among different sources.

The data is a Postnikov tower is a sequence of spaces $\left\{{X_i}\right\}$ equipped with maps $p_n: X_n \to X_{n-1}$, where each $p_n$ is a fibration, and `
<span class="math display">
\begin{align*}
\pi_i(X_n) =
\begin{cases}
\pi_i(X), & i \leq n \\
0, & i > n.
\end{cases}
\end{align*}
<span>`{=html} such that the following diagram commutes:

`
<span class="math display">
\begin{align*}
\begin{tikzcd}
\vdots                                           &  & \vdots \arrow[d, "p_{n+2}"', two heads] \arrow[rrdddd, dotted] &  &   \\
{K(\pi_{n+2}X, n+3)} \arrow[rr, "k_{n+3}", hook] &  & X_{n+1} \arrow[d, "p_{n+1}"', two heads] \arrow[rrddd]         &  &   \\
{K(\pi_{n+1}X, n+2)} \arrow[rr, "k_{n+2}", hook] &  & X_n \arrow[rrdd]                                               &  &   \\
\vdots                                           &  & \vdots \arrow[d, "p_1"', two heads]                            &  &   \\
{K(\pi_2X, 3)} \arrow[rr, "k_3", hook]           &  & X_1 \arrow[rr]                                                 &  & X
\end{tikzcd}
\end{align*}
<span>`{=html} Note that we have fibrations `
<span class="math display">
\begin{align*}K(\pi_{i+1}(X), i+2) \to X_i \to X_{i-1}\end{align*}
<span>`{=html} for all $i > 1$, and so using our earlier notation we can suggestively write $X_i \cong K(\pi_{i+1}(X) \rtimes X_{i-1}$. It also turns out there is a weak equivalence $X \to \lim_i X_i$, and so carrying this out inductively allows us to write `
<span class="math display">
\begin{align*}
X \simeq K(\pi_{1}(X),2) \rtimes K(\pi_{2}(X),3) \rtimes K(\pi_{3}(X),4) \rtimes\cdots
\end{align*}
<span>`{=html}

yielding our "twisted product".

This spaces can be constructed by a relatively easy process. If $X$ already has the homotopy type of a $CW$ complex, first let $X_i = X^{(i)}$, the $i{\hbox{-}}$skeleton of $X$. Since every group has a presentation, we can write $\pi_{i+1}(X) = \left\langle{a, b, c, \cdots}\right\rangle / \left\langle{R_1, R_2, \cdots}\right\rangle$ where $a,b,c,\cdots$ are generators and $R_i$ are relations.
