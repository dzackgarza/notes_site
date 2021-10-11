---
aliases:
- curve
---














[[algebraic%20curve.md](algebraic%20curve.md) [elliptic%20curve.md | elliptic%20curve.html]]

Variety: an integral separated scheme of finite type over $k$. Dimension: dimension as a Noetherian topological space. Curve: a complete (proper over $k$) variety of dimension 1. Singular: for ${\mathfrak{m}}{~\trianglelefteq~}{\mathcal{O}}_{X, x}$ the maximal ideal of the local ring at a closed point $x$, $X$ is singular if $\dim_{\kappa(x)} {\mathfrak{m}}/{\mathfrak{m}}^2 \neq 1$ where $\kappa(x)$ is the residue field at $x$. Valuation: for $f \in {\mathcal{O}}_{X, x}$, $v_p(f)$ is the largest $n$ such that $f\in {\mathfrak{m}}^n$. - Zero: $v_p(f) > 0$ - Pole: $v_p(f) < 0$ - Nonvanishing: $v_p(f) = 0$. Function field: the local ring $K(X) \coloneqq{\mathcal{O}}_{X, \tilde x}$ for $\tilde x$ the generic point. - Degree: for $f:X\to Y$, the degree of the field extension $[K(X) : f^* K(Y)]$. - Ramification index: $e_f(x)$ defined as the largest $n$ such that $f^* {\mathfrak{m}}_{f(x)} \subseteq {\mathfrak{m}}_x^n$. - Ramified: $e_f(x) > 1$. - Alternatively: at a closed point $x$, $f^* {\mathfrak{m}}_{f(x)} = {\mathfrak{m}}_x$ and the extension ${\mathcal{O}}_x/{\mathfrak{m}}_x$ is a finite separable extension of ${\mathcal{O}}_{f(x)} / {\mathfrak{m}}_{f(x)}$. - Structure map: for a scheme $X$ over $k$, the map $S: X\to \operatorname{Spec}k$ - Geometric point: a section to the structure map, $s: \operatorname{Spec}k \to X$ so that $\operatorname{Spec}k \xrightarrow{s} X \xrightarrow{S} \operatorname{Spec}k$ is the identity on $\operatorname{Spec}k$ - Elliptic: genus 1. Coincides with $y^2 = x^3 + Ax + B$. Exists as a pointed scheme $(E, O)$ - Isogeny: a pointed map $(E_1, O_1) \xrightarrow{f} (E_2, O_2)$, so $f(O_1) = O_2$. - Supersingular: $\ker\qty{E \xrightarrow{\cdot p} E } = 0$ where $\operatorname{ch}k = p > 0$. - Ordinary: $\ker\qty{E\xrightarrow{\cdot p} E } = {\mathbb{Z}}/p$ - Etale morphism: flat and unramified. Supposed to look like a local homeomorphism in a covering space.
