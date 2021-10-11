---
date: "2021-04-28 17:21:43"
tags:
- Unfiled
---

-   [Motivations](#motivations)
-   [Results](#results)
-   [Notes](#notes)
    -   [Dave's Videos](#daves-videos)
    -   [Intro Video](#intro-video)
    -   [Unsorted](#unsorted)














Tags: \#topology \#morse

# Motivations

-   Can be used to prove the high dimensional case of the generalized [[Unsorted/Generalized Poincare Conjecture | Generalized%20Poincare%20Conjecture.html]]

# Results

**Theorem**: Every compact smooth manifold admits a Morse function.

**Theorem**: [Morse%20function](Morse%20function) are **generic**: given any smooth function $f: X\to Y$, there is an arbitrarily small perturbation of $f$ that is Morse.

See [[Morse%20lemma.md | Morse%20lemma.html]]

**Theorem 3**: If $(W; M_0, M_1) \to I$ is Morse with no critical points then $W \cong_{\operatorname{Diff}} I \times M_0$

**Theorem**: If $X$ is closed and admits a Morse function with exactly 2 critical points, $X$ is homeomorphic to $S^n$.

Possibly used in Milnor's [[exotic%20sphere.md) 7-sphere (show a diffeomorphism invariant differs but admits such a Morse function | exotic%20sphere.html]]%207-sphere%20(show%20a%20diffeomorphism%20invariant%20differs%20but%20admits%20such%20a%20Morse%20function)

**Theorem**: $M$ is homotopy equivalent to a CW complex with one cell of dimension $k$ for each critical point of $f$ of [[index%20of%20a%20Morse%20function.md | index%20of%20a%20Morse%20function.html]] $k$.

![[_attachments/Pasted%20image%2020210501235532.png]]

# Notes

## Dave's Videos

-   Historic note: Morse wanted to know not the diffeomorphism type of $M$, but rather the homotopy type.

-   Definition: critical values and critical points

-   Definition: [critical%20point](critical%20point)

-   Theorem (Smale, [[h-cobordism%20theorem.md) | h-cobordism%20theorem.html]])

    -   If $X^n$ is a smooth [[cobordism.md | cobordism.html]].

-   Corollary (High-Dimensional [[Poincare%20Conjecture.md) | Poincare%20Conjecture.html]])

    -   If $X_1^n, X_2^n \cong_{\operatorname{Diff}} S^n$, then there exists an [h-cobordism](h-cobordism) between them.
    -   Proof: use algebraic topology to eliminate (cancel) critical points.

-   Definition: [[index%20of%20a%20Morse%20function.md | index%20of%20a%20Morse%20function.html]]

    -   Look at coordinate-free def?
    -   Standard form at critical points
    -   Alternatively: Hessian is non-singular at every critical point.
    -   $f^{-1}{{\partial}}Y) = {{\partial}}X$

-   Definition: Stable and generic

-   Definition: [[cobordism.md | cobordism.html]]

    -   Example: (pair of pants)
    -   Category: Objects are manifolds, morphisms are cobordisms between them

-   Consequence of theorem 3: $M_0 \cong_{\text{Diff}} M_1$ is a diffeomorphism, useful to show two things are diffeomorphic, used in higher-dimensional Poincare.

    -   Recall that this is proved by constructing a [vector%20field](vector%20field) $V$ on $W$, then using a diffeomorphism $\phi:I \times M_0 \to W$ by flowing along $V$.
    -   Can we do gradient flow in the presence of a [[metric.md | metric.html]]? \#unanswered_questions

## Intro Video

<https://www.youtube.com/watch?v=78OMJ8JKDqI>

Morse theory: handles nice singularities. Can have worse ones, covered by [catastrophe%20theory) (dynamical systems](catastrophe%20theory)%20%20(dynamical%20systems).

Importance of CW complexes: [triangulation](triangulation) of surfaces.

See [[Morse%20lemma.md | Morse%20lemma.html]]

**Morse Theorem 1:** If there are no critical points, $M_A \simeq M_B$.

![[_attachments/Pasted%20image%2020210501235559.png]]

Stable vs unstable manifolds:

![[_attachments/Pasted%20image%2020210501235734.png]]

Consider height function on torus. Circles are index 0 critical points, triangle is index 1.

![[_attachments/Pasted%20image%2020210501235700.png]]

Cancellation:

![[_attachments/Pasted%20image%2020210501235757.png) ![](_attachments/Pasted%20image%2020210501235820.png]]

Can use persistent homology to measure "importance" of critical points.

## Unsorted

<https://youtu.be/mIUi1zIUQJw?t=42>

![[_attachments/Pasted%20image%2020210501235429.png) ![](_attachments/Pasted%20image%2020210501235456.png]]

<https://youtu.be/vWFjqgb-ylQ?t=5>

-   Diffeomorphism type depends on [isotopy](isotopy) classes of attaching maps.

See [[handle%20decomposition.md | handle%20decomposition.html]]
