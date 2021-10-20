












# Phillippe Gille, Talk 1 (Monday, July 12)

## Intro

**Abstract**:

> We shall present the theory of G-torsors (or G-bundles) in algebraic geometry which includes for example vector bundles and quadratic bundles (Grothendieck-Serre, 1958). We focus on the case of an affine smooth connected curve firstly over an algebraically closed field k; we shall show that G-torsors are trivial for a semisimple k-group G. Secondly we will consider the case of a perfect field and discuss the important case of the affine line (Raghunathan-Ramanathan, 1984). This will be an opportunity to deal with étale cohomology and patching techniques.

**References:**

-   <http://math.univ-lyon1.fr/homes-www/gille/>

-   <http://math.univ-lyon1.fr/homes-www/gille/prenotes/gille_pcmi_part1.pdf>

-   V. Chernousov, P. Gille, A. Pianzola, Three-point Lie algebras and Grothendieck's dessins d'enfants. Math. Res. Lett. 23 (2016), 81--104.

-   J.S. Milne, Lectures on etale cohomology, <https://www.jmilne.org/math/CourseNotes/LEC.pdf>

-   M. S. Raghunathan, A. Ramanathan, Principal bundles on the affine line. Proc. Indian Acad. Sci. Math. Sci. 93 (1984), 137--145.

**Notation**:

-   \( {\mathsf{Bun}}_{G} \) is the category of \( G{\hbox{-}} \)bundles
    -   \( {\mathsf{Bun}}_{\operatorname{GL}_r({\mathbb{R}})} \) is the category of real vector bundles of rank \( r \).
    -   \( { {\mathsf{Bun}}_{\operatorname{GL}_r} } \) is the category of vector bundles of rank \( r \) over an unspecified field.
-   \( \mathsf{C}_{/ {R}}  \) is an overcategory/slice category of objects over a fixed object \( R \).
-   \( {\mathsf{Sch}}_{/ {S}}  \) is the category of schemes over a fixed scheme \( S \).
    -   \( {\mathsf{Aff}}{\mathsf{Sch}} \) is the category of affine schemes.
    -   \( {\mathsf{Sch}}_{/ {R}}  \) are the schemes over \( \operatorname{Spec}R \).
-   \( {\mathsf{sm}} \) denotes subcategories of smooth objects
-   \( R \left[ { \scriptstyle {\mathfrak{p}}^{-1}} \right] \) is the localization of \( R \) at \( {\mathfrak{p}} \).
-   \( {\mathsf{cAlg}} \) denotes commutative algebras.
-   An \( R{\hbox{-}} \)functor is an object in \( {\mathsf{Fun}}({\mathsf{Alg}}_{/ {R}} , {\mathsf{Set}}) \), which \( {\mathsf{Aff}}{\mathsf{Sch}} \) embeds into as representable \( R{\hbox{-}} \)functors.
    -   Todo: so any presheaf on \( R{\hbox{-}} \)algebras..?

## Serre-Swan and Vector Group Schemes

::: {.remark}
We'll be looking at ways to go from the world of differential geometry to algebraic geometry. Notably, in differential geometry we have notions of

-   Vector bundles
-   Principal \( G{\hbox{-}} \)bundles
-   Principal homogeneous spaces

Serre-Grothendieck gave algebro-geometric analogs of these in 1958, extending these notions to the setting of \( G{\hbox{-}} \)bundles over a scheme using the étale topology. Today we'll work over rings, or equivalently affine schemes, since most questions will be local. We'll in fact restrict to smooth affine curves over a field.
:::

::: {.remark}
Recall the Serre-Swan correspondence between projective finite modules of finite rank and smooth vector bundles: for \( X \) paracompact, there is an equivalence of categories induced by taking global sections:
\[
\underset{\operatorname{GL}_n({\mathbb{R}})}{ {\mathsf{sm}}{\mathsf{Bun}}_{/ {X}}  } &\rightleftharpoons\mathsf{C^\infty(X; {\mathbb{R}})}{\hbox{-}}\mathsf{Mod}^{{\mathrm{fg}}, \mathop{\mathrm{proj}}} \\
({\mathcal{E}}\to X) &\mapsto \Gamma(X; {\mathcal{E}})
.\]
We'll upgrade this to a statement about affine schemes.
:::

::: {.definition title="Vector Group Scheme"}
Let \( R \in \mathsf{CRing} \) be unital and \( M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \). Let \( V(M) \) denote the affine \( R{\hbox{-}} \)scheme \( V(M) \coloneqq\operatorname{Spec}\qty{\operatorname{Sym}^\bullet M} \), which represents
\[
S\mapsto \mathop{\mathrm{Hom}}_{{\mathsf{S}{\hbox{-}}\mathsf{Mod}}}(M\otimes_R S, S)
.\]
We call \( V(M) \) the **vector group scheme** of \( M \).
:::

::: {.remark}
Note that \( V({-}) \) commutes with arbitrary base change of rings.
:::

::: {.proposition title="Serre-Swan for Vector Group Schemes"}
\( V \) as a functor induces an antiequivalence of categories between \( {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \) and vector group schemes:
\[
{\mathsf{R}{\hbox{-}}\mathsf{Mod}} &\rightleftharpoons{ \mathsf{Vect} }{\mathsf{Grp}}{\mathsf{Sch}}_{/ {R}}  \\
M &\mapsto V(M) \\
\Theta(R) &\mapsfrom R
.\]
:::

::: {.remark}
If \( M \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r<\infty} \), we can consider its dual \( M {}^{ \vee } \). Then \( \operatorname{Sym}^\bullet M \) is finitely presented, and \( S\to M\otimes_R S \) is represented by \( W(M) \coloneqq V(M {}^{ \vee }) \). Note that finite locally free is a necessary condition.
:::

## Vector Bundles over Affine Schemes

::: {.definition title="Vector bundle over an affine scheme"}
A **vector bundle of rank \( r \) over the affine scheme \( \operatorname{Spec}R \)** is an \( X\in {\mathsf{Sch}}_{/ {R}}  \) with a partition \( 1 = \sum_i f_i \) along with isomorphisms
\[
\varphi_i: V\qty{\qty{R \left[ { \scriptstyle f_i^{-1}} \right]}^r} \to X\underset{\scriptscriptstyle {R} }{\times} R \left[ { \scriptstyle f_i^{-1}} \right]
\]
where the transitions
\[
\varphi_i \varphi_j^{-1}: V\qty{\qty{R \left[ { \scriptstyle (f_i, f_j)^{-1}} \right]}^r} {\circlearrowleft}
\]
are linear automorphisms.
:::

::: {.theorem title="Swan-Serre"}
\( M\to V(M) \) induces an equivalence between the groupoid of locally free \( R{\hbox{-}} \)modules of rank \( r \) and the groupoid of vector bundles over \( \operatorname{Spec}R \) of rank \( r \).
\[
{\mathsf{Grpd}}\ni \hspace{4em}
{\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r} &\quad{\rightleftharpoons}\quad \underset{\operatorname{Spec}R}{{\mathsf{Bun}}^r} 
\hspace{4em}\in {\mathsf{Grpd}}
.\]
:::

::: {.example title="Tangent Bundles"}
Given a smooth[^1] map of affine schemes
\[
(X\to Y) \coloneqq(\operatorname{Spec}S\to \operatorname{Spec}R)
&&
r\coloneqq\operatorname{reldim}_{X/Y} \geq 1
,\]
take the tangent bundle, which is dimension \( r \):
\[
T_{X/Y} = V(\Omega_{S_{/ {R}} }^1) \in \underset{\operatorname{Spec}R}{\mathsf{Bun}}
.\]
:::

