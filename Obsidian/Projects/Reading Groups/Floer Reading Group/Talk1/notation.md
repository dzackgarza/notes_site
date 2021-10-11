---
title: Notation
---














[[Floer Reading Group Fall 2020 | ../../../../Unsorted/Floer%20Reading%20Group%20Fall%202020.html]]

From the text:

-   $(W, \omega \in \Omega_2(W))$ is a (compact?) symplectic manifold

-   $C^\infty(A, B)$ is the space of smooth maps with the $C^\infty$ topology (idea: uniform convergence of a function and all derivatives on compact subsets)

-   $C^\infty_{\mathsf{loc}}(A, B)$ is the space with the $C^\infty$ uniform convergence topology on compact subsets of $A$

-   $H \in C^\infty(W; {\mathbb{R}})$ a Hamiltonian with $X_H$ its vector field.

-   $H \in C^\infty(W\times{\mathbb{R}}; {\mathbb{R}})$ given by $H_t \in C^\infty(W; {\mathbb{R}})$ is a time-dependent Hamiltonian.

-   The action functional is given by `\begin{align*}
    {\mathcal{A}}_H: {\mathcal{L}}W &\to {\mathbb{R}}\\
    x &\mapsto -\int_{{\mathbb{D}}} u^* \omega + \int_0^1 H_t(x(t)) ~dt
    \end{align*}`{=tex} where ${\mathcal{L}}W$ is the contractible loop space of $W$, $u: {\mathbb{D}}\to W$ is an extension of $x: S^1\to W$ to the disc with $u(\exp(2\pi i t)) = x(t)$.

    -   Example: $W = {\mathbb{R}}^{2n} \implies A_H(x) = \int_0^1 \qty{H_t ~dt - p~dq}$.

-   Critical points of the action functional ${\mathcal{A}}_H$ are given by orbits, i.e. contractible loops $x, y \in {\mathcal{L}}W$

-   In general, $x, y$ are two periodic orbits of $H$ of period 1.

-   The Floer equation is given by `\begin{align*}
    \frac{\partial u}{\partial s}+J(u) \frac{\partial u}{\partial t}+\operatorname{grad} H_{t}(u)=0
    .\end{align*}`{=tex} This is a first-order perturbation of the Cauchy-Riemann equations, for which solutions would be $J{\hbox{-}}$holomorphic curves.

-   Solutions are functions $u \in C^\infty({\mathbb{R}}\times S^1; W) = C^\infty({\mathbb{R}}; {\mathcal{L}}W)$

    -   They correspond to "embedded cylinders" with sides $u$ and contractible caps $x, y$ regarded as loops in $W$.

    -   They also correspond to paths in ${\mathcal{L}}W$ from $x\to y$ (precisely: trajectories of the vector field $-\operatorname{grad}{\mathcal{A}}_H$)

        ![[figures/u.png]]\

        ![[figures/image_2020-04-13-15-49-17.png]]\

        Here $u(s) \in {\mathcal{L}}W$ is a loop with value at time $t$ given by $u(s, t)$, and $\lim_{s\to - \infty} u_s(t) = x, \lim_{s\to \infty} u_s(t) = y$.

-   The energy of a solution is $E(u) = \int_{{\mathbb{R}}\times S^1} {\left\lvert {{\partial}_s u} \right\rvert}^2 ~ds dt$.

-   ${\mathcal{M}}= \left\{{u \in C^\infty({\mathbb{R}}; {\mathcal{L}}W) {~\mathrel{\Big|}~}E(u) < \infty}\right\}$ (contractible solutions of finite energy), which is compact.

-   ${\mathcal{M}}(x, y)$ is the space of solutions of the Floer equation connecting orbits $x$ and $y$.

-   $C_{\searrow}(x, y)$: `\begin{align*}
    C_{\searrow}(x, y) \coloneqq\{
    u \in C^\infty({\mathbb{R}}\times S^1; W) {~\mathrel{\Big|}~}
    &\lim_{s\to -\infty}u(s, t) = x(t),\quad 
    \lim_{s\to\infty}u(s, t) = y(t), \\
    &\left|\frac{\partial u}{\partial s}(s, t)\right| \leq K e^{-\delta|s|},\quad 
    \quad\left|\frac{\partial u}{\partial t}(s, t)-X_{H}(u)\right| \leq K e^{-\delta|s|}
    \}
    \end{align*}`{=tex} where $K, \delta > 0$ are constants depending on $u$. So `
    <span class="math display">
    \begin{align*}
    {\left\lvert {{\partial}_s u(s, t)} \right\rvert}, {\left\lvert {{\partial}_t u(s, t) - X_H(u)} \right\rvert}  \sim e^{{\left\lvert {s} \right\rvert}}
    .\end{align*}
    <span>`{=html}

From the Appendices

-   Relatively compact: has compact closure.
-   Compact operator: the image of bounded sets are relatively compact.
-   Index of an operator: $\dim \ker - \dim \operatorname{coker}$.
-   Fredholm operators: those for which the index makes sense, i.e. $\dim \ker < \infty , \dim \operatorname{coker}< \infty$.
-   Elliptic operators: generalize the Laplacian $\Delta$, coefficients of highest order derivatives are positive, principal symbol is invertible (???)
-   Locally integrable: integrable on every compact subset
-   Sobolev spaces: in dimension 1, define ${\left\lVert {u(t)} \right\rVert}_{s, p} = \sum_{i=0}^s {\left\lVert {{\partial}_t^i u(t)} \right\rVert}_{L^p}$ on $C^\infty(\mkern 1.5mu\overline{\mkern-1.5muU\mkern-1.5mu}\mkern 1.5mu)$, then take the completion and denote $W^{s, p}(\mkern 1.5mu\overline{\mkern-1.5muU\mkern-1.5mu}\mkern 1.5mu)$. Yields a distribution space, elements are functions with weak derivatives.
-   Distribution: $C_c^\infty(U) {}^{ \vee }$, the dual of the space of smooth compactly supported functions on an open set $U \subset {\mathbb{R}}^n$.
