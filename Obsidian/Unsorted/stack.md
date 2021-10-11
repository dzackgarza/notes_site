---
aliases: ["stack", "stacks"]
---

Tags: #algebraicgeometry 

# References

- [http://www.ams.org/notices/200304/what-is.pdf](http://www.ams.org/notices/200304/what-is.pdf)
- [https://www.math.uni-bielefeld.de/~rehmann/ECM/cdrom/3ecm/pdfs/pant3/fantechi.pdf](https://www.math.uni-bielefeld.de/~rehmann/ECM/cdrom/3ecm/pdfs/pant3/fantechi.pdf)
- [Homotopy theory for stacks](https://arxiv.org/abs/math/0110247)

# Topics
- Moduli stack
	- [moduli%20stack%20of%20elliptic%20curves.md](moduli%20stack%20of%20elliptic%20curves.md)
	- [moduli%20stack%20of%20Higgs%20bundles.md](moduli%20stack%20of%20Higgs%20bundles.md)
- [Quotient%20stack](Quotient%20stack)
- [Gerbe](Gerbe)
- [Algebraic%20space](Algebraic%20space)
- [Artin%20stack](Artin%20stack)
- [Deligne-Mumford%20stack](Deligne-Mumford%20stack)
- [category%20fibered%20in%20groupoids.md](category%20fibered%20in%20groupoids.md)
- Proper: ?
- [Homotopy%20quotient](Homotopy%20quotient)

> ‘Of course, here I’m working with the moduli stack rather than with the moduli space. For those of you who aren’t familiar with stacks, don’t worry: basically, all it means is that I’m allowed to pretend that the moduli space is smooth and there’s a universal family over it.’

# Notes

Neat trick from algebraic geometry: For a stack $\mathcal M =X/G$ where $X$ is a $\CC\dash$variety and $G$ is a finite group, then
$$
H^\wait(\mathcal M; \QQ) \cong \left( H^\wait(X; \QQ)\right)^G
$$
where the RHS denotes the taking the $G\dash$ invariant part. Seems to only work over $\QQ$. The quotient is scheme-theoretic. The actual definition involves [Equivariant%20cohomology.md](Equivariant%20cohomology.md).

- A prestack is a functor $\Aff\Sch_{/k}\op \to \hoType$
	- Source: the infinity category of derived rings over $k$...?
	- Target: the infinity category of spaces.