::: {.example title="Tangent bundle of the real sphere"}
Consider the real sphere
\[
Z \coloneqq\operatorname{Spec}{\mathbb{R}}[x,y,z] / \left\langle{x^2 + y^2 + z^2}\right\rangle
.\]
Its tangent bundle \( T_{Z/{\mathbb{R}}} \) is a nontrivial dimension 2 vector bundle, which is classical but can be proven algebraically. As a consequence, \( Z \) can not be equipped with the structure of a nontrivial algebraic group over \( {\mathbb{R}} \).
:::

## Linear Groups

::: {.remark}
For \( M \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r<\infty} \), consider
\[
\mathop{\mathrm{End}}_{{\mathsf{R}{\hbox{-}}\mathsf{Mod}}}(M) \xrightarrow{\sim}  M {}^{ \vee }\otimes_R M \in {\mathsf{Alg}}_{/ {R}}  \cap{\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r<\infty}
,\]
and so \( V(\mathop{\mathrm{End}}_{{\mathsf{R}{\hbox{-}}\mathsf{Mod}}}(M)) \) makes sense. Thus \( V \) is a functor
\[
V: \mathsf{Assoc}{\mathsf{Alg}}^{{\operatorname{unital}}} \to{ \mathsf{Vect} }{\mathsf{Grp}}{\mathsf{Sch}}_{/ {R}} 
.\]

Consider \( S\mapsto \mathop{\mathrm{Aut}}_S(M\otimes_R S) \), which is representable by
\[
W(\mathop{\mathrm{End}}_{{\mathsf{R}{\hbox{-}}\mathsf{Mod}}} M) \coloneqq\operatorname{GL}(M) = \operatorname{GL}_1(M)
.\]
Note that there are left and right actions
\[
W(M) \curvearrowleft\operatorname{GL}(M)\curvearrowright V(M) 
.\]

If \( R \) is Noetherian, then \( M \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r<\infty} \iff \operatorname{GL}(M) \) is representable. Taking \( M\coloneqq M^r \) recovers the usual \( \operatorname{GL}_n(R) \) for \( n\coloneqq\operatorname{rank}_R M \). Note that local freeness is necessary for representability by a group scheme here.
:::

::: {.remark}
Given \( M \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r<\infty} \) there is a partition \( 1 = \sum f_i \) and isomorphisms to free \( R{\hbox{-}} \)modules
\[
\varphi_i: R \left[ { \scriptstyle f_i^{-1}} \right]^r \to M\underset{\scriptscriptstyle {R} }{\times} R \left[ { \scriptstyle f_i^{-1}} \right]
&&
\varphi_i^{-1}\varphi_j \leadsto
g_{ij} \in \operatorname{GL}_r\qty{R \left[ { \scriptstyle (f_i, f_j)^{-1}} \right]}
.\]
These \( g_{ij} \) in fact satisfy a cocycle condition:
\[
g_{ij} g_{jk} = g_{ik} \in \operatorname{GL}_r(R \left[ { \scriptstyle f_i f_j f_k^{-1}} \right])
.\]
:::

::: {.definition title="Čech Nonabelian Cohomology"}
Take an affine cover
\[
{\mathcal{U}}\coloneqq\left\{{\operatorname{Spec}R \left[ { \scriptstyle f_i^{-1}} \right]}\right\}_{i\in I}\rightrightarrows\operatorname{Spec}R
\]
and define \( H^1({\mathcal{U}}_{/ {R}} ; \operatorname{GL}_r) \) to be 1-cocycles up to some notion of cohomological equivalence. This attaches a vector bundle \( V(M) \) of rank \( r \) a class \( \gamma(M) \in H^1({\mathcal{U}}_{/ {R}} ; \operatorname{GL}_r) \). Conversely, by Zariski gluing, for any such cocycle \( g_{ij} \) we can assign some \( V_g\in { { {\mathsf{Bun}}_{\operatorname{GL}_r} }}^r_{/ {R}}  \) with a trivializations satisfying \( \varphi_i \varphi_j^{-1}= g_{ij} \).

By taking a limit over all covers, we can define
\[
{\check{H}}^1_{\mathrm{zar}}(R; \operatorname{GL}_r) \coloneqq\displaystyle\colim_{{\mathcal{U}}} H^1({\mathcal{U}}_{/ {R}} ; \operatorname{GL}_r)
,\]
the Čech nonabelian cohomology of \( \operatorname{GL}_r \) with respect to the Zariski topology on \( \operatorname{Spec}R \).
:::

::: {.remark}
This classifies \( [V] \in {\mathsf{Bun}}_{/ {R}} ^{\cong, r} \) which are trivialized by \( {\mathcal{U}} \). So there are induced maps
\[
f: \operatorname{GL}_r \to \operatorname{GL}_s \quad\leadsto\quad f_*: V_r\in {\mathsf{Bun}}^r_{/ {R}}  \to V_s \in {\mathsf{Bun}}^s_{/ {R}} 
\]
which extend to functors
\[
f_*: {\mathsf{Bun}}_{/ {R}} ^r \to {\mathsf{Bun}}_{/ {R}} ^s
.\]
:::

::: {.slogan}
Nice constructions for vector bundles arise from morphisms of group schemes.
:::

## Classification of Modules over a Dedekind Ring

::: {.example title="Direct sums"}
Write \( n= \sum n_i \) to get a block map
\[
f: \prod_{i} \operatorname{GL}_{n_i} &\to \operatorname{GL}_n \\
(A_1, \cdots, A_\ell) &\mapsto A_1 \oplus \cdots \oplus A_\ell
.\]
In general, the diagonal map obtained by setting \( n_i=1 \) for all \( i \) yields \( {\mathbb{G}}_m^{\times r} \to \operatorname{GL}_r \) a decomposable vector bundle, i.e. a direct sum of rank 1 bundles.
:::

::: {.example title="Tensor products"}
Write \( n= \prod r_i \) to get a similar map, sometimes called the *Kronecker product*:
\[
f: \prod_{i} \operatorname{GL}_{r_i} &\to \operatorname{GL}_n \\
(A_1, \cdots, A_\ell) &\mapsto A_1 \otimes_R \cdots \otimes_R A_\ell
,\]
:::

::: {.example title="Determinant"}
We set \( \operatorname{det}(V) \coloneqq\operatorname{det}_*(V) \coloneqq\bigwedge\nolimits^r V \), the determinant bundle.
:::

::: {.remark}
The next result is a classical theorem in commutative algebra, and the goal is to give a geometric proof.
:::

::: {.theorem title="Classification of modules over a Dedekind ring"}
Let \( R \) be a Dedekind ring [^2] , then for any
\[
R\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r\geq 1} \implies R \cong R^{r-1} \oplus I && I = \operatorname{det}(R^{r-1} \oplus I) \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\times}, 
\]
where \( I \) is invertible and unique up to isomorphism. Thus vector bundles over \( R \) are decomposable and classified by their determinant.
:::

::: {.corollary title="Characterization of trivial modules"}
A locally free \( R{\hbox{-}} \)module \( M \) of rank \( r\geq 1 \) is trivial \( \iff \operatorname{det}M \) is trivial.
:::

