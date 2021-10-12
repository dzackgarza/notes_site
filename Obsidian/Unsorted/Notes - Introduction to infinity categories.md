Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    && {b}  \\
    &&      \\
{a} && {b}
\arrow["{\operatorname{id}_b}", from=1-3, to=3-3]
\arrow["{f}"{name=0}, from=3-1, to=1-3]
\arrow["{g}"', from=3-1, to=3-3]
\arrow[Rightarrow, from=0, to=3-3, shorten <=4pt, shorten >=4pt]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    && {b} \\
    \\
    {a} &&&& {c}
    \arrow["{f}", from=3-1, to=1-3]
    \arrow["{g}", from=1-3, to=3-5]
    \arrow["{\exists h}"' {name=0, inner sep=0}, from=3-1, to=3-5, dotted]
    \arrow[Rightarrow, from=0, to=1-3, shorten <=6pt, shorten >=6pt, "\sigma"]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    && {b} \\
    &&&&& {} \\
    {a} && {a} && {b}
    \arrow["{f}"{name=0}, from=3-1, to=1-3]
    \arrow["{\exists g}", from=1-3, to=3-3, dashed]
    \arrow["{\operatorname{id}_a}"', from=3-1, to=3-3]
    \arrow["{\operatorname{id}_b}"{name=1}, from=1-3, to=3-5]
    \arrow["{\exists g}", from=3-5, to=3-3, dashed]
    \arrow[Rightarrow, "{\sigma}"', from=0, to=3-3, shorten <=4pt, shorten >=4pt]
    \arrow[Rightarrow, "{\sigma'}", from=1, to=3-3, shorten <=4pt, shorten >=4pt]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {\mathop{\mathrm{Maps}}_{\mathcal{C}}(a, b)} && {{\mathsf{Fun}}(\Delta^1, \mathcal{C})} \\
    & {} \\
    {\Delta^0} && {\mathcal{C} \times\mathcal{C}}
    \arrow["{(f, g)}", from=1-3, to=3-3]
    \arrow["{(a, b)}"', from=3-1, to=3-3]
    \arrow[from=1-1, to=3-1, dashed]
    \arrow[from=1-1, to=1-3, dashed]
    \arrow["\lrcorner"{very near start, rotate=0}, from=1-1, to=2-2, phantom]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    {\mathop{\mathrm{Maps}}_{\mathcal{C}}\qty{\left\{{a_1, \cdots, a_n}\right\}} } && {{\mathsf{Fun}}(\Delta^{n-1}, \mathcal{C})} \\
    & {} \\
    {\Delta^0} && {\mathcal{C}^n}
    \arrow[from=1-3, to=3-3]
    \arrow[from=3-1, to=3-3]
    \arrow[from=1-1, to=3-1, dashed]
    \arrow[from=1-1, to=1-3, dashed]
    \arrow["\lrcorner"{very near start, rotate=0}, from=1-1, to=2-2, phantom]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    && {\mathop{\mathrm{Maps}}_{\mathcal C}(a,b,c)} \\
    \\
    {\mathop{\mathrm{Maps}}_{\mathcal C}(b,c) \times\mathop{\mathrm{Maps}}_{\mathcal C}(a, b)} &&&& {\mathop{\mathrm{Maps}}_{\mathcal C}(a, c)}
    \arrow["{{{\partial}}_1}", from=1-3, to=3-5]
    \arrow["{f = ({{\partial}}_0, {{\partial}}_2)}"', from=1-3, to=3-1]
    \arrow["{\exists h}"', from=3-1, to=3-5, dashed]
\end{tikzcd}
\end{document}
Error on 1

{ ["2"] = exit,["3"] = 1,} 
\documentclass{standalone}
\input{/home/zack/.pandoc/custom/preamble_common}
\begin{document}
\nopagecolor
\begin{tikzcd}
    && {\Delta^2} \\
    \\
    {\Lambda_1^2} &&&& {\Delta^1}
    \arrow[from=3-1, to=1-3]
    \arrow[from=3-5, to=1-3, hook']
    \arrow[from=3-1, to=3-5, dashed]
\end{tikzcd}
\end{document}
---
date: '2020-11-28'
---

-   [[Introduction to infinity%20categories.md | #introduction-to-infinity20categories.html]]
    -   [Preliminary Definitions](#preliminary-definitions)
    -   [Equivalences](#equivalences)
    -   [Composition](#composition)
    -   [Homotopic (and Contractible Spaces of) Choices](#homotopic-and-contractible-spaces-of-choices)














Introduction to [[infinity%20categories.md | infinity%20categories.html]]
====================================================================

> These are notes roughly transcribed from <https://www.youtube.com/watch?v=3IjAy0gHRyY>

Preliminary Definitions
-----------------------

Dealing with size issues: take a [Grothendieck%20Universe) $\mathcal{U}$, which are the sets whose subsets are closed under all of the usual set operations (small](Grothendieck%20Universe)%20$/mathcal{U}$,%20which%20are%20the%20sets%20whose%20subsets%20are%20closed%20under%20all%20of%20the%20usual%20set%20operations%20(small).

::: {.remark .proofenv}
This is a specialized notion of a [[infinity%20categories.md | infinity%20categories.html]] are Kan complexes.
:::

::: {.definition .proofenv title="Functors between $\\infty\\dash$categories"}
A **functor** between two $\infty{\hbox{-}}$categories is a map between [[simplicial%20set.md | simplicial%20set.html]].
:::

::: {.remark .proofenv}
For $\mathcal{C}$ an $\infty{\hbox{-}}$category, we can define $\mathcal{C}_0$ to be the "objects" and $\mathcal{C}_1$ to be the "morphisms", although we don't have a good notion of composition yet. There will be boundary map: a 1-simplex has two boundary points, i.e. two objects $a, b \in \mathcal{C}_0$, so we can think of this as a map $f: a\to b$ where $a = {\partial}_1 f, b= {\partial}_0 f$[^1] are the first and second vertices respectively. We'll also have "degeneracy" maps going up from $\mathcal{C}_0 \to \mathcal{C}_1$, which we should think of as assigning identity morphisms to objects, or conversely that the identity morphism is the degenerate 1-simplex at an object.
:::

Equivalences
------------

::: {.definition .proofenv title="Equivalence of Morphisms"}
Given two morphisms $f, g: a\to b$ in an $\infty{\hbox{-}}$category, we say $f\simeq g$ are **equivalent** iff there is a 2-simplex filling in the following diagram:

`<p style="text-align:center;"> <img class="tikzcd" src="figures/ee5d278fb046667267aa65d87c0fe00f7c32ed9d.svg"></p>`{=html}

<https://q.uiver.app/?q=WzAsMyxbMCwyLCJhIl0sWzIsMCwiYiJdLFsyLDIsImIiXSxbMSwyLCJcXGlkX2IiXSxbMCwxLCJmIl0sWzAsMiwiZyIsMl0sWzQsMiwiIiwwLHsibGVuZ3RoIjo3MH1dXQ==>
:::

::: {.remark .proofenv}
This turns out to be an equivalence relation. Note that in an ordinary category, if two morphisms are equivalent then they are already equal.
:::

::: {.definition .proofenv title="Composition of morphisms"}
For 1-simplices $f: a\to b, g:b\to c$, a **composition** of $f$ and $g$ is a 2-simplex $\sigma$ filling in the following diagram:

`<p style="text-align:center;"> <img class="tikzcd" src="figures/d55e122c28b483d30ae89ff36228d382c5926436.svg"></p>`{=html}

<https://q.uiver.app/?q=WzAsMyxbMCwyLCJhIl0sWzQsMiwiYyJdLFsyLDAsImIiXSxbMCwyLCJmIl0sWzIsMSwiZyJdLFswLDFdLFs1LDIsIiIsMCx7Imxlbmd0aCI6NzB9XV0=>

In this case, $h \coloneqq{{\partial}}_1 \sigma$ and we write $h \simeq g\circ f$.
:::

::: {.remark .proofenv}
Note that we're not fixing a choice, but it is well-defined up to the equivalence relation we're using. This is similar to how e.g. coproducts are not baked into the structure of a category, but are instead only well-defined up to canonical isomorphism -- and in fact, this characterization is sometimes preferable.
:::

::: {.definition .proofenv title="Equivalences of objects"}
If $f: a\to b$ is a morphism in an $\infty{\hbox{-}}$category $\mathcal{C}$, then we say $f$ is an **equivalence** if there exists a morphism $g:b\to a$ such that $\operatorname{id}_a \simeq g\circ f$ and $\operatorname{id}_b \simeq f\circ g$. This is equivalent to finding 2-simplices $\sigma, \sigma'$ that fill the following two diagrams:

`<p style="text-align:center;"> <img class="tikzcd" src="figures/fd4d56e002b20deda3906c467e354754d15377d8.svg"></p>`{=html}

<https://q.uiver.app/?q=WzAsNSxbMCwyLCJhIl0sWzIsMCwiYiJdLFsyLDIsImEiXSxbNSwxXSxbNCwyLCJiIl0sWzAsMSwiZiJdLFsxLDIsIlxcZXhpc3RzIGciLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMCwyLCJcXGlkX2EiLDJdLFsxLDQsIlxcaWRfYiJdLFs0LDIsIlxcZXhpc3RzIGciLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNSwyLCJcXHNpZ21hIiwyLHsibGVuZ3RoIjo3MH1dLFs4LDIsIlxcc2lnbWEnIiwwLHsibGVuZ3RoIjo3MH1dXQ==>
:::

::: {.remark .proofenv}
This is close to what we'd require for an isomorphism in an ordinary category, but we now allow the compositions to only be "weakly equivalent" or homotopic to the identities.
:::

::: {.definition .proofenv title="Functor Categories"}
For $\mathcal{C}, \mathcal{D}$ simplicial sets, we can define a simplicial set ${\mathsf{Fun}}(\mathcal{C}, \mathcal{D})$ whose $n{\hbox{-}}$simplices are given by `
<span class="math display">
\begin{align*}  
{\mathsf{Fun}}(\mathcal{C}, \mathcal{D})_n \coloneqq\left\{{ \text{Simplicial maps } F: \mathcal{C} \times\Delta^n \to \mathcal{D}}\right\}
.\end{align*}
<span>`{=html}
:::

::: {.remark .proofenv}
Note that the 0-simplices recover functors if these are ordinary categories. If $\mathcal{D}$ is an $\infty{\hbox{-}}$category, then this functor category is again an $\infty{\hbox{-}}$category.
:::

::: {.definition .proofenv title="Morphisms of functors / natural transformations"}
A **morphism** in ${\mathsf{Fun}}(\mathcal{C}, \mathcal{D})$, say $\eta: F\to G$, is a functor $\eta: C\times\Delta^n \to \mathcal{D}$ such that `
<span class="math display">
\begin{align*}  
{ \left.{{\eta}} \right|_{{\mathcal{C} \times\left\{{0}\right\}}} } &= F \\
{ \left.{{\eta}} \right|_{{\mathcal{C} \times\left\{{1}\right\}}} } &= G
.\end{align*}
<span>`{=html} We call such an $\eta$ a **natural transformation** from $F$ to $G$.
:::

::: {.remark .proofenv}
Being an equivalence in ${\mathsf{Fun}}(\mathcal{C}, \mathcal{D})$ is equivalent to being a pointwise equivalence. I.e., $\eta$ is an equivalence iff the map $\eta_{{C}}$ given by partially applying an object of $\mathcal{C}$ (i.e. a 1-simplex $\Delta^n \to \mathcal{D}$) is an equivalence in $\mathcal{D}$ for all objects $C\in {\operatorname{Ob}}(\mathcal{C})$.
:::

::: {.definition .proofenv title="Equivalences of $\\infty\\dash$categories"}
A functor $f:\mathcal{C}\to \mathcal{D}$ of $\infty{\hbox{-}}$categories is an **equivalence** iff there exists a functor $g: \mathcal{D}\to \mathcal{C}$ and natural equivalences `
<span class="math display">
\begin{align*}  
f\circ g &\xrightarrow{\sim} \operatorname{id}_{\mathcal{D}} \\
g\circ f &\xrightarrow{\sim} \operatorname{id}_{\mathcal{C}} 
.\end{align*}
<span>`{=html} If there exists such an equivalence, we will write $\mathcal{C}\simeq\mathcal{D}$.
:::

::: {.remark .proofenv}
For ordinary categories, there is a characteristic property that is much easier to write down in general than an explicit equivalence, namely being essentially surjective and fully faithful. We need the notion of [mapping%20spaces](mapping%20spaces) to make that precise here.
:::

Composition
-----------

[mapping%20spaces](mapping%20spaces)

::: {.definition .proofenv title="Mapping Spaces"}
For $a, b\in {\operatorname{Ob}}(\mathcal{C})$, we define a simplicial set $\mathop{\mathrm{Maps}}_{\mathcal{C}}(a, b)$ as the following pullback:

`<p style="text-align:center;"> <img class="tikzcd" src="figures/6f989e0d1dcdd0a67b07953f752f7b2275180ae4.svg"></p>`{=html}

<https://q.uiver.app/?q=WzAsNSxbMCwwLCJNYXAoYSwgYikiXSxbMiwwLCJcXEZ1bihcXERlbHRhXm4sIFxcbWF0aGNhbHtDfSkiXSxbMCwyLCJcXERlbHRhXjAiXSxbMiwyLCJcXG1hdGhjYWx7Q30gXFxjcm9zcyBcXG1hdGhjYWx7Q30iXSxbMSwxXSxbMSwzXSxbMiwzLCIoYSwgYikiLDJdLFswLDIsIiIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFswLDEsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFswLDQsIiIsMCx7InN0eWxlIjp7Im5hbWUiOiJjb3JuZXIifX1dXQ==>
:::

::: {.remark .proofenv}
Here we use the fact if $F\in {\mathsf{Fun}}(\Delta^1, \mathcal{C})$, this data includes two maps $f, g: \Delta^0 \to \mathcal{C}$ given by restricting to the two vertices of $\Delta^1$. This allows us to define a map $(f, g)$ into $\mathcal{C}^2$. In that product, we also have the point $a, b$, which allows defining the bottom map $(a, b)$.

Also note that if $\mathcal{C}$ is in fact an $\infty{\hbox{-}}$category, then $\mathop{\mathrm{Maps}}_{\mathcal{C}}(a, b)$ is a Kan complex. The 0-simplices in it are precisely the morphisms in ${\mathsf{Fun}}(\Delta^n, \mathcal{C})$ with endpoints $a, b$, and there is a filling 1-simplex between any two such morphisms iff they are equivalent. We can thus conclude that `
<span class="math display">
\begin{align*}  
\pi_0 \mathop{\mathrm{Maps}}_{\mathcal{C}}(a, b) = \left\{{\text{Equivalence classes of morphism } f:a\to b}\right\}
.\end{align*}
<span>`{=html}
:::

::: {.definition .proofenv title="Fully Faithful"}
A functor $f: \mathcal{C} \to \mathcal{D}$ is **fully faithful** the induced maps `
<span class="math display">
\begin{align*}  
f_*: \mathop{\mathrm{Maps}}_{\mathcal{C}}(a, b) \to \mathop{\mathrm{Maps}}_{\mathcal{D}}(f(a), f(b))
\end{align*}
<span>`{=html} is a homotopy equivalence of Kan complexes for all pairs of objects $a, b\in {\operatorname{Ob}}(\mathcal{C})$.
:::

::: {.remark .proofenv}
Note that this does imply bijections on (equivalence classes) of morphisms in hom sets, i.e. on $\pi_0$, but in general this is much more because we are requiring an induced isomorphism on all higher homotopy groups as well.
:::

::: {.warnings .proofenv}
This is not something that can easily be checked on *just* morphisms.
:::

::: {.definition .proofenv title="Essentially Surjective"}
A functor $f:\mathcal{C}\to \mathcal{D}$ is **essentially surjective** iff for every $d\in \mathcal{D}$, there exists an object $c\in \mathcal{C}$ and an equivalence $d \simeq f(c)$.
:::

::: {.theorem .proofenv title="Characterization of equivalence of $\\infty\\dash$categories"}
A functor $f: \mathcal{C}\to \mathcal{D}$ is an equivalence iff $f$ is fully faithful and essentially surjective.
:::

::: {.definition .proofenv title="Full Subcategories"}
Let $S \subset \mathcal{C}_0$ be some subset of objects, and define $\mathcal{C}_S \subset \mathcal{C}$ as a simplicial subset given by `
<span class="math display">
\begin{align*}  
\mathcal{C}_S \coloneqq\left\{{\text{All simplices with vertices in } S}\right\}
.\end{align*}
<span>`{=html}
:::

::: {.remark .proofenv}
That this is an $\infty{\hbox{-}}$category follows from checking definitions.

If we first *saturate* $S$ under equivalence of objects, i.e. form the larger subset $\mkern 1.5mu\overline{\mkern-1.5muS\mkern-1.5mu}\mkern 1.5mu \supseteq S$ consisting of all objects in $\mathcal{C}$ which are equivalent to some object in $S$, this produces a functor `
<span class="math display">
\begin{align*}  
F: \mathcal{C}_S \hookrightarrow\mathcal{C}_{\mkern 1.5mu\overline{\mkern-1.5muS\mkern-1.5mu}\mkern 1.5mu}
,\end{align*}
<span>`{=html} which is fully faithful and essentially surjective[^2] and thus an equivalence. So if you're interested in categories up to equivalence, this replacement is always a valid move.
:::

Homotopic (and Contractible Spaces of) Choices
----------------------------------------------

::: {.remark .proofenv}
Note that the pullback construction from before seems to generalize:

`<p style="text-align:center;"> <img class="tikzcd" src="figures/60431df8eac5eb1fb7e98c7b40ffba70e55e59c7.svg"></p>`{=html}

> <https://q.uiver.app/?q=WzAsNSxbMCwwLCJNYXAoYSwgYikiXSxbMiwwLCJcXEZ1bihcXERlbHRhXm4sIFxcbWF0aGNhbHtDfSkiXSxbMCwyLCJcXERlbHRhXjAiXSxbMiwyLCJcXG1hdGhjYWx7Q30gXFxjcm9zcyBcXG1hdGhjYWx7Q30iXSxbMSwxXSxbMSwzXSxbMiwzLCIoYSwgYikiLDJdLFswLDIsIiIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFswLDEsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFswLDQsIiIsMCx7InN0eWxlIjp7Im5hbWUiOiJjb3JuZXIifX1dXQ==>

This can be thought of as the space of $n{\hbox{-}}$simplices whose vertices are at the $n+1$ given objects. We can define compositions of morphisms by taking $n=3$, and applying boundary operators yields maps

`<p style="text-align:center;"> <img class="tikzcd" src="figures/a1330f10fe297901b610d3a0ff21e3f41ae74508.svg"></p>`{=html}

> <https://q.uiver.app/?q=WzAsMyxbMiwwLCJcXE1hcF97XFxtYXRoY2FsIEN9KGEsYixjKSJdLFs0LDIsIlxcTWFwX3tcXG1hdGhjYWwgQ30oYSwgYykiXSxbMCwyLCJcXE1hcF97XFxtYXRoY2FsIEN9KGIsYykgXFxjcm9zcyBcXE1hcF97XFxtYXRoY2FsIEN9KGEsIGIpIl0sWzAsMSwiXFxiZF8xIl0sWzAsMiwiZiA9IChcXGJkXzAsIFxcYmRfMikiLDJdLFsyLDEsIlxcZXhpc3RzIGgiLDIseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=>

where the existence of $h$ follows from the fact that $f$ is an equivalence and can thus be inverted. This is induced by maps on Kan complexes

`<p style="text-align:center;"> <img class="tikzcd" src="figures/cdbe5c04773d2f6fd7e4fb55bd0d8a608f0fcf9b.svg"></p>`{=html}

<https://q.uiver.app/?q=WzAsMyxbMiwwLCJcXERlbHRhXjIiXSxbMCwyLCJcXExhbWJkYV8xXjIiXSxbNCwyLCJcXERlbHRhXjEiXSxbMSwwXSxbMiwwLCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6ImJvdHRvbSJ9fX1dLFsxLDIsIiIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==>

where we're taking the inner horn and the outer face respectively. This can be thought of as horn-filling in families.
:::

::: {.remark .proofenv}
**Why is this important?** Given two morphisms, we can pick a composition, and there are multiple ways to do so. We can then look at the middle face to define the actual composition, up to equivalence of morphisms. This relies on a choice of homotopy inverse $s$, allowing us to define a map $\circ_s$. But given an equivalence, there is a unique homotopy inverse up to homotopy, so any two choices of $s$, say $s$ and $s'$ give homotopic maps $\circ_s$ and $\circ_{s'}$. In good situations, we have even more: the space of such choices will be [[contractible%20choice.md | contractible%20choice.html]], which is stronger than there just being a homotopy between any two choices. So composition is "unique", it's just that there's not one preferred choice.
:::

::: {.remark .proofenv}
Associativity follows from a similar line of reasoning applied to $\mathop{\mathrm{Maps}}_{\mathcal{C}}(a,b,c,d)$ on four objects. Compare this to [Segal%20categories](Segal%20categories), where such spaces are part of the data: categories weakly enriched in spaces, and $\infty{\hbox{-}}$categories recover this for free. There is a way to think of $\infty{\hbox{-}}$categories as "categories enriched in Kan complexes" with a more strict condition of associativity.
:::

::: {.remark .proofenv}
We recover all of ordinary category theory when the mapping spaces are discrete. Looking at Kan complexes also yields $\infty{\hbox{-}}$categories where all of the morphisms are invertible, so these are in fact [[infinity%20groupoids.md | infinity%20groupoids.html]]. For us, "spaces" and Kan complexes are synonymous, and the $\infty{\hbox{-}}$category of spaces will be the fundamental example we run with.
:::

[^1]: This notation ${{\partial}}_i$ denotes the boundary operator that drops the $i$th vertex.

[^2]: This is purportedly "obvious": being essentially surjective is clear, and fully faithful follows from defining mapping spaces as pullbacks, and writing it out yields an equality of simplicial sets.
