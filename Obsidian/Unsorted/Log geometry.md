> Reference: Mattia Talpo: Kummer-étale additive invariants of log schemes. <https://www.youtube.com/watch?v=r-CXf24pE9Y>

- Origins: Fontaine-Illusie-Kato (Deligne, Faltings) in the late 80s, schemes/stacks/derived schemes plus additional derived ("log") structure.
- Examples:
	- A pair $(X, D)$ of a [smooth%20divisor](smooth%20divisor).
	- Or $D$ a toroidal embedding, remembers the boundary $D$
		- [toric](toric) boundary
	- Think about this like ""$X$ with a marked point on the boundary"
- How they arise: in characteristic zero, working with a non-compact scheme. Compactify, and use [divisor.md](divisor.md).
- Every log scheme has a locus where the log structure is trivial, $\ts{x\in X\st \OO_{X, x}\units = M_x}$, so [stalk%20of%20a%20sheaf.md](stalk%20of%20a%20sheaf.md) of $M$ are units. Think of this like the complement of the boundary.
	- Trivial part of a log scheme pair $(X, D)$ is the complement of the divisor.
		- Rank of the [free%20monoid](free%20monoid) records number of branches passing through singular points:
	![](_attachments/Pasted%20image%2020210515182026.png)
- Logarithmic geometry generalizes [toroidal](toroidal) geometry to non-smooth settings.
- See [semistable%20degeneration.md](semistable%20degeneration.md)