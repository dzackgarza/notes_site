---
aliases: ["Kervaire", "Kervaire invariant"]
---

Tags: #homotopy 

The Kervaire invariant is an invariant of a certain [framed.md](framed.md)manifold.

Reference: [surgery](surgery.md).

# Motivation

In 1956, Milnor found a curious example of a manifold. He was studying sphere [bundle.md](bundle.md) over spheres, and found that there was a bundle of the form $S^3\to X\to S^4$, and that $X$ is homeomorphic to $S^7$, but it is not diffeomorphic to $S^7$. In other words, there exist exotic smooth structures on manifolds

When does there exist a manifold of [126](126).

The Kervaire invariant has to do with which stable homotopy groups can be represented by exotic spheres

# Setup

- Define $bP_{n+1} \leq \Theta_n$ the subgroup of spheres that bound [parallelizable](parallelizable) manifolds. 
- The Kervaire invariant is an invariant of a [framed](framed.md) manifold that measures whether the manifold could be surgically converted into a sphere. 
	- 0 if true, 1 otherwise.
- [Hill-Hopkins-Ravenel.md](Hill-Hopkins-Ravenel.md):  
	- It equals 0 for $n \geq 254$.
	- Kervaire invariant = 1 only in 2, 6, 14, 30, 62. 
	- **Open case**: 126. 
- **Punchline**: there is a map $\Theta_n/bP_{n+1} \to \pi_n^S/ J$, (to be defined) and the Kervaire invariant influences the size of $bP_{n+1}$. 
	- This reduces the differential topology problem of classifying smooth structures to (essentially) computing homotopy groups of spheres.

- **Open question**: is there a manifold of dimension 126 with Kervaire invariant 1?

