-   [Talbot Talk 1: Vesna](#talbot-talk-1-vesna)














Talbot Talk 1: Vesna
====================

-   ${\operatorname{Pic}}(R)$: invertible $R{\hbox{-}}$modules and equivalences with $\otimes_R$.
-   $\pi_0 {\operatorname{Pic}}(R)$: invertible $R{\hbox{-}}$modules modulo equivalence
-   $\Omega {\operatorname{Pic}}(R) = \operatorname{GL}_1(R)$
-   Taking the connected component of $R$ yields $({\operatorname{Pic}}(R))_R = {\mathbf{B}}\operatorname{GL}_1(R)$
-   $[X, {\operatorname{Pic}}(R)]$ equals bundles of invertible $R{\hbox{-}}$modules in $X$.
    -   Classical example: $[X, {\operatorname{Pic}}(S^0)]$, stable spherical fibrations on $X$, motivates most of the development of this theory. Equivalently, what is ${\operatorname{Pic}}(S^0)$?
-   ${\operatorname{ko}}$: connective real $K$ theory
    -   The 0th space: $\Omega^ \infty \cong {\mathbb{Z}}\times{\mathbf{B}}{\operatorname{O}}$, classifies stable real vector bundles.
    -   There is a map `
        <span class="math display">
        \begin{align*}
        [X, {\mathbb{Z}}\times{\mathbf{B}}{\operatorname{O}}] &\xrightarrow{\sim} [X, {\operatorname{Pic}}(S^0)] \\
        \xi/X &\mapsto \mathop{\mathrm{Th}}(\xi)
        .\end{align*}
        <span>`{=html} Yields an $\infty{\hbox{-}}$loop map Z`\times `{=tex}`{\mathbf{B}} `{=tex}`{\operatorname{O}}`{=tex}`\to `{=tex}`{\operatorname{Pic}}`{=tex}(S\^0)\$ and ${\operatorname{ko}}\to {\operatorname{Pic}}(S^0)$. Yields Adams' $J{\hbox{-}}$homomorphis.
    -   Story that develops here: can develop a theory of $R{\hbox{-}}$oriented bundles, twisted $R{\hbox{-}}$cohomology, twists by ordinary cohomology class, or twist by the space of maps $\PPic = \map({H\mathbb{Z}}, {\operatorname{Pic}})$.
-   There is also a Brauer space $\mathop{\mathrm{Br}}(R)$.

Questions:

-   What are $\pi_* \operatorname{GL}_1(R)$?
-   For a space $X$, show that $[X, \operatorname{GL}(R)] = R^0(X)^X$
-   What are the invertible $S^0$ modules?

Computing things

-   $\pi_0 \mathop{\mathrm{Br}}(R)$

-   $\pi_1 \mathop{\mathrm{Br}}(R) = \pi_0 {\operatorname{Pic}}(R)$

-   $\pi_2 \mathop{\mathrm{Br}}(R) = \pi_1 {\operatorname{Pic}}(R) = \pi_0 \operatorname{GL}_1(R) = (\pi_0 R)^{\times}$

-   $\pi_{>2} \mathop{\mathrm{Br}}(R) = \pi_{>1} {\operatorname{Pic}}(R) = \pi_{>0} \operatorname{GL}_1(R) = \pi_{>0} R$.

-   Can compute low degree $k$ invariants for ${\operatorname{Pic}}(R)$, comes from looking at Steenrod operations

-   How to compute more:

    -   Comparison with algebra (relatively easy, could reduce to open problems)
    -   Descent
    -   Obstruction theory

Use that there is an injection $0\to {\operatorname{Pic}}(\pi_* R) \to \pi_0 {\operatorname{Pic}}(R)$ when $R$ is connective or $R$ is weakly even periodic and $\pi_0 R$ is regular Noetherian. - This is ${\operatorname{Pic}}$ over graded rings - But it's much more complicated to have anything like this for the Brauer group. - Theorem: the functors ${\operatorname{Pic}}$ and $\mathop{\mathrm{Br}}$, $\Calg({\mathsf{Sp}}) \to \infloopspace$ satisfy etale and Galois descent (respectively) - $R\to S$ a map of ring spectra if $\pi_0 R\to \pi_0 S$ is etale as a map of rings (smooth of dimension zero, or flat + unramified) and there is an equivalence $\pi_k R \otimes_{\pi_0 R} \pi_0 S \xrightarrow{\sim} \pi_k S$. - ${\operatorname{KO}}$ has no interesting etale extension - $R\to S^{?}$ is $G{\hbox{-}}$Galois if - $R \xrightarrow{\sim}S^{hG}$, mapping to homotopy fixed points is an equivalence - $S\otimes_R S \xrightarrow{\sim} \prod_G S$ - $\pi_* {\operatorname{ku}}= {\mathbb{Z}}[\bottclass ^{\pm 1}]$ and ${\operatorname{Pic}}(\pi_* {\operatorname{ku}}) = {\mathbb{Z}}/2$. In fact ${\operatorname{Pic}}({\operatorname{KU}}) = {\mathbb{Z}}/2$, and descent yields ${\operatorname{Pic}}({\operatorname{KO}}) = {\operatorname{Pic}}({\operatorname{KU}})^{hC_2}$ - See descent spectral sequence? - Descent is like a local to global principle.
