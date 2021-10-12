---
aliases:
- extraordinary cohomology theory
- generalized cohomology theory
---

-   [Motivation](#motivation)
-   [Unsorted](#unsorted)














Tags: \#homotopy

-   [[complex%20oriented%20cohomology%20theory.md | complex%20oriented%20cohomology%20theory.html]]

-   Axioms: if we drop $H^* {\operatorname{pt}}= 0$, we get generalized alternatives to cohomology.

Motivation
==========

The basic result is [[cofiber%20sequence.md | cofiber%20sequence.html]] to long exact sequences and has a suspension isomorphism and takes wedges to products, then this is represented by a sequence of spaces $\left\{{E_n}\right\}$ with weak equivalences $E_n \cong \Omega E_{n+1}$ coming from the existence of the suspension isomorphism and the Yoneda lemma.

Conversely, given a sequence of spaces $\left\{{E_n}\right\}$ with maps $\Sigma E_n\to E_{n+1}$, you can cook up a [[cohomolology%20theories.md](cohomolology%20theories.md). This means that one can do some pretty formal manipulations inside the category of [spectra | spectra.html]] and produce lots of different cohomology theories, even ones that have no geometric interpretation a priori.

For example, there is a cohomology theory called [[Topological%20modular%20forms.md) which has (as of now](Topological%20modular%20forms.md)%20which%20has%20(as%20of%20now) no geometric interpretation, but can detect many nontrivial maps between spheres, and can even be used to prove results in [Number theory | Number%20theory.html]].

We see that self maps $E\to E$ of a [[Cohomology%20operations.md | Cohomology%20operations.html]] by cooking up maps of spectra.

There's even a machine, [Adams%20Spectral%20Sequence](Adams%20Spectral%20Sequence), which computes all maps between spectra.

You can take the homotopy groups of a cohomology theory.

Unsorted
========

Flipping roles, [[classifying%20space.md) being the canonical examples | classifying%20space.html]]%20being%20the%20canonical%20examples).

After a lot of hard work (with some of the bigger names including Adams, Milnor, and Quillen, though I am leaving a lot of important names out) it is discovered, starting from almost pure calculation, that the stable homotopy category has a connection to the category of 1-dimensional [[characteristic%20class.md | characteristic%20class.html]]. Each generalized cohomology theory determines some amount of formal group data.

Via things like BP-theory and the [Ravenel%20conjectures)](Ravenel%20conjectures)).

-   [[Representing%20cohomology.md | Representing%20cohomology.html]]

We say that a cohomology theory $E$ is **multiplicative** if its representing spectrum is endowed with a multiplication $E^{\wedge 2}\to E$ that is associative and unital up to homotopy, i.e. a [ring%20spectrum](ring%20spectrum).

Reduced cohomology associated to a spectrum: `
<span class="math display">
\begin{align*}
\tilde{E}^{k}(X)=\operatorname{colim}_{n}\left[S^{\wedge n}\wedge X, E_{k+n}\right]
\end{align*}
<span>`{=html}
