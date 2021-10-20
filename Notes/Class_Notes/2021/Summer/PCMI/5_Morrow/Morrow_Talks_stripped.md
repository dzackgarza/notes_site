












# Matthew Morrow, Talk 1 (Thursday, July 15)

## Intro

**Abstract**:

> Motivic cohomology offers, at least in certain situations, a geometric refinement of algebraic K-theory or its variants (G-theory, KH-theory, étale K-theory, \( \cdots \)). We will overview some aspects of the subject, ranging from the original cycle complexes of Bloch, through Voevodsky's work over fields, to more recent p-adic developments in the arithmetic context where perfectoid and prismatic techniques appear.

**References/Background**:

-   Algebraic geometry, sheaf theory, cohomology.
    -   Comfort with derived techniques such as descent and the cotangent complex would be helpful.
    -   Casual familiarity with K-theory, cyclic homology, and their variants would be motivational.
    -   Infinity-categories and spectra will appear, though probably not in a very essential way.
-   [Lecture Notes](https://www.ias.edu/sites/default/files/Morrow%20lectures%201%2B2.pdf)

::: {.remark}
Some things we've already seen that will be useful:

-   Motivic complexes
-   Milnor \( {\mathsf{K}}{\hbox{-}} \)theory
-   Their relations to étale cohomology (e.g. Bloch-Kato)
-   \( {\mathbb{A}}^1{\hbox{-}} \)homotopy theory
-   Categorical aspects (e.g. presheaves with transfer)

These have typically been for \( {\mathsf{sm}}{\mathsf{Var}}_{/ {k}}  \). Our goals will be to study

-   Motivic cohomology as a tool to analyze algebraic \( {\mathsf{K}}{\hbox{-}} \)theory.
-   Recent progress in mixed characteristic, with fewer smoothness/regularity hypothesis
:::

## \( {\mathsf{K}}_0 \) and \( {\mathsf{K}}_1 \) {#mathsfk_0-and-mathsfk_1}

::: {.remark}
Some phenomena of \( {\mathsf{K}}{\hbox{-}} \)theory to keep in mind:

-   It encodes other invariants.
-   It breaks into "simpler" pieces that are motivic in nature.
:::

::: {.definition title="The Grothendieck group (Grothendieck, 50s)"}
Let \( R\in \mathsf{CRing} \), then define the **Grothendieck group** \( {\mathsf{K}}_0(R) \) as the free abelian group:
\[
{\mathsf{K}}_0(R) = {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\mathop{\mathrm{proj}}, {\mathrm{fg}}, \cong} / \sim
.\]
where \( [P] \sim [P'] + [P''] \) when there is a SES
\[
0 \to P' \to P \to P'' \to 0
.\]
:::

::: {.remark}
There is an equivalent description as a group completion:
\[
{\mathsf{K}}_0(R) = \qty{{\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\mathop{\mathrm{proj}}, {\mathrm{fg}}, \cong}, \oplus }^ {\operatorname{gp} } 
.\]

The same definitions work for any \( X\in{\mathsf{Sch}} \) by replacing \( {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\mathop{\mathrm{proj}}, {\mathrm{fg}}} \) with \( { { {\mathsf{Bun}}_{\operatorname{GL}_r} }}_{/ {X}}  \), the category of (algebraic) vector bundles over \( X \).
:::

::: {.example title="?"}
For \( F\in\mathsf{Field} \), the dimension induces an isomorphism:
\[
\dim_F: {\mathsf{K}}_0(F) &\to {\mathbb{Z}}\\
[P] &\mapsto \dim_F P
.\]
:::

::: {.example title="?"}
Let \( {\mathcal{O}}\in\mathsf{DedekindDom} \), e.g. the ring of integers in a number field, then any ideal \( I{~\trianglelefteq~}{\mathcal{O}} \) is a finite projective module and defines some \( [I] \in{\mathsf{K}}_0({\mathcal{O}}) \). There is a SES
\[
0 \to { \operatorname{Cl}} ({\mathcal{O}}) \xrightarrow{I \mapsto [I] - [{\mathcal{O}}] } {\mathsf{K}}_0({\mathcal{O}}) \xrightarrow{\operatorname{rank}_{\mathcal{O}}({-})} {\mathbb{Z}}\to 0
.\]
Thus \( {\mathsf{K}}_0({\mathcal{O}}) \) breaks up as \( { \operatorname{Cl}} ({\mathcal{O}}) \) and \( {\mathbb{Z}} \), where the class group is a classical invariant: isomorphism classes of nonzero ideals.
:::

::: {.example title="?"}
Let \( X\in{\mathsf{sm}}{\mathsf{Alg}}{\mathsf{Var}}^{{\mathrm{qproj}}}_{/ {k}}  \) over a field, and let \( Z\hookrightarrow X \) be an irreducible closed subvariety. We can resolve the structure sheaf \( {\mathcal{O}}_Z \) by vector bundles:
\[
0 \leftarrow{\mathcal{O}}_Z \leftarrow P_0 \leftarrow\cdots P_d \leftarrow 0
.\]
We can then define
\[
[Z] \coloneqq\sum_{i=0}^d (-1)^i [P_i] \in{\mathsf{K}}_0(X)
,\]
which turns out to be independent of the resolution picked. This yields a filtration:
\[
{\operatorname{Fil}}_j{\mathsf{K}}_0(X) \coloneqq\left\langle{[Z] {~\mathrel{\Big|}~}Z\hookrightarrow X \text{ irreducible closed, } \operatorname{codim}(Z) \leq j}\right\rangle \\ \\ 
\implies{\mathsf{K}}_0(X) \supseteq{\operatorname{Fil}}_d{\mathsf{K}}_0(X) \supseteq\cdots \supseteq{\operatorname{Fil}}_0{\mathsf{K}}_0(X) \supseteq 0
.\]
:::

::: {.theorem title="Part of Riemann-Roch"}
There is a well-defined surjective map
\[
{\operatorname{CH}}_j(X) \coloneqq\left\{{j{\hbox{-}}\text{dimensional cycles}}\right\} / \text{rational equivalence} &\to { {\operatorname{Fil}}_j{\mathsf{K}}_0(X) \over {\operatorname{Fil}}_{j-1}{\mathsf{K}}_0(X) } \\
Z &\mapsto [Z]
,\]
and the kernel is annihilated by \( (j-1)! \).
:::

::: {.slogan}
Up to small torsion, \( {\mathsf{K}}_0(X) \) breaks into Chow groups.
:::

::: {.definition title="Bass, 50s"}
Set
\[
{\mathsf{K}}_1(R)\coloneqq\operatorname{GL}(R)/E(R) \coloneqq\displaystyle\bigcup_{n\geq 1} \operatorname{GL}_n(R)/E_n(R)
\]
where we use the block inclusion
\[
\operatorname{GL}_n(R) &\hookrightarrow\operatorname{GL}_{n+1} \\
g &\mapsto {
\begin{bmatrix}
  {g} & {0} 
\\
  {0} & {1}
\end{bmatrix}
}
\]
and \( E_n(R) \subseteq \operatorname{GL}_n(R) \) is the subgroup of elementary row and column operations performed on \( I_n \).
:::

::: {.example title="?"}
There exists a determinant map
\[
\operatorname{det}: {\mathsf{K}}_1(R) &\to R^{\times}\\
g & \mapsto \operatorname{det}(g)
,\]
which has a right inverse \( r\mapsto \operatorname{diag}(r,1,1,\cdots,1) \).
:::

::: {.example title="?"}
For \( F\in\mathsf{Field} \), we have \( E_n(F) = {\operatorname{SL}}_n(F) \) by Gaussian elimination. Since every \( g\in{\operatorname{SL}}_n(F) \) satisfies \( \operatorname{det}(g) = 1 \), there is an isomorphism
\[
\operatorname{det}: {\mathsf{K}}_1(F) \xrightarrow{\sim} F^{\times}
.\]
:::

::: {.remark}
We can see a relation to étale cohomology here by using Kummer theory to identify
\[
{\mathsf{K}}_1(F) / m \xrightarrow{\sim} F^{\times}/m \xrightarrow{\text{Kummer}, \sim} H^1_{ \mathsf{Gal}} (F; \mu_m)
\]
for \( m \) prime to \( \operatorname{ch}F \), so this is an easy case of Bloch-Kato.
:::

::: {.example title="?"}
For \( {\mathcal{O}} \) the ring of integers in a number field, there is an isomorphism
\[
\operatorname{det}: {\mathsf{K}}_1({\mathcal{O}}) \xrightarrow{\sim} {\mathcal{O}}^{\times}
,\]
but this is now a deep theorem due to Bass-Milnor-Serre, Kazhdan.
:::

::: {.example title="?"}
Let \( D \coloneqq{\mathbb{R}}[x, y] / \left\langle{x^2 + y^2 - 1}\right\rangle \in\mathsf{DedekindDom} \), then there is a nonzero class
\[
{
\begin{bmatrix}
  {x} & {y} 
\\
  {-y} & {x}
\end{bmatrix}
} \in \ker \operatorname{det}
,\]
so the previous result for \( {\mathcal{O}} \) is not a general fact about Dedekind domains. It turns out that
\[
{\mathsf{K}}_1(D) \xrightarrow{\sim} D^{\times}\oplus {\mathcal{L}}
,\]
where \( {\mathcal{L}} \) encodes some information about loops which vanishes for number fields.
:::

## Higher Algebraic \( {\mathsf{K}}{\hbox{-}} \)theory {#higher-algebraic-mathsfkhbox-theory}

::: {.remark}
By the 60s, it became clear that \( {\mathsf{K}}_0, {\mathsf{K}}_1 \) should be the first graded pieces in some exceptional cohomology theory, and there should exist some \( {\mathsf{K}}_n(R) \) for all \( n\geq 0 \) (to be defined). Quillen's Fields was a result of proposing multiple definitions, including the following:
:::

::: {.definition title="The $\\K\\dash$theory spectrum (Quillen, 73)"}
Define a \( {\mathsf{K}}{\hbox{-}} \)theory space or spectrum (infinite loop space) by deriving the functor \( {\mathsf{K}}_0({-}) \):
\[
K(R) \coloneqq \mathsf{B}\mkern-3mu \operatorname{GL} (R){ {}^{+} }\times{\mathsf{K}}_0(R)
\]
where \( \pi_*  \mathsf{B}\mkern-3mu \operatorname{GL} (R) = \operatorname{GL}(R) \) for \( *=1 \). Quillen's plus construction forces \( \pi_* \) to be abelian without changing the homology, although this changes homotopy in higher degrees. We then define
\[
{\mathsf{K}}_n(R) \coloneqq\pi_n {\mathsf{K}}(R)
.\]
:::

::: {.remark}
This construction is good for the (hard!) hands-on calculations Quillen originally did, but a more modern point of view would be

-   Setting \( {\mathsf{K}}(R) \) to be the \( \infty{\hbox{-}} \)group completion of the \( {\mathbb{E}}_\infty \) space associated to the category \( {\mathsf{R}{\hbox{-}}\mathsf{Mod}}^{\mathop{\mathrm{proj}}, \cong} \).
-   Regarding \( {\mathsf{K}}({-}) \) as the universal invariant of \( \mathsf{Stab}{ \underset{\infty}{ \mathsf{Cat}}  } \) taking exact sequences in \( {\operatorname{Stab}}{ \underset{\infty}{ \mathsf{Cat}}  } \) to cofibers sequences in the category of spectra \( {\mathsf{Sp}} \), in which case one defines
    \[
    {\mathsf{K}}(R) \coloneqq{\mathsf{K}}(\mathsf{Perf}\mathsf{Ch}\qty{ {\mathsf{R}{\hbox{-}}\mathsf{Mod}} }  ) 
    \]
    as \( {\mathsf{K}}({-}) \) of perfect complexes of \( R{\hbox{-}} \)modules.

Both constructions output groups \( {\mathsf{K}}_n(R) \) for \( n\geq 0 \).
:::

::: {.example title="Quillen, 73"}
The only complete calculation of \( K \) groups that we have is
\[
{\mathsf{K}}_n({\mathbb{F}}_q) = 
\begin{cases}
{\mathbb{Z}}& n=0 
\\
0 & n \text{ even}
\\
{\mathbb{Z}}/\left\langle{q^{ {n+1\over 2} - 1 }}\right\rangle & n \text{ odd}.
\end{cases}
\]
:::

::: {.example title="?"}
We know \( {\mathsf{K}} \) groups are hard because \( {\mathsf{K}}_{n>0}({\mathbb{Z}}) = 0 \iff \) the Vandiver conjecture holds, which is widely open.

```{=tex}
\todo[inline]{Check content of conjecture, maybe 4n?}
```
:::

::: {.conjecture}
If \( R \in {\mathsf{Alg}}_{/ {{\mathbb{Z}}}} ^{{\mathrm{ft}}, \mathrm{reg}} \) then \( {\mathsf{K}}_n(R) \) should be a finitely generated abelian group for all \( n \). This is widely open, but known when \( \dim R \leq 1 \).
:::

::: {.example title="?"}
For \( F\in\mathsf{Field} \) with \( \operatorname{ch}F \) prime to \( m\geq 1 \), ten
\[
\operatorname{TateSymb}: {\mathsf{K}}_2(F) / m \xrightarrow{\sim} H^2_{ \mathsf{Gal}} (F; \mu_m^{\otimes 2})
,\]
which is a specialization of Bloch-Kato due to Merkurjev-Suslin.
:::

::: {.example title="Lichtenbaum, Quillen 70s"}
Partially motivated by special values of zeta functions, for a number field \( F \) and \( m\geq 1 \), formulae for \( {\mathsf{K}}_n(F; {\mathbb{Z}}/m) \) were conjectured in terms of \( H_\text{ét} \).
:::

::: {.remark}
Here we're using **\( {\mathsf{K}}{\hbox{-}} \)theory with coefficients**, where one takes a spectrum and constructs a mod \( m \) version of it fitting into a SES
\[
0\to {\mathsf{K}}_n(F)/m \to {\mathsf{K}}_n(F; {\mathbb{Z}}/m) \to {\mathsf{K}}_{n-1}(F)[m] \to 0
.\]
However, it can be hard to reconstruct \( {\mathsf{K}}_n({-}) \) from \( {\mathsf{K}}_n({-}, {\mathbb{Z}}/m) \).
:::

## Arrival of Motivic Cohomology

::: {.question}
\( {\mathsf{K}}{\hbox{-}} \)theory admits a refinement in the form of motivic cohomology, which splits into simpler pieces such as étale cohomology. In what generality does this phenomenon occur?
:::

::: {.example title="?"}
This is always true in topology: given \( X\in {\mathsf{Top}} \), \( {\mathsf{K}}_0^{\mathsf{Top}} \) can be defined using complex vector bundles, and using suspension and Bott periodicity one can define \( {\mathsf{K}}_n^{\mathsf{Top}}(X) \) for all \( n \).
:::

::: {.theorem title="Atiyah-Hirzebruch"}
There is a spectral sequence which degenerates rationally:
\[
E_2^{i,j} = H_{\operatorname{Sing}}^{i-j}(X; {\mathbb{Z}}) \Rightarrow{\mathsf{K}}^{\mathsf{Top}}_{-i-j}(X)
.\]
:::

::: {.remark}
So up to small torsion, topological \( {\mathsf{K}}{\hbox{-}} \)theory breaks up into singular cohomology. Motivated by this, we have the following
:::

## Big Conjecture

::: {.conjecture title="Existence of motivic cohomology (Beilinson-Lichtenbaum, 80s)"}
For any \( X\in{\mathsf{sm}}{\mathsf{Var}}_{/ {k}}  \), there should exist **motivic complexes**
\[
{\mathbb{Z}}_{ \mathrm{mot}} (j)(X), && j\geq 0
\]
whose homology, the **weight \( j \) motivic cohomology of \( X \)**, has the following expected properties:

-   There is some analog of the Atiyah-Hirzebruch spectral sequence which degenerates rationally:
    \[
    E_2^{i, j} = H_{ \mathrm{mot}} ^{i-j}(X; {\mathbb{Z}}(-j)) \Rightarrow{\mathsf{K}}_{-i-j}(X)
    ,\]
    where \( H_{ \mathrm{mot}} ^*({-}) \) is taking kernels mod images for the complex \( {\mathbb{Z}}_{ \mathrm{mot}} (\bullet)(X) \) satisfying descent.

-   In low weights, we have

    -   \( {\mathbb{Z}}_{ \mathrm{mot}} (0)(X) = {\mathbb{Z}}^{\# \pi_0(X)}[0] \) in degree 0, supported in degree zero.
    -   \( {\mathbb{Z}}_{ \mathrm{mot}} (1)(X) = {\mathbb{R}}\Gamma_{\mathrm{zar}}(X; {\mathcal{O}}_X^{\times})[-1] \), supported in degrees 1 and 2 for a normal scheme after the right-shift.

-   Range of support: \( {\mathbb{Z}}_{ \mathrm{mot}} (j)(X) \) is supported in degrees \( 0,\cdots, 2j \), and in degrees \( \leq j \) if \( X=\operatorname{Spec}R \) for \( R \) a local ring.

-   Relation to Chow groups:
    \[
    H^{2j}_{ \mathrm{mot}} (X; {\mathbb{Z}}(j)) { { \, \xrightarrow{\sim}\, }}{\operatorname{CH}}^j(X)
    .\]

-   Relation to étale cohomology (Beilinson-Lichtenbaum conjecture): taking the complex mod \( m \) and taking homology yields
    \[
    H_{ \mathrm{mot}} ^i(X; {\mathbb{Z}}/m(j)) \xrightarrow{\sim} H^i_\text{ét}(X; \mu_m^{\otimes j})
    \]
    if \( m \) is prime to \( \operatorname{ch}k \) and \( i\leq j \).
:::

::: {.example title="?"}
Considering computing \( {\mathsf{K}}_n(F) \pmod m \) for \( m \) odd and for number fields \( F \), as predicted by Lichtenbaum-Quillen. The mod \( m \) AHSS is simple in this case, since \( \operatorname{cohdim}F \leq 2 \):

```{=tex}
\begin{tikzcd}
    \bullet & \bullet & \bullet & \bullet \\
    \bullet & \bullet & \bullet & {H_{ \mathsf{Gal}} ^0(F; {\mathbb{Z}}/m)} \\
    \bullet & \bullet & {H^0_{ \mathsf{Gal}} (F; \mu_m)} & {H_{ \mathsf{Gal}} ^1(F; \mu_m)} \\
    \bullet & {H^0_{ \mathsf{Gal}} (F; \mu_m^{\otimes 2})} & {H^1_{ \mathsf{Gal}} (F; \mu_m^{\otimes 2})} & {H_{ \mathsf{Gal}} ^2(F; \mu_m^{\otimes 2})} \\
    \vdots & \vdots & {H^2_{ \mathsf{Gal}} (F; \mu_m^{\otimes 3})} & \bullet \\
    \vdots & \vdots & \bullet & \vdots
    \arrow["\partial", from=4-2, to=5-4]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMjQsWzMsMSwiSF9cXEdhbF4wKEY7IFxcWlovbSkiXSxbMywyLCJIX1xcR2FsXjEoRjsgXFxtdV9tKSJdLFszLDMsIkhfXFxHYWxeMihGOyBcXG11X21ee1xcdGVuc29yIDJ9KSJdLFszLDUsIlxcdmRvdHMiXSxbMiwyLCJIXjBfXFxHYWwoRjsgXFxtdV9tKSJdLFsyLDMsIkheMV9cXEdhbChGOyBcXG11X21ee1xcdGVuc29yIDJ9KSJdLFsyLDQsIkheMl9cXEdhbChGOyBcXG11X21ee1xcdGVuc29yIDN9KSJdLFsxLDMsIkheMF9cXEdhbChGOyBcXG11X21ee1xcdGVuc29yIDJ9KSJdLFsxLDIsIlxcYnVsbGV0Il0sWzEsMSwiXFxidWxsZXQiXSxbMiwxLCJcXGJ1bGxldCJdLFsxLDAsIlxcYnVsbGV0Il0sWzIsMCwiXFxidWxsZXQiXSxbMywwLCJcXGJ1bGxldCJdLFszLDQsIlxcYnVsbGV0Il0sWzIsNSwiXFxidWxsZXQiXSxbMSw0LCJcXHZkb3RzIl0sWzEsNSwiXFx2ZG90cyJdLFswLDIsIlxcYnVsbGV0Il0sWzAsMSwiXFxidWxsZXQiXSxbMCwwLCJcXGJ1bGxldCJdLFswLDMsIlxcYnVsbGV0Il0sWzAsNCwiXFx2ZG90cyJdLFswLDUsIlxcdmRvdHMiXSxbNywxNCwiXFxwYXJ0aWFsIl1d)

The differentials are all zero, so we obtain
\[
{\mathsf{K}}_{2j-1}(F; {\mathbb{Z}}/m) \xrightarrow{\sim} H^1_{ \mathsf{Gal}} (F; \mu_m^{\otimes j})
\]
and
\[
0 \to H^2_{ \mathsf{Gal}} (F, \mu_m^{\otimes j+1}) \to {\mathsf{K}}_{2j}(F; {\mathbb{Z}}/m) \to H_{{ \mathsf{Gal}} }^0(F; \mu_m^{\otimes j})\to 0
.\]
:::

::: {.theorem title="Bloch, Levine, Friedlander, Rost, Suslin, Voevodsky, $\\cdots$"}
The above conjectures are true **except** for Beilinson-Soulé vanishing, i.e. the conjecture that \( {\mathbb{Z}}_{ \mathrm{mot}} (j)(X) \) is supported in positive degrees \( n\geq 0 \).
:::

::: {.remark}
Remarkably, one can write a definition somewhat easily which turns out to work in a fair amount of generality for schemes over a Dedekind domain.
:::

::: {.definition title="Higher Chow groups"}
For \( X\in {\mathsf{Var}}_{/ {k}}  \), let \( z^j(X, n) \) be the free abelian group of codimension \( j \) irreducible closed subschemes of \( X { \underset{\scriptscriptstyle {F} }{\times} } \Delta^n \) intersecting all faces properly, where
\[
\Delta^n = \operatorname{Spec}\qty{F[T_0, \cdots, T_n] \over \left\langle{\sum T_i - 1}\right\rangle} \cong {\mathbb{A}}^n_{/ {F}} 
,\]
which contains "faces" \( \Delta^m \) for \( m\leq n \), and *properly* means the intersections are of the expected codimension. Then **Bloch's complex of higher cycles** is the complex \( z^j(X, \bullet) \) where the boundary map is the alternating sum
\[
z^j(X, n) \ni {{\partial}}(Z) = \sum_{i=0}^n (-1)^i [Z \cap\mathrm{Face}_i(X\times \Delta^{n-1})]
,\]
**Bloch's higher Chow groups** are the cohomology of this complex:
\[
\mathsf{Ch}^j(X, n) \coloneqq H_n(z^j(X, \bullet))
,\]
and then the following complex has the expected properties:
\[
{\mathbb{Z}}_{ \mathrm{mot}} (j)(X) \coloneqq z^j(X, \bullet)[-2j]
\]
:::

::: {.remark}
Déglise's talks present the machinery one needs to go through to verify this!
:::

## Milnor \( {\mathsf{K}}{\hbox{-}} \)theory and Bloch-Kato {#milnor-mathsfkhbox-theory-and-bloch-kato}

::: {.remark}
How is motivic cohomology related to the Bloch-Kato conjecture? Recall from Danny's talks that for \( F\in\mathsf{Field} \) then one can form
\[
 {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F) = (F^{\times}){ {}^{ \scriptstyle\otimes_{F}^{j} }  } / \left\langle{\text{Steinberg relations}}\right\rangle
,\]
and for \( m\geq 1 \) prime to \( \operatorname{ch}F \) we can take Tate/Galois/cohomological symbols
\[
\operatorname{TateSymb}:  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F)/m \to H^j_{ \mathsf{Gal}} (F; \mu_m^{\otimes j})
.\]
where \( \mu_m^{\otimes j} \) is the \( j \)th Tate twist. Bloch-Kato conjectures that this is an isomorphism, and it is a theorem due to Rost-Voevodsky that the Tate symbol is an isomorphism. The following theorem says that a piece of \( H_{ \mathrm{mot}}  \) can be identified as something coming from \(  {\mathsf{K}}^{\scriptstyle\mathrm{M}}  \):
:::

::: {.theorem title="Nesterenko-Suslin, Totaro"}
For any \( F\in\mathsf{Field} \), for each \( j\geq 1 \) there is a natural isomorphism
\[
 {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F) \xrightarrow{\sim} H_{ \mathrm{mot}} ^j(F; {\mathbb{Z}}(j))
.\]
:::

::: {.remark}
Taking things mod \( m \) yields
\[
 {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F)/m \xrightarrow{\sim} H_{ \mathrm{mot}} ^j(F; {\mathbb{Z}}/m(j))
\xrightarrow{\sim, \text{BL}} H_\text{ét}^j(F; \mu_m^{\otimes j})
,\]
where the conjecture is that the obstruction term for the first isomorphism coming from \( H^{j+1} \) vanishes for local objects, and Beilinson-Lichtenbaum supplies the second isomorphism. The composite is the Bloch-Kato isomorphism, so Beilinson-Lichtenbaum \( \implies \) Bloch-Kato, and it turns out that the converse is essentially true as well. This is also intertwined with the Hilbert 90 conjecture.

Tomorrow: we'll discard coprime hypotheses, look at \( p{\hbox{-}} \)adic phenomena, and look at what happens étale locally.
:::

# Matthew Morrow, Talk 2 (Friday, July 16)

::: {.remark}
A review of yesterday:

-   \( {\mathsf{K}}{\hbox{-}} \)theory can be refined by motivic cohomology, i.e. it breaks into pieces. More precisely we have the Atiyah-Hirzebruch spectral sequence, and even better, the spectrum \( {\mathsf{K}}(X) \) has a motivic filtration with graded pieces \( {\mathbb{Z}}_{ \mathrm{mot}} (j)(X)[2j] \).

-   The \( {\mathbb{Z}}_{ \mathrm{mot}} (j)(X) \) correspond to algebraic cycles and étale cohomology mod \( m \), where \( m \) is prime to \( \operatorname{ch}k \), due to Beilinson-Lichtenbaum and Beilinson-Bloch.

Today we'll look at the classical mod \( p \) theory, and variations on a theme: e.g. replacing \( {\mathsf{K}}{\hbox{-}} \)theory with similar invariants, or weakening the hypotheses on \( X \). We'll also discuss recent progress in the case of étale \( {\mathsf{K}}{\hbox{-}} \)theory, particularly \( p{\hbox{-}} \)adically.
:::

## Mod \( p \) motivic cohomology in characteristic \( p \) {#mod-p-motivic-cohomology-in-characteristic-p}

::: {.remark}
For \( F\in\mathsf{Field} \) and \( m\geq 1 \) prime to \( \operatorname{ch}F \), the Atiyah-Hirzebruch spectral sequence mod \( m \) takes the following form:
\[
E_2^{i, j} = H_{ \mathrm{mot}} ^{i, j}(F, {\mathbb{Z}}/m(-j)) 
\overset{BL}{=}
\begin{cases}
 H^{i-j}_{ \mathsf{Gal}} (F; \mu_m^{\otimes j}) & i\leq 0  
\\
 0 & i>0 .
\end{cases}
.\]

Thus \( E_2 \) is supported in a quadrant four wedge:

![](figures/2021-07-16_11-12-08.png)

We know the axis:
\[
H^j(F; \mu_m^{\otimes j}) \xrightarrow{\sim}  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F)/m
.\]

What happens if \( m>p = \operatorname{ch}F \) for \( \operatorname{ch}F > 0 \)?
:::

::: {.theorem title="Izhbolidin (90), Bloch-Kato-Gabber (86), Geisser-Levine (2000)"}
Let \( F\in \mathsf{Field}^{\operatorname{ch}= p} \), then

-   \(  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F) \) and \( {\mathsf{K}}_j(F) \) are \( p{\hbox{-}} \)torsionfree.

-   \( {\mathsf{K}}_j(F)/p \xhookleftarrow{}  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F)/p \xhookrightarrow{\operatorname{dLog}} \Omega_F^j \)
:::

::: {.definition title="$\\dlog$"}
The \( \operatorname{dLog} \) map is defined as
\[
\operatorname{dLog}:  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F) / p &\to \Omega_f^j \\
\bigotimes_{i} \alpha_i &\mapsto \bigwedge\nolimits_i  {d \alpha_i \over \alpha_i}
,\]
and we write \( \Omega^j_{F, \log} \coloneqq\operatorname{im}\operatorname{dLog} \).
:::

::: {.remark}
So the above theorem is about showing the injectivity of \( \operatorname{dLog} \). What Geisser-Levine really prove is that
\[
{\mathbb{Z}}_{ \mathrm{mot}} (j)(F)/p \xrightarrow{\sim} \Omega_{F, \log}^j[-j]
.\]
Thus the mod \( p \) Atiyah-Hirzebruch spectral sequence, just motivic cohomology lives along the axis
\[
E_2^{i, j} = 
\begin{cases}
\Omega_{F, \log}^{-j}  &  i=0
\\
0 & \text{else }
\end{cases}
\Rightarrow{\mathsf{K}}_{i-j}(F; {\mathbb{Z}}/p)
\]
and \( {\mathsf{K}}_j(F)/p \xrightarrow{\sim} \Omega_{F, \log}^j \).
:::

::: {.remark}
So life is much nicer in \( p \) matching the characteristic! Some remarks:

-   The isomorphism remains true with \( F \) replaced any \( F\in {\mathsf{Alg}}_{/ {{\mathbb{F}}_p}} ^{\mathrm{reg}, {\mathsf{loc}}, \mathrm{Noeth}} \):
    \[
    {\mathsf{K}}_j(F)/p \xrightarrow{\sim} \Omega_{F, \log}^j
    .\]
-   The hard part of the theorem is showing that mod \( p \), there is a surjection \(  {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F) \twoheadrightarrow{\mathsf{K}}_j(F) \). The proof goes through using \( z^j(F, \bullet) \) and the Atiyah-Hirzebruch spectral sequence, and seems to necessarily go through motivic cohomology.
:::

::: {.question}
Is there a direct proof? Or can one even just show that
\[
{\mathsf{K}}_j(F)/p = 0 \text{ for } j> [F: {\mathbb{F}}_p]_{\mathrm{tr}}
?\]
:::

::: {.conjecture title="Beilinson"}
This becomes an isomorphism after tensoring to \( {\mathbb{Q}} \), so
\[
 {\mathsf{K}}^{\scriptstyle\mathrm{M}} _j(F) \otimes_{\mathbb{Z}}{\mathbb{Q}}\xrightarrow{\sim}  {\mathsf{K}}_j(F)\otimes_{\mathbb{Z}}{\mathbb{Q}}
.\]
This is known to be true for finite fields.
:::

::: {.conjecture}
\[
H_{ \mathrm{mot}} ^i(F; Z(j)) \text{ is torsion unless }i=j
.\]
This is wide open, and would follow from the following:
:::

::: {.conjecture title="Parshin"}
If \( X\in {\mathsf{sm}}{\mathsf{Var}}^{\mathop{\mathrm{proj}}}_{/ {k}}  \) over \( k \) a finite field, then
\[
H_{ \mathrm{mot}} ^i(X; Z(j)) \text{ is torsion unless } i=2j
.\]
:::

## Variants on a theme

::: {.question}
What things (other than \( {\mathsf{K}}{\hbox{-}} \)theory) can be motivically refined?
:::

### \( {\mathsf{G}}{\hbox{-}} \)theory {#mathsfghbox-theory}

::: {.remark}
Bloch's complex \( z^j(X, \bullet) \) makes sense for any \( X\in {\mathsf{Sch}} \), and for \( X \) finite type over \( R \) a field or a Dedekind domain. Its homology yields an Atiyah-Hirzebruch spectral sequence
\[
E_2^{i, j} = {\operatorname{CH}}^{-j}(X, -i-j) \Rightarrow{\mathsf{G}}_{-i-j}(X)
,\]
where \( {\mathsf{G}}{\hbox{-}} \)theory is the \( {\mathsf{K}}{\hbox{-}} \)theory of \( {\mathsf{Coh}}(X) \). See Levine's work.

Then \( z^j(X, \bullet) \) defines **motivic Borel-Moore homology**[^1] which refines \( {\mathsf{G}}{\hbox{-}} \)theory.
:::

### \(  {\mathsf{K}}^{\scriptscriptstyle \mathrm{H}} {\hbox{-}} \)theory {#mathsfkscriptscriptstyle-mathrmh-hbox-theory}

::: {.remark}
This is Weibel's "homotopy invariant \( {\mathsf{K}}{\hbox{-}} \)theory", obtained by forcing homotopy invariance in a universal way, which satisfies
\[
 {\mathsf{K}}^{\scriptscriptstyle \mathrm{H}} (R[T]) \xrightarrow{\sim}  {\mathsf{K}}^{\scriptscriptstyle \mathrm{H}} (R) && \forall R
.\]
One defines this as a simplicial spectrum
\[
 {\mathsf{K}}^{\scriptscriptstyle \mathrm{H}} (R) \coloneqq{ {\left\lvert {
q \mapsto {\mathsf{K}}\qty{R[T_0, \cdots, T_q] \over 1 - \sum_{i=0}^q T_i}
} \right\rvert} }
.\]
:::

::: {.remark}
One hopes that for (reasonable) schemes \( X \), there should exist an \( {\mathbb{A}}^1{\hbox{-}} \)invariant motivic cohomology such that

-   There is an Atiyah-Hirzebruch spectral sequence converging to \(  {\mathsf{K}}^{\scriptscriptstyle \mathrm{H}} _{i-j}(X) \).
-   Some Beilinson-Lichtenbaum properties.
-   Some relation to cycles.

For \( X \) Noetherian with \( \operatorname{krulldim}X<\infty \), the state-of-the-art is that stable homotopy machinery can produce an Atiyah-Hirzebruch spectral sequence using representability of \(  {\mathsf{K}}^{\scriptscriptstyle \mathrm{H}}  \) in \( {\mathsf{SH}}(X) \) along with the slice filtration.
:::

### Motivic cohomology with modulus

::: {.remark}
Let \( X\in{\mathsf{sm}}{\mathsf{Var}} \) and \( D\hookrightarrow X \) an effective (not necessarily reduced) Cartier divisor -- thought of where \( X\setminus D \) is an open which is compactified after adding \( D \). Then one constructs \( z^j\qty{ {X\vert D }, \bullet} \) which are complexes of cycles in "good position" with respect to the boundary \( D \).
:::

::: {.conjecture}
There is an Atiyah-Hirzebruch spectral sequence
\[
E_2^{i, j} = {\operatorname{CH}}^{j}\qty{ {X  \vert D }, (-i-j) } \Rightarrow{\mathsf{K}}_{-i-j}(X, D)
,\]
where the limiting term involves *relative \( K{\hbox{-}} \)groups*. So there is a motivic (i.e. cycle-theoretic) description of relative \( {\mathsf{K}}{\hbox{-}} \)theory.
:::

## Étale \( {\mathsf{K}}{\hbox{-}} \)theory {#étale-mathsfkhbox-theory}

::: {.remark}
\( {\mathsf{K}}{\hbox{-}} \)theory is simple étale-locally, at least away from the residue characteristic.
:::

::: {.theorem title="Gabber, Suslin"}
If \( A \in{\mathsf{loc}}\mathsf{Ring} \) is strictly Henselian with residue field \( k \) and \( m \geq 1 \) is prime to \( \operatorname{ch}k \), then
\[
{\mathsf{K}}_n(A; {\mathbb{Z}}/m) \xrightarrow{\sim} {\mathsf{K}}_n(k; {\mathbb{Z}}/m)
\xrightarrow{\sim} 
\begin{cases}
\mu_m(k)^{\otimes{n\over 2}} & n \text{ even}  
\\
0 & n \text{ odd}.
\end{cases}
\]
:::

::: {.remark}
The problem is that \( {\mathsf{K}}{\hbox{-}} \)theory does *not* satisfy étale descent!
\[
\text{For } B\in{ \mathsf{Gal}} \mathsf{Field}_{/ {A}} ^{\deg < \infty},
&&
K(B)^{h{ \mathsf{Gal}} \qty{B_{/ {A}} }} \not\cong K(A)
.\]

View \( {\mathsf{K}}{\hbox{-}} \)theory as a presheaf of spectra (in the sense of infinity sheaves), and define **étale \( {\mathsf{K}}{\hbox{-}} \)theory** \( K^\text{ét} \) to be the universal modification of \( {\mathsf{K}}{\hbox{-}} \)theory to satisfy étale descent. This was considered by Thomason, Soulé, Friedlander.
:::

::: {.remark}
Even better than \( {\mathsf{K}}^\text{ét} \) is Clausen's **Selmer \( {\mathsf{K}}{\hbox{-}} \)theory**, which does the right thing integrally. Up to subtle convergence issues, for any \( X\in {\mathsf{Sch}} \) and \( m \) prime to \( \operatorname{ch}X \) (the characteristic of the residue field) one gets an Atiyah-Hirzebruch spectral sequence
\[
E_2^{i, j} = H_\text{ét}^{i-j}(X; \mu_m^{\otimes-j}) \Rightarrow{\mathsf{K}}_{i-j}^{\text{ét}}(X; {\mathbb{Z}}/m)
.\]

Letting \( F \) be a field and \( m \) prime to \( \operatorname{ch}F \), the spectral sequence looks as follows:

```{=tex}
\begin{tikzcd}
    &&&&&& {} \\
    \\
    \\
    \\
    \bullet &&&&&& \textcolor{rgb,255:red,92;green,92;blue,214}{H^0_{ \mathsf{Gal}} (F; {\mathbb{Z}}/m)} & {H^1(F; {\mathbb{Z}}/m)} &&&&&&& \bullet \\
    &&&&& \textcolor{rgb,255:red,92;green,92;blue,214}{H^0(F; \mu_m^{\otimes 1})} & \textcolor{rgb,255:red,92;green,92;blue,214}{H^1_{ \mathsf{Gal}} (F; \mu_m^{})} & {H^2(F; \mu_m^{})} \\
    &&&& \textcolor{rgb,255:red,92;green,92;blue,214}{H^0(F; \mu_m^{\otimes 2})} & \textcolor{rgb,255:red,92;green,92;blue,214}{H^1(F; \mu_m^{\otimes 2})} & \textcolor{rgb,255:red,92;green,92;blue,214}{H^2_{ \mathsf{Gal}} (F; \mu_m^{\otimes 2})} & {H^3_{ \mathsf{Gal}} (F; \mu_m^{\otimes 2})} \\
    &&& {} &&& \vdots \\
    &&&&&& {} \\
    &&&&&& {}
    \arrow[color={rgb,255:red,135;green,135;blue,135}, dotted, from=5-1, to=5-15]
    \arrow[color={rgb,255:red,135;green,135;blue,135}, dotted, from=1-7, to=10-7]
    \arrow[dashed, no head, from=5-7, to=8-4]
    \arrow[dashed, no head, from=5-7, to=9-7]
    \arrow[from=6-6, to=7-8]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMTYsWzYsNCwiSF4wX1xcR2FsKEY7IFxcWlovbSkiLFsyNDAsNjAsNjAsMV1dLFswLDQsIlxcYnVsbGV0Il0sWzE0LDQsIlxcYnVsbGV0Il0sWzYsMF0sWzYsOV0sWzYsNSwiSF4xX1xcR2FsKEY7IFxcbXVfbV57fSkiLFsyNDAsNjAsNjAsMV1dLFs2LDYsIkheMl9cXEdhbChGOyBcXG11X21ee1xcdGVuc29yIDJ9KSIsWzI0MCw2MCw2MCwxXV0sWzcsNCwiSF4xKEY7IFxcWlovbSkiXSxbNyw1LCJIXjIoRjsgXFxtdV9tXnt9KSJdLFs3LDYsIkheM19cXEdhbChGOyBcXG11X21ee1xcdGVuc29yIDJ9KSJdLFs1LDYsIkheMShGOyBcXG11X21ee1xcdGVuc29yIDJ9KSIsWzI0MCw2MCw2MCwxXV0sWzQsNiwiSF4wKEY7IFxcbXVfbV57XFx0ZW5zb3IgMn0pIixbMjQwLDYwLDYwLDFdXSxbNSw1LCJIXjAoRjsgXFxtdV9tXntcXHRlbnNvciAxfSkiLFsyNDAsNjAsNjAsMV1dLFszLDddLFs2LDhdLFs2LDcsIlxcdmRvdHMiXSxbMSwyLCIiLDAseyJjb2xvdXIiOlswLDAsNTNdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMyw0LCIiLDAseyJjb2xvdXIiOlswLDAsNTNdLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMCwxMywiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMCwxNCwiIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMTIsOV1d)

The whole thing converges to \( {\mathsf{K}}_{-i-j}^\text{ét}(F; {\mathbb{Z}}/m) \), and the sector conjecturally converges to \( {\mathsf{K}}_{-i-j}(F; {\mathbb{Z}}/m) \) by the Beilinson-Lichtenbaum conjecture.
:::

## Recent Progress

::: {.remark}
We now focus on

-   Étale \( {\mathsf{K}}{\hbox{-}} \)theory, \( {\mathsf{K}}^\text{ét} \)
-   mod \( p \) coefficients, even period
-   \( p{\hbox{-}} \)adically complete rings

The last is not a major restriction, since there is an arithmetic gluing square

```{=tex}
\begin{tikzcd}
    R && {R{ \left[ { \scriptstyle \frac{1}{p} } \right] }} \\
    \\
    {\widehat{R}} && {\widehat{R}{ \left[ { \scriptstyle \frac{1}{p} } \right] }}
    \arrow[from=1-1, to=3-1]
    \arrow[from=3-1, to=3-3]
    \arrow[from=1-3, to=3-3]
    \arrow[from=1-1, to=1-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJSIl0sWzIsMCwiUlxcaW52ZXJ0e3B9Il0sWzIsMiwiXFxoYXR7Un1cXGludmVydHtwfSJdLFswLDIsIlxcaGF0e1J9Il0sWzAsM10sWzMsMl0sWzEsMl0sWzAsMV1d)

Here the bottom-left is the \( p{\hbox{-}} \)adic completion, and the right-hand side uses classical results when \( p \) is prime to all residue characteristic classes.
:::

::: {.theorem title="Bhatt-M-Scholze, Antieau-Matthew-M-Nikolaus, Lüders–M, Kelly-M"}
For any \( p{\hbox{-}} \)adically complete ring \( R \) (or in more generality, derived \( p{\hbox{-}} \)complete simplicial rings) one can associate a theory of **\( p{\hbox{-}} \)adic étale motivic cohomology** -- \( p{\hbox{-}} \)complete complexes \( {\mathbb{Z}}_p(j)(R) \) for \( j\geq 0 \) satisfying an analog of the Beilinson-Lichtenbaum conjectures:

1.  An Atiyah-Hirzebruch spectral sequence:
    \[
    E_2^{i, j} = H^{i-j}({\mathbb{Z}}_p(j)(R)) \Rightarrow{\mathsf{K}}_{-i-j}^\text{ét}(R; {\mathbb{Z}}){ {}_{ \widehat{p} } }
    .\]

2.  Known low weights:
    \[
    {\mathbb{Z}}_p(0)(R) &\xrightarrow{\sim} {\mathbb{R}}\Gamma_\text{ét}(R; {\mathbb{Z}}_p) \\
    {\mathbb{Z}}_p(1)(R) &\xrightarrow{\sim} { \overbrace{{\mathbb{R}}\Gamma_\text{ét}(R; {\mathbb{G}}_m)}^{\widehat{\hspace{4em}}}  }  [-1] 
    .\]

3.  Range of support: \( {\mathbb{Z}}_p(j)(R) \) is supported in degrees \( d\leq j+1 \), and even in degrees \( d\leq n+1 \) if the \( R{\hbox{-}} \)module \( \Omega_{R/pR}^1 \) is generated by \( n'<n \) elements. It is supported in non-negative degrees if \( R \) is **quasisyntomic**, which is a mild smoothness condition that holds in particular if \( R \) is regular.

4.  An analog of Nesterenko-Suslin: for \( R \in {\mathsf{loc}}\mathsf{Ring} \),
    \[
    { \widehat{{\mathsf{K}}}^{\scriptscriptstyle \mathrm{M}} _j(R)} \xrightarrow{\sim} H^j({\mathbb{Z}}_p(j)(R))
    ,\]
    where \(  \widehat{{\mathsf{K}}}^{\scriptscriptstyle \mathrm{M}}  \) is the "improved Milnor \( {\mathsf{K}}{\hbox{-}} \)theory" of Gabber-Kerz.

5.  Comparison to Geisser-Levine: if \( R \) is smooth over a perfect characteristic \( p \) field, then
    \[
    {\mathbb{Z}}_p(j)(R)/p \xrightarrow{\sim} {\mathbb{R}}\Gamma_\text{ét}(\operatorname{Spec}R; \Omega_{\log}^j)[-j]
    ,\]
    where \( [-j] \) is a right-shift.
:::

::: {.remark}
For simplicity, we'll write \( H^i(j) \coloneqq H^i( {\mathbb{Z}}_p(j)(R)) \). The spectral sequence looks like the following:

It converges to \( K^\text{ét}_{-i-j}(R;{\mathbb{Z}}/p) \). The 0-column is \( { \overbrace{ {\mathsf{K}}^{\scriptstyle\mathrm{M}} _{-j}(R)}^{\widehat{\hspace{4em}}}  } \), and we understand the 1-column: we have
\[
H^{j+1} \xrightarrow{\sim} \varprojlim_{r} \tilde v_r(j)(R)
.\]
where \( \tilde v_r(j)(R) \) are the mod \( p^r \) weight \( j \) Artin-Schreier obstruction. For example,
\[
\tilde v_1(j)(R) \coloneqq
\operatorname{coker}\qty{ 
1- C^{-1}: \Omega^j_{R/pR} \to {\Omega^j_{R/pR} \over {{\partial}}\Omega^{j-1}_{R/pR}}
}
= { R \over pR + \left\{{ a^p-a {~\mathrel{\Big|}~}a\in R }\right\} } 
.\]
These are weird terms that capture some class field theory and are related to the Tate and Kato conjectures.
:::

::: {.theorem title="(continued)"}
If \( R \) is local, then the 3rd quadrant of the above spectral sequence gives an Atiyah-Hirzebruch spectral sequence converging to \( {\mathsf{K}}_{-i-j}(R; {\mathbb{Z}}_p) \).
:::

::: {.remark}
So we get things describing étale \( {\mathsf{K}}{\hbox{-}} \)theory, and after discarding a little bit we get something describing usual \( {\mathsf{K}}{\hbox{-}} \)theory. Moreover, for any local \( p{\hbox{-}} \)adically complete ring \( R \), we have broken \( {\mathsf{K}}_*(R; { {\mathbb{Z}}_p }) \) into motivic pieces.
:::

::: {.example title="?"}
We same that for number fields, \( \operatorname{cohdim}\leq 2 \) yields a simple spectral sequence relating \( K \) groups to Galois cohomology. Consider now a truncated polynomial algebra \( A = k[T]/T^r \) for \( k\in\mathsf{Perf}\mathsf{Field}^{\operatorname{ch}= p} \) and let \( r\geq 1 \). Then by the general bounds given in the theorem, \( H^i(j) = 0 \) unless \( 0\leq i \leq 2 \), using that \( \Omega \) can be generated by one element. Slightly more work will show \( H^0, H^2 \) vanish unless \( i=j=0 \) (so higher weights vanish), since they're \( p{\hbox{-}} \)torsionfree and are killed by \( p \).

So the spectral sequence collapses:

```{=tex}
\begin{tikzcd}
    &&&&& {} & {} \\
    \\
    {} &&&&& \textcolor{rgb,255:red,214;green,92;blue,92}{H^0(0)} & {H^1(0)} & 0 & 0 &&& {} \\
    &&&& {H^0(1)} & \textcolor{rgb,255:red,214;green,92;blue,92}{H^1(1)} & {H^2(1)} & 0 & 0 \\
    &&& {H^0(2)} & \textcolor{rgb,255:red,214;green,92;blue,92}{H^1(2)} & {H^2(2)} & {H^3(2)} & 0 & 0 \\
    && \ddots & {H^1(3)} & {H^2(3)} & {H^3(3)} & {H^4(3)} & 0 & 0 \\
    &&& \vdots & \vdots & \vdots & \vdots \\
    &&&&& {} & {}
    \arrow[draw={rgb,255:red,214;green,92;blue,92}, dashed, from=4-5, to=5-7]
    \arrow[draw={rgb,255:red,153;green,153;blue,153}, dotted, no head, from=1-6, to=8-6]
    \arrow[draw={rgb,255:red,153;green,153;blue,153}, dotted, no head, from=3-1, to=3-12]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsMzIsWzUsMiwiSF4wKDApIixbMCw2MCw2MCwxXV0sWzUsMywiSF4xKDEpIixbMCw2MCw2MCwxXV0sWzUsNCwiSF4yKDIpIl0sWzUsNSwiSF4zKDMpIl0sWzQsMywiSF4wKDEpIl0sWzQsNCwiSF4xKDIpIixbMCw2MCw2MCwxXV0sWzQsNSwiSF4yKDMpIl0sWzMsNCwiSF4wKDIpIl0sWzYsMiwiSF4xKDApIl0sWzcsMiwiMCJdLFs2LDMsIkheMigxKSJdLFs2LDQsIkheMygyKSJdLFs2LDUsIkheNCgzKSJdLFs3LDMsIjAiXSxbNyw0LCIwIl0sWzcsNSwiMCJdLFs4LDUsIjAiXSxbOCw0LCIwIl0sWzgsMywiMCJdLFs4LDIsIjAiXSxbNiwwXSxbNiw3XSxbMiw1LCJcXGRkb3RzIl0sWzMsNSwiSF4xKDMpIl0sWzMsNiwiXFx2ZG90cyJdLFs0LDYsIlxcdmRvdHMiXSxbNSw2LCJcXHZkb3RzIl0sWzYsNiwiXFx2ZG90cyJdLFs1LDBdLFs1LDddLFswLDJdLFsxMSwyXSxbNCwxMSwiIiwwLHsiY29sb3VyIjpbMCw2MCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyOCwyOSwiIiwwLHsiY29sb3VyIjpbMCwwLDYwXSwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn0sImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMzAsMzEsIiIsMCx7ImNvbG91ciI6WzAsMCw2MF0sInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d)

So the Atiyah-Hirzebruch spectral sequence collapses to

\[
{\mathsf{K}}_n\qty{ { K[T] \over  \left\langle{T^r}\right\rangle }, \left\langle{T}\right\rangle}
=
\begin{cases}
 H^1\qty{{\mathbb{Z}}_p\qty{n+1\over 2}} (R) & n \text{ odd}  
\\
0 & n \text{ even}.
\end{cases}
.\]

When \( r=2 \), one can even valuation these nontrivial terms.
:::

::: {.question}
What is the motivic cohomology for regular schemes not over a field? We'd like to understand this in general.
:::

[^1]: Note that this is homology and not cohomology!
