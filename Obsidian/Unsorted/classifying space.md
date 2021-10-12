---
date: 2021-04-26T10:40
aliases: ["classifying spaces", "BG"]
---

Tags: #homotopy 

# Topics

- [classifying%20stack.md](classifying%20stack.md)
- [principal%20bundle.md](principal%20bundle.md)
- [classifying%20space%20of%20a%20category.md](classifying%20space%20of%20a%20category.md)



# Definitions


:::{.definition title="?"}
The **classifying space** of a category is given by
\[
\B \cat{C} \da \realize{\nerve{\cat{C}}}
,\]
the [geometric realization](geometric%20realization.md) of the [nerve](nerve.md) of $\cat{C}$.
:::

- If $M$ is a monoid, then $\pi_1 \B M \cong M\complete{\gp}$ is the group completion of $M$.


:::{.definition title="?"}
Given $G\in \Top\Grp$, a **classifying space** for $G$, denoted $\B G$, is the base space of a universal [principal%20bundle.md](principal%20bundle.md) $G\dash$ bundle
making $\B G$ a quotient of the contractible space $EG$ by a free $G\dash$ action, so $\B G \cong EG/G$. Call this the **the classifying bundle**:

\begin{tikzcd}
	G && EG \\
	\\
	&& BG
	\arrow["\pi", from=1-3, to=3-3]
	\arrow[from=1-1, to=1-3]
\end{tikzcd}

> [https://q.uiver.app/?q=WzAsMyxbMCwwLCJHIl0sWzIsMCwiRUciXSxbMiwyLCJCRyJdLFsxLDIsIlxccGkiXSxbMCwxXV0=](https://q.uiver.app/?q=WzAsMyxbMCwwLCJHIl0sWzIsMCwiRUciXSxbMiwyLCJCRyJdLFsxLDIsIlxccGkiXSxbMCwxXV0=)

:::



Any other [pullback.md](pullback.md) of the classifying bundle along a map $X \to \B G$.

Let $I(G, X)$ denote the set of isomorphism classes of principal $G\dash$ bundles over a base space $X$, then
$$
I(G, X) \cong \hoTop(X, \B G)
$$
So in other words, isomorphism classes of principal $G\dash$ bundles over a base $X$ are equivalent to homotopy classes of maps from $X$ into the classifying space of $G$.

**Proposition**: 
[vector%20bundles.md](vector%20bundles.md). That is, there is a bijection:
$$
\hoTop(X, \Gr_n(\RR)) \cong \theset{\text{rank $n$ $\RR\dash$vector bundles over $X$}} / \sim
$$
- Every such vector bundle is a pullback of the principal bundle
$$
\GL(n, \RR) \to V_n(\RR^\infty) \to \Gr(n, \RR)
$$

# Notes

- $\B G = K(G, 1)$ when $G$ is discrete.
- $\pi_1(\B G) = G$ and $\pi_n(\B G) = \pi_n EG = 1$.
![](_attachments/Pasted%20image%2020210505015056.png)
![](_attachments/Pasted%20image%2020210505015233.png)

- $X/G$ may fail to be a nice space if points have nontrivial stabilizers.

- It is useful to think of $\B G$ as a space whose points are copies of $G$, so the classifying map $f\in \hoTop(X,\B G)$ assigns each $x \in X$ to the fiber above $x$, which is a copy of $G$.
- For a discrete group $G$, we have $\B G = K(G,1)$, so that $\pi_1(\B G) = G$ and $\pi_k(\B G) = 0$ for $k \neq 1$.
	- Follows from contractibility of $EG$ ?
- For $X\in \Top\Grp$, there is a weak equivalence $\Loop \B X \weakeq X$
	- How to prove: show they both represent the functor $\Prin_G(S^1 \smashprod (\wait)\addbase)$

![](_attachments/Pasted%20image%2020210613124743.png)

## Constructions

- Standard procedure for constructing a classifying space for any group:
	- Construct a 2-complex with the given fundamental group, and then one inductively attaches higher dimensional cells to kill all higher homotopy groups. 
	- Each element $c\in \pi_n(X_{n−1})$ is represented by some continuous map $\gamma_c:S^n\to X_{n−1}$ with image in the $n\dash$-skeleton. 
	- Let $X_n$ be obtained from $X_{n−1}$ by attaching an $(n+1)\dash$cell along $\gamma_c$, for each $c\in π_n(X_{n−1})$.



# Further Reading

- Any [classifying%20space.md](classifying%20space.md).

- $\pi_{i+k}\B^k G = \pi_i G$.
	- Proof: If $G$ is a topological group, there is a universal principal $G\dash$bundle $EG \to BG$ which induces a LES in homotopy. 
	- Since $EG$ is contractible, $$\pi_i EG = \pi_{i+1}EG = 0\implies \pi_{i+1}BG \cong \pi_i G.$$ 
	- When $G$ is an $E_2$ space, $BG$ is a topological group, and so $$\pi_{i+2}(B^2G) = \pi_{i+2}(B(BG)) = \pi_{i+1}(BG) = \pi_i(G).$$
- Corollary: If $G$ is a discrete group, $\B^k G \homotopic K(G, n)$.
	- Proof: $\pi_0 G = G$ and $\pi_i G = 0$ for $i > 0$, so $\pi_k \B^k G = G$.

- One can take classifying spaces of [stack.md](stack.md). 
	- There is a stack that classifies [connection.md](connection.md)*, but it has issues: 
	- It is not a [representable](representable).

- $EG$ can be constructed as 
$$
EG \cong \bigcup_n G \ast G \ast \cdots \ast G
,$$ 
where $\ast$ is join of two spaces: the suspension of the smash product. For example, $G = \ZZ_2$ implies 
$$
EG \cong \bigcup_n \ZZ_2 \ast \cdots = \bigcup_n S^{n-1} = S^\infty
.$$

# Unknown?

- What is $\pi_* \B G$?
	- What is the stable homotopy $\pi_* \Suspend^\infty \B G$?

- Conjecture: $\B (G \oplus H) = \B G \cross \B H$
	- Proof outline: $EG \cross EH$ is contractible, and $G \cross H$ acts freely on it with quotient equal to the RHS?
- Conjecture: $\B(G \ast H) = BG \vee BH$
- Conjecture: $\B(G \tensor_\ZZ H) = ?$ for $G, H\in \Ab$?
- Conjecture: $\B(G \semidirect_\phi H) = ?$

# Examples

- $\B \GL_n(\RR)$ classifies $k\dash$dimensional vector bundles.
- $\B \Aut_\Top(M)$ classifies fiber bundles with fiber $M$
- $\B S_n$ classifies $n\dash$sheeted covering spaces