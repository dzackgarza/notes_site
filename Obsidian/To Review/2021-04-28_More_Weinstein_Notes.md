---
date: "2021-04-28 18:08:39"
tags:
- Unfiled
---

-   [Motivation](#motivation)














[[Subjects/Stein Manifolds | Subjects/Stein%20Manifolds.html]]

Tags: \#symplectic \#contact_topology

# Motivation

**Example (Hypersurfaces of contact type):** The level sets of a Hamiltonian on ${\mathbb{R}}^{2n} = {\operatorname{span}}_{\mathbb{R}}\left\{{\mathbf{p}, \mathbf{q}}\right\}$ given by $H = K + U$ where $K = \frac 1 2 {\left\lVert {\mathbf{p}} \right\rVert}^2$ and $U = U(\mathbf{q})$ is a function of only $\mathbf{q}$. (Usually kinetic + potential energy.)

> Remark: all hypersurfaces of contact type $(X, \omega)$ look locally like $X \hookrightarrow\mathrm{Sp}(X)$, i.e. $X$ embedded into its symplectification.

Basic Questions:

-   Basic question: when does the [[flow of a vector field](../Unsorted/flow.md) admit a [../Unsorted/periodic orbit | ../Unsorted/periodic%20orbit.html]]?
-   Does every/any vector field on a smooth manifold $M$ admit a closed orbit?
    -   Corollary: does every/any vector field on $M$ admit a fixed point?
    -   Note that if $\chi(M) \neq 0$, the [Poincare-Hopf index theorem](Poincare-Hopf%20index%20theorem) forces every vector field to have a fixed point.
-   Does every vector field on $S^3$ admit a closed orbit?
    -   Answer: no, very difficult to show, but turns out to hold for all 3-manifolds.

> *Remark*: The orbit of a [Hamiltonian flow](Hamiltonian%20flow) is contained in a single level set.

Example: Simple [Harmonic Oscillator](Harmonic%20Oscillator).

-   $K = \frac 1 2 mv^2 = \frac{p^2}{2m}$ where $p=mv$ is the momentum, given by $F = ma$
-   $U = \frac 1 2 kx^2$, given by Hooke's law
-   $H(x, p) = U + K = \frac 1 2 mv^2 = \frac{p^2}{2m} + \frac 1 2 kx^2 \sim p^2 + x^2$
-   Has "phase space" $\Phi = {\mathbb{R}}^2 = {\operatorname{span}}_{\mathbb{R}}\left\{{x, p}\right\}$, i.e. a position and momentum completely characterize the system at any fixed time.
-   Conservation of energy shows that the time evolution of the system is governed by ${\frac{\partial x}{\partial t}\,} = -{\frac{\partial H}{\partial p}\,}$ and ${\frac{\partial p}{\partial t}\,} = {\frac{\partial H}{\partial x}\,}$
    -   Corresponds to a path $\gamma: {\mathbb{R}}\to \Phi$ along which $H$ is constant, i.e. a constant energy hypersurface corresponding (roughly) to $p^2 + q^2 = \mathrm{const}$

        -   If the Hamiltonian evolved over time, this region would travel around phases space, with the *volume* of this region invariant.

**Definition (Reeb flow):**

**Definition (Reeb vector field):**
