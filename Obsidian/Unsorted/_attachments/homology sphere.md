---
aliases: ["ZHS", "QHS", "ZHB", "QHB"]
---

## Application
If $X$ a simply connected, closed 3-manifold is a [homology%20sphere.md](), then it is a homotopy sphere.  ^8a317f

- $H_0 X = \ZZ$ since $X$ is path-connected
- $H_1 X = 0$ since $X$ is simply-connected
- $H_3 X = \ZZ$ since $X$ is orientable
- $H_2 X = H^1 X$ by [Poincaré%20duality](Poincaré%20duality). What group is this?
  - $0 \rightarrow \operatorname{Ext}_{\ZZ}^{1}\left(H_{0}(X ; \mathbb{Z}), \mathbb{Z}\right) \rightarrow H^{1}(X ; \mathbb{Z}) \rightarrow \operatorname{Hom}_{\mathbb{Z}}\left(H_{1}(X ; \mathbb{Z}), \mathbb{Z}\right) \rightarrow 0$ yields
  - $0 \rightarrow \operatorname{Ext}_{\ZZ}^{1}\left(\ZZ, \mathbb{Z}\right) \rightarrow H^{1}(X ; \mathbb{Z}) \rightarrow \operatorname{Hom}_{\mathbb{Z}}\left(0, \mathbb{Z}\right) \rightarrow 0$
  - Then $\operatorname{Ext}_{\ZZ}^{1}\left(\ZZ, \mathbb{Z}\right) = 0$ because $\ZZ$ is a projective $\ZZ\dash$module, so $H^1 X = 0$.
- So $H_*(X) = [\ZZ, 0, 0, \ZZ, 0, \cdots ]$
- So $h_3: \pi_3 X \to H_3 X$ is an isomorphism by [Hurewicz.md](../Hurewicz.md). Pick some $f\in \pi_3 X \cong \ZZ$. By partial application, this induces an isomorphism $H_* S^3 \to H_* X$.
- Taking [CW%20approximation.md](../CW%20approximation.md) for $S^3, X$, we find that $f$ is a homotopy equivalence.