---
aliases: ["Levi-Cevita connection", "affine connection"]
---

See also [flat%20connection](flat%20connection)

# Motivations

- Provides lifts of curves in $M$ to curves in $\Frame(M)$.
- Connects nearby tangent spaces, tangent vector fields can be differentiated as if they were functions $f \in C^\infty(M; V)$ for a fixed vector space $V$,
- The main invariants of an affine connection are its [curvature%20of%20a%20connection.md](curvature%20of%20a%20connection.md)
	- If both vanish, $\Gamma(TM)$ is almost a [Lie%20algebra.md](Lie%20algebra.md).
- Can define a [covariant%20derivative.md](covariant%20derivative.md)

# Definition

Defined as
$$
\nabla: \Gamma(\mathrm{T} M)^{\tensor 2} & \to \Gamma(\mathrm{T} M) \\(X, Y) & \mapsto \nabla_{X} Y 
,$$
where $\Gamma$ denotes taking smooth global sections, such that for all $f\in C^\infty(M; \RR)$

- $C^\infty(M; \RR)$ linear in the first variable: 
$$
\nabla_{f \mathrm{X}} \mathrm{Y}=f \nabla_{\mathrm{X}} \mathrm{Y}
$$
-  Leibniz rule in the second variable:
$$
\nabla_{\mathrm{X}}(f \mathrm{Y})=\partial_{X} f \mathrm{Y}+f \nabla_{\mathrm{X}} \mathrm{Y}
$$ 
where $\partial_X$ is the [directional%20derivative](directional%20derivative).


Alternatively, a principal $\GL_n(\RR)$ connection on the frame bundle $\Frame(M)$

The **Levi-Cevita connection**: the unique affine torsion-free connection for which [parallel%20transport](parallel%20transport) is an isometry.


# Unsorted

![](_attachments/Pasted%20image%2020210613122858.png)
![](_attachments/Pasted%20image%2020210613122923.png)

- Covariant derivatives with respect to two variables do not need to commute.
	The failure of the commutativity of partial covariant derivatives is closely related to the notion of curvat
	
![](_attachments/Pasted%20image%2020210613124535.png)
![](_attachments/Pasted%20image%2020210613124542.png)
![Ricci curvature](_attachments/Pasted%20image%2020210613124635.png)