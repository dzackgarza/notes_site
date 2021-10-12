-   [The Adams Spectral Sequence](#the-adams-spectral-sequence)
    -   [References](#references)
    -   [Notes](#notes)














The Adams Spectral Sequence
===========================

> 6/21 The Adams spectral sequence

References
----------

-   <https://static1.squarespace.com/static/5aff705c5ffd207cc87a512d/t/5b0377abf950b75de22932e7/1526953900694/Homotopy+Theory.pdf>
-   <https://ncatlab.org/nlab/show/Adams+spectral+sequence>
-   <http://www.rrb.wayne.edu/papers/adams.pdf>
-   <https://ncatlab.org/nlab/show/Introduction+to+the+Adams+Spectral+Sequence>
-   <http://www.ms.uky.edu/~guillou/Aramian_ASS.pdf>
-   <http://stanford.edu/~arpon/files/adams-ss.pdf>
-   <https://ncatlab.org/nlab/show/Adams+resolution>
-   <https://www.wikiwand.com/en/Adams_resolution>
-   <https://www.wikiwand.com/en/Adams_spectral_sequence#/Ext_terms_from_the_resolution>

Notes
-----

> Note from Paul: People describe it as Ext in $\comod{\steenrod {}^{ \vee }}$ rather than (equivalently) in $\operatorname{mod}{\steenrod}$. The difference: $\steenrod$ is a free graded commutative algebra, which is easier to use than graded cocommutativity of $\steenrod {}^{ \vee }$. Maybe say a bit about $\comod{A}$ for $A\in\HopfAlg$.

-   Basic motivation: buff up the Serre spectral sequence, but only work stably.
-   Big question: what is $[X, Y]\in {\mathsf{Ab}}$? Start by understanding its $p{\hbox{-}}$torsion.
-   Apply the functor $H^*({-}) := H^*({-}; {\mathbb{F}}_p)$ to get $\mathop{\mathrm{Hom}}_{{ \mathsf{Vect} }_{/{\mathbb{F}}_p}}(H^* X, H^* Y)$.
-   Find extra module structure on this Hom: module over ${\mathcal{A}}$ the Steenrod algebra
-   Take derived functors to get $\operatorname{Ext} _{{\mathcal{A}}}^*( H^*X, H^* Y)$.
-   Applications
    -   Compute $\pi_* {\mathbb{S}}\otimes{ {\mathbb{Z}}_p }$
    -   Original use by Adams: Hopf Invariant One. Which ${\mathbb{R}}^n$ are division algebras?
    -   Thom isomorphism theorem
