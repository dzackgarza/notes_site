---
aliases:
- symplectic manifold
- symplectic geometry
- symplectic topology
- symplectic form
- symplectic
---

-   [Motivation](#motivation)
-   [Results](#results)














References:

-   <https://usherugamath.files.wordpress.com/2019/05/8230-s19.pdf>

**Definition (Symplectic Manifold):** Recall that $M^{2n}$ is a **symplectic manifold** iff $W$ is smooth of even dimension and admits a \^395eb1

-   closed: $d\omega = 0$
-   nondegenerate $\omega_p: T_p M \times T_p M \to {\mathbb{R}}$; $\omega_p(\mathbf{v},\mathbf{w}) = 0~~\forall \mathbf{w} \implies \mathbf{v}= 0$.
-   skew-symmetric: $\omega_p(\mathbf{v}, \mathbf{w}) = \omega_p(\mathbf{w}, \mathbf{v})$.
-   bilinear: Lifts to a map $T_pM\otimes T_P M \to {\mathbb{R}}$
-   2-form `
    <span class="math display">
    \begin{align*}
    \omega \in \Omega^2(M) = \Gamma^{\infty}(\bigwedge^2 T {}^{ \vee }M)
    .\end{align*}
    <span>`{=html}

## Motivation

There is [[flow.md | flow.html]].

Motivation for definitions: we want an "antisymmetric inner product".

-   *Closed:* The lie derivative of $\omega$ along $V_H$ is 0, i.e. $\mathcal{L}_{V_H}(\omega) = 0$.

-   *Nondegenerate:* Implies that for every $dH$ there exists a vector field $V_H$ such that $dH = \omega(V_H, {-})$.

-   *Skew-symmetry:* $H$ should be constant along flow lines, i.e. $dH(V_H) = \omega(V_H, V_H) = 0$

-   *Bilinear:* Send any form ${\left\langle {{-}},~{{-}} \right\rangle}: V\times V \to k$ to the linear map $f: V \to V {}^{ \vee }$ where $f(v) = {\left\langle {v},~{{-}} \right\rangle}$. If the pairing is nondegenerate, $\ker f = 0$, and we get an identification $V\cong V {}^{ \vee }$.

**Important Remark**: $\omega$ being nondegenerate yields $TM \cong T {}^{ \vee }M$, which can be combined with $\iota$ to obtain an isomorphism $\mathfrak{X}(M) \cong \Omega^1(M)$. So we can freely trade 1-forms for vector fields. Very useful!

**MOST IMPORTANTLY**: For any smooth functional $f: M \to {\mathbb{R}}$, we can associate to it a vector field $X_f$.

# Results

**Proposition:** $(M, \omega \in \Omega^2(M))$ is symplectic iff $\omega^n \neq 0$ everywhere (c.f. Mike Hutchings).

**Corollary:** Every symplectic manifold is orientable (since it has a nonvanishing volume form).

> **Important Remark:** Symplectic structures on smooth manifolds give us a way to generate *flows* on a manifold (by defining a Hamiltonian or a symplectic vector field).

**Definition (Exact Symplectic Manifold):** $W$ is an *exact* symplectic manifold iff there exists a 1-form $\lambda \in \Omega^1(W)$ such that $d\lambda \in \Omega^2(W)$ is non-degenerate. \^9a87d0

> **Remark**: If $(W, \lambda)$ is exact symplectic then $(W, d\lambda)$ is symplectic. $\lambda$ is sometimes referred to as a *Liouville form*.

> **Important Remark:** If $(W, \lambda)$ is exact and $H: {\mathbb{R}}\times M \to {\mathbb{R}}$ is smooth, then the *Hamiltonian flow* $\phi_H^t: M \to M$ is defined for all time and is an *exact symplectomorphism*.

**Theorem:** There are no closed (compact and boundaryless) exact symplectic manifolds.

*Proof:* `\begin{align*}
\int_{{{\partial}}M} \lambda \wedge \omega^{n-1} 
&= \int_M d(\lambda \wedge \omega^{n-1}) \\ 
&= \int_M d\lambda \wedge \omega^{n-1} + (-1)^{{\left\lvert {\lambda} \right\rvert}}\lambda\wedge d\omega^{n-1} \\
&= \int_M \omega \wedge \omega^{n-1} + (-1)^{{\left\lvert {\lambda} \right\rvert}} \lambda \wedge 0 \\
&= \int_M \omega^n \\
&= \mathrm{Vol}_{\text{Sp}}(M) \\
&> 0
,\end{align*}`{=tex}

so ${{\partial}}M \neq 0$, and thus $M$ can not be closed.

**Definition (Isotropic):** Let $\Lambda$ be the image of an embedded sphere $S^k \to W$. Then $\Lambda$ is *isotropic* iff $ {\left.{{\lambda}} \right|_{{\Lambda}} }  = 0$.

Given a [almost%20complex%20structure](almost%20complex%20structure). Reference: p 68-70 of Cannas da Silva *Lectures on Symplectic Geometry*
