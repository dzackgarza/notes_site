**Definition (Hamiltonian)**:
A smooth function $H: M \to \RR$ will be referred to as an energy functional or a *Hamiltonian*.
If we have $H: M\cross I \to \RR$, we'll refer to this as a *time-dependent Hamiltonian*, i.e. the time slices $H_t: M \to \RR$ given by $H_t(p) = H(p, t)$ are Hamiltonians. ^1c3cf2

> *Remark:*
> If $(M, \omega)$ is a [interior%20product](interior%20product).

# Hamiltonian Vector Field

^e4422f

**Definition (Hamiltonian vector field):**
Given a smooth functional $H: (M, \omega) \to \RR$, the associated *Hamiltonian vector field* is the unique field $X_H$ satisfying $\omega(X_H, \wait) = dH$.

Remark: Conservation of energy
Since $\omega$ is alternating,
\[
X_H(H) = dH(X_H) = \omega(X_H, X_H) = 0
.\]