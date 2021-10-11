---
date: 2021-04-26
tags:
- Unfiled
---














Paper: [A Guide for Computing Stable Homotopy Groups](https://arxiv.org/abs/1801.07530)

-   Main idea: certain types of "topological field theories" are classified by certain stable homotopy classes of maps between 2 specific spectra

-   Main tool: Adams spectral sequence, invented to resolve Hopf invariant one. Relates cohomology of spaces/spectra to stable homotopy

-   Mod-2 cohomology of any space is a module over the Steenrod algebra

-   Two important classes of isomorphisms: chain homotopy equivalences vs quasi-isomorphisms.

    -   Derived category inverts quasi-isomorphisms (not an equivalence relation!)
    -   Homotopy category inverts chain homotopy equivalences. In theory, easier to do.
    -   For bounded below projective chain complexes, quasi-iso implies chain homotopy equivalence, so can take derived category to be projective chain complexes with chain homotopy equivalences as morphisms

-   Analogy:

    -   Chain homotopy equivalences for modules $\iff$ homotopy equivalences
    -   Quasi-isomorphisms $\iff$ weak homotopy equivalences
    -   Derived category $\iff$ homotopy category of spectra
    -   Projective chain complexes $\iff$ CW spectra

-   Standard examples of spectra:

    -   Suspension spectrum: for any space $X$, `
        <span class="math display">
        \begin{align*}\Sigma^\infty X \coloneqq\qty{ X_0 \coloneqq X \to X_1 \coloneqq\Sigma X \to X_2 \coloneqq\Sigma^2 X \to \cdots},\end{align*}
        <span>`{=html} yields a functor $\Sigma^\infty:\text{Top} \to \text{PreSpectra}$ with adjoint $\Omega^\infty$ where $X \mapsto X_0$.
    -   $HG \coloneqq K(G, 0) \xrightarrow{\omega_0^*} K(G, 1) \to \cdots$ where we take the adjoint of the homotopy equivalences $\omega_n: K(G, n) \to \OmegaK(G, n+1)$.
    -   $K{\hbox{-}}$theory, where $K = \qty{{\mathbb{Z}}\times BU \to U \to {\mathbb{Z}}\times BU \to U \to \cdots}$ using the equivalences given by 2-fold Bott periodicity.
    -   Real $K{\hbox{-}}$theory $KO = \qty{{\mathbb{Z}}\times BO \to \cdots}$ using 8-fold Bott periodicity.
    -   Any infinite loop space $X= X_0$, i.e. where $X \simeq\Omega^k X_k$, then take $X_0 \to X_1 \to \cdots$.
    -   Function spectrum $F(X, Y) = ?$.

-   Coproduct in $\text{Top}_*$ is wedge

-   $\text{Top}_*$ is a closed symmetric monoidal category, where the symmetric monoidal product is the smash product $A \smash B$ for which there is a homeomorphism $\hom_\top(A\smash B, C) \cong \hom_\top(A, \hom_\top(B, C))$.

-   Alternate definition of hoTop/DTop as localizing equivalence: initial category receiving a functor which sends blah equivalences to isomorphisms

-   The "usual" category of spectra ios the homotopy category of spectra. Triangulated with shift functor $\Sigma({-})$ with inverse $\Omega({-})$.

-   The sphere spectrum $S^0$ is the unit for the symmetric monoidal structure, i.e. $S^0 \smash X \simeq X, F(S^0, X) \simeq X$.

-   Pushout and pullback diagrams coincide, exact triangles $X\to Y \to Z \to \Sigma X$ are equivalently fiber and cofiber sequences.

    -   $X\to Y$ is null-homotopic iff $Z \simeq Y \vee \Sigma X$.

-   Spectra as generalized homology theories: take coproducts to direct sums and exact triangles to exact sequences

    -   For $E$ a spectrum, the homology theory is $E^n(X) = \pi_n(E\smash X)$.
    -   For $E = HG$, $HG^{-}(A) = \tilde H^{-}(X; G) \cong HG^{-}(\Sigma^\infty X)$.

-   Homotopy groups are well-defined for any spectrum, can be nonzero in negative degrees

-   Connective spectra: related to stages of Whitehead tower

-   Ring spectra: cohomology theories have a multiplicative structure, gives rise to maps $H{\mathbb{Z}}\smash H{\mathbb{Z}}\to H{\mathbb{Z}}$. For any spectrum $R$ with

    -   A multiplication map $R\smash R \to R$
    -   A unit map $S^0 \to R$
    -   Require that this diagram commutes:
        ```{=tex}
        \begin{center}
        \begin{tikzcd}
        S^0 \smash R \ar[r]\ar[dr, "\simeq"] & R\smash R\ar[d] & \ar[l] R\smash S\ar[dl, "\simeq"] \\
        & R &
        \end{tikzcd}
        \end{center}
        ```
    -   Commutativity: require that the swap map commutes with multiplication

-   Thom spectra: let $\nu: E\to B$ be a real vector bundle over a space, take 1-point compactification of fibers to get the sphere bundle $\text{Sph}(E) \to B$, take the section $s(b) = \infty$ in each fiber, and define the Thom space as $B^\nu = \text{Sph}(E)/s(B)$.

    -   Take the suspension spectrum to get the Thom spectrum.

-   Virtual bundle: a formal difference of two bundles over a common base $B$

-   Model for $BO_n = \colim_{\to k} {\operatorname{Gr}}(n, {\mathbb{R}}^k)$

    -   Can take the universal bundle `
        <span class="math display">
        \begin{align*}E_n = \left\{{(V, \mathbf{x}) \in G_n \times{\mathbb{R}}^\infty {~\mathrel{\Big|}~}\mathbf{x} \in V \in G_n  }\right\} \to BO_n\end{align*}
        <span>`{=html}
    -   $MO_n$ is the associated Thom space

-   Cohomology operation of degree $k$: a natural transformation $H^*({-}; {\mathbb{Z}}/2{\mathbb{Z}}) \to H^{*+k}({-}; {\mathbb{Z}}/2{\mathbb{Z}})$. Stable if if commutes with the suspension isomorphism $H^*({-}) \cong H^{*+1}(\Sigma({-}))$.

    -   Example: Bockstein morphism, take $0\to A \to B \to C \to 0$ in abelian groups to get a LES, the connecting morphism $H^*({-}; {\mathbb{Z}}/2{\mathbb{Z}}) \to H^{*+1}({-}, {\mathbb{Z}}/2{\mathbb{Z}})$ is $\text{Sq}^1$, a stable operation of degree 1.

-   Can form ${\mathbb{RP}}^2$ as a pushout:

    ```{=tex}
    \begin{center}
    \begin{tikzcd}
    S^1 \arrow[dd] \arrow[rr] &  & D^2 \arrow[dd, dashed] \\
                              &  &                        \\
    S^1 \arrow[rr, dashed]    &  & {\mathbb{RP}}^2                 
    \end{tikzcd}
    \end{center}
    ```
    and ${\mathbb{CP}}^2$ as

    ```{=tex}
    \begin{center}
    \begin{tikzcd}
    S^3 \arrow[dd, "\eta"] \arrow[rr] &  & D^4 \arrow[dd, dashed] \\
                              &  &                        \\
    S^2 \arrow[rr, dashed]    &  & {\mathbb{CP}}^2                 
    \end{tikzcd}
    \end{center}
    ```
    where $\eta$ is the Hopf fibration.

-   Steenrod algebra ${\mathcal{A}}$: graded, non-commutative (cocommutative Hopf) ${\mathbb{F}}_2{\hbox{-}}$algebra generated in degree $k$ by stable cohomology operations of degree $k$, multiplication given by composition of operations

    -   Use Yoneda to show ${\mathcal{A}}\cong H{\mathbb{Z}}/2{\mathbb{Z}}^*(H{\mathbb{Z}}/2{\mathbb{Z}})$.
    -   Axiomatically describe squares as $\text{Sq}^k: H^*({-}; {\mathbb{Z}}/2{\mathbb{Z}}) \to H^{*+k}({-}; {\mathbb{Z}}/2{\mathbb{Z}})$.

-   Adams Spectral Sequence: in good cases, `
    <span class="math display">
    \begin{align*}E_2^{s, t} = \operatorname{Ext} _{{\mathcal{A}}}^{s, t}(H^*(X), {\mathbb{Z}}/2{\mathbb{Z}}) \implies \qty{\pi_{t-s}X}^{\smash}_2\end{align*}
    <span>`{=html}

-   Hurewicz morphism: send a map $f: S^k \to X$ to its induced map on cohomology.

-   Generalized EM spectrum: $Z \simeq HV \simeq\bigvee_{i\in I} \Sigma^i H{\mathbb{Z}}/2{\mathbb{Z}}$ where $V$ is a graded ${\mathbb{Z}}/2{\mathbb{Z}}{\hbox{-}}$vector space which is finite in every degree.

-   Idea: for $X$ a suspension spectrum of a CW complex with finitely many cells in each dimension, resolve it (Adams resolution) by a sequence of spectra $X_n$ admitting maps to generalized EM spectra.

    -   For such spectra, the Adams SS computes the 2-completion of the homotopy groups of $X$
