












Form the set $\Omega_n^O$ of [[cobordism | cobordism.html]] classes of $n{\hbox{-}}$manifolds.

The $O$ denotes that fact that any bundle over a manifold $M$ admits a Riemannian metric, so embedding $M$ into ${\mathbb{R}}^\infty$ yields a [[Reduction%20of%20structure%20group.md) to \$O(N | Reduction%20of%20structure%20group.html]]%20to%20$O(N)$ for some $N$.

Define addition as disjoint union and multiplication by the Cartesian product to form a graded ring $\Omega^O$, and it turns out that there is a spectrum ${\operatorname{MO}}$ such that `
<span class="math display">
\begin{align*}
\Omega^O_n \cong_{{\mathsf{Grp}}} \pi_n MO
\end{align*}
<span>`{=html}

Idea: any manifold is determined by its embedding into ${\mathbb{R}}^\infty$, take the normal bundle $\nu$, form the [[Thom space | Thom%20space.html]] $M^\nu$ by collapsing the complement of the normal bundle. This yields a map $S^{?} \to M^\nu$. Now use the fact that $\nu$ is an $N{\hbox{-}}$dimensional bundle and is classified by a map $M \to BO(N)$, the classifying space for $O(N){\hbox{-}}$bundles with universal bundle $\gamma_N$,. We take Thom spaces (?) to get a map $M^\nu \to BO(N)^{\gamma_N}$, then take `
<span class="math display">
\begin{align*}
\lim_{N\to \infty} [S^{N+n}, BO(N)^{\gamma_N}]_{\text{unstable?}}
\end{align*}
<span>`{=html} This is independent of the embedding and only depends on the cobordism class of $M$, so we define $MO(n) \coloneqq BO(N)^{\gamma_N}$.
