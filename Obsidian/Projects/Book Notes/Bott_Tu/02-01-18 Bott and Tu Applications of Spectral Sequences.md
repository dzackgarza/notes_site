---
date: '02-01-2018'
---

-   [Applications of Spectral Sequences](#applications-of-spectral-sequences)
    -   [Notation and Remarks](#notation-and-remarks)
    -   [List of Results](#list-of-results)
    -   [List of Fibrations](#list-of-fibrations)
    -   [Interesting Spaces to Look At:](#interesting-spaces-to-look-at)














Applications of Spectral Sequences
==================================

Notation and Remarks
--------------------

-   For $M$ a manifold, $T(M)$ is the unit tangent bundle of $M$
-   For $R$ a ring $R\delta_i$ denotes a copy of $R$ appearing in the $i$th (co)homological degree
-   $S^n \subset {\mathbb{R}}^{n+1}$ and $S^{2n-1} \subset {\mathbb{C}}^n$
-   Theorem: $F \to E \to B$ a fibration results in $E_2^{p,q} = H^p(B, H^q(F; G)) = H^p(B;G) \otimes H^q(F; G)$ for nice enough spaces $X$ and groups $G$
    -   Corollary: $H^n(X\times Y) = \displaystyle\bigoplus_{p+q=n} H^p(X, H^q(Y))$
-   Facts about tensor products
    -   $(rm)\otimes n = r(m\otimes n) =m \otimes(rn)$
    -   $(r+s)(m\otimes n) = rm\otimes n + sm\otimes n$
    -   ${\mathbb{Z}}_p \otimes_{\mathbb{Z}}{\mathbb{Z}}_q = {\mathbb{Z}}/\gcd(p,q)$ and $\gcd(p,q) = 1$ yields 0.
    -   Some computations:
        -   ${\mathbb{Z}}_n \otimes_{\mathbb{Z}}{\mathbb{Q}}= 0$
        -   ${\mathbb{Z}}_n \otimes_{\mathbb{Z}}{\mathbb{Q}}/{\mathbb{Z}}= 0$
        -   ${\mathbb{Q}}\otimes_{\mathbb{Z}}{\mathbb{Q}}= {\mathbb{Q}}$
        -   $({\mathbb{Q}}/{\mathbb{Z}})\otimes_{\mathbb{Z}}{\mathbb{Q}}= 0$
        -   ${\mathbb{Q}}/{\mathbb{Z}}\otimes_{\mathbb{Z}}{\mathbb{Q}}/{\mathbb{Z}}= 0$
        -   $R[x]\otimes_R S \cong S[x]$
        -   $k \to K$ a field extension: $k[x]/(f) \otimes_k K \cong K[x]/(f)$
    -   Symmetric, Associative
    -   $(\oplus A_i )\otimes B = \oplus(A_i \otimes B)$
    -   ${\mathbb{Z}}\otimes A = A$
    -   ${\mathbb{Z}}_n \otimes A = \frac{A}{nA}$

List of Results
---------------

-   A simply connected $n$-dimensional manifold $M_n$ is orientable
    -   Use $S^{n-1} \to T(M_n) \to M_n$
-   $H^*({\mathbb{CP}}^2) = {\mathbb{R}}\delta_0 + {\mathbb{R}}\delta_2 + {\mathbb{R}}\delta_4$
    -   Use $S^1 \to S^5 \to{\mathbb{CP}}^2$
-   $H^*({\mathbb{CP}}^2) = \frac{{\mathbb{R}}[x]}{(x^3)}$
    -   Use $S^1 \to S^5 \to{\mathbb{CP}}^2$
-   $H^*({\mathbb{CP}}^n) = \displaystyle\sum_{i=0}^n{\mathbb{R}}\delta_{2i}$
    -   Use $S^1 \to S^{2n+1} \to{\mathbb{CP}}^n$
-   $H^*({\mathbb{CP}}^n) = \frac{{\mathbb{R}}[x]}{(x^{n+1})}$
    -   Use $S^1 \to S^{2n+1} \to{\mathbb{CP}}^n$
-   $H^*(SO^3) = {\mathbb{Z}}\delta_0 + {\mathbb{Z}}_2\delta_2 + {\mathbb{Z}}\delta_3$
    -   Use $S^1 \to T(S^2) \to S^2$ and identify $T(S^2) = SO^3$
    -   Also use $E_2^{p,q} = H^p(S^2) \otimes H^q(S^1)$
-   $H^*(SO^4) = ?$
    -   Use $SO^3 \to SO^4 \to S^3$
-   $H^*(U^n) = ?$
    -   Use $U^{n-1} \to U^n \to S^{2n-1}$
-   $H^*(\Omega S^2) = \displaystyle\sum_{i=0}^\infty {\mathbb{Z}}\delta_i$
    -   Use $\Omega S^2 \to PS^2 \to S^2$
    -   Also use $E_2^{p,q} = H^p(S^2, H^q(\Omega S^2))$
-   $H^*(\Omega S^3) = \displaystyle\sum_{i=0}^\infty {\mathbb{Z}}\delta_{2i}$
    -   Use $\Omega S^3 \to PS^3 \to S^3$
-   $H^*(\Omega S^n) = \displaystyle\sum_{i=0}^\infty {\mathbb{Z}}\delta_{i(n-1)}$
    -   Use $\Omega S^3 \to PS^3 \to S^3$
-   $H^*(\Omega S^2) = \frac{{\mathbb{Z}}[x]}{(x^2)} \otimes{\mathbb{Z}}\left\{{1,e, \frac{1}{2!}e^2,\cdots}\right\}, \dim x = 1, \dim e = 2$
    -   Use $\Omega S^3 \to PS^3 \to S^3$
-   $H^*(\Omega S^n) = \frac{{\mathbb{Z}}[x]}{(x^2)} \otimes{\mathbb{Z}}\left\{{1,e, \frac{1}{2!}e^2,\cdots}\right\}, \dim x = n-1, \dim e = 2(n-1_)$
    -   Use $\Omega S^3 \to PS^3 \to S^3$

List of Fibrations
------------------

-   $S^1 \to S^{2n+1} \to{\mathbb{CP}}^n$, the Hopf fibration?

-   $S^3 \to S^{4n+3} \to\mathbb{HP}^n$ the generalized Hopf fibration? (not used here)

-   Hopf Fibrations
    -   $S^0 \to S^1 \to S^1$
        -   Induced by \$S\^1 `\subset `{=tex}`{\mathbb{R}}`{=tex}\^2 `\to `{=tex}S\^1 = `{\mathbb{R}} `{=tex}`\cup `{=tex}`\infty `{=tex}\$
    -   $S^1 \to S^3 \to S^2$
        -   Induced by $S^3 \subset {\mathbb{C}}^2 \to S^2 = {\mathbb{C}}\cup\infty$
    -   $S^3 \to S^7 \to S^4$
        -   Induced by $S^7 \subset \mathbb{H}^2 \to S^4 = \mathbb{H}\cup\infty$
    -   $S^7 \to S^{15} \to S^8$
        -   Induced by $S^{15} \subset\mathbb{O}^2 \to S^8 = \mathbb{O}\cup\infty$

-   $SO^3 \to SO^4 \to S^3$

-   $U^{n-1} \to U^n \to S^{2n-1}$
    -   Can compute $H^*(U^n)$

-   $\Omega S^n \to PS^n \to S^n$, path-loop fibration
    -   $\Omega S^3 \to PS^3 \to S^3$:
        -   Can compute $H^*(\Omega S^n)$

-   $Y \to X\times Y \to X$ (not used here)

-   Fibrations
    ==========

-   $SO_{n-1}(R) \to SO_n(R) \to S^{n-1}$

-   $S^n \xrightarrow{E} \Omega S^{n+1} \xrightarrow{H} \Omega S^{2n+1}$

-   $S^1 \to S^{2n+1} \to {\mathbb{CP}}^n$

-   $\Omega B \to PB \to B$

-   $K(A, n) \to K(B, n) \to K(C,n)$ for any SES of groups.

-   $S^0 \to S^1 \to {\mathbb{RP}}^1 = S^1$

-   $S^1 \to S^3 \to {\mathbb{CP}}^1 = S^2$

-   $S^3 \to S^7 \to \mathbb{HP}^1 = S^4$

-   $S^7 \to S^{15} \to \mathbb{OP}^1 = S^8$

Define the Stiefel Manifold: `
<span class="math display">
\begin{align*}
\mathbb{V}(k, n) = \left\{{A \in \mathbb{F}^{nk}\mathrel{\Big|}A \mkern 1.5mu\overline{\mkern-1.5muA\mkern-1.5mu}\mkern 1.5mu^t = I}\right\}
\end{align*}
<span>`{=html}

and the Grassmanian

`
<span class="math display">
\begin{align*}
G(k, n) = ?
\end{align*}
<span>`{=html}

Obtained from fiber bundles involving [Stiefel Manifold](https://math.stackexchange.com/questions/99189/useful-fibrations) :

-   $O^{n-1} \to O^n \to S^{n-1}$
-   $SO^{n-1} \to SO^n \to S^{n-1}$
-   $U^{n-1} \to U^n \to S^{2n-1}$
-   $SU^{n-1} \to SU^n \to S^{2n-1}$
-   $Sp^{n-1} \to Sp^n \to S^{4n-1}$
-   $SO^n \to O^n \to S^0$
-   $SU^n \to U^n \to S^1$
-   $\mathbb{V}(k, k) \to \mathbb{V}(k, n) \to \mathbb{G}(k, n)$

Interesting Spaces to Look At:
------------------------------

$O, SO, Spin, U, or Sp$
