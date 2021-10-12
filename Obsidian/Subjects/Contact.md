---
aliases:
- contact
- contact topology
- contact geometry
- contact structure
- contact 3-manifold
- contact manifold
---














[[../../To%20Review/2021-04-28_Contact_Topology_Notes.md | ../To%20Review/2021-04-28_Contact_Topology_Notes.html]]

Historically, the study of periodic orbits motivated the definition of [Contact.md]().

**Definition (Hyperplane Field):** A *hyperplane* field $\xi$ is a codimension 1 sub-bundle ${\mathbb{R}}^{n-1} \to \xi \to M$ of the tangent bundle ${\mathbb{R}}^n \to TM \to M$.

> See examples.

**Definition (Contact Manifold)** A smooth manifold with a hyperplane field $(M^{2n+1}, \xi)$ is *contact* iff $\xi = \ker \alpha$ for some $\alpha \in \Omega^1(M)$ where $\alpha \wedge (d\alpha)^n$ is a top/volume form in $\Omega^{2n+1}(M)$

> Note that $\lambda \wedge (d\lambda)^n = 0$ defines a foliation?

**Definition (Reeb Vector Field):** There is a canonical vector field on every contact manifold: the Reeb vector field $X$. This satisfies $\lambda(X) = 1$ and $\iota_x d\lambda = 0$.

> *Remark:* [Contact%20manifold) are cylinder-like boundaries of symplectic manifolds; namely if $M$ is contact then we can pick any $C^1$ increasing function $f: {\mathbb{R}}\to {\mathbb{R}}^+$ (e.g. $f(t) = e^t$) and obtain an exact symplectic form \$`\omega `{=tex}= d(f`\lambda`{=tex}](Contact%20manifold)%20are%20cylinder-like%20boundaries%20of%20symplectic%20manifolds;%20namely%20if%20$M$%20is%20contact%20then%20we%20can%20pick%20any%20$C^1$%20increasing%20function%20$f:%20/RR%20/to%20/RR^+$%20%20(e.g.%20$f(t)%20=%20e^t$)%20and%20obtain%20an%20exact%20symplectic%20form%20$/omega%20=%20d(f/lambda)$ on $M_C \coloneqq M \times{\mathbb{R}}$.

> Any such $f$ induces a Hamiltonian vector field on $M_C$, and the Reeb vector field is the restriction to $M \times\left\{{0}\right\}$.

Definition (Contact Form): ?

**Definition (Contact Type):** For $(W, \lambda)$ an exact [transverse) to $Y$, i.e. for every $p\in Y$, we have \$X(p) `\not`{=tex}`\in `{=tex}T_p(Y](transverse)%20to%20$Y$,%20i.e.%20for%20every%20$p/in%20Y$,%20we%20have%20$X(p)%20/not/in%20T_p(Y)$.

We say $Y$ is of **contact type** iff there is a neighborhood $U \supset Y$ and a one-form $\lambda$ with $d\lambda =  {\left.{{\omega}} \right|_{{U}} } $ making $(U, \lambda)$ of restricted contact type.

Remark: $(U, \lambda)$ is of restricted contact type iff $ {\left.{{\lambda}} \right|_{{U}} } $ is a contact form.

**Definition (Hypersurface of contact type):** For $(X, \omega)$ a symplectic manifold, a hypersurface $\Sigma \hookrightarrow X$ is of **contact-type** iff there is a contact form $\lambda$ such that $d\lambda =  {\left.{{\omega}} \right|_{{Y}} } $.

-   Not every compact 3-manifold $M$ admits a [Legendrian%20framing](Legendrian%20framing).