::: {.proof title="of the classification theorem"}
We're given \( V(M) \) a vector bundle, which trivializes over an affine subset \( \operatorname{Spec}R \left[ { \scriptstyle f_i^{-1}} \right] \). Set
\[
\Sigma \coloneqq\operatorname{Spec}R / \operatorname{Spec}R \left[ { \scriptstyle f_i^{-1}} \right] = \left\{{{\mathfrak{p}}_i}\right\}_{i=1}^c && {\mathfrak{p}}_i \in \operatorname{mSpec}R
.\]
Let \( \widehat{R} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right] \) be the completion of the residue DVR and let \( \widehat{K} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right] \coloneqq K\otimes_R \widehat{R} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right] \) its fraction field. By Nakayama, \( M\otimes_R \widehat{R} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right] \) is free, so pick a trivialization. We can use this to produce a double coset:
\[
c_{\Sigma}\left(R; \operatorname{GL}_{r}\right)
\coloneqq
\operatorname{GL}_{r}\left(R_{f}\right) 
\backslash 
\quad \prod_{j=1}^c \operatorname{GL}_{r}
\left(
\widehat{K} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]
\right) 
\quad / 
\operatorname{GL}_{r}
\left(
\widehat{R}  \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]
\right)
.\]

::: {.claim}
The following map is injective:
\[
\ker\qty{H^1(R; \operatorname{GL}_r) \to H^1\qty{R \left[ { \scriptstyle f^{-1}} \right]; \operatorname{GL}_r}} \to c_\Sigma(R; \operatorname{GL}_r)
,\]
although we'll only need that its kernel is trivial.
:::

We can assume \( \operatorname{det}V(M) \) is trivial to get
\[
g_i \in \ker \operatorname{det}_* \coloneqq\ker\qty{c_\Sigma(R; \operatorname{GL}_r) \to c_\Sigma(R; {\mathbb{G}}_m)}
.\]
Changing trivializations, we can assume \( g_i \in {\operatorname{SL}}_n(\widehat{K}_{{\mathfrak{p}}_i}) \), which is generated by elementary matrices. Using that \( R_f \subseteq \prod_i \widehat{K} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right] \) is dense, we get
\[
{\operatorname{SL}}_n\qty{\widehat{K} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]} \subseteq \prod_i {\operatorname{SL}}_n \qty{ \widehat{K} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]} \text{ is dense}
.\]
But since each \( {\operatorname{SL}}_n\qty{\widehat{R} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]} \) is clopen in \( {\operatorname{SL}}_n\qty{\widehat{K} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]} \), we obtain \( c_\Sigma(R; {\operatorname{SL}}_r) = 1 \) and injectivity allows us to conclude that \( V(M) \) is a trivial vector bundle.
:::

::: {.remark}
This is a "strong approximation" argument.
:::

## Replacing the Zariski Topology

::: {.definition title="Quadratic Forms"}
Given an \( M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \), a map \( q:M\to R \) is a **quadratic form** iff

-   \( q(\lambda x) = \lambda^2 q(x) \) for all \( \lambda\in R, x\in M \),
-   The associated form is symmetric and bilinear:
    \[
    b_q: M\otimes_R M &\to R \\
    (x, y) &\mapsto q(x+y) - q(x) -q(y)
    .\]

The form \( q \) is **regular** iff \( b_q \) induces an isomorphism \( M \xrightarrow{\sim} M {}^{ \vee } \).
:::

::: {.example title="The hyperbolic form"}
For \( V\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, \operatorname{rank}< \infty} \), the **hyperbolic form** is defined by
\[
q_{\operatorname{hyp}}: V \oplus V {}^{ \vee }&\to R \\
v \otimes\psi &\mapsto \psi(v)
.\]
:::

::: {.remark}
The definition of nonabelian cohomology will extend to arbitrary group schemes, but the Zariski topology is not fine enough. One reason to try extending this theory will be quadratic bundles. For a regular quadratic form \( (M, q) \) with \( M \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, \operatorname{rank}< \infty} \), we can draw an analogy with usual quadratic forms. So for any \( R{\hbox{-}} \)ring \( S \) we could define a subgroup scheme
\[
{\operatorname{O}}(q, M) \coloneqq\left\{{g \in \operatorname{GL}(M)(S) {~\mathrel{\Big|}~}q_S \circ g = q_S }\right\} \leq \operatorname{GL}(M)
\]
and similarly define \( H^1({\mathcal{U}}_{/ {R}} ; {\operatorname{O}}(q, M)) \) for any open cover \( {\mathcal{U}}\rightrightarrows R \).
:::

::: {.lemma title="?"}
\( H^1_{\mathrm{zar}}({\mathcal{U}}_{/ {R}} ; {\operatorname{O}}(q, M)) \) classifies isomorphism classes of regular quadratic forms \( (q', M') \) which are locally isomorphic over \( {\mathcal{U}} \) to \( (q, M) \).
:::

::: {.remark}
Upshot: not all regular quadratic forms over \( R \) of a fixed dimension \( r \) need be locally isomorphic, noting that this already fails for \( R\coloneqq{\mathbb{R}} \).
:::

::: {.remark}
Given a morphism of group schemes \( f:G\to H \), we would like control over \( H^1_{\mathrm{zar}}(R; G) \to H^1_{\mathrm{zar}}(R; H) \). Consider the Kummer map
\[
f_d: {\mathbb{G}}_m &\to {\mathbb{G}}_m \\
t &\mapsto t^d
.\]
This induces \( \times d \) on \( {\operatorname{Pic}}(R) \), and on \( {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\times} \) corresponds to \( M\to M^{\otimes d} \). We'd like to understand its kernel and image, which will generally involve higher \( H_\text{ét} \). Given
\[
[M] \in \ker ({\operatorname{Pic}}(R) \xrightarrow{\times d} {\operatorname{Pic}}(R))
,\]
there is a trivialization \( \theta: R\to M^{\otimes d} \). We'll define a group
\[
A_d(R) \coloneqq\left\{{ (M, \theta) {~\mathrel{\Big|}~}M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\times}, \theta \text{ a trivialization}}\right\}/\cong
,\]
which will correspond to something in \( H_\text{ét} \). There is an exact sequence

