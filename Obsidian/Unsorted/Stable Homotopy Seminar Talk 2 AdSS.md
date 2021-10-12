
# The Adams Spectral Sequence
> 6/21 The Adams spectral sequence


## References

- <https://static1.squarespace.com/static/5aff705c5ffd207cc87a512d/t/5b0377abf950b75de22932e7/1526953900694/Homotopy+Theory.pdf>
- <https://ncatlab.org/nlab/show/Adams+spectral+sequence>
- <http://www.rrb.wayne.edu/papers/adams.pdf>
- <https://ncatlab.org/nlab/show/Introduction+to+the+Adams+Spectral+Sequence>
- <http://www.ms.uky.edu/~guillou/Aramian_ASS.pdf>
- <http://stanford.edu/~arpon/files/adams-ss.pdf>
- <https://ncatlab.org/nlab/show/Adams+resolution>
- <https://www.wikiwand.com/en/Adams_resolution>
- <https://www.wikiwand.com/en/Adams_spectral_sequence#/Ext_terms_from_the_resolution>

## Notes

> Note from Paul:
  People describe it as Ext in $\comod{\steenrod\dual}$ rather than (equivalently) in $\mod{\steenrod}$.
  The difference: $\steenrod$ is a free graded commutative algebra, which is easier to use than graded cocommutativity of $\steenrod\dual$.
  Maybe say a bit about $\comod{A}$ for $A\in\HopfAlg$.

- Basic motivation: buff up the Serre spectral sequence, but only work stably.
- Big question: what is $[X, Y]\in \Ab$?
	Start by understanding its $p\dash$torsion.
- Apply the functor $H^*(\wait) := H^*(\wait; \FF_p)$ to get $\Hom_{\Vect_{/\FF_p}}(H^* X, H^* Y)$.
- Find extra module structure on this Hom: module over $\mca$ the Steenrod algebra
- Take derived functors to get $\Ext_{\mca}^*( H^*X, H^* Y)$.
- Applications
	- Compute $\pi_* \SS \tensor \ZZpadic$
	- Original use by Adams: Hopf Invariant One. Which $\RR^n$ are division algebras?
	- Thom isomorphism theorem
