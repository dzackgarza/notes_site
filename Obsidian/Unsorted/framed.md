---
aliases:
- framing
- parallelizable
---

-   [References](#references)
-   [Definitions](#definitions)
    -   [Results](#results)














# References

> Recommendations from Akram: Milnor-Stasheff p.148 12-b and Section 12

# Definitions

::: {.definition .proofenv title="parallelizable"}
If the tangent bundle of a manifold is trivial, the manifold is said to be **parallelizable**.
:::

-   Parallelizable/framed: a trivialization of the [[tangent%20bundle.md | tangent%20bundle.html]].
-   Equivalently, the [[section%20of%20a%20bundle.md | section%20of%20a%20bundle.html]].

## Results

-   Fact: the only parallelizable spheres are `
    <span class="math display">
    \begin{align*}
    S^0, S^1, S^3, S^7
    \end{align*}
    <span>`{=html} corresponding to ${\mathbb{R}}, {\mathbb{C}}, \mathbb{H}, \mathbb{O}$.

::: {.proposition .proofenv title="?"}
$S^1$ is parallelizable.
:::

::: {.proof .proofenv title="?"}
Let $M = S^1$, then the tangent bundle yields a rank 1 vector bundle `
<span class="math display">
\begin{align*}
{\mathbb{R}}\to TM \to M
\end{align*}
<span>`{=html} We can find a nonzero global section: the vector field `
<span class="math display">
\begin{align*}
s(x, y) := -y\,dx+ x\,dy\quad\in \Gamma( T{\mathbb{R}}^2 )
\end{align*}
<span>`{=html} restricted to $S^1$:

![[_attachments/Pasted%20image%2020210510004301.png]]
:::

> Todo:

::: {.proposition .proofenv title="?"}
$S^2$ is not parallelizable.
:::

::: {.proof .proofenv title="?"}
Let $M = S^2$, which is associated to the rank 2 vector bundle `
<span class="math display">
\begin{align*}{\mathbb{R}}^2 \to TM \to M\end{align*}
<span>`{=html}

Then $TM$ is trivial iff there are 2 independent global sections. Since there is a zero section, a second independent section must be everywhere-nonzero - however, this would be a nowhere vanishing vector field on $S^2$, which by the Hairy Ball theorem does not exist.
:::

::: {.proof .proofenv title="Alternative"}
Any such a vector field would allow a homotopy between the identity and the [antipodal%20map](antipodal%20map) on $S^2$, a contradiction.
:::

> Why is there no such map? \#unanswered_questions
