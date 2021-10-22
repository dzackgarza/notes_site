# Appendix: Commutative Algebra {-} 

## Useful Algebra Facts

:::{.fact}
\envlist

- $\mathfrak{p}\normal R$ is prime $\iff R/\mathfrak{p}$ is a domain.
- $\mathfrak{p}\normal R$ is maximal $\iff R/\mathfrak{p}$ is a field.
- Maximal ideals are prime.
- Prime ideals are radical.
- If $R$ is a PID and $\gens{f} \normal R$ is generated by an irreducible element $f$, then $\gens{f}$ is maximal
:::

:::{.proposition title="Finitely generated polynomial rings are Noetherian"}
A polynomial ring $\kx{n}$ on finitely many generators is Noetherian.
In particular, every ideal $I\normal \kx{n}$ has a finite set of generators and can be written as $I = \gens{f_1, \cdots, f_m}$.
:::

:::{.proof title="?"}
A field $k$ is both Artinian and Noetherian, since it has only two ideals and thus any chain of ideals necessarily terminates.
By Hilbert's basis theorem (\cref{thm:hilbert_basis}), $\kx{n}$ is thus Noetherian. 
:::

:::{.proposition title="Properties and Definitions of Ideal Operations"}
\[  
I+J   &\da \ts{f+g \st f\in I,\, g\in J} \\
IJ    &\da \ts{\sum_{i=1}^N f_i g_i \st f_i\in I,\, g_i\in J, N\in \NN} \\
I+J   = \gens{1} 
      &\implies I\intersect J = IJ && \text{(coprime or comaximal)}
\gens{a} + \gens{b} = \gens{a, b}
.\]
:::


:::{.theorem title="Noether Normalization" ref="thm:noether_normalization"}
Any finitely-generated field extension $k_1 \injects k_2$ is a finite extension of a purely transcendental extension, i.e. there exist $t_1, \cdots, t_\ell$ such that $k_2$ is finite over $k_1(t_1, \cdots, t_\ell)$.
:::


:::{.theorem title="Hilbert's Basis Theorem" ref="thm:hilbert_basis"}
If $R$ is a Noetherian ring, then $R[x]$ is again Noetherian.
:::

