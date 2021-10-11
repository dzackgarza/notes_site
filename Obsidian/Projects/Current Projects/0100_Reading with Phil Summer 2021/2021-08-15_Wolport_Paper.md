-   [2021-08-06](#section)
    -   [12:37](#section-1)














# 2021-08-06

![[attachments/20210704015029%201.png]]

-   Associate a Hermitian form $\omega \coloneqq{i\over 2}(h - \mkern 1.5mu\overline{\mkern-1.5muh\mkern-1.5mu}\mkern 1.5mu) \in \Omega^{1, 1}(X)$.

-   Can always get a canonical volume form $\operatorname{vol}_M \coloneqq\omega^n/n! \in \Omega^{n, n}(M)$, which in coordinates is $(i/2)^n \operatorname{det}h_{ab} dz^I \vee\mkern 1.5mu\overline{\mkern-1.5mudz\mkern-1.5mu}\mkern 1.5mu^I$.

-   $\omega$ may or may not be closed, i.e. $d\omega = 0$. If so, $\omega$ is Kähler (and incidentally symplectic).

## 12:37

> Some notes on the following paper: <http://www2.math.umd.edu/~wmg/SymplecticNature.pdf>

-   Common symplectic forms arise as the imaginary part of a Kähler Hermitian metric.

-   Moduli spaces that admit Kähler structures, associated to a single Riemann surface $X$?

    -   The Jacobi variety (moduli space of degree 0 line bundles, so ${\operatorname{Pic}}^0(C)$ for $C$ an algebraic curve)
    -   Teichmüller space
    -   Moduli of stable vector bundles
    -   $H^1(X; {\mathbb{R}})$?

-   Complex structures of these over-spaces may vary as the complex structure of $X$ is deformed, but the symplectic structure is a topological invariant.

-   **Goal**: unify all of these examples, interpret the resulting symplectic structure as arising from an intersection pairing on $X$.

-   $S$ a closed oriented topological surface, $\pi \coloneqq\pi_1(S)$, $G$ a connected Lie group, $\mathop{\mathrm{Hom}}(\pi, G)$ the real-analytic variety of representations in the compact-open topology

    -   Note that if $G\in {\mathsf{Ab}}$ then `
        <span class="math display">
        \begin{align*}
        \mathop{\mathrm{Hom}}(\pi, G)/G = \mathop{\mathrm{Hom}}(\pi, G) = H^1(\Sigma; G)\in {\mathsf{Ab}}
        ,\end{align*}
        <span>`{=html} and is an algebraic variety if $G$ is an algebraic group.

-   $H\coloneqq\mathop{\mathrm{Hom}}(\pi, G) \in {\mathsf{G}{\hbox{-}}\mathsf{Mod}}$ where $G$ acts by composing with $\mathop{\mathrm{Inn}}(G)$.

    -   In generality, $\mathop{\mathrm{Hom}}(\pi, g) \in ({\mathop{\mathrm{Aut}}\pi}, {G}){\hbox{-}}\mathsf{biMod}$. Since $G$ acts by $\mathop{\mathrm{Inn}}(G)$, we get $H\in ({\mathop{\mathrm{Out}}\pi}, {G}){\hbox{-}}\mathsf{biMod}$.
    -   Can take $H \coloneqq\mathop{\mathrm{Hom}}(\pi, G)/G$ -- supposed to look like "outer" representations?
    -   If $G\in {\mathsf{Ab}}$ then $H \cong H^1(S; G) \in {\mathsf{Ab}}$. Under more general assumptions, $H$ admits a symplectic structure generalizing the Kähler forms on the spaces above.

-   **Main result**: The Weil-Petersson Kähler form on ${\mathcal{T}}_S$ extends to a symplectic structure on $\mathop{\mathrm{Hom}}(\pi, G)/G$ for $G = {\operatorname{PSL}}_2({\mathbb{R}})$ and ${\operatorname{PSL}}_2({\mathbb{C}})$.

    -   Also a new proof that the WP metric on ${\mathcal{T}}$ is Kähler, using periods of quadratic differentials.

-   Fact: $\mathop{\mathrm{Out}}\pi \cong \pi_0 \operatorname{Diff}(S) = {\operatorname{MCG}}(S)$. ${\mathcal{T}}_S \in \pi_0 H$ is a connected component, and ${\mathcal{T}}_S / \mathop{\mathrm{Out}}\pi$ is the moduli of complex structures on $S$.

-   $H$ is singular: pick out simple points $H^-$ whose centralizers have minimal dimension, this is a possibly non-Hausdorff topological manifold?

    > Why this condition of centralizers with minimum dimension?

    The singularities are at worst quadratic. A symplectic structure is any closed nondegenerate 2-form $\omega$ on $H^-$, then try to extend $\omega$ to all of $H$. Obstructions may live in ${\mathbf{T}}H$, the Zariski tangent space?

    -   *How do you define differential forms away from smooth manifolds..?*

-   There is a functor `
    <span class="math display">
    \begin{align*}
    \left\{{\substack{
    (G, B), \text{ Lie groups with} \\
    \text{a symmetric bilinar form on }{\mathfrak{g}}
    }}\right\}
    &\rightleftharpoons
    \left\{{\substack{
    \text{Symplectic $G{\hbox{-}}$ spaces} \\
    G \coloneqq\mathop{\mathrm{Out}}\pi
    }}\right\} \\
    (G, B) &\mapsto (\mathop{\mathrm{Hom}}(\pi,G)/G, \omega^{(B)} )
    ,\end{align*}
    <span>`{=html} where $\omega^{(B)}$ is a symplectic structure defined by $B$.

-   For $G= U_n$, $H$ is the space of stable vector bundles.

-   Use Fox calculus to write $\omega^{(B)}$ as an algebraic tensor in the algebraic coordinates on $H$ as an explicit 2-cycle no a surface.

-   Can prove that the WP metric is Kähler by showing that the canonical Hermitian metric on the space of stable rank 2 vector bundles of Chern class zero is Kähler.

-   $\mathop{\mathrm{Hom}}(\pi, G)$ equipped with the compact-open topology: the paper says $\phi_n \to \phi$ iff $\phi_n(g) \to \phi(g)$ for all $g$. This sounds like pointwise convergence, but maybe this already implies uniform convergence of $\phi_n$ somehow..? Assuming $G$ is compact maybe?

-   Remarkable fact: points of $\mathop{\mathrm{Hom}}(\pi, G)$ where $G$ does not act locally freely are precisely the singular points.

-   Algebraic coordinates: take $G^{\times 2k}$, where $\pi = \left\langle{A_i, B_i}\right\rangle_{i\leq k}/\left\langle{\prod [A_i, B_i]}\right\rangle$, then the relation $\prod [A_i, B_i] = 1$ is polynomial in the variables $A_i, B_i$. So $H$ is an algebraic variety.

-   The Zariski tangent space: $Z^1(\pi; {\mathfrak{g}}_{\operatorname{ad}_f})$ for $f\in H$, where ${\mathfrak{g}}= \operatorname{Lie}(G)$. Found by taking a path $f_t$, identified with a crossed morphism $\pi \to {\mathfrak{g}}_{\operatorname{ad}_f}$ in ${\mathsf{\pi}{\hbox{-}}\mathsf{Mod}}$. Write $f_t(x) = e^{t u(x) + O(t^2) } f(x)$, enforcing $f_t(xy) = f_t(x) f_t(y)$ yields a cocycle condition `
    <span class="math display">
    \begin{align*}
    u(xy) = u(x) + \operatorname{ad}_{f(x)} u(y)
    .\end{align*}
    <span>`{=html}

-   Can expand to `
    <span class="math display">
    \begin{align*}
    f_t = \exp\qty{tu(x) + t^2 u_2(x) + O(t^3)} f(x)
    ,\end{align*}
    <span>`{=html} and finding a 2nd order term $u_2$ reduces to solving an equation enforcing a similar homomorphism condition: `
    <span class="math display">
    \begin{align*}
    u_{2}(x)-u_{2}(x y)+\operatorname{Ad} \phi(x) u_{2}(y)=\frac{1}{2}[u(x), \text { Ad } \phi(x) u(y)]
    .\end{align*}
    <span>`{=html} The first obstruction is the following product being nonzero: `
    <span class="math display">
    \begin{align*}
    [\xi, \xi]: H^p(\pi; {\mathfrak{g}}_{\operatorname{ad}_f}) \otimes H^q(\pi; {\mathfrak{g}}_{\operatorname{ad}_f}) &\to H^2(\pi; {\mathfrak{g}}_{\operatorname{ad}_f}) \\
    x\otimes y &\mapsto {1\over 2}[ u(x), \operatorname{ad}_{f(x)}u(y)]?
    .\end{align*}
    <span>`{=html} Get an infinite series of obstructions from coefficients in Taylor series for $f(x)^{-1}f_t(x)$, each taking values in $H^2(\pi; {\mathfrak{g}}_{\operatorname{ad}_f})$. Here $\xi\in H^1(\pi, {\mathfrak{g}}_{\operatorname{ad}_f})$ is tangent to a path.

-   Can use Poincare duality to compute dimensions: `
    <span class="math display">
    \begin{align*}
    \dim H^1(\pi; {\mathfrak{g}}_{\operatorname{ad}_f}) = (2p-2) \dim G + 2\dim Z(f)
    .\end{align*}
    <span>`{=html}

-   Assume $G$ preserves a nondegenerate symmetric bilinear form $B$ on ${\mathfrak{g}}$. Get a pairing `
    <span class="math display">
    \begin{align*}
    H^1(\pi; {\mathfrak{g}}_{\operatorname{ad}_f})
    \otimes
    H^1(\pi; {\mathfrak{g}}_{\operatorname{ad}_f})
    &\to
    H^2(\pi; {\mathbb{R}}) \cong {\mathbb{R}}
    ,\end{align*}
    <span>`{=html} defined by cup product on $\pi$ and $B$ as coefficient product. Regarding $H^1$ as ${\mathbf{T}}H$, regard this as a 2-tensor $\omega^{(B)}$. Showing it is closed takes some work.

    -   Idea: view $H^1$ as de Rham cohomology of $S$ with coefficients in a flat vector bundle. Take complex $A^*(S; V)$ as $V{\hbox{-}}$valued differential forms on $S$. These are maybe sections of the form ${{\Gamma}\qty{\Omega^*_X \otimes V} }$, so locally $\omega \otimes s$ where $\omega$ is an $n{\hbox{-}}$form and $s$ is a section of $V$.

    -   de Rham theorem: $H^*(A^\bullet(S; V)) = H_{\mathrm{sing}}^*(S; V) = H_{{\mathsf{Grp}}}^*(\pi; V)$ with $S = K(\pi, 1)$.

    -   Go to a larger space ${\mathfrak{a}}$ of all connections on a certain principal $G{\hbox{-}}$bundle: ?
