---
aliases: ["principal"]
---

# References

- <http://math.mit.edu/~mbehrens/18.906spring10/prin.pdf>

# Definitions

![](_attachments/Pasted%20image%2020210613123515.png)

**Definition:** 
A **principal $G\dash$ bundle** is a [fiber bundle](fiber%20bundle.md) $F \to E \to B$ for which $G$ acts [freely](freely.md) and [transitively](transitively) on each fiber $F_b:= \pi^{-1}(b]]$. 

I.e. there is a continuous group action
$$\cdot \in \Top\Grp(E\cross G, E)$$ 
such that for every $f \in F_b$ and $g\in G$,
 
- $g\cdot f \in F_b$ 
- $g\cdot f \neq f$.

A principal $G$ bundle is a locally trivial free $G$-space with orbit space $B$. 

**Definition:** A principal bundle $F \to E \mapsvia{\pi} B$ is **universal** iff $E$ is [weakly%20contractible.md](weakly%20contractible.md).

![](_attachments/Pasted%20image%2020210510012449.png)
![](_attachments/Pasted%20image%2020210613123624.png)
![](_attachments/Pasted%20image%2020210613123710.png)

# Examples
- Every [fiber%20bundle.md) $F\to E\to B$ is a principal $\Aut(F](fiber%20bundle.md)%20$F/to%20E/to%20B$%20is%20a%20principal%20$/Aut(F)\dash$ fiber bundle. 
	- In local trivializations, the transition functions are elements of $G$.
- A [covering%20space) $\hat X \mapsvia{p} X$ yields a principal $\pi_1(X](covering%20space)%20$/hat%20X%20/mapsvia{p}%20X$%20yields%20a%20principal%20$/pi_1(X)\dash$bundle.

# Results
- Every principal $G\dash$bundle is a pullback of $EG \to \B G$.
- A principal bundle is trivial iff it admits a [section%20of%20a%20bundle.md](section%20of%20a%20bundle.md). 
- All [section%20of%20a%20bundle.md](section%20of%20a%20bundle.md) always exists.
- Each $F_b \cong G \in \text{TopGrp}$, which may also be taken as the definition.
- Each $F_b$ is a [homogeneous%20space.md](homogeneous%20space.md).
- Although each fiber $F_b \cong G$, there is no preferred identity element in $F_b$. 
	- Locally, one can form a [section%20of%20a%20bundle.md](section%20of%20a%20bundle.md) by choosing some $e\in F_b$ to serve as the identity, but the fibers can only be given a global group structure iff the bundle is trivial. 
	- So each fiber $F_b$ is a $G\dash$ [torsor.md](torsor.md).

## Classification

- If $G$ is discrete, then a principal $G$-bundle over $X$ with total space $\tilde X$ is equivalent to a [regular](regular) [covering](covering.md) map with $\Aut(\tilde X) = G$. 

Under some hypothesis, there exists a [classifying%20space.md](classifying%20space.md) $\B G$.