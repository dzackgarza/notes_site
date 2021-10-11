---
date: "2021-04-28 18:07:15"
tags:
- Unfiled
---

-   [General](#general)
-   [Symplectic](#symplectic)
-   [Contact](#contact)
-   [Handles](#handles)














Links: [[Reference%20Material.md | Reference%20Material.html]]

# General

**Definition (Tangent Bundle):** $TM = {\textstyle\coprod}_{p\in M} T_pM$, which fits into the vector bundle ${\mathbb{R}}^n \to TM \to M$ so $T_p M \cong {\mathbb{R}}^n$.

$T_p M = {\operatorname{span}}_{\mathbb{R}}\left\{{\partial x_i}\right\}$

**Definition (Cotangent Bundle):** Since $T_p M$ is a vector space, we can consider its dual $T_p {}^{ \vee }M$, and similarly the cotangent bundle ${\mathbb{R}}^n \to T {}^{ \vee }M \to M$.

$T_p {}^{ \vee }M = {\operatorname{span}}_{\mathbb{R}}\left\{{dx_i}\right\}$.

**Definition (Derivative of a Map):** Recall that for any smooth function $H: M\to N$, the *derivative* of $H$ at $p\in M$ is defined by $dH_p: T_pM \to T_p N$ which we define using the derivation definition of tangent vectors: given a derivation $v\in T_p M: C^\infty(M) \to {\mathbb{R}}$, we send it to the derivation $w_v \in T_{q}M = C^\infty(M) \to {\mathbb{R}}$ where $w_v$ actson on $f\in C^\infty(M)$ by precomposition, i.e. $w_v \curvearrowright f = v(f \circ H)$.

![[_attachments/2020-02-03-10-56-11.png]]

**Definition: Fields and Forms** A section of $TM$ is a vector field, and a section of $T {}^{ \vee }M$ is a 1-form.

More generally, differential $k{\hbox{-}}$forms are in $\Omega^k(M) \coloneqq\Gamma(\Lambda^k T {}^{ \vee }M)$, i.e. sections of exterior powers of the cotangent bundle.

**Definition (Closed and Exact Forms):** Let $d_p: \Omega^p(M) \to \Omega^{p+1}(M)$ be the exterior derivative. Then a form $\omega$ is *closed* (or is a *cocycle*) iff $\omega \in \ker d_p$, and *exact* (or a *coboundary*) iff $\omega \in \operatorname{im}d_{p-1}$.

Note that closed forms are exact, since $d^2 = 0$, i.e. $\omega$ closed implies $\omega = d\lambda$ implies $d\omega = d^2 \lambda = 0$ implies $\omega$ is exact.

If $\alpha, \beta \in \Omega^p(M)$ with $\alpha-\beta$ exact, they are said to be *cohomologous*.

**Definition (Vector Field):** A *vector field* $X$ on $M$ is a section of the tangent bundle $TM \xrightarrow{\pi} M$. Recall that these form an algebra $\mathfrak{X}(M)$ under the Lie bracket.

![[_attachments/2020-02-03-20-52-40.png]]

Note that vector fields can be *time-dependent* as a section of $T(M\times I) \to M\times I$.

**Definition (Regular Value):** Let $H: M \to {\mathbb{R}}$ be a smooth function, then $c\in {\mathbb{R}}$ is a *regular value* iff for every $p\in H^{-1}(c)$, the induced map $H^*: T_pM \to T_P {\mathbb{R}}$ is surjective.

**Definition (Closed Orbit):** An *closed orbit* of a vector field $X$ on $M$ is an element in the loop space $\gamma \in \Omega M$ (equivalently a map $\gamma: S^1 \to M$) satisfying the ODE ${\frac{\partial \gamma}{\partial t}\,}(t) = X(\gamma(t))$.

> In words: the ODE says that the tangent vector at every point along the loop $\gamma$ should precisely be the tangent vector that the vector field $X$ prescribes at that point.

> Note: Every fixed point of $X$ is trivially a closed orbit.

**Definition (Flow):** A *flow* is a group homomorphism ${\mathbb{R}}\to \mathrm{Diff}(M)$ given by $t\mapsto \phi_t$. Its integral curves are given by $\gamma_p: {\mathbb{R}}\to M$ where $t\mapsto \phi_t(p)$.

> Remark: Note that $X(p) \in T_pM$ is a tangent vector at each point, so we can ask that ${\frac{\partial \phi_t}{\partial t}\,} (p) = X(\phi_t(p))$, i.e. that the tangent vectors to a flow are given by a vector field. This works locally, and can be extended globally if $X$ is compactly supported.

**Definition (Interior Product):** Let $M$ be a manifold and $X$ a vector field. The interior product is a map `\begin{align*}
\iota_X: \Omega^{p+1}(M)    &\to \Omega^p(M)    && & \\
\omega                                      &   \mapsto \iota_X \omega: \Lambda^p TM \to {\mathbb{R}}\\
& (X_1, \cdots, X_p) \to \omega (\mathbf{X}, X_1, \cdots, X_p)
.\end{align*}`{=tex}

> Note that this *contracts* a vector field with a differential form, coming from a natural pairing on $(i, j)$ tensors $V^{\otimes i}\otimes(V {}^{ \vee })^{\otimes j}$.

**Definition (Lie Derivative):**

**General definition**: For an arbitrary tensor field $T$ (a section of some tensor bundle $V \to TM^{\otimes n} \to M$, example: Riemann curvature tensor, or any differential form) and a vector field $X$ (a section of the tangent bundle $W \to TM \to M$), we can define a "derivative" of $T$ along $X$. Namely, `
<span class="math display">
\begin{align*}
(\mathcal{L}_X T)_p = \left[{\frac{\partial }{\partial t}\,} \qty{(\phi_{-t})_* T_{\phi_t(p)}} \right]_{t=0}
\end{align*}
<span>`{=html} where

-   $\phi_t$ is the 1-parameter group of diffeomorphisms induced by the flow induced by $X$,
-   $({-})_*$ is the pushforward

> This measures how a tensor field changes as we flow it along a vector field.

![[_attachments/2020-02-04-22-45-20.png]]

**Specialized definition**: If $\omega \in \Omega^{p+1}(M)$ is a differential form, we define `
<span class="math display">
\begin{align*}
\mathcal{L}_x\omega = [d, \iota_x] \omega = d(\iota_x \omega) - \iota_x(d\omega)
\end{align*}
<span>`{=html} where $d$ is the exterior product.

> This is a consequence of "Cartan's Magic Formula", not the actual definition!

# Symplectic

**Definition (Symplectic Vector Field)**: A vector field $X$ is symplectic iff $\mathcal{L}_X(\omega) = 0$.

> Remark: Then the flow $\phi_X$ preserves the symplectic structure.

**Definition (Hamiltonian Vector Field)**: If $X$ is a vector field and $\iota_X \omega$ is both closed and exact, then $X$ is a *Hamiltonian vector field*.

**Definition** Exact symplectic manifold $(M, \lambda)$, $\lambda \in \Omega^1(M)$, with $\omega = d\lambda$ for $\omega \in \Omega^2(M)$.

**Definition** Liouville vector field $X$ is the solution of ${\mathcal{L}}_X \omega = \omega$, which yields $i_x d\lambda = \lambda$ where $i_x \omega(y) \coloneqq\omega(x, y)$.

# Contact

**Definition (Overtwisted Contact Structure):** $(M, \xi)$ is *overtwisted* iff there exists an embedded disc $D^n \xrightarrow{i} M$ such that $T({{\partial}}D^n)_p \subset \xi_p$ pointwise for all $p \in {{\partial}}D^n$ and $TD^n_p$ is transverse to $\xi$ for every $p\in (D^n)^\circ$.

# Handles

**Definition (Normal Bundle):** Let $i: S \hookrightarrow M$ be an embedding, and let $N_M(S)$ denote the *normal bundle* of $S$ in $M$, which fits into an exact sequence `\begin{align*}
0 \to TS \to i^* TM \to N_M(S) \to 0
,\end{align*}`{=tex}

where $i*TM$ is the pullback:

`<p style="text-align:center;"> <img class="tikzcd" src="figures/20ae98032a327ab5a9adb908c53497ac78042295.svg"></p>`{=html}

so we can identify $N_M(S) \cong  {\left.{{TM}} \right|_{{i(S)}} } /TS$.

> Remark: We can "symplectify" this definition by requiring that the pullback of $\omega$ is constant rank.

**Definition (Tubular Neighborhood):** For $S\hookrightarrow M$ an embedded submanifold, a *tubular neighborhood* of $S$ is an embedding of the total space of a vector bundle $E \to S$ along with a smooth map $J: E \to M$ making the following diagram commute:

`<p style="text-align:center;"> <img class="tikzcd" src="figures/ff1988a2683b4a3ada518d9f0286b6d6e1092d7e.svg"></p>`{=html}

where $0_E$ is the zero section.

![[_attachments/2020-02-05-00-40-02.png]]
