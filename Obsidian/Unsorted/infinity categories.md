---
aliases:
- infinity categories
- infinity category
---

-   [References](#references)
-   [Topics](#topics)
-   [Blurbs](#blurbs)
-   [Notes](#notes)














# References

Tags: \#homotopy

-   [[Notes%20-%20Introduction%20to%20infinity%20categories.md | Notes%20-%20Introduction%20to%20infinity%20categories.html]]
-   [[Notes - Introduction to infinity categories | Notes%20-%20Introduction%20to%20infinity%20categories.html]]
-   <https://people.math.harvard.edu/~yifei/indcoh/HigherCats.pdf>
-   ![[_attachments/HarpazStableInfinityCategory2013.pdf]]

# Topics

-   [[higher%20category.md | higher%20category.html]]
-   [[Kan%20complex.md | Kan%20complex.html]]
-   [[Kan%20extension.md | Kan%20extension.html]]
-   [[simplicial%20set.md | simplicial%20set.html]]
-   [stable%20infinity%20category](stable%20infinity%20category)
-   [[infinity%20groupoids.md | infinity%20groupoids.html]]
-   [[classifying%20space.md | classifying%20space.html]]
-   [[homotopy%20type.md | homotopy%20type.html]]
-   [Kan%20fibration](Kan%20fibration)

Models: - [[quasicategory.md](quasicategory.md) - Complete [Segal%20spaces.md](Segal%20spaces.md) - [Gamma%20space.md | Gamma%20space.html]]?

Unsorted: - [Waldhausen%20S%20construction](Waldhausen%20S%20construction) for infinity categories

# Blurbs

What is an infinity category?

::: {.definition .proofenv title="$\\infty\\dash$Category"}
An $\infty{\hbox{-}}$category $\mathcal{C}$ is a (large) [[simplicial%20set.md | simplicial%20set.html]]\] $\mathcal{C}$ such that any diagram of the form

`<p style="text-align:center;"> <img class="tikzcd" src="figures/b7bd0658072b6dcd9e8e5712f97690ab406091fb.svg"></p>`{=html}

![[_attachments/Pasted%20image%2020210515015420.png]]

admits the indicated lift, where $\Lambda_i^n$ is an $i{\hbox{-}}$horn (a simplex missing the $i$th face) for $0 < i < n$.
:::

-   All inner horns are fillable, i.e. [[simplicial%20set.md | simplicial%20set.html]] are *inner* Kan complexes.
-   Different to Kan complexes, which include all $i$.

# Notes

-   ∞-categories form a (large) ∞-category.
-   The [[infinity%20groupoids.md | infinity%20groupoids.html]]
-   Given two ∞-categories $\mathsf{D}, \mathsf{C}$, there is a **functor ∞-category** ${\mathsf{Fun}}(\mathsf{D}, \mathsf{C})$.
    -   In terms of [[simplicial%20set.md | simplicial%20set.html]].
    -   Example: for a given ∞-category $\mathsf{I}$ we have the ∞-category of [presheaves) \$`{\mathsf{Fun}}`{=tex}(`\cat `{=tex}I`^{\operatorname{op}} `{=tex}, `{\infty{\hbox{-}}\mathsf{Grpd}}`{=tex}](presheaves)%20$/Fun(/cat%20I/op%20,%20/inftyGrpd)$ -In practice, ∞-categories are constructed from existing ones by constructions that automatically guarantee that the result is again an ∞-category,
    -   The construction typically uses universal properties in such a way that the resulting ∞-category is only defined up to equivalence
-   Can take a [[homotopy%20category.md | homotopy%20category.html]]
-   For each $n \geq 0$ there is a cat $\Delta[n] = { \mathcal{N}({\left\{{0 \leq 1 \leq \cdots \leq n}\right\}}) }$.
-   Commutative triangles in $\mathsf{C}$: objects in the functor category ${\mathsf{Fun}}(\Delta[2], \mathsf{C})$
-   ${ \underset{\infty}{ \mathsf{Cat}}  }\leq {\mathsf{Kan}}$: infinity categories are a subcategory of Kan complexes.

Adjunctions: ![[_attachments/Pasted%20image%2020210603191341.png) ![](_attachments/Pasted%20image%2020210603191352.png]]

![[_attachments/Pasted%20image%2020210731191442.png]]
