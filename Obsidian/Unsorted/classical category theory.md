---
date: 2021-04-26
aliases: ["Category theory"]
---

# Classical Category Theory

## References
- Chapter 1 https://mandal.ku.edu/M996QuillenKTheory/0TheKBooK.pdf[[]]

Tags:
#category_theory


| Category        | Set                     | Grp             | CRing          | Ring        | Field | Ab                | $\Vect_k$         | R-Mod             | $R\dash$cAlg       | Sch         | Top               | $\Top_*$     |
| --------------- | ----------------------- | --------------- | -------------- | ----------- | ----- | ----------------- | ----------------- | ----------------- | ------------------ | ----------- | ----------------- | ------------ |
| Product         | $\prod_i A_i$           | $\prod_i A_i$   |                |             | None  |                   |                   | $\prod_i A_i$     |                    |             | $\prod_i A_i$     |              |
| Coproduct       | $\coprod_i A_i$         | $A\ast B$       |                | $A\star B$  | None  | $\bigoplus_i A_i$ | $\bigoplus_i A_i$ | $\bigoplus_i A_i$ | $\bigotimes_i A_i$ |             | $\coprod A_i$     | $\vee_i A_i$ |
| Pullback        | $A\times_C B, A \cap B$ | $A\times_C B$   | $A\times_C B$  |             |       |                   |                   | $A\times_C B$     |                    |             |                   |              |
| Pushout         | $A \coprod B/\sim$      | $A \ast B/\sim$ | $A\otimes_C B$ |             |       |                   |                   |                   |                    |             | $A \coprod_{f} B$ |              |
| Initial Object  | $\emptyset$             | $\ts{1}$        |                | $\ZZ$       | None  |                   |                   | $\ts{1}$          |                    | $\spec(0)$  | $\emptyset$       |              |
| Terminal Object | $\ts{a_1}$              |                 |                | $\ts{0}$    | None  |                   |                   |                   |                    | $\spec \ZZ$ | $\pt$             |              |
| Zero Object     |                         | $\ts{1}$        |                | $\ts{0}$    | None  |                   |                   |                   |                    |             |                   |              |

$$
A\star B \cong A \oplus B \oplus (A \otimes B) \oplus (B \otimes A) \oplus (A \otimes A \otimes B) \oplus (A \oplus B \oplus A) \oplus (B \oplus A \oplus A) \oplus ...
$$

## Topics

- [equivalence%20of%20categories.md](equivalence%20of%20categories.md)
	- [full%20functor](full%20functor)
	- [faithful%20functor](faithful%20functor)
	- [adjunction.md](adjunction.md)
- Limits and universal properties
	- [coproduct.md](coproduct.md)
	- [cokernel](cokernel)
	- [colimit.md](colimit.md)
	- [monomorphism.md](monomorphism.md)
- Homological algebra
	- [additive%20functor](additive%20functor)
	- [abelian%20category.md](abelian%20category.md)
	- [additive%20category](additive%20category)
	- [monomorphism.md](monomorphism.md)
	- [mapping%20cone.md](mapping%20cone.md)
- [Yoneda%20lemma.md](Yoneda%20lemma.md)
- [isomorphism%20of%20functors](isomorphism%20of%20functors)
- [subfunctor](subfunctor)
- [exponential%20object](exponential%20object)
- [monads](monads)
- [natural transformation](natural%20transformation.md)
- [Yoneda embedding](Yoneda%20embedding)
- [Yoneda lemma](Yoneda%20lemma.md)
- [adjunction](adjunction.md)
- [Monad](Monad)
- [Limit and Colimit](Limit%20and%20Colimit)
- [Cartesian closed category](Cartesian%20closed%20category)
- [Monoidal category](Monoidal%20category.md)
- [Symmetric monoidal category](Symmetric%20monoidal%20category.md)
- [Pushout](Pushout)
	- Limit definition
- [pullback](pullback.md)
	- Limit definition
- [equivalence of categories](equivalence%20of%20categories.md)
	- Need to state this precisely!
	
# Notes

- One regards a category $\cat C$ as an $\infty\dash$category via its [nerve.md](nerve.md).
	- The nerve lands in simplicial sets, but everything in its image satisfies the Kan extension condition.
- Categories are special cases of [simplicial%20set.md](simplicial%20set.md)