```{=tex}
\begin{tikzcd}
    {R^{\times}/(R^{\times})^d} && {A_d(R)} && {{\operatorname{Pic}}(R)} && {{\operatorname{Pic}}(R)} \\
    a && {[R, {\theta_a: R\to R^{\otimes d}, x\mapsto ax} ]} \\
    && {[M, \theta]} && {[M]}
    \arrow["\varphi", from=1-1, to=1-3]
    \arrow["\mathop{\mathrm{Forget}}", from=1-3, to=1-5]
    \arrow["{\times d}", from=1-5, to=1-7]
    \arrow[maps to, from=2-1, to=2-3]
    \arrow[maps to, from=3-3, to=3-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMCwwLCJSXFx1bml0cy8oUlxcdW5pdHMpXmQiXSxbMiwwLCJBX2QoUikiXSxbNCwwLCJcXFBpYyhSKSJdLFs2LDAsIlxcUGljKFIpIl0sWzAsMSwiYSJdLFsyLDEsIltSLCB7XFx0aGV0YV9hOiBSXFx0byBSXntcXHRlbnNvciBkfSwgeFxcbWFwc3RvIGF4fSBdIl0sWzIsMiwiW00sIFxcdGhldGFdIl0sWzQsMiwiW01dIl0sWzAsMSwiXFxwaGkiXSxbMSwyLCJcXEZvcmdldCJdLFsyLDMsIlxcdGltZXMgZCJdLFs0LDUsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbNiw3LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV1d)
:::

::: {.remark}
Grothendieck-Serre's idea is to extend the notion of covers, first with étale covers, and later with flat covers which are simpler as a first approach.
:::

::: {.definition title="Flat Covers"}
A **flat (fppf) cover** of \( R \) is a finite collection \( \left\{{S_i}\right\} \) of \( R{\hbox{-}} \)rings where \( S_i \) is a flat finitely presented \( R{\hbox{-}} \)algebra and
\[
\operatorname{Spec}R = \displaystyle\bigcup_{i\in I} \operatorname{im}(\operatorname{Spec}S_i \to \operatorname{Spec}R)
.\]
:::

::: {.remark}
Setting \( S\coloneqq{\textstyle\coprod}S_i \), this says \( S \) is a faithfully flat finitely presented \( R{\hbox{-}} \)algebra. Note that the Zariski cover is a flat cover.
:::

::: {.remark}
For \( G\in{\mathsf{Grp}}{\mathsf{Sch}}_{/ {R}}  \), a 1-cocycle for \( G \) and \( S_{/ {R}}  \) is an element \( g\in G(S\otimes_R S) \) where
\[
q_{12}^*(g) g_{2,3}^*(g) = q_{1, 3}^* \in G(S^{\otimes_R 3})
.\]
We can use the finite presentation hypothesis to pass to a limit over all flat covers of \( \operatorname{Spec}R \) and define
\[
H^1_\mathrm{\operatorname{fppf}}(R; G)\coloneqq\colim H^1(S_{/ {R}} ; G)
.\]
.
:::

::: {.definition title="Torsors"}
A **right \( G{\hbox{-}} \)torsor** \( X\in {\mathsf{Sch}}_{/ {R}} \curvearrowleft G \), so \( X \) is a scheme over \( R \) with a right \( G{\hbox{-}} \)action, where

-   The following map is an isomorphism:
    \[
    X { \underset{\scriptscriptstyle {R} }{\times} } G &\xrightarrow{\sim} X{ \underset{\scriptscriptstyle {R} }{\times} } {\color{green} X} \\
    (x, g) &\mapsto (x, x\cdot g)
    .\]
    This says that \( G(T) \curvearrowright X(T) \) for all \( T\in \mathsf{Ring}_{/ {R}}  \).

-   There exists a flat cover \( \left\{{R_i{}_{/ {R}} }\right\}_i \rightrightarrows X \) with \( X(R_i)\neq 0 \).

    This says \( X \) is locally trivial in the flat topology.

Morphisms of torsors are \( G{\hbox{-}} \)equivariant maps of schemes, and condition 1 forces these to all be isomorphisms, so \( {\mathsf{Torsor}{\hbox{-}}\mathsf{G} }_{/ {R}}  \in {\mathsf{Grpd}} \).
:::

::: {.definition title="Split torsor"}
Setting \( X\coloneqq G \) with \( G\curvearrowright G \) by right-translation yields the **split torsor**.
:::

::: {.definition title="Trivial Torsor"}
If \( X(R) \neq \emptyset \), so \( X \) has an \( R{\hbox{-}} \)point, the point \( x\in X(R) \) defines an isomorphism
\[
G &\xrightarrow{\sim} X \\
g &\mapsto x\cdot g
.\]

In this case, we say that \( X \) is a **trivial torsor**.
:::

::: {.example title="?"}
\( G\in {\mathsf{G}{\hbox{-}}\mathsf{Torsor}}_{/ {R}}  \) is a trivial \( G{\hbox{-}} \)torsor.
:::

::: {.definition title="First fppf cohomology"}
The functor
\[
R\mapsto \mathop{\mathrm{Aut}}_{{\mathsf{Torsor}{\hbox{-}}\mathsf{G} }_{/ {R}} }(G)
.\]
of automorphisms of the trivial \( G{\hbox{-}} \)torsor \( G \) is representable by \( G \), acting by left translation. We formally define the **first fppf cohomology** to be isomorphism classes of \( G{\hbox{-}} \)torsors:
\[
H^1_\mathrm{\operatorname{fppf}}(R; G) \coloneqq{\mathsf{Torsor}{\hbox{-}}\mathsf{G} }^{\cong}_{/ {R}}  \text{ for the flat topology}
,\]
and for \( S\to R \in {\mathsf{Cov}}^\mathrm{flat}(R) \), we define the subset of \( G{\hbox{-}} \)torsors trivialized over \( S \) as
\[
H^1_\mathrm{\operatorname{fppf}}(S_{/ {R}} ; G) \subseteq H^1_\mathrm{\operatorname{fppf}}(R; G)
.\]
:::

::: {.definition title="Class map"}
There is a **class map**
\[
\gamma: H^1_\mathrm{\operatorname{fppf}}(S_{/ {R}} ; G) \to {\check{H}}^1_\mathrm{\operatorname{fppf}}(S_{/ {R}} ; G)
.\]
:::

```{=tex}
\todo[inline]{How do you construct the class map..?}
```
::: {.remark}
For \( X\in {\mathsf{G}{\hbox{-}}\mathsf{Torsor}}_{/ {R}}  \) with a trivialization
\[
\varphi: G{ \underset{\scriptscriptstyle {R} }{\times} } S \xrightarrow{\sim} X { \underset{\scriptscriptstyle {R} }{\times} } S
,\]
there are two trivializations over \( S^{\otimes_R 2} \):

```{=tex}
\begin{tikzcd}
    {G{ \underset{\scriptscriptstyle {R} }{\times} } S^{\otimes_R 2}} \\
    \\
    {G{ \underset{\scriptscriptstyle {R} }{\times} } S^{\otimes_R 2}} && {X{ \underset{\scriptscriptstyle {R} }{\times} } S^{\otimes_R 2}}
    \arrow["{\varphi \otimes 1}"', from=3-1, to=3-3]
    \arrow["{p_1^*(\varphi) }"', shift right=1, from=1-1, to=3-3]
    \arrow["{p_2^*(\varphi) = \varphi \otimes 1}", shift left=1, from=1-1, to=3-3]
    \arrow["{1\otimes\tau_{12}}"', from=1-1, to=3-1]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJHXFxmaWJlcnByb2R7Un0gU157XFx0ZW5zb3JfUiAyfSJdLFswLDIsIkdcXGZpYmVycHJvZHtSfSBTXntcXHRlbnNvcl9SIDJ9Il0sWzIsMiwiWFxcZmliZXJwcm9ke1J9IFMiXSxbMSwyLCJcXHZhcnBoaSBcXHRlbnNvciAxIiwyXSxbMCwyLCJwXzFeKihcXHZhcnBoaSkgIiwyLHsib2Zmc2V0IjoxfV0sWzAsMiwicF8yXiooXFx2YXJwaGkpID0gXFx2YXJwaGkgXFx0ZW5zb3IgMSIsMCx7Im9mZnNldCI6LTF9XSxbMCwxLCIxXFx0ZW5zb3IgXFx0YXVfezEyfSIsMl1d)

Thus \( p_1(\varphi)^{-1}\circ p_2(\varphi) \in \mathop{\mathrm{Aut}}_{{\mathsf{G}{\hbox{-}}\mathsf{Torsor}}}(G)_{/ {S^{\otimes_R 2} }}  \) is an automorphism of the trivial torsor, thus acts by left translation by some \( g \in G(S^{\otimes_R 2}) \). An argument shows that \( g \) is a 1-cocycle and that changing \( \varphi \) only changes \( g \) by a coboundary, so the class map is well-defined.
:::

::: {.definition title="Amitsur Resolution"}
If \( X\in {\mathsf{G}{\hbox{-}}\mathsf{Torsor}} \) has a trivialization \( \phi \), then over \( S^{\otimes_R 2} \) we have two trivializations:

Let \( T \) be a faithfully flat descent of \( R \), then the **Amitsur complex** is defined as
\[
0\to M\to M\otimes_R T \to M \otimes_R T^{\otimes_R 2} \to \cdots && \leadsto M \to M\otimes_R {\mathbb{T}}^\bullet(T)
,\]
where \( {\mathbb{T}} \) denotes the tensor algebra. This has a differential given by
\[
{{\partial}}(m \otimes\mathbf{t}) = \sum_{i} (-1)^i m \otimes\psi_i(\mathbf{t})
,\]
where \( \psi_i \) is the \( i \)th face map inserting a 1 between the \( i \) and \( i+1 \)st tensor factors.
:::

::: {.remark}
An important theorem is that the Amitsur complex is exact for each \( M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \), which for any \( X\in {\mathsf{Aff}}{\mathsf{Sch}}_{/ {R}}  \) allows an identification
\[
X(R) = \left\{{ x\in X(T) {~\mathrel{\Big|}~}p_1^*(x) = p_2^*(x) \in X\qty{ T^{\otimes_R 2} }  }\right\} 
.\]
:::

::: {.definition title="Descent data"}
For \( N\in {\mathsf{T}{\hbox{-}}\mathsf{Mod}} \), consider
\[
p_1^*(N) \coloneqq T\otimes_R M
,\quad
p_2^*(N) \coloneqq M\otimes_R T
 && 
 \in \mathsf{T^{\otimes_R 2}}{\hbox{-}}\mathsf{Mod}
.\]

A **descent datum** on \( N \) is an isomorphism
\[
\varphi: p_1^*(N) \xrightarrow{\sim} p_2^*(N) && \in \mathsf{T^{\otimes_R 2}}{\hbox{-}}\mathsf{Mod}
.\]
of \( T^{\otimes_R 2}{\hbox{-}} \)modules making the following diagram commute:

```{=tex}
\begin{tikzcd}
    {T^{\otimes_R 2} \otimes_R N} &&&& {N \otimes_R T^{\otimes_R 2}} \\
    \\
    \\
    && {T \otimes_R N \otimes_R T}
    \arrow["{\varphi_2 = (1\otimes\varphi)\circ \tau_{12}}", from=1-1, to=4-3]
    \arrow["{\varphi_3 = (\varphi\otimes 1) \circ \tau_{23}}"', from=1-1, to=1-5]
    \arrow["{\varphi_1 = 1\otimes\varphi}"', from=1-5, to=4-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMyxbMCwwLCJUXntcXHRlbnNvcl9SIDJ9IFxcdGVuc29yX1IgTiJdLFs0LDAsIk4gXFx0ZW5zb3JfUiBUXntcXHRlbnNvcl9SIDJ9Il0sWzIsMywiVCBcXHRlbnNvcl9SIE4gXFx0ZW5zb3JfUiBUIl0sWzAsMiwiXFx2YXJwaGlfMiA9ICgxXFx0ZW5zb3IgXFx2YXJwaGkpXFxjaXJjIFxcdGF1X3sxMn0iXSxbMCwxLCJcXHZhcnBoaV8zID0gKFxcdmFycGhpXFx0ZW5zb3IgMSkgXFxjaXJjIFxcdGF1X3syM30iLDJdLFsxLDIsIlxcdmFycGhpXzEgPSAxXFx0ZW5zb3IgXFx2YXJwaGkiLDJdXQ==)

Here \( \tau_{ij} \) is the map that swaps the \( i \) and \( j \)th tensor factors, so e.g. \( \varphi_3(t_1 \otimes t_2 \otimes n) \coloneqq\varphi(t_1\otimes n)\otimes t_2 \).

There is a category of \( T{\hbox{-}} \)modules with descent data, where objects are pairs \( (T, \varphi) \) and morphisms are clear, and I'll write this as \( {\mathsf{T}{\hbox{-}}\mathsf{Mod}}{\mathsf{Desc}} \). For \( M\in{\mathsf{R}{\hbox{-}}\mathsf{Mod}} \), there is a **canonical descent datum**
\[
{\mathrm{can}}_M: p_1^*(M\otimes_R T) \xrightarrow{\sim} p_2^*(M\otimes_R T)
.\]
:::

::: {.theorem title="(Grothendieck) Faithfully flat descent"}
There is a functor inducing an equivalence of categories:
\[
F: {\mathsf{R}{\hbox{-}}\mathsf{Mod}}&\rightleftharpoons{\mathsf{T}{\hbox{-}}\mathsf{Mod}}{\mathsf{Desc}}\\
M &\mapsto (M\otimes_R T, {\mathrm{can}}_M) \\
\left\{{ n\in N {~\mathrel{\Big|}~}n\otimes 1 = \varphi(1\otimes n) }\right\} 
&\mapsfrom
(N, \varphi) 
.\]
This induces an equivalence of categories
\[
{\mathsf{cAlg}}_{/ {R}} ^{{\operatorname{unital}}} &\rightleftharpoons{\mathsf{cAlg}}^{{\operatorname{unital}}}_{/ {T}} {\mathsf{Desc}}
.\]
:::

::: {.remark}
This theorem is a good reason to focus on the affine setting. Faithfully flat descent implies the following:
:::

::: {.theorem title="?"}
Let \( M \in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r} \) then the functor
\[
\mathsf{S}{\hbox{-}}\mathsf{Mod} &\to {\mathsf{Set}}\\
S &\mapsto \mathop{\mathrm{Isom}}_{{\mathsf{S}{\hbox{-}}\mathsf{Mod}}}(S^r, M\otimes_R S)
\]
is representable by an object \( X^M \). This induces an equivalence of categories
\[
{\mathsf{Grpd}}\ni \hspace{4em} X^{({-})}: {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r} &\rightleftharpoons{\mathsf{\operatorname{GL}_r}{\hbox{-}}\mathsf{Torsor}}_{/ {R}}  \hspace{4em} \in {\mathsf{Grpd}}
.\]
:::

::: {.corollary title="Hilbert=Grothendieck 90"}
\[
H^1_{\mathrm{zar}}(R; \operatorname{GL}_r) \cong H^1_\mathrm{\operatorname{fppf}}(R; \operatorname{GL}_r)
.\]
:::

::: {.remark}
In particular, if \( R \) is local or semilocal, \( H^1_\mathrm{\operatorname{fppf}}(R; \operatorname{GL}_r) = 1 \). This also holds for \( R \) replaced by any \( B \in {\mathsf{Alg}}_{/ {R}} { {}^{ \operatorname{sep} } } \), e.g. a finite étale or Azumaya algebra.
:::

::: {.lemma title="The class map is injective"}
\[
H^1_\mathrm{\operatorname{fppf}}(S_{/ {R}} ; G)\hookrightarrow{\check{H}}^1_\mathrm{\operatorname{fppf}}(S_{/ {R}} ; G)
.\]
:::

::: {.remark}
By passing to the limit over flat covers, we get an isomorphism on \( H^1_\mathrm{\operatorname{fppf}}(R; G) \to {\check{H}}^1_\mathrm{\operatorname{fppf}}(R; G) \), and we can descend torsors under an affine scheme. The proof involves the following construction:
:::

::: {.definition title="Twisting"}
If \( Y \in G\curvearrowright{\mathsf{Aff}}{\mathsf{Sch}}_{/ {R}}  \) has a left \( G{\hbox{-}} \)action, then the action map
\[
G\underset{\scriptscriptstyle {R} }{\times} S^{\otimes_R 2}
\xrightarrow{\sim}
Y\underset{\scriptscriptstyle {R} }{\times} S^{\otimes_R 2}
\]
is an isomorphism that defines a descent datum. If \( G \) acts on itself by inner automorphism, \( G_g \) is called that twisted \( R{\hbox{-}} \)group scheme, which acts on \( Y_g \). So for any \( E\in {\mathsf{G}{\hbox{-}}\mathsf{Torsor}} \), we can define the **twists** \( { {}^{Y} E } \) and \( { {}^{G} E } \). In general, we can twist \( G{\hbox{-}} \)schemes equipped with an amply invertible \( G{\hbox{-}} \)linearized line bundle.
:::

::: {.theorem title="?"}
If \( G \) is affine, the class map \( \gamma \) is an isomorphism.
:::

# Phillippe Gille, Talk 2 (Tuesday, July 13)

## Intro

::: {.remark}
Let \( M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}} \). Reminders of notation

-   \( V(M) \coloneqq\operatorname{Spec}\operatorname{Sym}^\bullet M \) which represents
    \[
    S \mapsto \hom_{{\mathsf{(S)}{\hbox{-}}\mathsf{Mod}}}(M\otimes_R S, S)
    ,\]
    is the **vector group scheme** of \( M \).
-   \( W(M)\coloneqq V(M {}^{ \vee }) \) which represents \( M\otimes_R {-} \) (and doesn't seem to have a name).
-   For \( Y\in G{\hbox{-}}{\mathsf{Aff}}{\mathsf{Sch}}_{/R} \) (affine schemes with a left \( G{\hbox{-}} \)action), \( Y_g\in {\mathsf{Aff}}{\mathsf{Sch}}_{/R} \) is the **twist** of \( Y \) by the 1-cocycle \( g \) defined by the action map:
    \[
    g: 
    Y \underset{\scriptscriptstyle {R} }{\times} S^{\otimes_R 2} 
    \xrightarrow{\sim} 
    Y \underset{\scriptscriptstyle {R} }{\times} S^{\otimes_R 2} 
    .\]
    -   For any \( G{\hbox{-}} \)torsor \( E \) and any \( Y\in G{\hbox{-}}{\mathsf{Sch}} \) with an ample invertible \( G{\hbox{-}} \)linearized bundle[^3] , one can similarly define **twists** \( { {}^{E} Y } \).
-   For \( T \) a faithfully flat extension of \( R \), the **Amitsur resolution** is given by
    \[
    M\to M \otimes_R {\mathbb{T}}(T)^\bullet
    && \text{where }
    {\mathbb{T}}(V)^\bullet \coloneqq V \oplus V^{\otimes 2} \oplus \cdots
    .\]
    I.e., this resolves \( M \) by the tensor algebra (or free algebra) on \( T \).

We'll now discuss some important special cases of \( G{\hbox{-}} \)torsors. The following claim is in analogy to \( {\mathsf{Coh}}(X) \) for \( X\in {\mathsf{Aff}}{\mathsf{Sch}} \):
:::

::: {.fact title="Vector group schemes have trivial cohomology"}
If \( M\in {\mathsf{Fin}}{\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r<\infty} \), then \( {\check{H}}^1(R; W(M)) = 0 \) and every \( W(M){\hbox{-}} \)torsor is trivial.

The following are some important special cases:
:::

::: {.definition title="Finite Constant Group Scheme"}
For any \( \Gamma\in {\mathsf{Fin}}{\mathsf{Grp}} \), \( \Gamma_R \) is the **finite constant group scheme** attached to any \( \Gamma \), and is defined by
\[
\Gamma_R(S) \coloneqq\left\{{ f:\operatorname{Spec}S\to \Gamma {~\mathrel{\Big|}~}f\text{ is locally constant} }\right\} \in {\mathsf{Grp}}
.\]
:::

## Galois Covers

::: {.definition title="Galois Cover"}
A \( \Gamma_R{\hbox{-}} \)torsor of the form \( \operatorname{Spec}S\to \operatorname{Spec}R \) is equivalently a Galois \( \Gamma{\hbox{-}} \)algebra \( S \) and is referred to as a **Galois cover**.
:::

::: {.example title="?"}
A finite Galois extension \( L_{/ {k}}  \) with Galois group \( \Gamma \coloneqq{ \mathsf{Gal}} (L_{/ {k}} ) \) yields a Galois cover \( \operatorname{Spec}L\to \operatorname{Spec}k \).
:::

::: {.example title="?"}
Another nice case is when \( \Gamma \) is the automorphism group associated to some algebraic structure, i.e. when one has **forms**. For example, take \( \Gamma \coloneqq{\operatorname{O}}_{2n} = \mathop{\mathrm{Aut}}(q_{\operatorname{hyp}}) \) for the hyperbolic form \( q_{\operatorname{hyp}} \) on \( R^n \). Descent gives an equivalence of categories
\[
{\mathsf{Grpd}}\ni \left\{{\substack{ \text{Regular quadratic forms } q \\ \text{with } \operatorname{rank}q = 2n}}\right\} 
\rightleftharpoons
H^1_{\mathrm{\operatorname{fppf}}}(R; {\operatorname{O}}_{2n})
,\]
which uses that all forms appearing on the left-hand side are locally isomorphic to \( q_{\operatorname{hyp}} \) in the flat topology.
:::

::: {.example title="?"}
Take \( \Gamma \coloneqq S_n \) the symmetric group, so
\[
S_n(X) = \mathop{\mathrm{Aut}}_{\mathsf{Grp}}(X^{\times n}) && \forall S \in {\mathsf{Alg}}_{/R}
.\]

The same yoga shows there is a categorical equivalence
\[
S_n{\hbox{-}}\text{torsors} &\rightleftharpoons{\mathsf{Fin}}{\mathsf{Alg}}^{\text{ét}}_{/R}
,\]
where we use that every \( X\in {\mathsf{Fin}}{\mathsf{Alg}}^{\text{ét}} \) of degree \( n \) is locally isomorphism to \( R^n \). The inverse is given by descent.
:::

## Flat Quotients

::: {.definition title="Flat Quotient"}
For \( X, H\in {\mathsf{Grp}}{\mathsf{Sch}}_{/R} \), a map \( H\to X \) is a **flat quotient** of \( H \) by \( G \) iff

-   For each \( S\in {\mathsf{Alg}_{/R}} \) the map \( H(S)\to X(S) \) induces an injection \( H(S)/G(S)\hookrightarrow X(S) \), and
-   For each \( x\in X(S) \) there exists a flat cover \( S'\to S \) with \( x_{S'} \in \operatorname{im}(H(S') \to X(S')) \) (so \( f \) is *couvrant* en français).
:::

::: {.example title="of flat quotients"}
```{=tex}
\envlist
```
-   \( {\mathbb{G}}_m = \operatorname{GL}_r /_{{\operatorname{Flat}}}\, {\operatorname{SL}}_r \).
-   \( {\mathbb{G}}_m = {\mathbb{G}}_m /_{{\operatorname{Flat}}}\, \mu_d \).
:::

::: {.lemma title="?"}
Let \( X \) be the flat quotient of \( H \) by \( G \).

1.  \( H\to X \) is a \( G{\hbox{-}} \)torsor
2.  There is an exact sequence of pointed sets:
    \[
    1 \to G(R) \to H(R) \to X(R) \xrightarrow{\phi(x) = [f^{-1}(x)]} H_\mathrm{\operatorname{fppf}}^1(R; G) \to H_\mathrm{\operatorname{fppf}}^1(R; H) 
    ,\]
    where \( \phi \) is denoted the *characteristic map*, which arises naturally from base change.
:::

::: {.remark}
When \( G{~\trianglelefteq~}H \), then \( X\in {\mathsf{Grp}}{\mathsf{Sch}}_{/R} \), and
\[
\left\{{\substack{G{\hbox{-}}\text{torsors over }\operatorname{Spec}R }}\right\}
\rightleftharpoons
\left\{{\substack{(F, \phi) {~\mathrel{\Big|}~}F\in H{\hbox{-}}\text{torsors}, \\ \phi \text{ a local trivialization of } { {}^{F} X } }}\right\}
.\]
:::

::: {.example title="?"}
\( {\operatorname{SL}}_n{\hbox{-}} \)torsors are equivalent to \( (M, \theta) \) with \( M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\mathsf{loc}}\mathsf{Free}, r} \) and \( \theta: R \xrightarrow{\sim} \bigwedge\nolimits^r(M) \) is a trivialization of \( \operatorname{det}(M) \).
:::

::: {.example title="?"}
Using the Kummer exact sequence
\[
1 \to \mu_d \to {\mathbb{G}}_m \xrightarrow{\times d} {\mathbb{G}}_m \to 1
,\]
\( \mu_d{\hbox{-}} \)torsors are equivalent to pairs \( (M, \theta) \) with \( M\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\times} \) and \( \theta: R \xrightarrow{\sim} M^{\otimes_R m} \) is a trivialization.
:::

::: {.definition title="étale morphism"}
An **étale morphism** of rings \( R\to S \) is a smooth morphism of \( \operatorname{reldim}= 0 \). Alternatively, \( S\in {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{{\operatorname{Flat}}} \) such that for every \( R{\hbox{-}} \)field \( F \), \( S\otimes_R F \in {\mathsf{Alg}}_{/F}^{\text{ét}} \), where étale algebras are finite and geometrically reduced.
:::

::: {.example title="?"}
-   Localization \( R\to R \left[ { \scriptstyle f^{-1}} \right] \) is étale.
-   If \( d^{-1}\in R \) then the Kummer morphism \( t\mapsto t^d \) is étale.
-   If \( d^{-1}\in R \) and \( r\in R^{\times} \), then \( R[x] /\left\langle{x^d-r}\right\rangle\in {\mathsf{Fin}}{\mathsf{Alg}}_{/R}^\text{ét} \).
:::

::: {.proposition title="?"}
For \( G \) affine smooth, there is an equivalence of torsors
\[
H^1_\text{ét}(R; G) \cong H^1_\mathrm{\operatorname{fppf}}(R;G)
.\]
:::

::: {.proof title="?"}
See notes. This uses that in the flat topology, smoothness is local.
:::

## Galois Cohomology

::: {.remark}
Galois descent is a special case of faithfully flat descent, and takes the form
\[
{\mathsf{R}{\hbox{-}}\mathsf{Mod}}\rightleftharpoons\left\{{\substack{(N, \rho) {~\mathrel{\Big|}~}N\in {\mathsf{S}{\hbox{-}}\mathsf{Mod}} \\ \phi \text{ a semilinear action } \Gamma\curvearrowright N }}\right\}
,\]
where **semilinear** means that
\[
\varphi(\sigma) (\lambda \cdot n) = \sigma(\lambda) \cdot \rho( \sigma)(n)
.\]
:::

::: {.definition title="Isotrivial torsors (very important!)"}
A torsor \( X \) over \( {\mathsf{Grp}}{\mathsf{Sch}}_{/R} \) is **isotrivial** if it is split (trivialized) by a finite Galois étale cover \( R'\to R \).
:::

::: {.remark}
These are the torsors that can be made explicit in Galois cohomology.
:::

::: {.example title="?"}
Let \( \operatorname{ch}k=0 \), then the ring of Laurent polynomials \( k{\left(\left( x \right)\right)  } \), this is isotrivial and a reductive group scheme. A special case is that of **loop torsors**, which are closely related to representation theory in \( {\mathsf{Alg}}{\mathsf{Grp}} \).
:::

::: {.remark}
The main topic is affine curves, and these are special cases of Dedekind rings. Let \( R \) be Dedekind with \( K\coloneqq\operatorname{ff}(R) \) and \( G\in {\mathsf{Aff}}{\mathsf{Grp}}{\mathsf{Sch}} \), then as in the proof for \( \operatorname{GL}_n \) yesterday we have an injective class map
\[
\ker(H^1_\mathrm{\operatorname{fppf}}\to H^1_\mathrm{\operatorname{fppf}}\times \cdots ) \to c_{\Sigma}(\cdots)
.\]
In particular, if \( c_\Sigma(R; G) =1 \), and in particular \( G(R \left[ { \scriptstyle f^{-1}} \right]) \) is dense in \( \prod \cdots \), the kernel appearing here is trivial.
:::

::: {.corollary title="?"}
If \( G \) is a semisimple simply connected [^4] and split in \( {\mathsf{Grp}}{\mathsf{Sch}}_{/R} \), then
\[
\ker \qty{ H^1(R;G) \to H^1\qty{R \left[ { \scriptstyle f^{-1}} \right]; G}} = 1
.\]
:::

::: {.remark}
This simplification comes from the injectivity of the following:
\[
H^1( \widehat{R} \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]; G) \hookrightarrow H^1(\widehat{K}  \left[ { \scriptstyle {\mathfrak{p}}_i^{-1}} \right]; R)
.\]

In the limit, this says that many torsors are actually trivial. We find that \( H^1_{\mathrm{zar}}(R; {\operatorname{SL}}_n) = 1 \) and \( H^1_{\mathrm{zar}}(R; E_8) = 1 \).
:::

## Curves Over an Algebraically Closed Field

::: {.theorem title="?"}
Let \( k = \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \) and \( G \in {\mathsf{Alg}}{\mathsf{Grp}}_{_{/ {k}} } \) be semisimple and \( C \) a smooth connected curve. Then \( H^1_\mathrm{\operatorname{fppf}}(C; G) = 1 \).
:::

::: {.remark}
The main ingredient is Steinberg's theorem that \( H^1(K(C); G) = 1 \). A special case is \( \operatorname{PGL}_n \) and rephrases that central simple algebras over \( k(C) \) are matrix algebras (using Tsen's theorem). This also uses that \( {\operatorname{Pic}}(C) \) is divisible, which follows from the structure of \( {\operatorname{Pic}}(C^c) \) for \( C^c \) a smooth compactification.
:::

::: {.remark}
We have a degree map and moreover an exact sequence involving the Jacobian (an abelian variety):
\[
0 \to J_{C^c}(k) \to {\operatorname{Pic}}(C^c) \xrightarrow{\deg} {\mathbb{Z}}\to 0
.\]
If \( C \) is \( C^c \) minus finitely many points, \( {\operatorname{Pic}}(C^c)\twoheadrightarrow{\operatorname{Pic}}(C) \) induces \( J_{C^c}(k) \twoheadrightarrow{\operatorname{Pic}}(C) \). We'll sketch the proof first in the case \( G \) is simply connected. In this case, given \( \gamma\in H^1(C; G) \), and according to Steinberg's theorem there exists \( f\in k[C] \) with \( \gamma_{C^c} = ? \). In the general case, we can take a simply connected cover \( f: \tilde G\to G \), e.g. \( {\operatorname{SL}}_n\to \operatorname{PGL}_n \) or \( {\operatorname{Spin}}_n\to {\operatorname{SO}}_n \). Let \( \tilde T \) be its maximal torus, then \( T\coloneqq\tilde T/\ker f \) is a maximal torus in \( G \), so let \( B \subseteq G \) be a Borel containing \( T \).

::: {.claim}
\[
H^1(C; B) \twoheadrightarrow H^1(C; G)
.\]
:::

Letting \( E \) be a \( C{\hbox{-}} \)torsor under \( G \), then the idea is to introduce the twisted \( C{\hbox{-}} \)scheme \( Y\coloneqq E(G/B) \), a projective variety of flags. By Steinberg's theorem, \( Y(k(C)) \neq \emptyset \). Applying the valuative criterion of properness shows that \( Y \) has a \( C{\hbox{-}} \)point, so \( E(G) \) has a Borel subgroup scheme. By functoriality,
\[
[E] \in \operatorname{im}(H^1(C; B) \to H^1(C; G))
.\]

We thus have \( B = U\rtimes T \) where \( U \) admits a \( T{\hbox{-}} \)equivariant filtration with associated quotients isomorphic to copies of \( {\mathbb{G}}_a \), and we apply a dévissage argument. Since \( \tilde T\to T \) is an isogeny (finite kernel) and \( {\operatorname{Pic}}(C) \) is a divisible group, a commutative diagram shows surjectivity \( H^1(C; T)\twoheadrightarrow H^1(C; G) \) and thus the latter is trivial.

The reductive case is similar, letting \( S = G/DG \) be the coradial torus of \( G \) and showing \( H^1(C; G) \xrightarrow{\sim} H^1(C; S) \) generalizing the bijection from yesterday:
\[
H^1(C; \operatorname{GL}_r) \to H^1(C; {\mathbb{G}}_m) = {\operatorname{Pic}}(C)
.\]
:::

## Affine Line

::: {.theorem title="?"}
Let \( k \in \mathsf{Field} \) be not necessarily algebraically closed and \( G\in{\mathsf{Grp}}{\mathsf{Sch}}_{_{/ {k}} } \) reductive. We have a bijection
\[
H^1(k; G) \xrightarrow{\sim} \ker\qty{ H^1(k[t]; G) \to H^1(k_s[t]; G)}
.\]
If \( k \) is perfect or \( \operatorname{ch}k = p \) where \( p \) is "good" for \( G \), we have \( H^1(k_s[t]; G) = 1 \) and so \( H^1(k; G) = H^1(k[t]; G) \) and we say \( G{\hbox{-}} \)torsors over \( k[t] \) are **constant**.
:::

::: {.remark}
This doesn't hold for \( G = \operatorname{PGL}_p \) over \( k(t) \) with \( \operatorname{ch}k = p \) imperfect. Our next goal is to prove this theorem -- a common ingredient to all proofs is the following theorem on bundles over \( {\mathbb{P}}^1 \):
:::

::: {.theorem title="Grothendieck-Harder"}
For \( G \) a reductive \( k{\hbox{-}} \)group, let \( S \) be a maximal \( k{\hbox{-}} \)split torus of \( G \) and consider its constant associated Weyl group
\[
W_G(S) = N_G(S) / C_G(S)
.\]
Then there is a bijection
\[
H^1_{\mathrm{zar}}({\mathbb{P}}^1_{_{/ {k}} }; S)/W_G(S) \xrightarrow{\sim} \ker\qty{H^1({\mathbb{P}}^1_{_{/ {k}} }; G) \xrightarrow{\operatorname{ev}_0}  H^1(k; C)}
.\]
In particular if a \( G{\hbox{-}} \)torsor over \( k[t] \) is trivial at \( t=0 \) and extends to a \( G{\hbox{-}} \)torsor over \( {\mathbb{P}}^1_{_{/ {k}} } \), then it is trivial.
:::

::: {.remark}
Given a \( G{\hbox{-}} \)torsor over \( k[t] \), without loss of generality, we can assume \( X \) is trivial on \( t=0 \) -- the original method to extend \( X \) to \( {\mathbb{P}}^1 \) is to use Bruhat-Tits theory. The idea is to find an integer \( d\geq 1 \) where \( \gamma_{k[t^d]} \) extends to \( {\mathbb{P}}^1 \). The statement is local at \( \infty \), i.e. it's enough to find \( d \) where \( \gamma_{k((t^{-d}))} \) comes from \( H^1(\cdots) \).

The following map is surjective:
\[
H^1(k((t^{-1})); S)\to H^1(k((t^{-1})); G)
,\]
and we can write the absolute Galois group of \( k{\left(\left( t^{-1} \right)\right)  } \) as
\[
\lim_n \mu_n(k_s) \rtimes G(k_s{}_{/ {k}} ) = I \rtimes G(k_s {}_{/ {k}} )
.\]
A restriction of a cocycle to the inertia group is a group morphism, so factors through \( \mu_d(k_s) \) for some finite \( d \), which we can take to be the order of \( S(k_s) \). We have some \( \gamma \in H^1(k[t]; G) \) satisfying \( \gamma(0) = 1 \), and a trick is to introduce a new indeterminate \( u \) and to extend to \( F \coloneqq k(u) \).

The upshot is that
\[
\operatorname{ff}\qty{ k(u, t, (ut)^{1\over d}) }
\cong
k(t,x)
.\]
by a \( k(t){\hbox{-}} \)linear isomorphism. The kernel is trivial by a specialization argument, so \( \gamma \) is rationally trivial and extends to infinity.
:::

::: {.remark}
Noting that \( {\mathbb{A}}^1 = {\mathbb{P}}^1 \setminus\left\{{{\operatorname{pt}}}\right\} \), we have \( {\mathbb{G}}_m = {\mathbb{P}}^1\setminus\left\{{{\operatorname{pt}}_0, {\operatorname{pt}}_1}\right\} \), which is much more difficult.
:::

::: {.theorem title="?"}
Let \( G \) be a reductive \( k{\hbox{-}} \)group over \( \operatorname{ch}k = 0 \), then there is a bijection
\[
H^1(k[t, t^{-1}]; G) \xrightarrow{\sim} H^1(k{\left(\left( t \right)\right)  }; G)
.\]
:::

::: {.remark}
Surjectivity is easy, coming from reduction to a finite subgroup, and injectivity is hard. A crucial step is to show existence of a maximal torus for the relevant twisted group scheme, using again Bruhat-Tits theory and now *twin buildings*. So we have a good understanding of \( {\mathbb{G}}_m{\hbox{-}} \)torsors, and a next step would be understanding \( {\mathbb{P}}^n \) with more deleted points.
:::

[^1]: Since we're in the flat and locally finitely presented case, it's sufficient that all fibers are smooth

[^2]: Noetherian domain where the localizations at maximal ideals are DVRs,

[^3]: This holds for example if \( Y \in {\mathsf{Aff}}{\mathsf{Sch}} \).

[^4]: Here "simply connected" is in the sense of semisimple algebraic groups or group schemes, and over \( {\mathbb{C}} \) coincides with the topological notion.
