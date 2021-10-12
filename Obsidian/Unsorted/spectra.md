---
alaises:
- spectrum
---

-   [Motivation](#motivation)
    -   [Suspension](#suspension)
    -   [Cohomology Theories](#cohomology-theories)
    -   [Representability](#representability)
    -   [Hopf Invariant 1](#hopf-invariant-1)
    -   [Categorical Properties](#categorical-properties)














Tags: \#homotopy

References: [[cohomolology%20theories.md | cohomolology%20theories.html]]

> Opinion from MO: modern Topology starts with spectra.

-   [[How to extract homology using spectra | How%20to%20extract%20homology%20using%20spectra.html]]
-   [Homotopy%20groups%20of%20spectra](Homotopy%20groups%20of%20spectra)

Motivation
==========

Suspension
----------

We have another aim in constructing the category of spectra. In homology theory the suspension homomorphism $\Sigma_*: h_n(X)\to h_{n+1}(\Sigma X)$ is always an isomorphism

Cohomology Theories
-------------------

There are some things that spaces hide to cohomology theories, and we would like to mod out by this "extra information" that we don't really need when we study spaces by means of cohomology theories.

The information that spaces hide is the unstable phenomenon, in the following sense : if $X$ and $Y$ are stably equivalent, for example $\Sigma X \simeq\Sigma Y$, then `
<span class="math display">
\begin{align*}
E_*(X)\cong E_{*+1}(\Sigma X) \cong E_{*+1}(\Sigma Y)\cong E_*(Y)
\end{align*}
<span>`{=html} for any [[cohomolology%20theories.md | cohomolology%20theories.html]] $E_*$. This says that there is no cohomology theory that is going to see a difference between $X$ and $Y$, so we might as well says that they are "the same"

> Cohomology theories do not distinguish stably equivalent spaces.

Representability
----------------

Another good consequence of spectra is the [Brown%20Representability](Brown%20Representability) theorem. It says that any [generalized cohomology theory](generalized%20cohomology%20theory) on spaces is representable by a spectra.

Hopf Invariant 1
----------------

A reason to care about cohomology theories: Adams' two solutions to the [[Cohomology%20operations.md | Cohomology%20operations.html]].

His second proof (with Atiyah) is beautiful and short, but only because he uses an extraordinary cohomology theory, [complex K-theory](complex%20K-theory).

-   <http://people.virginia.edu/~mah7cd/Foundations/Adams,%20Atiyah%20-%20K-theory%20and%20the%20Hopf%20Invariant.pdf>

Categorical Properties
----------------------

You may be familiar with a similar problem at the space level. One can construct the [sequential%20colimits](sequential%20colimits)\*\*.

So you can work with spaces and maps-up-to-homotopy if you like, but you won't be able to do much. It's much better to work with spaces and maps on-the-nose, and to make constructions like the [Pushout](Pushout) or [sequential colimits](sequential%20colimits).

> Slogan: Pass to homotopy as late as possible.

Noting that $\Sigma S^n = S^{n+1}$, we could alternatively define $\mathbb{S} \coloneqq\lim_k \Sigma^k S^0$, then it turns out that $\pi_n \mathbb{S} = \pi_n^S$.

This object is a *spectrum*, which vaguely resembles a chain complex with a differential: `
<span class="math display">
\begin{align*}
X_0 \xrightarrow{\Sigma} X_2 \xrightarrow{\Sigma} X_3 \xrightarrow{\Sigma} \cdots
\end{align*}
<span>`{=html}

Spectra *represent* invariant theories (like cohomology) in a precise way. For example, `
<span class="math display">
\begin{align*}
HG := {\left[ { K(G, 1), K(G, 2),  \cdots } \right]}
\end{align*}
<span>`{=html}

then $H^n(X; G) \cong [X, K(G, 1)]$, and we can similarly extract $H^*(X; G)$ from (roughly) $\pi_* HG := [\mathbb{S}, HG \smash X]$.

> Note: this glosses over some important details! Also, smash product basically just looks like the tensor product in the category of spectra.

A modern direction is cooking up spectra that represent *extraordinary* cohomology theories. There are [Eilenberg--Steenrod axioms](Eilenberg–Steenrod%20axioms) that uniquely characterize homology on spaces.

Homotopy: $\pi_* E \coloneqq[{\mathbb{S}}, E]_*$ Cohomology: $H^*(X; M) = [\mathop{\mathrm{{\Sigma_+^\infty}}}X, HM]_{-*}$. Homology: $H_*(X; M) = [{\mathbb{S}}, HM \wedge X]_*$.

![[_attachments/Pasted%20image%2020211003012214.png]]

Spectrum $E$ with coefficients in $G$: $E \wedge MG$ for $MG$ the corresponding Moore spectrum.
