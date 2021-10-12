---
title: 'Section 8.6 - 8.8: Setup for Computing the Index'
---

-   [8.8](#section)
-   [8.7](#section-1)
-   [8.6](#section-2)
    -   [8.6.3, Part 1: R(v) is Open](#part-1-rv-is-open)
    -   [8.6.3, Part 2: R(v) is Dense in R2 (p.258)](#part-2-rv-is-dense-in-r2-p.258)
    -   [Step 1: Exclude critical points that are also multiple points](#step-1-exclude-critical-points-that-are-also-multiple-points)
        -   [A Small Ball Avoids Critical Points in the Image](#a-small-ball-avoids-critical-points-in-the-image)
    -   [Step 2: Failure of Injectivity in Small Boxes](#step-2-failure-of-injectivity-in-small-boxes)
    -   [Step 3: Final Contradiction](#step-3-final-contradiction)
    -   [The Continuation Principle](#the-continuation-principle)
    -   [Similarity Principle](#similarity-principle)
    -   [Odds and Ends](#odds-and-ends)














Tags: \#symplectic \#floer \#reading_notes \#talk

Outline - Sketch proof of 8.6.3 - Statement of Somewhere Injectivity - Statement of Continuation Principle - Statement of Similarity Principle - 8.7 - 8.8

What we're trying to prove 8.1.5: $(d{\mathcal{F}})_u$ is a Fredholm operator of index $\mu(x) - \mu(y)$.

8.8
===

-   Define `\begin{align}
    L: W^{1, p}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) \\
    Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s, t) Y
    \end{align}`{=tex}

-   By the end of 8.8: replace the Fredholm operator $L$ by an operator $L_1$ with the same *index* (not the same kernel/cokernel)

    -   Compute the index of $?$ because we can explicitly describe its kernel and cokernel

-   Use the fact $S: {\mathbb{R}}\times S^1 \to \operatorname{Mat}(2n;{\mathbb{R}})$ and `
    <span class="math display">
    \begin{align*}
    S(s, t) \overset{s\to\pm\infty}\to S^{\pm}(t)
    \end{align*}
    <span>`{=html} which are symmetric.

    -   Take corresponding symplectic paths $R^\pm: I \to {\mathsf{Sp}}(2n; {\mathbb{R}})$.
    -   If `
        <span class="math display">
        \begin{align*}
        R^\pm \in {\mathcal{S}}\coloneqq\left\{{R: I \to {\mathsf{Sp}}(2n; {\mathbb{R}}) {~\mathrel{\Big|}~}R(0) = \operatorname{id}, \operatorname{det}(R(1) - \operatorname{id})\neq 0}\right\}
        ,\end{align*}
        <span>`{=html} then $L$ is a Fredholm operator

-   Theorem 8.8.1: $\mathop{\mathrm{ind}}(L) = \mu(R^-(t)) - \mu(R^+(t)) = \mu(x) - \mu(y)$.

-   Prop 8.8.2: Define an operator `\begin{align*}
    L_{1}: W^{1, p}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) \\
    Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
    \end{align*}`{=tex} where $S: {\mathbb{R}}\to\operatorname{Mat}(2n; {\mathbb{R}})$ is a path of diagonal matrices depending on $\mathop{\mathrm{ind}}(R^\pm(t))$; then $\mathop{\mathrm{ind}}(L_1) = \mathop{\mathrm{ind}}(L)$.

    -   Then $\mathop{\mathrm{ind}}(L_1) = \mathop{\mathrm{ind}}(R^-(t)) - \mathop{\mathrm{ind}}(R^+(t))$.
    -   Idea of proof: take a homotopy of operators `\begin{align*}
        L_{\lambda}: W^{1, p}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) \\
        Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S_{\lambda}(s, t) Y
        \end{align*}`{=tex} which are all Fredholm and all have the same index, then take time 1.
    -   Use the fact that $\operatorname{coker}L_1 \cong \ker L_1^*$, and we can explicitly write the adjoint of $L_1$.
    -   Get a formula that resembles the Morse case: counting the number of eigenvalues that change sign.

-   Summary:

    -   Replace $L$ by $L_0$, which is modified in a neighborhood of zero in the $s$ variable. Use invariance of index under small perturbations.
    -   Homotope $L_0$ to $L_1$, where $S$ is replaced by a diagonal matrix $S(s)$ that is a constant matrix outside the neighborhood of zero in $s$. Use invariance of index under homotopy.

8.7
===

-   Goal: Toward 8.1.5, show that $L \coloneqq\mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu+ S(s, t): W^{1, p} \to L^p$ is a Fredholm operator, i.e. the index makes sense (finite-dimensional kernel and cokernel).

-   Statement: if $\operatorname{det}(\operatorname{id}- R^\pm_1) \neq 0$ then the operator `\begin{align*}
    L: W^{1, p}({\mathbb{R}}\times S^1; {\mathbb{R}}^{2n}) \to L^p({\mathbb{R}}\times S^1; {\mathbb{R}}^{2n})\\
    .\end{align*}`{=tex} given by $L = \mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu+ S(s, t)$ is Fredholm for every $p>1$. \> Most of the work goes into showing that $\dim(\ker L) < \infty$ and $\operatorname{im}(L)$ is closed.

-   $\dim \ker L < \infty$:

    -   Use elliptic regularity and consequence of Calderón-Zygmund inequality.
        -   Elliptic regularity: If $Y \in L^p$ is a weak solution of the linearized Floer equation $LY = 0$, then $Y\in W^{1, p}$ and is smooth.
        -   Consequence: If $Y\in W^{1, p}$ and $p>1$ then ${\left\lVert {Y} \right\rVert}_{W^{1, p}} = O({\left\lVert {LY} \right\rVert}_{L^p} + {\left\lVert {Y} \right\rVert}_{L^p} )$.
    -   Case 1: $S(s, t) = S(t)$ doesn't depend on $s$.
        -   Then $L$ is a bijective for every $p>1$
        -   Invertibility allows replacing the weak solution $Y \in L^p({\mathbb{R}}\times S^1; \cdot)$ with $Y\in L^p([-M, M] \times S^1, \cdot)$ for $M\gg 0$
        -   Restriction $\mkern 1.5mu\overline{\mkern-1.5muL\mkern-1.5mu}\mkern 1.5mu: W^{1, p}({\mathbb{R}}\times S^1) \to L^p([-M, M] \times S^1)$ is a compact operator, it is "semi-Fredholm"
        -   Apply a theorem: if the inequality is satisfies, the kernel is finite-dimensional and the image is closed.

-   $\dim \operatorname{coker}L < \infty$:

    -   Take `\begin{align*}
        L: W^{1, p}({\mathbb{R}}\times S^1; {\mathbb{R}}^{2n}) \to L^p({\mathbb{R}}\times S^1; {\mathbb{R}}^{2n})\\
        \end{align*}`{=tex} and consider the adjoint operator `\begin{align*}
        L^{\star}: W^{1, q}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \longrightarrow L^{q}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right)
        \end{align*}`{=tex} where $p^{-1}+ q^{-1}= 1$, which appeared in 8.5.1.
    -   Use the fact that $\operatorname{coker}L = \ker L^\star$
    -   Show $\dim \ker L^\star < \infty$ since it satisfies the conditions of 8.7.4.

8.6
===

-   Start with $u \in C^\infty({\mathbb{R}}\times S^1; W)$ a solution to the equation `
    <span class="math display">
    \begin{align*}{\frac{\partial u}{\partial s}\,} + J_1(t, u) \qty{{\frac{\partial u}{\partial t}\,} - X(t, u)} = 0\end{align*}
    <span>`{=html}

-   "Unwrap the cylinder" to a map $v\in C^\infty({\mathbb{R}}^2; W)$ which is a solution to $\qty{{\frac{\partial }{\partial s}\,} + J{\frac{\partial }{\partial t}\,}}u = 0$

    -   No longer periodic; instead $v(s, t+1) = \phi(v(s, t))$.
    -   Built by precomposing $u$ with the inverse flow $\psi_t$ of $X_t$
    -   Conjugate original $J$ with $\psi$ to get $J_1$

-   Define regular points $R(v)$ as ${\frac{\partial }{\partial s}\,}v \neq 0$ with injectivity condition: $s \neq s' \implies v(s, t) \neq v(s', t)$.

-   Prove "injectivity result": $R(v) \subseteq {\mathbb{R}}^2$ is dense and open

8.6.3, Part 1: R(v) is Open
---------------------------

-   Prove $R(v)$ is open: contradict zero derivative
    -   Proof uses sequential characterization of being a closed set
    -   Construct a sequence in the complement converging to a regular point
    -   Since first two conditions of $R(v)$ are open, extract a sequence of points failing injectivity
    -   Show it is bounded
    -   Apply Bolzano-Weierstrass to extract a convergent subsequence
    -   Use quotient definition of derivative, show it is zero, contradiction.

8.6.3, Part 2: R(v) is Dense in R2 (p.258)
------------------------------------------

Step 1: Exclude critical points that are also multiple points
-------------------------------------------------------------

-   Definition: *Multiple points* are where injectivity fails in $s$.
    -   Characterize $R(v)$ as those in $C(v)^c$ that are not multiples.
-   Suffices to show $R(v)$ is dense in $C(v)^c$ -- Every $(s, t) \in C(v)^c \subseteq {\mathbb{R}}^2$ is the limit of $(s_n, t) \in C(v)^c$ where $v(s_n, t) \neq x^\pm(t)$.
    -   Why? $v(s + {1\over n}, t) = x^+(t) \implies {\frac{\partial v}{\partial s}\,} = 0 \implies (s+{1\over n}, t)\in C(v)$.
    -   Then suffices to show every $(s_0, t_0) \in {\mathbb{R}}\times I$ with (importantly) `\begin{align}
        {\frac{\partial v}{\partial s}\,}{(s_0, t_0)} \neq 0 {\quad \operatorname{and} \quad} v(s_0, t_0) \neq x^{\pm}(t_0)
        .\end{align}`{=tex} {\#eq:eq1} is the limit of a sequence of points in $R(v)$.
    -   Proceed by assuming this is not the case, toward a contradiction.

### A Small Ball Avoids Critical Points in the Image

-   Surround every point $(s_0, t_0)$ by a ball $B_{\varepsilon}(s_0, t_0)$ missing $R(v)$

-   We can choose ${\varepsilon}$ small enough and $M\gg 1$ big enough (defining $\mathbf{M} = [-M, M] \subset {\mathbb{R}}$) such that

    1.  Translate to far enough to get a point outside the image of the ball: `\begin{align*}
        (s, t) \in \mathbf{M}^c &\times[t_0-{\varepsilon}, t_0+{\varepsilon}]\subset {\mathbb{R}}\times I \implies \\
          v(s, t) \cap v(B_{\varepsilon}(s_0, t_0) = \emptyset &{\quad \operatorname{and} \quad} x^\pm(t) \not \in v(B_{\varepsilon}(s_0, t_0))
          .\end{align*}`{=tex}

    -   Idea: If not, can cook up sequences that force $v(s_0, t_0) = x^\pm(t_0)$, a contradiction to @eq:eq1.

    2.  For $t \in B_{\varepsilon}(t_0)$, $B_{\varepsilon}(s_0) \hookrightarrow W$ is an injective immersion

    -   Combine 1 and 2 to show that
        -   $v$ is locally constant
        -   $(s_0 ,t_0) \in C(v)$
        -   Every point in $B_{\varepsilon}(s_0, t_0)$ satisfies [@eq:eq1]

    3.  

    -   Show `
        <span class="math display">
        \begin{align*}{\left\lvert {\mathbf{M}_C} \right\rvert}\coloneqq{\left\lvert {\qty{\mathbf{M} \times I} \cap C(v)} \right\rvert} < \infty\end{align*}
        <span>`{=html} since it's the intersection of a compact and a discrete set
    -   Perturb $(s_0, t_0)$ so that $(s, t) \in \mathbf{M}_C \implies v(s_0, t_0) \neq v(s, t)$.
        -   Possible since $(s_0, t_0) \not\in C(v) \implies v$ is non-constant in a neighborhood of $(s_0, t_0)$.
    -   Decrease ${\varepsilon}$ so that `
        <span class="math display">
        \begin{align*}v(B_{\varepsilon}(s_0, t_0)) \cap v(\mathbf{M}_C) = \emptyset.\end{align*}
        <span>`{=html}

-   This means that in the thick strip containing $(s_0, t_0)$, no critical points land in its image.

-   Conclude that we only have to consider injectivity, not critical points that are also multiple points

Step 2: Failure of Injectivity in Small Boxes
---------------------------------------------

-   Define `
    <span class="math display">
    \begin{align*}\mathbf{S}_M(t_0) = \left\{{s_1, \cdots, s_N}\right\} =\left\{{s_i \in [-M, M] {~\mathrel{\Big|}~}v(s_i, t_0) = v(s_0, t_0)}\right\},\end{align*}
    <span>`{=html} the set of multiple points over $s_0$.

    -   This is finite, since infinite $\implies$ has a limit point $\implies {\frac{\partial v}{\partial s}\,} = 0$, contradiction.

-   Lemma: For every ${\varepsilon}>0$ there exists a $\delta > 0$ such that defining `
    <span class="math display">
    \begin{align*}\Delta_0 = [s_0-\delta, s_0 + \delta] \times[t_0-\delta, t_0 + \delta]\end{align*}
    <span>`{=html} then `
    <span class="math display">
    \begin{align*}(s, t)\in \Delta \implies \exists s' \in B_{\varepsilon}(s_j) \text{ s.t. } v(s, t) = v(s', t)\end{align*}
    <span>`{=html} for some $1 \leq j \leq N$.

    -   In English: for every epsilon, we can find a delta box $\Delta_0 \ni (s_0, t_0)$ such that every point in $\Delta_0$ is a multiple point over *some* point in an epsilon ball around *some* point in $\mathbf{S}_M(t_0)$.

    -   Proof idea: otherwise, construct a sequence $(\sigma_n, t_n) \to (s_0, t_0)$, use properties 1 and 2 from earlier, extract a limit point $\sigma$ *not* in $\mathbf{S}_M(t_0)$ which satisfies $v(\sigma, t_0) = v(s_0, t_0)$, a contradiction (since that set contained exactly the multiple finitely many points).

-   Fix ${\varepsilon}' <{\varepsilon}/2$ form Step 1 and apply the lemma to ${\varepsilon}'$ to produce a $\delta$ and a box $\Delta_0$.

-   Apply the lemma: shrink the delta box $\Delta_0$ to a closed delta ball $\mkern 1.5mu\overline{\mkern-1.5muB\mkern-1.5mu}\mkern 1.5mu_\delta(s_0, t_0)$.

    -   Every point in the delta box is a multiple point over some $s_j$.

-   So partition the ball up: define $\Sigma_j$ to be all of the multiple points over $s_j \in \mathbf{S}_(t_0)$.

-   Take a smaller $\rho{\hbox{-}}$ball around some point $(s_\star, t_\star) \in \Sigma_1^\circ$, making sure to choose ${\varepsilon}'$ small enough such that `
    <span class="math display">
    \begin{align*}
    B_\rho(s_\star, t_\star) \cap\qty{ [s_1-{\varepsilon}', s_1 + {\varepsilon}'] \times[t_0-\delta, t_0 + \delta] } = \emptyset
    .\end{align*}
    <span>`{=html} In other words, the shaded region is disjoint from the $\rho{\hbox{-}}$ball.

-   Then every point in the $\rho{\hbox{-}}$ball is a multiple point over some point in the box around $(s_1, t_0)$. Pick on such point $(s_\star', t_\star)$ on the $t_\star$ line.

Step 3: Final Contradiction
---------------------------

-   Construct $v_1, v_2$ which

    -   Satisfy the same Cauchy-Riemann equations
    -   Are equal at the origin
    -   Have nonzero derivative at the origin.

-   We want to show they are equal on ${\mathbb{R}}^2$

-   Constructing them: use points from step 2 to translate

    -   Obtain $(s_\star, t_\star)$ and $(s_\star', t_\star)$ from previous step.
    -   Define `\begin{align*}
        \begin{array}{ll}
        v_{1}(s, t)=v\left(s+s_{\star}, t+t_{\star}\right) &\implies v_1(z) = v(z + w_1)\\
        v_{2}(s, t)=v\left(s+s_{\star}^{\prime}, t+t_{\star}\right) &\implies v_2(z) = v(z + w_2)
        \end{array}
        \end{align*}`{=tex}
    -   Satisfy the same CR equations
    -   By construction, they coincide at $(0, 0)$ since $v(s_\star, t_\star) = v(s_\star', t_\star)$.
    -   Derivatives at the origin are nonzero, coming from the fact that ${\frac{\partial v}{\partial s}\,}(s_\star, t_\star) \neq 0$.

-   Now work at zero: for every $(s, t) \in B_\rho(0, 0)$ there exists a multiple point $s' \in B_{2{\varepsilon}'}(0)$ over $s$.

-   Use the following extension lemma, consequence of **Continuation Principle**: in this situation, with $X_t \equiv 0$ on $B_{\varepsilon}(\mathbf{0})$, then `
    <span class="math display">
    \begin{align*}z\in B_{\varepsilon}(\mathbf{0}) \implies v_1(z) = v_2(z).\end{align*}
    <span>`{=html}

-   Define `\begin{align*}
    \mathcal{F}: \mathrm{C}^{\infty}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) & \longrightarrow \mathrm{C}^{\infty}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) \\
    w &\longmapsto \qty{{\frac{\partial }{\partial s}\,} + J\cdot {\frac{\partial }{\partial t}\,}  }w
    \end{align*}`{=tex}

-   Since $v_1, v_2$ satisfy the same CR equation, ${\mathcal{F}}(v_1) = {\mathcal{F}}(v_2)$

-   Linearize ${\mathcal{F}}$ as we did for the Floer operator to obtain `\begin{align*}
    \qty{d{\mathcal{F}}}_{\cdots}(Y) = \qty{ {\frac{\partial }{\partial s}\,} + J_0 \cdot {\frac{\partial }{\partial t}\,} + \tilde S } Y
    .\end{align*}`{=tex} where $\tilde S: I \times{\mathbb{R}}^2 \to \endo({\mathbb{R}}^{2n})$

-   Set $Y = v_1 - v_2$, then `
    <span class="math display">
    \begin{align*}
    S = \int_{[0, 1]} \tilde S  \implies S\qty{ {\frac{\partial }{\partial s}\,} + J_0 \cdot {\frac{\partial }{\partial t}\,} + S } Y = 0
    \end{align*}
    <span>`{=html}

-   From above, $Y \equiv 0$ in $B_{\varepsilon}(\mathbf{0})$, apply **Continuation Principle** to obtain $v_1 = v_2$ on ${\mathbb{R}}^2$

-   Inductive argument to show `
    <span class="math display">
    \begin{align*}
    \forall k\in{\mathbb{Z}},\quad v(s, t) = v(k(s_\star' - s_\star), t) \overset{k\to \infty}\longrightarrow x^\pm(t),
    \end{align*}
    <span>`{=html} which is the desired contradiction. $\hfill\blacksquare$

BREAK

The Continuation Principle
--------------------------

-   Take the perturbed CR equation `\begin{align*}
    \qty{{\frac{\partial }{\partial s}\,} + J_0 \cdot {\frac{\partial }{\partial t}\,} + S }Y &= 0 {\quad \operatorname{where} \quad}
    S: {\mathbb{R}}^2 \longrightarrow \endo({\mathbb{R}}^{2n}) 
    \end{align*}`{=tex} where $J_0$ is the standard complex structure on ${\mathbb{R}}^{2n}$.

-   Define an *infinite-order zero* $z$ of an arbitrary function $f$ as `\begin{align*}
    z_0 \in Z_\infty \iff \sup_{B_r(z_0)} {{\left\lvert {f(z)} \right\rvert} \over r^k} \overset{r\to 0}\to 0 \quad \forall k\in {\mathbb{Z}}^{\geq 0}
    ,\end{align*}`{=tex} or for a smooth function, `\begin{align*}
    z_0\in Z_\infty \iff f^{(k)}(z_0)= 0 \quad \forall k \in {\mathbb{Z}}^{\geq 0}
    .\end{align*}`{=tex}

-   Statement: If $Y$ solves CR on $U \subset {\mathbb{R}}^2$ then the set `\begin{align*}
    C \coloneqq\left\{{(s, t)\in U {~\mathrel{\Big|}~}~Y \text{ is an infinite-order zero at } (s, t)}\right\}
    .\end{align*}`{=tex}

-   Explanation: for $f$ smooth, $Z_\infty$ is closed. For $f$ holomorphic, it is clopen.

    -   From complex analysis: for a connected domain $\Omega$, the only clopen subsets are $\emptyset,\Omega$, so nonempty and $f =g$ on a connected subset implies $f = g$ on $\Omega$.
    -   In particular, $Y = 0$ on $U' \subseteq U$ implies $Y = 0$ on $U$.

-   Prove is a consequence of the **Similarity Principle**

Similarity Principle
--------------------

-   Statement:

    -   Recall definition of perturbed CR equation: `\begin{align*}
        \qty{{\frac{\partial }{\partial s}\,} + J_0 \cdot {\frac{\partial }{\partial t}\,} + S }Y &= 0 {\quad \operatorname{where} \quad}
        S: {\mathbb{R}}^2 \longrightarrow \endo({\mathbb{R}}^{2n}) 
        \end{align*}`{=tex}

    -   Let

    -   $Y \in C^\infty(B_{\varepsilon}; {\mathbb{C}}^n)$, or more generally $W^{1, p}( B_{\varepsilon}; {\mathbb{C}}^n)$, be a solution

    -   $S \in C^\infty({\mathbb{R}}^2, \endo({\mathbb{R}}^2) )$ or more generally $L^p(B_{\varepsilon}; \endo_{\mathbb{R}}({\mathbb{R}}^{2n}))$

    -   $p > 2$

    Then there exist `\begin{align*}
    \delta &\in (0, {\varepsilon}), \\
    \sigma &\in C^\infty(B_\delta, {\mathbb{C}}^n) \\
    A &\in W^{1, p}(B_\delta, \operatorname{GL}({\mathbb{R}}^{2n}))
    .\end{align*}`{=tex} such that `\begin{align*}
    \forall(s, t) \in B_{\delta}, ~~\quad Y(s, t)=A(s, t) \cdot \sigma(s+i t) {\quad \operatorname{ and } \quad} 
    J_0 A(s, t) = A(s, t)J_0
    .\end{align*}`{=tex}

-   Used to prove:

    -   $C(v)$ is discrete
    -   "Extension" lemma used to prove $R(v)$ is dense

-   Some ideas from proof:

    -   Matrix $A$ will look like the fundamental matrix of solutions to the equation
    -   Compactify to get $B_\delta \subset S^2$, if $Y: S^2 \to {\mathbb{C}}^n$ then we can consider the section

```{=tex}
\begin{center}
\begin{tikzcd}
\left(A^{0,1} T^{\star} S^{2}\right)^{n}=\Lambda^{0,1} T^{\star} S^{2} \otimes \mathbb{C}^{n} \ar[d]\\
X \ar[u, "\mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5muY"', bend right=50, dotted]
\end{tikzcd}
\end{center}
```
-   $\mkern 1.5mu\overline{\mkern-1.5muY\mkern-1.5mu}\mkern 1.5mu = 0$ makes $Y$ a holomorphic sphere in ${\mathbb{C}}^n$.

Odds and Ends
-------------

-   Theorem: the following is a surjective Fredholm operator for every $p> 1$: `\begin{align*}
    \mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu: W^{1, p}\left(S^{2}, \mathbb{C}^{n}\right) \longrightarrow L^{p}\left(\Lambda^{0,1} T^{\star} S^{2} \otimes \mathbb{C}^{n}\right)
    .\end{align*}`{=tex}

    -   Computation will show that $\dim \ker \mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu= \dim \operatorname{coker}\mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu= 2n$, so $\mathop{\mathrm{ind}}\mkern 1.5mu\overline{\mkern-1.5mu\partial\mkern-1.5mu}\mkern 1.5mu= 0$.
