---
aliases:
- Category theory
date: 2021-04-26
---

-   [Classical Category Theory](#classical-category-theory)
    -   [References](#references)
    -   [Topics](#topics)
-   [Notes](#notes)














# Classical Category Theory

## References

-   Chapter 1 https://mandal.ku.edu/M996QuillenKTheory/0TheKBooK.pdf\[\[\]\]

Tags: \#category_theory

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Category          Set                       Grp                    CRing            Ring                   Field   Ab                  ${ \mathsf{Vect} }_k$   R-Mod                  $R{\hbox{-}}$cAlg    Sch                                 Top                     ${\mathsf{Top}}_*$
  ----------------- ------------------------- ---------------------- ---------------- ---------------------- ------- ------------------- ----------------------- ---------------------- -------------------- ----------------------------------- ----------------------- --------------------
  Product           $\prod_i A_i$             $\prod_i A_i$                                                  None                                                $\prod_i A_i$                                                                   $\prod_i A_i$           

  Coproduct         $\coprod_i A_i$           $A\ast B$                               $A\star B$             None    $\bigoplus_i A_i$   $\bigoplus_i A_i$       $\bigoplus_i A_i$      $\bigotimes_i A_i$                                       $\coprod A_i$           $\vee_i A_i$

  Pullback          $A\times_C B, A \cap B$   $A\times_C B$          $A\times_C B$                                                                               $A\times_C B$                                                                                           

  Pushout           $A \coprod B/\sim$        $A \ast B/\sim$        $A\otimes_C B$                                                                                                                                                              $A \coprod_{f} B$       

  Initial Object    $\emptyset$               $\left\{{1}\right\}$                    ${\mathbb{Z}}$         None                                                $\left\{{1}\right\}$                        $\operatorname{Spec}(0)$            $\emptyset$             

  Terminal Object   $\left\{{a_1}\right\}$                                            $\left\{{0}\right\}$   None                                                                                            $\operatorname{Spec}{\mathbb{Z}}$   ${\operatorname{pt}}$   

  Zero Object                                 $\left\{{1}\right\}$                    $\left\{{0}\right\}$   None                                                                                                                                                        
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

`
<span class="math display">
\begin{align*}
A\star B \cong A \oplus B \oplus (A \otimes B) \oplus (B \otimes A) \oplus (A \otimes A \otimes B) \oplus (A \oplus B \oplus A) \oplus (B \oplus A \oplus A) \oplus ...
\end{align*}
<span>`{=html}

## Topics

-   [[equivalence%20of%20categories.md | equivalence%20of%20categories.html]]
    -   [full%20functor](full%20functor)
    -   [faithful%20functor](faithful%20functor)
    -   [[adjunction.md | adjunction.html]]
-   Limits and universal properties
    -   [[coproduct.md | coproduct.html]]
    -   [cokernel](cokernel)
    -   [[colimit.md | colimit.html]]
    -   [[monomorphism.md | monomorphism.html]]
-   Homological algebra
    -   [additive%20functor](additive%20functor)
    -   [[abelian%20category.md | abelian%20category.html]]
    -   [additive%20category](additive%20category)
    -   [[monomorphism.md | monomorphism.html]]
    -   [[mapping%20cone.md | mapping%20cone.html]]
-   [[Yoneda%20lemma.md | Yoneda%20lemma.html]]
-   [isomorphism%20of%20functors](isomorphism%20of%20functors)
-   [subfunctor](subfunctor)
-   [exponential%20object](exponential%20object)
-   [monads](monads)
-   [[natural transformation | ../natural%20transformation.html]]
-   [Yoneda embedding](Yoneda%20embedding)
-   [[Yoneda lemma | ../Yoneda%20lemma.html]]
-   [[adjunction | adjunction.html]]
-   [Monad](Monad)
-   [Limit and Colimit](Limit%20and%20Colimit)
-   [Cartesian closed category](Cartesian%20closed%20category)
-   [[Monoidal category | ../Monoidal%20category.html]]
-   [[Symmetric monoidal category | ../Symmetric%20monoidal%20category.html]]
-   [Pushout](Pushout)
    -   Limit definition
-   [[pullback | ../pullback.html]]
    -   Limit definition
-   [[equivalence of categories | ../equivalence%20of%20categories.html]]
    -   Need to state this precisely!

# Notes

-   One regards a category $\mathsf{C}$ as an $\infty{\hbox{-}}$category via its [[nerve.md | nerve.html]].
    -   The nerve lands in simplicial sets, but everything in its image satisfies the Kan extension condition.
-   Categories are special cases of [[simplicial%20set.md | simplicial%20set.html]]
