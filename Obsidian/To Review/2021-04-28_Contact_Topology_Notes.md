---
date: '2021-04-28 18:07:42'
tags:
- Unfiled
---

-   [Hyperplane Fields](#hyperplane-fields)
-   [Foliations](#foliations)














[[Subjects/Contact | ../Subjects/Contact.html]]

Tags: \#topology \#contact_topology

> Convention: All manifolds discussed will be smooth, real, Hausdorff, second-countable, connected, not necessarily closed/compact, possibly with boundary.

Hyperplane Fields
=================

These are important because of their ties to *foliations*.

*Example 1 of a Hyperplane Fields:* Take $M=S^2$, so we have ${\mathbb{R}}^2 \to TS^2 \to S^2$. The tangent spaces are planes, and codimension 1 spaces are lines:

*Example 2 of a Hyperplane Fields:* Let $M = {\mathbb{R}}^3$ so $TM \cong {\mathbb{R}}^3$. Write $T_pM = {\operatorname{span}}_{\mathbb{R}}\left\{{\partial x_1, \partial x_2, \partial x_3}\right\}$ and $T_p {}^{ \vee }M = {\operatorname{span}}_{\mathbb{R}}\left\{{dx_1, dx_2, dx_3}\right\}$ locally and define $\xi$ by the condition `
<span class="math display">
\begin{align*}dx_3 = 0\end{align*}
<span>`{=html}

> Idea: no movement in the $x_3$ direction, constrained to move only in $x_1, x_2$ directions. Assigns a "horizontal" hyperplane to each point in ${\mathbb{R}}^3$.

> Remark: This is the kernel of a tangent covector at every point, i.e. a 1-form. This is a prototypical feature.

*Example 3 of a Hyperplane Fields:* For $M={\mathbb{R}}^3$, write $T {}^{ \vee }{\mathbb{R}}^3 = {\operatorname{span}}_{\mathbb{R}}\left\{{dx, dy, dz}\right\}$, and take `
<span class="math display">
\begin{align*}\omega = dz + xdy \in \Omega^1({\mathbb{R}}^3)\end{align*}
<span>`{=html} This is the "standard contact structure" on ${\mathbb{R}}^3$, and assigns hyperplanes that look like this:

> Remark: Note that this has a more twisted structure, which is what geometrically makes it contact -- no embedded (hyper) surface in ${\mathbb{R}}^3$ can have an open subset $U$ such that $\xi$ is tangent to $p$ for every $p\in U$.

Foliations
==========

> *Remark:* Foliations arise when you have a PDE (IVP or BVP) defined on an $n{\hbox{-}}$manifold $M$, with some initial/boundary conditions defined on an embedded surface, and you want to find the time evolution of that system (moving you through leaves of the foliation, think of spacetime being foliated by space-like hyperplanes in General Relativity).

**Definition (Foliation):** A *foliation* on $M$ is a hyperplane field $\xi$ satisfying one of two equivalent conditions:

1.  A family of embedded surfaces $\Sigma_i \hookrightarrow M$ such that $M = {\textstyle\coprod}_i \Sigma_i$ uniquely.
2.  $\xi$ is locally diffeomorphic to the horizontal hyperplane field $dx_n = 0$.

> Note: the foliation is usually referred to by the collection $\Sigma_i$. Can also think of this as a smooth manifold where transition maps "preserve hyperplanes", i.e. they are functions of only one variable.

The "slices" given by the surfaces are referred to as *leaves*.

*Example of a Foliation:* As in example 2, take ${\mathbb{R}}^3 = {\textstyle\coprod}_{t\in {\mathbb{R}}} ~t + H_{xy}$ where $H_{xy} = \left\{{(x,y,z) \in {\mathbb{R}}^3 {~\mathrel{\Big|}~}z=0}\right\}$ is the $xy{\hbox{-}}$plane and $t+ H_{xy} = \left\{{(x,y,z) \in {\mathbb{R}}^3 {~\mathrel{\Big|}~}t = z}\right\}$ are the vertical translates. This yields a foliation of ${\mathbb{R}}^3$ by planes.

*Example of a Foliation:* Any fiber bundle $F \to E \xrightarrow{\pi} B$ is foliated by leaves $L_b \coloneqq\left\{{b}\right\} \times\pi^{-1}(b)$.

*Example of a Foliation*: Let $T = {\mathbb{R}}^2/{\mathbb{Z}}^2$ be a flat torus and $q$ any irrational number; then lines $L_q$ of slope $q$ foliate $T$.

*Example of a Foliation:* Any nonsingular vector field $X$ on a closed manifold $M$ defines a foliation; each leaf is the orbit of a point under the flow of $X$.

*Example of a Foliation:* Take $M$ closed, $G$ a connected Lie group acting locally freely (the stabilizer of a point is a discrete subgroup of $G$). Then again $M$ is foliated by orbits of points.

*Example (The Reeb Foliation):* Define a map out of a cylinder in cylindrical coordinates `\begin{align*}
f: (D^2)^\circ \times{\mathbb{R}}&\to {\mathbb{R}}\\
(\mathbf{x}, t) &\mapsto e^{\frac{1}{1-{\left\lvert {z} \right\rvert}}} - t
.\end{align*}`{=tex}

Adding in a component ${{\partial}}D^2 \times{\mathbb{R}}\cong S^1 \times{\mathbb{R}}$ yields a foliation of $D^2 \times{\mathbb{R}}$. Then take a ${\mathbb{Z}}{\hbox{-}}$action where $z\curvearrowright(\mathbf{x}, t) = (\mathbf{x}, t+z)$; modding out by this action yields a solid torus, which still has the above foliation.

Do this to twice, gluing the two tori along their boundary to construct a copy of $S^3$, yields a foliation of $S^3$ where each leaf $L_b$ is not Hausdorff.

*Remark:* A foliation $\left\{{\Sigma_i}\right\}$ induces a decomposition on the tangent bundle of $M$, namely $TM = T(\Sigma_i) \oplus \xi$ (? check) where $\xi$ is a line bundle everywhere transverse to the $\Sigma_i$. In this situation, we say $\left\{{\Sigma_i}\right\}$ is *transversely orientable*. Whenever $\left\{{\Sigma_i}\right\}$ is transversely orientable, it can be associated uniquely to a nonsingular 1-form $\omega$. Then given an $f: M\to {\mathbb{R}}^2$ (check dimension), we can study the set of critical points $S = \left\{{p\in M {~\mathrel{\Big|}~}\omega_p \wedge df_p = 0}\right\}$.

*Remark:* A specific type of foliation that comes up in modern research are *taut* foliations, which are codimension 1 foliations $\mathcal{F} = \left\{{L_b}\right\}$ for which for every leaf $L_b$ there is a closed loop $\gamma: S^1 \to M$ intersecting $L_b$ with $\gamma$ everywhere transverse to $\mathcal{F}$.

**Theorem:** TFAE:

1.  $\mathcal{F}$ is a taut foliation.
2.  There is a flow transverse to $\mathcal{F}$ that preserves some volume form on $M$.
3.  There is a Riemannian metric on $M$ for which each leaf $L_b$ is a least-area hypersurface.
