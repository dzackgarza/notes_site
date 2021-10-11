-   [Actual Definition](#actual-definition)
-   [Notes](#notes)














-   Provides a functor to [[simplicial%20set.md | simplicial%20set.html]] `
    <span class="math display">
    \begin{align*}
    { \mathcal{N}({{-}}) }: \mathsf{Cat}&\to {\mathsf{sSet}}\\
    \mathsf{C} &\mapsto { \mathcal{N}({\mathsf{C}}) } 
    \end{align*}
    <span>`{=html}
-   After application: `
    <span class="math display">
    \begin{align*}
    { \mathcal{N}({\mathsf{C}}) }: \Delta^{\operatorname{op}}&\to {\mathsf{Set}}\\ \quad
    [n] &\mapsto {\mathsf{Fun}}([n], \mathsf{C})
    \end{align*}
    <span>`{=html}
-   So ${ \mathcal{N}({\mathsf{C}}) }({-}) = {\mathsf{Fun}}({-}, \mathsf{C})$
-   A [[simplicial%20set.md | simplicial%20set.html]] whose skeleton is
    -   ${ \mathcal{N}({\mathsf{C}}) }_0$: The objects of $x,y,z,\cdots \in \mathsf{C}$
    -   ${ \mathcal{N}({\mathsf{C}}) }_1$: Morphisms $\mathsf{C}(x, y), \mathsf{C}(y, z), \cdots$
    -   ${ \mathcal{N}({\mathsf{C}}) }_2$: Composable morphisms:
-   The nerve has sufficient data to reconstruct $\mathsf{C}$ up to isomorphism of categories.
-   ${ \mathcal{N}({{-}}) }: \mathsf{Cat}\to {\mathsf{sSet}}$ is fully faithful.
    -   Actual statement: ${ \mathcal{N}({\mathsf{C}}) }$ is a Kan complex (with a unique filler for every horn) iff $\mathsf{C}$ is a groupoid.

`<p style="text-align:center;"> <img class="tikzcd" src="figures/00046ce7af22fd78281a85423e5c052e0a4bc1e9.svg"></p>`{=html}

> <https://q.uiver.app/?q=WzAsMyxbMCwyLCJ4Il0sWzIsMiwieSJdLFsyLDAsInoiXSxbMCwxLCJmIiwyXSxbMSwyLCJnIiwyXSxbMCwyLCJnZiJdXQ==>

-   ${ \mathcal{N}({\mathsf{C}}) }_n$: tuples $f_0, f_1, \cdots, f_{n-1}$ of composable morphisms

`<p style="text-align:center;"> <img class="tikzcd" src="figures/c77efa919ade35c7b4b8861ec25fbdbd0ff554fc.svg"></p>`{=html}

> <https://q.uiver.app/?q=WzAsNixbMiwwLCJ4XzEiXSxbNCwwLCJ4XzIiXSxbNiwwLCJ4XzMiXSxbOCwwLCJcXGNkb3RzIl0sWzEwLDAsInhfbiJdLFswLDAsInhfMCJdLFswLDEsImZfMSJdLFsxLDIsImZfMiJdLFsyLDMsImZfMyJdLFszLDQsImZfe24tMX0iXSxbNSwwLCJmXzAiXV0=>

-   Alternative functor definition:
    -   Define a functor `
        <span class="math display">
        \begin{align*}
        \mathcal{P}: \mathsf{Poset}\to \mathsf{Cat}^{{\mathrm{small}}}
        \end{align*}
        <span>`{=html} which takes a [poset](poset) to its poset category, where there is a unique morphism $p\to q \iff p\leq q$.
    -   Using the definition of a [[simplicial%20set.md | simplicial%20set.html]] as a functor $\Delta^{\operatorname{op}}\to {\mathsf{Set}}$, define `
        <span class="math display">
        \begin{align*}
        { \mathcal{N}({\mathsf{C}}) }({-}) := {\mathsf{Fun}}({-}, \mathsf{C}) \circ \mathcal{P}({-}) = {\mathsf{Fun}}( \mathcal{P}({-}), \mathsf{C})
        \end{align*}
        <span>`{=html} Thus ${ \mathcal{N}({\mathsf{C}}) }([n]) = {\mathsf{Fun}}([n], \mathsf{C})$ where $[n]$ is the poset category on $(\left\{{0, 1, \cdots, n}\right\}, \leq)$.

## Actual Definition

::: {.definition .proofenv title="Nerve of a category"}
Given an ordinary category $\mathcal{C}$, define the [[nerve.md | nerve.html]] of $\mathcal{C}$ to be the simplicial set given by `
<span class="math display">
\begin{align*}  
N(\mathcal{C})_n \coloneqq\left\{{\text{Functors } F: [n] \to \mathcal{C}}\right\}
\end{align*}
<span>`{=html}

where $[n]$ is the poset category on $\left\{{1, 2, \cdots, n}\right\}$. So an $n{\hbox{-}}$simplex is a diagram of objects $X_0, \cdots, X_n \in {\operatorname{Ob}}(\mathcal{C})$ and a sequence of maps.

This defines an $\infty{\hbox{-}}$category, and there is a correspondence `
<span class="math display">
\begin{align*}  
\left\{{\substack{\text{ Functors } F: \mathcal{C} \to \mathcal{D}}}\right\}
&\iff
\left\{{\substack{\infty{\hbox{-}}\text{Functors } \widehat{F}: N(\mathcal{C}) \to N(\mathcal{D})}}\right\}
.\end{align*}
<span>`{=html} Note that taking the [[nerve.md | nerve.html]] of a category preserves the usual categorical structure, since the objects are the 0-simplices and the morphisms are the 1-simplices.
:::

# Notes

-   If $\mathsf{C}$ has any initial or terminal objects, ${ \mathcal{N}({\mathsf{C}}) }$ is contractible..?
    -   What does this mean? Define homotopy direct on ${\mathsf{sSet}}$, or take geometric realization to ${\mathsf{Top}}$..?
-   $\operatorname{im}{ \mathcal{N}({{-}}) } \hookrightarrow{\mathsf{sSet}}$ are precisely [[Segal%20spaces.md | Segal%20spaces.html]]
    -   I.e. ${ \mathcal{N}({\mathsf{C}}) }$ is a Segal space, regarding ${\mathsf{Set}}\hookrightarrow{\infty{\hbox{-}}\mathsf{Grpd}}$ as the discrete objects.
-   Is a right adjoint to [[geometric%20realization.md | geometric%20realization.html]] `
    <span class="math display">
    \begin{align*}
    { {\left\lvert {{-}} \right\rvert} }: {\mathsf{sSet}}\to \mathsf{Cat}
    \end{align*}
    <span>`{=html} Note that the nerve doesn't have an adjoint? Seemingly because it doesn't preserve colimits.
