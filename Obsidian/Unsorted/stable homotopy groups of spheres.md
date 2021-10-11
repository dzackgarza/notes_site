---
date: 2021-04-26
---

Tags: #homotopy 

# References
- Overall summaries
	- Doug Ravenel's book on the homotopy groups of spheres
	- Kochman's book. 
- Mark Mahowald for results using the Adams spectral sequence
- Doug Ravenel for the Adams-Novikov spectral sequence. 
- [https://www.youtube.com/watch?v=jie-ww7RBWY](https://www.youtube.com/watch?v=jie-ww7RBWY)
- [http://mathematics.stanford.edu/wp-content/uploads/2013/08/Victor-Honors-Thesis-2013.pdf](http://mathematics.stanford.edu/wp-content/uploads/2013/08/Victor-Honors-Thesis-2013.pdf)
- [http://archive.ymsc.tsinghua.edu.cn/pacm_download/293/8755-61sphere_final.pdf](http://archive.ymsc.tsinghua.edu.cn/pacm_download/293/8755-61sphere_final.pdf)
- [https://web.stanford.edu/~amwright/HomotopyGroupsOfSoheres.pdf](https://web.stanford.edu/~amwright/HomotopyGroupsOfSoheres.pdf)

Links: 
[J-homomorphism.md](J-homomorphism.md)


# Motivating Problems

- The [Kervaire%20invariant%201.md](Kervaire%20invariant%201.md) problem
- Classifying manifolds up to [framed%20cobordism](framed%20cobordism)
- Distinct [smooth%20structures.md](smooth%20structures.md) on spheres
- Let $M$ be a closed $n$-manifold. Suppose $M$ is homotopy equivalent to $S^n$. Is $M$ homeomorphic to $S^n$? 
- For which $n$ does there exist a unique smooth structure on $S^n$? 
- Let $M \in \Mfd^{\smooth}_n$ be homeomorphic to $S^n$. 
	Is $M$ diffeomorphic to $S^n$? 

# Motivation: Stable Homotopy Groups of Spheres

## Cobordism

If one understood even the stable homotopy groups of spheres very well, one would therefore have a near complete understanding of the group of [smooth%20structures.md](smooth%20structures.md) on the $n\dash$-sphere for $n\neq 4$.

## Kervaire Invariant

One of the most recent spectacular advances in algebraic topology was the solution of (most of) the [framed.md](framed.md) manifolds and stable homotopy groups of spheres. 

Things used to solve this classical problem: [Orthogonal%20Spectra](Orthogonal%20Spectra)

## Classification

**Question**: 
Let $M$ be a closed $n$-manifold. Suppose $M$ is homotopy equivalent to $S^n$. Is $M$ homeomorphic to $S^n$? 

**Answer**:
Yes in all dimensions.

**Question**: 
For which $n$ does there exist a unique smooth structure on $S^n$? 


**Answer**:

-  For $n= 3$, yes, by Moise  every closed [smooth%20structure.md](smooth%20structure.md).  In particular, the 3-sphere has a unique smooth structure.  

- **For n= 4, this question is wildly open.** 

- For $n\geq 5$, Milnor constructed an [smooth%20structure.md](smooth%20structure.md) smooth structure on $S^7$. 
	Kervaire and Milnor [27] showed that the answer is "no" in general for $n\geq 5$.

**Question**:
For which $n$ does there exist a unique smooth structure on $S^n$? 

- Kervaire and Milnor reduced Question 1.5 to a computation of the stable homotopy groups of spheres. In fact, Kervaire and Milnor constructed the $\Theta_n \in \Grp$ of [homotopy%20spheres](homotopy%20spheres). 
	This classifies [smooth%20structures.md](smooth%20structures.md) on $S^n$ for $n\geq 5$.

## The Unknown
The homotopy group $\pi_{n+k}(S^k)$ is a finite group except

1. For $n=0$ in which case $\pi_k(S^k)=\ZZ$;

2. For $k=2m$ and $n=2m−1$ in which case $\pi_{4m−1}(S^{2m})≃Z\oplus F_m$ for $F_m$ a finite group.

# Results

- The [K3%20Surfaces.md](K3%20Surfaces.md) plays an important role in the third stable homotopy group of spheres. 
	- It can be viewed as the source of the [24.md](24.md) in the group $\pi_3 \SS = \ZZ/{24}$. 

## Computations

- Table of $\pi_{n+k}S^n$: [http://www.math.nus.edu.sg/~matwujie/homotopy_groups_sphere.html](http://www.math.nus.edu.sg/~matwujie/homotopy_groups_sphere.html)
- It is #well-known that the third stable homotopy group of spheres is cyclic of order [24.md](24.md). 
- It is also #well-known that the quaternionic [bundle](bundle.md), suspends to a generator of $/pi_8(S^5)=\pi^{st}_3$. 
- It is well-known that the complex [Hopf map](Hopf%20map) $\eta: S^3 \to S^2$ suspends to a generator of $\pi_4(S^3](Hopf%20map)%20$/eta:%20S^3%20/to%20S^2$%20suspends%20to%20a%20generator%20of%20$/pi_4(S^3) = \pi_1 \SS = \ZZ_2$. 
	- For this, there is a reasonably elementary argument, see e.g. 
> Bredon, Topology and Geometry, page 465.
- Complete or nearly complete calculations for $\pi \SS$ localized at a [Morava%20K-theory.md](Morava%20K-theory.md) have been made by Toda, Goerss-Henn-Mahowald-Rezk, and Mark Behrens. 
- Computer calculations of $\Ext$: Robert Bruner or Christian Nassau. 
- The unstable and stable homotopy groups $\pi_i(S^3)$ for $i\leq 64$ are apparently computed in:

> Curtis, Edward B.,Mahowald, Mark, The unstable Adams spectral sequence for $S^3$, Algebraic topology (Evanston, IL, 1988), 125–162, Contemp. Math., 96, Amer. Math. Soc., Providence, RI, 1989.

## Cobordism

-  [J-homomorphism.md](J-homomorphism.md)
The stable homotopy groups (in degree $n$) of spheres are the same as [stable%20framing.md) manifolds (of dimension $n$](stable%20framing.md)%20manifolds%20(of%20dimension%20$n$). 
- The [Pontryagin-Thom%20construction](Pontryagin-Thom%20construction) shows that the stable homotopy groups of spheres in degree $n$ are the same as the groups of stably framed manifolds of dimension $n$ up to cobordism.
- In dimension 3 the generator is given by $\nu = (S^3,Lie)$, the 3-sphere with its [quaternions](quaternions).

# Unsorted

## How to read the stem diagrams

- Each one is for a fixed $p$, for example at $p=2$ each dot depicts a factor of 2 and vertical lines denote additive extensions. For example, for vertical dots:
$$
\cdot \to \cdot \to \cdot \leadsto \ZZ/{2}^{\oplus 3} \quad \\ 
\cdot \to \cdot \leadsto \ZZ/2^{\oplus 2}
.$$

- The [Adams%20Spectral%20Sequence](Adams%20Spectral%20Sequence) instead.

- There are several open problems related to differentials and invariants the arise from this [spectral%20sequence.md) (what is "this"?  > todo](spectral%20sequence.md)%20(what%20is%20"this"?%20#todo), 
	- E.g. what are the permanent cycles?
	- The [Adams-Novikov%20spectral%20sequence.md](Adams-Novikov%20spectral%20sequence.md) ends up being cleaner, fewer differentials!

> Hatcher: Connections between homotopy groups of spheres and low-dimensional geometry and topology have traditionally been somewhat limited, with the [Hopf bundle](Hopf%20bundle) being the thing that comes most immediately to mind. A fairly recent connection is Soren Galatius' theorem that the homology groups of $Aut(F_n)$ (the automorphism group of a free group) are isomorphic in a stable range of dimensions to $H_* \Loop^\infty \Sigma^\infty S^0$, the space whose homotopy groups are the stable homotopy groups of spheres.

## Relation to Classification of Manifolds

> Hatcher: Kervaire-Milnor theory ("Groups of Homotopy Spheres") and Pontryagin-Thom show that our knowledge/ignorance about the stable homotopy groups of spheres is reflected in knowledge/ignorance about classification of manifolds. 

In each dimension $n$, one has a group $\theta_n$ of smooth $n$-manifolds that are homotopy $n$-spheres, up to [framed.md](framed.md) $n+1$-manifolds. Assume $n>4$, so h-cobordism classes are diffeomorphism classes.

Every [stable framing](stable%20framing.md) (missing something). Hence (by [Pontrayagin-Thom](Pontrayagin-Thom)) $S$ is a regular fiber of a map $S_{n+k}\to S_k$ for $k\gg 0$ whose class in $\pi_{n+k}(S_k)$ is the obstruction to $S$ (with chosen stable framing]] being a framed boundary.

Changing the stable framing amounts to adding something in the [J-homomorphism](J-homomorphism.md) 
$J: \pi_n(SO(k)) \to \pi_{n+k}(S_k](J-? /pi_{n+k}(S_k)$. So we get an injective homomorphism $\theta_n/ \bP_{n+1}\to \coker J$ which is onto e.g. for $n$ odd.

We don't know $\coker(J)$ in high dimensions, so we don't know the order of $\theta_n/ \bP_{n+1}$. But [Serre's finiteness theorem](Serre's%20finiteness%20theorem) for the stable stems tells us that $Θ_n/bP_{n+1}$ is finite!

The subgroup $\bP_{n+1}$ is analyzed via [surgery.md](surgery.md)
and the [h-cobordism%20theorem.md](h-cobordism%20theorem.md). There's a nice summary in Lück's Basic introduction to surgery theory.

We have $\bP_{odd} = 0$. There's a formula for $\bP_{4p}$ involving [Bernoulli](Bernoulli%20numbers.md) number numerators; this comes from a known (thanks to Adams) part of the stable stems, namely ???

Finally, $\bP_{4p+2}$ is at most $Z_2$. Here $S$ bounds a [Kervaire%20invariant%20one](Kervaire%20invariant%20one).

Browder showed that the Kervaire invariant can be one only when $4p+2=2l−2$ for some $l$, and [Hill-Hopkins-Ravenel.md](Hill-Hopkins-Ravenel.md) have shown that $l\leq 7$. 

**Conclusion**: $\bP_{4p+2}$ is $Z_2$ except in dimensions $6, 14, 30, 62,$ and possibly $126$, where it's zero.