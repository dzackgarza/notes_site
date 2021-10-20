












# Kirsten Wickelgren, Talk 1 (Wednesday, July 14)

## Intro

**Abstract**:

> Morel and Voevodsky's \( {\mathbb{A}}^1 \) homotopy theory imports tools from algebraic topology into the study of schemes, or in other words, into the study of the solutions to polynomial equations. This theory produces greater understanding of arithmetic and geometric aspects these solutions. We will introduce some of this theory using as a guide questions such as "How many lines meet 4 lines in 3-space?"

**References/Background**:

-   Some algebraic topology or algebraic geometry, for example as described in Hatcher's and Hartshorne's books
-   [Lecture Notes 1](https://www.ias.edu/sites/default/files/L1%20-%20Intro%20to%20A1-homotopy%20theory%20using%20enumerative%20examples%20-%20Jul%2013%2C%202021_1.pdf)
-   [Lecture Notes 2](https://www.ias.edu/sites/default/files/L2%20-%20Intro%20to%20A1-homotopy%20using%20enumerative%20examples%20-%20Jul%2015%2C%202021.pdf)
-   [Exercises](https://www.ias.edu/sites/default/files/Pauli-Exercises_PCMI.pdf)

::: {.remark}
Enumerative geometry counts algebro-geometric objects over \( {\mathbb{C}} \). Example: how many lines meet 4 generic lines in \( {\mathbb{P}}^3 \)? The answer is 2, and our goal is to record this kind of arithmetic information about geometric objects over a field \( k \) whose intersections are fixed over \( \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \) but not necessarily \( k \) itself. Our main tool will be \( {\mathbb{A}}^1{\hbox{-}} \)homotopy theory, due to Morel-Voevodsky.
:::

## Classical Theory

::: {.remark}
First some classical homotopy theory. The sphere can be defined as
\[
S^n \coloneqq\left\{{{ {x}_1, {x}_2, \cdots, {x}_{n}} {~\mathrel{\Big|}~}\sum x_i^2 = 1}\right\} \simeq{\mathbb{P}}^n({\mathbb{R}}) / {\mathbb{P}}^{n-1}({\mathbb{R}})
,\]
and we have a degree map \( [S^n, S^n] \to {\mathbb{Z}} \). Given any \( f\in {\mathsf{Top}}(S^n, S^n) \) and \( p\in S^n \), we can write \( f^{-1}(p) = \left\{{{ {q}_1, {q}_2, \cdots, {q}_{N}}}\right\} \) and compute \( \deg f = \sum_{i=1}^N \deg_{q_i} f \) in terms of **local degrees**. Letting \( V \) be a ball containing \( p \), we have \( F^{-1}(V) \supseteq U \ni q_i \) another ball such that \( U \cap f^{-1}(p) = q_i \). Then \( U/{{\partial}}U \simeq S^n \simeq V/{{\partial}}V \), so we can define a map
\[
\mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu: {U \over U\setminus\left\{{q_i}\right\}} \to {V \over V\setminus\left\{{p}\right\}}
\]
and define \( \deg_{q_i} f \coloneqq\deg \mkern 1.5mu\overline{\mkern-1.5muf\mkern-1.5mu}\mkern 1.5mu \).

Letting \( {\left[ {{ {x}_1, {x}_2, \cdots, {x}_{n}}} \right]} \) be oriented coordinates about \( q_i \) and \( {\left[ {{ {y}_1, {y}_2, \cdots, {y}_{n}}} \right]} \) about \( p \), then \( f = {\left[ {{ {f}_1, {f}_2, \cdots, {f}_{n}}} \right]}: {\mathbb{R}}^n\to {\mathbb{R}}^n \) and we can consider \( J_f \coloneqq\operatorname{det}\qty{{\partial}f_i \over {\partial}x_i} \). There is then a formula
\[
\deg_{q_i}(f) = 
\begin{cases}
+1 & J_f(q_i) > 0 
\\
-1 & J_f(q_i) < 0.
\end{cases}
,\]
and for all \( q_i \) we have \( \deg f = \# f^{-1}({\operatorname{pt}}) \), i.e. the number of solutions to the polynomial system \( \left\{{f_1 = f_2 = \cdots f_n = 0}\right\} \).
:::

::: {.example title="?"}
If \( f\in {\mathbb{C}}[x] \) of degree \( n \), we can regard \( f \) as a function \( f: {\mathbb{P}}^1({\mathbb{C}})\to {\mathbb{P}}^1({\mathbb{C}}) \) and by the fundamental theorem of algebra,
\[
\deg f = n = \# \left\{{f=0}\right\}
.\]
:::

::: {.remark}
We can similarly count solutions to \( f=0 \) when \( f \) is a section of a rank \( n \) vector bundle

```{=tex}
\begin{tikzcd}
V
\ar[d, "p"] 
\\
X 
\ar[u, bend left, dotted, "f"]
\end{tikzcd}
```
This count can be computed using the Euler class:
\[
e(V) = e(V, f) = \sum_{q_i\in \left\{{f=0}\right\}} \deg q_i f
.\]
:::

::: {.example title="?"}
Let \( X \coloneqq{\operatorname{Gr}}(1, 3)_{/{\mathbb{C}}} \), the Grassmannian parameterizing dimension 2 subspaces \( W \subseteq {\mathbb{C}}^4 \), or equivalently lines in \( {\mathbb{P}}W \subseteq {\mathbb{P}}({\mathbb{C}}^4) \cong {\mathbb{P}}^3({\mathbb{C}}) \), where \( {\mathbb{P}}W \) is defined as \( W\setminus\left\{{0}\right\} \) where \( \lambda w\sim w \) for any \( \lambda \in {\mathbb{C}}^{\times} \). The tautological is a rank 2 bundle:

```{=tex}
\begin{tikzcd}
S_{[{\mathbb{P}}W]} = W
  \ar[r] 
& 
S
  \ar[d] 
\\
& 
{\operatorname{Gr}}(1, 3)_{/ {{\mathbb{C}}}} 
\end{tikzcd}
```
Let \( L_1, \cdots, L_4 \) be four lines in \( {\mathbb{P}}^3 \), then \( \left\{{\text{lines intersecting all } L_i}\right\} = \left\{{f=0}\right\} \) where \( f \) is a section (depending on the \( L_i \)) of the bundle

```{=tex}
\begin{tikzcd}
{\mathcal{E}}\coloneqq\qty{\bigwedge\nolimits^2 S^*}^{\oplus 4}\
\ar[d] 
\\
{\operatorname{Gr}}(1, 3)
\end{tikzcd}
```
and the Euler number of this bundle counts the number of such intersections. In particular, \( e({\mathcal{E}}) \) is independent of the choice of lines and section, provided they're sufficiently generic (so the \( L_i \) do not pairwise intersect). Using the splitting principle and knowledge of \( H^*({\operatorname{Gr}}) \), one can compute \( e({\mathcal{E}}) = 2 \).
:::

## Over arbitrary fields: Grothendieck-Witt

::: {.remark}
We'd like to do this over arbitrary fields \( k \). Lannes and Morel defined degrees for rational maps \( f:{\mathbb{P}}^1 \to {\mathbb{P}}^1 \). Above we only remembered the sign of \( J_f \), and here we'll allow remembering more: \( \deg f \) will be valued in \( {\operatorname{GW}}(k) \). We can realize \( {\operatorname{GW}}(k) \) as the group completion of the semiring of nondegenerate symmetric bilinear forms under \( \perp, \otimes_k \), where we complete with respect to \( \perp \). It is related to the Witt group by
\[
W(K) { { \, \xrightarrow{\sim}\, }}{{\operatorname{GW}}(k) \over {\mathbb{Z}}\left\langle{q_{ {\operatorname{hyp}}} }\right\rangle } \coloneqq{{\operatorname{GW}}(k) \over {\mathbb{Z}} { \left[ {\left\langle{1}\right\rangle + \left\langle{-1}\right\rangle} \right] } }
.\]
There is a **rank map**
\[
\operatorname{rank}: {\operatorname{GW}}(k) &\to {\mathbb{Z}}\\
q: (V{ {}^{ \scriptstyle\otimes_{k}^{2} }  } \to K) &\mapsto \dim_k V
,\]
which can be realized by a pullback

```{=tex}
\begin{tikzcd}
    {{\operatorname{GW}}(k)} && {W(k)} & {} \\
    \\
    {\mathbb{Z}}&& {{\mathbb{Z}}/2}
    \arrow["\operatorname{rank}", from=1-3, to=3-3]
    \arrow["\operatorname{rank}", from=1-1, to=3-1]
    \arrow[from=3-1, to=3-3]
    \arrow[from=1-1, to=1-3]
    \arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=1-1, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNSxbMCwwLCJcXEdXKGspIl0sWzMsMF0sWzIsMCwiVyhrKSJdLFswLDIsIlxcWloiXSxbMiwyLCJcXFpaLzIiXSxbMiw0LCJcXHJhbmsiXSxbMCwzLCJcXHJhbmsiXSxbMyw0XSxbMCwyXSxbMCw0LCIiLDEseyJzdHlsZSI6eyJuYW1lIjoiY29ybmVyIn19XV0=)

We can also write \( {\operatorname{GW}}(k) \) in terms of generators \( \left\langle{a}\right\rangle \) where \( a\in k^{\times}/ (k^{\times})^{\times 2} \), where \( \left\langle{a}\right\rangle \) is associated to a bilinear form
\[
\left\langle{a}\right\rangle: k^{\times 2} &\to k \\
(x, y) &\mapsto axy
,\]
subject to relations

-   \( \left\langle{a}\right\rangle\left\langle{b}\right\rangle = \left\langle{ab}\right\rangle \)
-   \( \left\langle{u}\right\rangle + \left\langle{v}\right\rangle = \left\langle{uv(u+v)}\right\rangle + \left\langle{u+v}\right\rangle \)
-   \( \left\langle{u}\right\rangle + \left\langle{-u}\right\rangle = \left\langle{1}\right\rangle + \left\langle{-1}\right\rangle = q_{\operatorname{hyp}} \), which is the matrix
    \[
    q_{\operatorname{hyp}}= {
    \begin{bmatrix}
      {0} & {1} 
    \\
      {1} & {0}
    \end{bmatrix}
    }
    .\]
:::

::: {.example title="of known $\\GW$ groups"}
The **signature** is the difference between the numbers of positive and negative ones in the associated matrix, and one can show
\[
\operatorname{rank}: {\operatorname{GW}}({\mathbb{C}}) &{ { \, \xrightarrow{\sim}\, }}{\mathbb{Z}}\\ 
(\operatorname{rank}, \operatorname{sig}): {\operatorname{GW}}({\mathbb{R}}) &{ { \, \xrightarrow{\sim}\, }}{\mathbb{Z}}^{\times 2} \\
(\operatorname{rank}, {\operatorname{disc}}): {\operatorname{GW}}({\mathbb{F}}_q) &{ { \, \xrightarrow{\sim}\, }}{\mathbb{Z}}\times{\mathbb{F}}_q^{\times}/ ({\mathbb{F}}_q^{\times})^{\times 2}
\]
where the last is a situation where we can compute étale cohomology.
:::

::: {.example title="Springer's theorem"}
Let \( k\in \mathsf{Field} \) be complete and discretely valued with residue field \( \kappa \), e.g. \( k= { {\mathbb{Q}}_p } \) or \( {\mathbb{F}}_p{\left(\left( t \right)\right)  } \) with \( \kappa = {\mathbb{F}}_p \). Then if \( \operatorname{ch}k \neq 2 \),
\[
GW(k) { { \, \xrightarrow{\sim}\, }}W(k){ {}^{ \scriptscriptstyle\oplus^{2} }  }
.\]
:::

::: {.remark}
For \( E_{/ {k}}  \) a finite separable field extension, we'll have transfers
\[
\operatorname{Tr}_{E_{/ {k}} }: {\operatorname{GW}}(E) &\to {\operatorname{GW}}(k) \\
(V{ {}^{ \scriptstyle\otimes_{k}^{2} }  } \xrightarrow{\beta} E) &\mapsto (V{ {}^{ \scriptstyle\otimes_{k}^{2} }  } \xrightarrow{\beta} E \xrightarrow{\operatorname{Tr}_{E_{/k}}} k)
,\]
which coincide with classical transfers for field extensions.
:::

::: {.remark}
For Lannes/Morel's formula, given \( {\mathbb{P}}^1_{/ {k}}  \xrightarrow{f} {\mathbb{P}}^1_{/ {k}}  \) and \( p\in {\mathbb{P}}^1_{/ {k}}  \), we can write \( f^{-1}(p) = \left\{{{ {q}_1, {q}_2, \cdots, {q}_{N}}}\right\} \) and suppose \( J(q_i) = f'(q_i) \neq 0 \) for all \( i \). Then we remember the entire Jacobian and set
\[
\deg f \coloneqq\sum_{i=1}^N \operatorname{Tr}_{k(q_i)_{/ {k}} } \left\langle{J(q_i)}\right\rangle
,\]
which in fact doesn't depend on \( p \). Morel defines an \( {\mathbb{A}}^1{\hbox{-}} \)degree
\[
\deg^{{\mathbb{A}}^1}: [{\mathbb{P}}^n/{\mathbb{P}}^{n+1}, {\mathbb{P}}^n/{\mathbb{P}}^{n+1}]^{{\mathbb{A}}^1} \to {\operatorname{GW}}(k)
,\]
where we are taking unstable \( {\mathbb{A}}^1{\hbox{-}} \)homotopy classes of maps. Noting that an element of \( {\operatorname{GW}}({\mathbb{R}}) \) was determined by its rank and signature, we get a commutative diagram showing that \( \deg^{{\mathbb{A}}^1} \) is compatible with rank, signature, and the classical algebraic topological degree. There are other ways of computing this degree besides taking the above sum: Cazanave, [Brazelton-McKean-Pauli](https://arxiv.org/abs/2103.16614) give formulas in terms of Bézoutians.
:::

## Homotopy

::: {.remark}
Recall that
\[
X\wedge Y \coloneqq{ X\times Y \over (X\times{\operatorname{pt}}) \cup({\operatorname{pt}}\times Y)} && \in {\mathsf{Top}}_*
,\]
and \( S^n \wedge S^m \xrightarrow{\sim} S^{n+m} \) and \( (S^1){ {}^{ \scriptscriptstyle\wedge^{n} }  } \xrightarrow{\sim} S^n \), so we define
\[
{\Sigma}_{S^1} X \coloneqq S^1 \wedge X
.\]
In \( {\mathbb{A}}^1 \) homotopy theory we declare \( {\mathbb{A}}^1 \simeq{\operatorname{pt}} \).
:::

::: {.example title="?"}
We can take a pushout of the following form:

```{=tex}
\begin{tikzcd}
    & z && z \\
    z & {{\mathbb{G}}_m} && {{\mathbb{A}}^1\simeq{\operatorname{pt}}} \\
    \\
    {1/z} & {{\operatorname{pt}}\simeq{\mathbb{A}}^1} && { \therefore {\mathbb{P}}^1 \simeq{\Sigma}_{S^1} {\mathbb{G}}_m}
    \arrow[maps to, from=2-1, to=4-1]
    \arrow[from=2-2, to=4-2]
    \arrow[from=2-2, to=2-4]
    \arrow[maps to, from=1-2, to=1-4]
    \arrow[from=4-2, to=4-4]
    \arrow[from=2-4, to=4-4]
    \arrow["\lrcorner"{anchor=center, pos=0.125, rotate=180}, draw=none, from=4-4, to=2-2]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMSwxLCJcXEdHX20iXSxbMSwzLCJcXHB0IFxcaG9tb3RvcGljIFxcQUFeMSJdLFswLDEsInoiXSxbMCwzLCIxL3oiXSxbMywxLCJcXEFBXjFcXGhvbW90b3BpYyBcXHB0Il0sWzEsMCwieiJdLFszLDAsInoiXSxbMywzLCJcXFBQXjEgXFxob21vdG9waWMgXFxTdXNwZW5kX3tTXjF9IFxcR0dfbSJdLFsyLDMsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifX19XSxbMCwxXSxbMCw0XSxbNSw2LCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV0sWzEsN10sWzQsN10sWzcsMCwiIiwxLHsic3R5bGUiOnsibmFtZSI6ImNvcm5lciJ9fV1d)

Here the formalism of homotopy pushouts allows us to conclude that in an appropriate \( {\mathbb{A}}^1{\hbox{-}} \)homotopy category,
\[
{\Sigma}_{S^1} {\mathbb{G}}_m \coloneqq S^1\wedge{\mathbb{G}}_m \simeq{\mathbb{P}}^1
.\]
:::

::: {.remark title="on motivic spheres"}
We have
\[
{\mathbb{G}}_m \coloneqq\operatorname{Spec}k[z, 1/z] = {\mathbb{A}}^1\setminus\left\{{{\operatorname{pt}}}\right\}
.\]
By taking pushouts inductively we can realize
\[
{\mathbb{A}}^n\setminus\left\{{{\operatorname{pt}}}\right\} \simeq{\Sigma}_{S^1} ({\mathbb{A}}^1\setminus\left\{{{\operatorname{pt}}}\right\}) \wedge({\mathbb{A}}^n\setminus\left\{{{\operatorname{pt}}}\right\}) \simeq(S^1){ {}^{ \scriptscriptstyle\wedge^{n-1} }  } \wedge({\mathbb{G}}_m){ {}^{ \scriptscriptstyle\wedge^{n} }  }
.\]
:::

::: {.remark}
We can use this to write
\[
{\mathbb{P}}^n/{\mathbb{P}}^{n-1} 
&\simeq{{\mathbb{P}}^n \over {\mathbb{P}}^n\setminus\left\{{{\operatorname{pt}}}\right\} }\\
&\simeq{{\mathbb{A}}^n \over {\mathbb{A}}^n\setminus\left\{{{\operatorname{pt}}}\right\} }\\
&\simeq{{\operatorname{pt}}\over {\mathbb{A}}^n\setminus\left\{{{\operatorname{pt}}}\right\} }\\
&\simeq{\Sigma}_{S^1} \qty{ {\mathbb{A}}^n\setminus\left\{{{\operatorname{pt}}}\right\} } \\
&\simeq(S^1){ {}^{ \scriptscriptstyle\wedge^{n} }  } \wedge({\mathbb{G}}_m){ {}^{ \scriptscriptstyle\wedge^{n} }  }
.\]
:::

::: {.remark}
Stable homotopy shows that inverting \( {\Sigma} \) is useful, which we also do in the \( {\mathbb{A}}^1{\hbox{-}} \)setting by inverting \( {\Sigma}_{{\mathbb{P}}^1} ({-}) \coloneqq{\mathbb{P}}^1 \wedge({-}) \) to obtain a stable homotopy category \( {\mathsf{SH}}(k) \).
:::

::: {.theorem title="Morel, Hopkins-Morel"}
For \( k\in \mathsf{Field} \), stably we have
\[
[S^0, S^0] \xrightarrow{\sim} [{\mathbb{P}}^n/{\mathbb{P}}^{n-1}, {\mathbb{P}}^n/{\mathbb{P}}^{n-1}] \xrightarrow{\sim} {\operatorname{GW}}(k)
.\]
Moreover, there is a ring structure on homotopy classes which yields an isomorphism of rings into **Milnor-Witt \( K{\hbox{-}} \)theory**,
\[
\bigoplus_{n\in {\mathbb{Z}}} [ S^0, {\mathbb{G}}_m{ {}^{ \scriptscriptstyle\wedge^{n} }  }] \xrightarrow{\sim}  {\mathsf{K}}^{\scriptscriptstyle \mathrm{MW}} _*(k)
.\]
:::

::: {.remark}
\(  {\mathsf{K}}^{\scriptscriptstyle \mathrm{MW}} _* \) is a graded associative algebra with generators \( [u] \in  {\mathsf{K}}^{\scriptscriptstyle \mathrm{MW}} _1(k) \) for \( u\in k^{\times} \) and \( \eta \in  {\mathsf{K}}^{\scriptscriptstyle \mathrm{MW}} _{-1}(k) \), with relations

-   \( [u][1-u] = 0 \), the *Steinberg relations*,
-   \( [ab] = [a] + [b] + \eta[a][b] \),
-   \( [a]\eta = \eta[a] \),
-   \( \eta q_{\operatorname{hyp}}= 0 \) for \( q_{\operatorname{hyp}}\coloneqq\eta[-1] + 2 \)
:::

::: {.remark}
There is an isomorphism
\[
{\operatorname{GW}}(k) &\xrightarrow{\sim}  {\mathsf{K}}^{\scriptscriptstyle \mathrm{MW}} _0(k) \\
\left\langle{a}\right\rangle &\rightleftharpoons 1 + \eta[a] \\
q_{\operatorname{hyp}}\coloneqq\left\langle{1}\right\rangle + \left\langle{-1}\right\rangle &\rightleftharpoons 1 + 1 + \eta[-1]
.\]
:::

::: {.remark title="on the proof"}
\( [a] \) yields a map
\[
[a]: S^0 = (\operatorname{Spec}k)^{\coprod 2} &\to {\mathbb{G}}_m \\
p &\mapsto a
,\]
where \( p \) is the non-basepoint, and
\[
\eta: {\mathbb{A}}^2\setminus\left\{{{\operatorname{pt}}}\right\} &\to {\mathbb{P}}^1 \\
(x, y) &\mapsto [x: y]
.\]
On \( {\mathbb{C}}{\hbox{-}} \)points, \( {\mathbb{C}}^2\setminus\left\{{0}\right\}\simeq S^3 \) maps to \( {\mathbb{CP}}^1\simeq S^2 \) by the Hopf map, but on \( {\mathbb{R}}{\hbox{-}} \)points we get \( S^1 \xrightarrow{\deg = -2} S^1 \) implying that \( \eta \) is not nilpotent, which is a new fact.
:::

::: {.remark}
We can define
\[
X\vee Y = {X \times Y \over {\operatorname{pt}}_X \sim {\operatorname{pt}}_Y}
\]
and get maps
\[
X\vee Y \to X\times Y\to X\wedge Y
.\]
which yields
\[
{\Sigma}(X\times Y) \xrightarrow{\sim } {\Sigma}X \vee{\Sigma}Y \vee{\Sigma}(X\wedge Y)
.\]
:::

::: {.lemma title="?"}
In \( {\mathsf{SH}}(k) \),we get

```{=tex}
\begin{tikzcd}
    {{\mathbb{G}}_m{ {}^{ \scriptscriptstyle\times^{2} }  } } && {{\mathbb{G}}_m} \\
    \\
    { {{\mathbb{G}}_m{ {}^{ \scriptscriptstyle\wedge^{2} }  }} \vee{{\mathbb{G}}_m{ {}^{ \scriptscriptstyle\wedge^{2} }  }} } && {{\mathbb{G}}_m}
    \arrow["{\operatorname{mult}}", from=1-1, to=1-3]
    \arrow["{(1, 1, \eta)}", from=3-1, to=3-3]
    \arrow["\simeq", from=1-1, to=3-1]
    \arrow[equal, from=1-3, to=3-3]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNCxbMCwwLCJcXEdHX21ee1xcdGltZXMgMn0iXSxbMCwyLCJcXEdHX21ee1xcd2VkZ2Vwcm9kIDJ9IFxcd2VkZ2Vwcm9kIFxcR0dfbV57XFxzbWFzaHByb2QgMn0iXSxbMiwyLCJcXEdHX20iXSxbMiwwLCJcXEdHX20iXSxbMCwzLCJcXG11bHQiXSxbMSwyLCIoMSwgMSwgXFxldGEpIl0sWzAsMSwiXFxzaW1lcSIsMV0sWzMsMiwiXFxzaW1lcSIsMV1d)
:::

::: {.lemma title="?"}
The map
\[
f: {\mathbb{P}}^1 &\to {\mathbb{P}}^1 \\
z &\mapsto az
\]
is equal to \( 1 + \eta[a] \) in \( {\mathsf{SH}}(k) \), since \( f = {\Sigma}g \) where
\[
g: {\mathbb{G}}_m &\to {\mathbb{G}}_m \\ 
z &\mapsto az
,\]
which is equal to
\[
{\Sigma}({\mathbb{G}}_m \times k \xrightarrow{1\times a} {\mathbb{G}}_m^{\times 2} \xrightarrow{{\operatorname{mult}}} {\mathbb{G}}_m)
.\]
:::

::: {.remark}
The lemma implies the relation \( [ab] = [a] + [b] + \eta[a][b] \), and it turns out there's an isomorphism to motivic homotopy groups of spheres:
\[
 {\mathsf{K}}^{\scriptscriptstyle \mathrm{MW}} _*(k) \xrightarrow{\sim} \bigoplus _{n\in {\mathbb{Z}}} [S^0, {\mathbb{G}}_m{ {}^{ \scriptscriptstyle\wedge^{n} }  }]
.\]
:::

## Big Problems

::: {.remark}
Notation: we'll write
\[ 
\bigoplus_{n\in {\mathbb{Z}}} \pi_{n, n} {\mathbb{S}}\coloneqq\bigoplus _{n\in {\mathbb{Z}}} [S^0, {\mathbb{G}}_m{ {}^{ \scriptscriptstyle\wedge^{n} }  } ]
\]
to be the zero line of the homotopy groups of spheres, and generally \( \bigoplus _n \pi_{n+r, n} {\mathbb{S}} \) for the \( r{\hbox{-}} \)line. Classical homotopy groups of spheres encode interesting geometric information, and we're finding that the corresponding motivic homotopy groups of spheres do as well. [Röndigs-Spitzweck-Østvær](https://arxiv.org/abs/1604.00365) compute the 1-line for \( \operatorname{ch}k\neq 2 \) in a 2019 Annals paper, and we have some information about the 2-line.
:::

::: {.question}
What is \( [{\mathbb{P}}^n/{\mathbb{P}}^{n-1}, {\mathbb{P}}^n/{\mathbb{P}}^{n-1}] \) for more general rings? [Bachmann-Østvær (2021)](https://arxiv.org/abs/2102.01618) do this over \( {\mathbb{Z}}{ \left[ { \scriptstyle \frac{1}{2} } \right] } \) and show
\[
\pi_{0,0}{\mathbb{S}}\otimes{ {\mathbb{Z}}_{\widehat{2}} } \xrightarrow{\sim} {\operatorname{GW}}({\mathbb{Z}}{ \left[ { \scriptstyle \frac{1}{2} } \right] })\otimes{ {\mathbb{Z}}_{\widehat{2}} }
.\]
:::

::: {.question}
What is \( \pi_{*, *}{\mathbb{S}} \) in general?
:::

::: {.question}
Is there a Freudenthal suspension theorem? I.e. which stable elements of \( \pi_{*, *} {\mathbb{S}} \) correspond to unstable groups?
:::

## Counting Things

::: {.remark}
Many people have used the \( {\mathbb{A}}^1{\hbox{-}} \)Euler class for interesting things! Let \( X\in {\mathsf{sm}}{\mathsf{Sch}}_{/ {k}}  \) with \( \dim X = d \) and let \( V\to X \in { { {\mathsf{Bun}}_{\operatorname{GL}_r} }}_{/ {X}}  \) be a vector bundle.
:::

::: {.definition title="Orientation of bundles"}
A bundle \( V\to X \) is **oriented** by the following data: \( (L, \phi) \) where \( L\to X \) is a line bundle and \( \phi \) is a trivialization
\[
\phi: \operatorname{det}V { { \, \xrightarrow{\sim}\, }}L^{\otimes 2}
.\]
It is **relatively oriented** when \( \mathop{\mathrm{Hom}}(\operatorname{det}TX, \operatorname{det}V) \) is oriented, where \( \operatorname{det}({-}) = \bigwedge\nolimits^{\text{top}}({-}) \).
:::

::: {.example title="?"}
For \( X = {\mathbb{P}}^n \) or \( {\operatorname{Gr}}(m, n) \) (parameterizing copies of \( {\mathbb{P}}^m \) in \( {\mathbb{P}}^n \)), then
\[
\omega_x = \operatorname{det}T^n X = {\mathcal{O}}(-n-1)
,\]
and \( X \) is orientable iff \( n \) is odd. For \( {\mathbb{P}}^1 \), \( {\mathcal{O}}(n) \) is relatively orientable iff \( n \) is even.
:::

## Euler Numbers

::: {.definition title="Euler Number in $\\GW(k)$"}
Suppose \( X\in { {\mathsf{sm}}{\mathsf{Sch}}}_{/ {k}}  \) is proper with \( \dim X = d \) and consider a vector bundle
```{=tex}
\begin{tikzcd}
\operatorname{GL}_d \curvearrowright F
  \ar[r] 
& 
V
  \ar[d] 
\\
& 
X 
\ar[u, "f", bend left, dotted]
\end{tikzcd}
```
Suppose

-   \( V \) is relatively oriented by \( (L, \phi) \), and \( f \) is a section with isolated zeros, so \( \left\{{f=0}\right\} \) consists of zeros of multiplicity 1, or equivalently
-   For all \( x\in \left\{{f = 0}\right\} \), the composite map
    \[
    Tf \coloneqq\qty{T_x X \to T_{f(x)} V \xrightarrow{\sim} T_x X \oplus V_x \xrightarrow{p_2} V_x} && f(x) \coloneqq(x, 0)
    \]
    has nonvanishing determinant.

Then the **Euler number of \( (V, \phi) \)** with respect to \( f \) is defined as
\[
n(V, \phi, f) \coloneqq\sum_{x \in \left\{{f = 0 }\right\} \subseteq X} \deg_x f
.\]
where \( \deg_x f \) can be computed by

-   Choosing local Nisnevich coordinates on \( X \) ,
-   Choosing local trivializations of \( V \) which are "compatible" with \( \phi \),

Then locally writing
\[
f: {\mathbb{A}}^d \to {\mathbb{A}}^d \implies J_f \coloneqq\operatorname{det}\qty{{\partial}f_i \over {\partial}x_j}
,\]
one has
\[
\text{For } J_f(x) \neq 0 \in \kappa(x), \quad
\deg_x f \coloneqq\operatorname{Tr}_{\kappa(x) _{/ {k}} } \left\langle{J_f(x)}\right\rangle
.\]
:::

::: {.remark}
Equivalently, \( T_x f\in \mathop{\mathrm{Hom}}(T_x X, V_x) \) and we can define
\[
J_f(x) \coloneqq\operatorname{det}T_x f \in \mathop{\mathrm{Hom}}(\operatorname{det}T_x X, \operatorname{det}V_x) { { \, \xrightarrow{\sim}\, }}L_x{ {}^{ \scriptstyle\otimes_{k}^{2} }  }
,\]
where the orientation provides the isomorphism. Picking any basis for \( L_x{ {}^{ \scriptstyle\otimes_{k}^{2} }  } \) yields a number which is well-defined in \( \kappa(x) / (\kappa(x)^{\times})^2 \) by choosing a trivialization of \( L_x \).
:::

::: {.question}
What happens if the zeros of \( f \) have multiplicity \( m_i > 1 \)? In the classical setting, we didn't say what happens when \( J_f(x) = 0 \). We'll answer this next time.
:::

::: {.question}
Why is the Euler number \( n(V, f) \) independent of the section \( f \)? Analogously, why is the number of intersections in the original problem 2, not depending on which specific lines were chosen?
:::

::: {.answer}
Sections with isolated zeros are often connected by 1-parameter \( {\mathbb{A}}^1{\hbox{-}} \)families of such sections, and \( {\operatorname{GW}}(k[x]) \xrightarrow{\sim} {\operatorname{GW}}(k) \), although this is hard to show.

Alternatively, the Euler number is a pushforward of an Euler class taking values in interesting cohomology theories, so \( n(V, f) = \pi_* e(V, f) \).
:::

# Kirsten Wickelgren, Talk 2 (Friday, July 16)

## Intro

::: {.remark}
Recall that we have a classical degree map
\[
\deg: [S^n, S^n] \to {\mathbb{Z}}
\]
which roughly counts preimages. Given \( f\in \mathop{\mathrm{Hom}}_{\mathsf{Top}}(S^n, S^n) \) and \( p\in S^n \), we write \( f^{-1}(p) = \left\{{ { {q}_1, {q}_2, \cdots, {q}_{N}} }\right\} \) and have a formula \( \deg f = \sum \deg_{q_i} f \) where the local degrees \( \deg_{q_i}f \) can be computed by picking orientation-compatible coordinates \( { \left\{{ {x}_1, {x}_2, \cdots, {x}_{n} }\right\} } \) near \( q_i \) and \( { \left\{{ {y}_1, {y}_2, \cdots, {y}_{n} }\right\} } \) near \( p \). In these coordinates we can form the Jacobian \( J_f \coloneqq\operatorname{det}{\frac{\partial f_i}{\partial x_j}\,} \) and write
\[
\deg_x f =
\begin{cases}
+1 & J(q_i) > 0 
\\
-1 & J(q_i) < 0.
\end{cases}
\]
:::

::: {.question}
What happens if the zeros of \( f \) are not of multiplicity 1, so \( J_f(q_i) = 0 \)?
:::

::: {.proposition title="Eisenbud–H.Levine–Khimshiashvili signature formula"}
Over \( k\coloneqq{\mathbb{R}} \), any quadratic form can be diagonalized to \( \operatorname{diag}(1,\cdots,1, -1,\cdots,-1) \), and there is a formula
\[
\deg_x f = \operatorname{sig}\omega^{{\mathrm{EKL}}}
\]
where \( \omega^{{\mathrm{EKL}}} \) is the isomorphism class of the bilinear form defined in the following way: for \( f = (f_1, \cdots, f_n) \), set
\[
Q \coloneqq{{\mathbb{R}}[x_1, \cdots, x_n]_0 \over \left\langle{{ {f}_1, {f}_2, \cdots, {f}_{n}} }\right\rangle }
\]
which is a finite dimensional local complete intersection. Since \( Q \) is Gorenstein[^1], there is an isomorphism \( \mathop{\mathrm{Hom}}_k(Q, k) \xrightarrow{\sim} Q \), which we can take to be the bilinear form.[^2]
:::

::: {.remark}
This form can be made very explicit: writing \( J_f = \operatorname{det}{\frac{\partial f_i}{\partial x_j}\,} \in Q \), choose a \( k{\hbox{-}} \)linear map \( \eta: Q\to k \) such that \( \eta(J_f) = \dim_k Q \) and set
\[
\omega^{{\mathrm{EKL}}} &\coloneqq\qty{ Q{ {}^{ \scriptstyle\otimes_{k}^{2} }  } \xrightarrow{{\operatorname{mult}}} Q \xrightarrow{\eta} k} \\ \\
\implies \omega^{{\mathrm{EKL}}}: Q{ {}^{ \scriptstyle\otimes_{}^{2} }  } &\to k \\
(g, h) &\mapsto \eta(gh)
.\]
It turns out that the isomorphism class of \( \omega^{{\mathrm{EKL}}} \) does not depend on the choice of \( \eta \).
:::

::: {.example title="?"}
Let \( f:{\mathbb{A}}^1\to {\mathbb{A}}^1 \) and \( f(z) = z^2 \) with \( q=0 \). Then
\[
Q = {k[x]_0 \over \left\langle{x^1}\right\rangle } \xrightarrow{\sim} {k[x]\over \left\langle{x^2}\right\rangle}
\]
and \( J_f = 2x \). We then get \( \omega^{{\mathrm{EKL}}} = {
\begin{bmatrix}
  {0} & {1} 
\\
  {1} & {0}
\end{bmatrix}
} \), which up to a change of basis is \( h \coloneqq{
\begin{bmatrix}
  {1} & {0} 
\\
  {0} & {-1}
\end{bmatrix}
} \).
:::

::: {.question}
Eisenbud notes that \( \omega^{\mathrm{EKL}} \) is defined over fields of arbitrary characteristic not equal to 2, does it have a topological interpretation?
:::

::: {.remark}
Yes! It comes from the \( {\mathbb{A}}^1{\hbox{-}} \)degree.
:::

::: {.theorem title="Kass-W."}
\( \omega^{{\mathrm{EKL}}} = \deg_q^{{\mathbb{A}}^1}f \) is the local degree in \( {\operatorname{GW}}(k) \) when \( \kappa(q) = k \). [Brazelton, Burklund, Mckean, Montoro, Opie](https://arxiv.org/pdf/1912.04788.pdf) handle the case when \( \kappa(q)/k \) is separable.
:::

## \( {\mathbb{A}}^1{\hbox{-}} \)Milnor numbers {#mathbba1hbox-milnor-numbers}

::: {.definition title="Node, hypersurface singularity"}
For \( \operatorname{ch}k\neq 2 \), the simplest type of singularity is a **node**, defined over \( \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu \) as a point \( p\in X \) such that[^3]
\[
\widehat{{\mathcal{O}}_{X, p}}
\xrightarrow{\sim} 
{ \mkern 1.5mu\overline{\mkern-1.5muk\mkern-1.5mu}\mkern 1.5mu  { \left[ { { {x}_1, {x}_2, \cdots, {x}_{n}} } \right] }  \over \sum x_i^2 + \text{h.o.t.} }
,\]

A **hypersurface singularity** is a point \( p\in \left\{{f=0}\right\} \subseteq X \).
:::

::: {.definition title="Milnor number"}
Let \( k\coloneqq{\mathbb{C}} \). If you vary \( X \) in a family
\[
X_+ \coloneqq\left\{{f(x_1,\cdots, x_n) + \sum a_i x_i = t}\right\}
,\]
then the singularity \( p \) bifurcates into nodes. The number of nodes is given by the **Milnor number**, defined as \( M_p \), the number of nodes in the family \( X_+ \) for any sufficiently small \( \left\{{a_i}\right\} \). For \( R={\mathbb{C}} \), this is explicitly described as
\[
M_p \coloneqq\deg_p^{{\mathsf{Top}}}\operatorname{grad}f
.\]
:::

::: {.remark}
For other \( k \) with \( \operatorname{ch}k \neq 2 \), nodes come in different types: given a residue field \( L \) at a node \( p \), the tangent directions defined over some extension \( L[\sqrt a] \) for \( a\in L^{\times}/ (L^{\times}){ {}^{ \scriptscriptstyle\times^{2} }  } \).
:::

::: {.example title="?"}
Over \( k={\mathbb{R}} \), one has examples like

-   \( x_1^2 +x_2^2 = 0 \), yielding a non-split node and non-rational tangent directions

    ![](figures/2021-07-19_19-58-25.png)

-   \( x_1^2-x_2^2=0 \), yielding a split node and rational tangent directions

    ![](figures/2021-07-16_13-26-04.png)
:::

::: {.definition title="Type of a node"}
Let \( p \) be a node with
\[
\widehat{{\mathcal{O}}_{X, p}} { { \, \xrightarrow{\sim}\, }}{ L { \left[\left[ { { {x}_1, {x}_2, \cdots, {x}_{n}} } \right] \right] }  \over \sum a_i x_i^2 }, 
&& L \coloneqq\kappa(p)
.\]
The **type** \( p \) is defined as
\[
{\operatorname{type}}(p) \coloneqq\operatorname{Tr}_{L_{/ {k}} } \left\langle{2^n \prod_{i=1}^n a_i}\right\rangle \in {\operatorname{GW}}(k)
.\]
:::

::: {.definition title="$\\AA^1\\dash$Milnor numbers"}
The **\( {\mathbb{A}}^1{\hbox{-}} \)Milnor number** is defined as
\[
M_p \coloneqq\deg_p^{{\mathbb{A}}_1} \operatorname{grad}f = \sum_{p\in N} {\operatorname{type}}(p)
,\]
\( N \) is the set of nodes of \( f \) in a family for a generic \( \left\{{{ {a}_1, {a}_2, \cdots, {a}_{n}} }\right\} \).

> Note: the second equality is due to Kass-Wickelgren.
:::

::: {.example title="?"}
Let \( f(x,y)\coloneqq x^3-y^2 \) with \( \operatorname{ch}k\neq 2,3 \), then

-   \( p=(0, 0) \in \left\{{f=0}\right\} \),
-   \( \nabla f = (3x^2, -2y) \), and
    \[
    \deg^{{\mathbb{A}}^1} \nabla f 
    &= \deg^{{\mathbb{A}}^1} (x\mapsto 3x^2 ) \deg^{{\mathbb{A}}^1} (y\mapsto -2y) \\
    &= {
    \begin{bmatrix}
      {0} & {1/3} 
    \\
      {1/3} & {0}
    \end{bmatrix}
    } \left\langle{-2}\right\rangle \\
    &= \left\langle{1}\right\rangle + \left\langle{-1}\right\rangle \\
    &= q_{{\operatorname{hyp}}}
    ,\]
    which has rank 2 and thus \( M = 2 \). This yields a cusp.

The family \( y^2 = x^3 + ax + t \) for \( a\neq 0 \) yields a family:

![](figures/2021-07-16_13-33-13.png)

-   In the first term, the cusp bifurcates into 2 nodes, yields \( \operatorname{rank}M^{{\mathbb{A}}^1}(C) = M(C) \) for \( C \) the cusp curve
-   In the second, there are singular fibers when \( x^3+ax+t \) has double roots, which happens when the discriminant is zero, so this occurs iff \( -4a^3 -27b^2 =0 \).

This yields a bifurcation into two nodes, and for example,

-   Over \( {\mathbb{F}}_5 \): \( \left\langle{1}\right\rangle = \left\langle{-1}\right\rangle \), so this can not bifurcate into 1 split and 1 non-split rational node.
-   Over \( {\mathbb{F}}_7 \): \( \left\langle{1}\right\rangle \neq \left\langle{-1}\right\rangle \), so this can not bifurcate into 2 split or 2 non-split nodes.
:::

::: {.remark}
The classical Milnor number appears in conductor formulas and are related to the Euler characteristic \( \chi \) of the *Milnor fiber*. M. Levine-Lehalleur-Srinivas and R. Azouri have subtle quadratic enrichments to \( {\operatorname{GW}}(k) \).
:::

## \( {\mathbb{A}}^1{\hbox{-}} \)Euler characteristic \( \chi^{{\mathbb{A}}^1} \) {#mathbba1hbox-euler-characteristic-chimathbba1}

::: {.definition title="Relatively oriented bundles"}
For \( X\in {\mathsf{sm}}{\mathsf{Var}}^{\mathop{\mathrm{proj}}}_{/ {k}}  \), we saw last time that a vector bundle \( V\to X \) is **relatively oriented** by \( (L, \phi) \) where \( L\to X \) is a line bundle and
\[
\phi: L{ {}^{ \scriptstyle\otimes_{k}^{2} }  } \xrightarrow{\sim} \mathop{\mathrm{Hom}}(\operatorname{det}{\mathsf{T}}X, \operatorname{det}V)
.\]
:::

::: {.remark}
The tangent bundle \( {\mathsf{T}}X \) has a canonical relative orientation since
\[
\mathop{\mathrm{Hom}}(\operatorname{det}{\mathsf{T}}X, \operatorname{det}{\mathsf{T}}X) \xrightarrow{\sim} {\mathcal{O}}\xrightarrow{\sim} {\mathcal{O}}{ {}^{ \scriptstyle\otimes_{}^{2} }  }
\]
where \( {\mathcal{O}} \) is a trivial bundle of rank 1. It follows that we may define the Euler number of tangent bundle:
\[
\chi^{{\mathbb{A}}^1}(X) \coloneqq n({\mathsf{T}}X) \in {\operatorname{GW}}(k)
,\]
where \( n \) is the Euler number.
:::

::: {.theorem title="M. Levine"}
\( \chi^{{\mathbb{A}}^1}(X) \) is equal to the **categorical Euler characteristic**. The definition is omitted here, see [Levine's "Enumerative geometry with quadratic forms"](https://arxiv.org/abs/1703.03049).
:::

::: {.example title="M. Levine-Lehalleur-Srinivas"}
```{=tex}
\envlist
```
> See <https://arxiv.org/abs/2101.00482>.

Let \( X \subseteq {\mathbb{P}}^{n+1} \) for \( n \) even, written \( X \coloneqq\left\{{F=0}\right\} \) for \( f\in {\mathbb{R}}[x_0, \cdots, x_n]_{e} \) homogeneous of degree \( e \). Take
\[
\omega^{{\mathrm{EKL}}}: Q{ {}^{ \scriptstyle\otimes_{}^{2} }  }\to k && 
Q \coloneqq{k[x_0,\cdots, x_n] \over \left\langle{ {\frac{\partial f}{\partial x_0}\,}, \cdots, {\frac{\partial f}{\partial x_n}\,} }\right\rangle }
.\]

Define \( B_{\operatorname{Jac}} \) to be the restriction of \( \omega^{\mathrm{EKL}} \) to \( \bigoplus_{q=0}^n Q_{(q+1)e-n-2} \), then
\[
\chi^{{\mathbb{A}}^1}(X) = \left\langle{e}\right\rangle + \left\langle{-e}\right\rangle B_{\operatorname{Jac}} + {n\over 2}q_{{\operatorname{hyp}}}
.\]
:::

::: {.example title="Clebsch surface"}
Take the Clebsch surface
\[
C \coloneqq\left\{{ {\left[ {{ {x}_1, {x}_2, \cdots, {x}_{3}}} \right]} {~\mathrel{\Big|}~}\sum x_i^3 = \qty{\sum x_i}^3  }\right\} \subseteq {\mathbb{P}}^3_{/ {{\mathbb{Q}}}} 
.\]
Then \( \chi(C) = 9 \), and
\[
\chi^{{\mathbb{A}}^1}(C) = 2q_{{\operatorname{hyp}}} + \left\langle{-10}\right\rangle + \left\langle{-6}\right\rangle + \left\langle{-21}\right\rangle + \left\langle{-14}\right\rangle + \left\langle{-2}\right\rangle
,\]
which can be computed with Macaulay2!
:::

## Cohomology and the Euler Class

::: {.remark}
Note that we have a stable \( {\mathbb{A}}^1{\hbox{-}} \)homotopy category \( {\mathsf{SH}}(k) \), so we can take cohomology theories on \( X\in {\mathsf{sm}}{\mathsf{Sch}}_{/ {k}}  \):

-   \( H_{ \mathrm{mot}}  \) or \( H{\mathbb{Z}} \): motivic cohomology
-   \( \tilde H_{ \mathrm{mot}}  \) or \( H\tilde {\mathbb{Z}} \): extended motivic cohomology
-   \( {\mathsf{K}} \): \( {\mathsf{K}}{\hbox{-}} \)theory
-   \( {\operatorname{KO}} \): Hermitian \( {\mathsf{K}}{\hbox{-}} \)theory

It turns out that
\[
H^n(X) = \pi_{-n}\mathop{\mathrm{Hom}}_{{\mathsf{SH}}(k)}(X, H) = [X, {\Sigma}^n H]
,\]
and it's useful to allow twisting the second term by shifts.
:::

::: {.definition title="Twisted suspension"}
Letting \( V\to X \) be a vector bundle, we can define the **twisted suspension**
\[
H^V(X) \coloneqq[X, \mathop{\mathrm{Th}}(V) \wedge H]
&& \text{where } 
\mathop{\mathrm{Th}}(V) \coloneqq{V {}^{ \vee }\over V {}^{ \vee }\setminus\left\{{0}\right\}} = {{\mathbb{P}}(V {}^{ \vee }\oplus {\mathcal{O}}) \over {\mathbb{P}}(V {}^{ \vee })}
\]
where taking the dual is a condition needed for \( K{\hbox{-}} \)theory. This reduces to a usual suspension for the trivial bundle.
:::

::: {.example title="?"}
For \( V\coloneqq({\mathcal{O}}_X){ {}^{ \scriptscriptstyle\oplus^{n} }  } \) the trivial rank \( n \) bundle on \( X \), we have \( H^V = H^n \).
:::

::: {.example title="?"}
\[
H{\mathbb{Z}}^n(X) \cong H_{ \mathrm{mot}} ^{2n}(X; {\mathbb{Z}}(n)) \cong H^{2n, n}_{ \mathrm{mot}} (X) \cong {\operatorname{CH}}^n(X)
,\]
the Chow group of codimension \( n \) cycles modulo rational equivalence. These are the *geometric gradings*.
:::

::: {.example title="?"}
\( \tilde{H{\mathbb{Z}}}^n(X) \cong \tilde{{\operatorname{CH}}}^n(X) \) the **Chow-Witt group**, also called the **oriented Chow group**. Using the Gersten resolution, these can be expressed as formal sums of codimension \( n \) subvarieties with coefficients in \( {\operatorname{GW}}(k(Z)) \), where \( k(Z) \) are the rational functions of \( Z \), subject to some conditions, modulo equivalence.
:::

::: {.example title="?"}
\( {\mathsf{K}}^0(X) \) is the group completion of vector bundles on \( X \), and \( {\operatorname{KO}}^0(X) \) additionally remembers the data of a nondegenerate symmetric bilinear form. These are "representable" in a sense because they are related to Thom spectra.
:::

::: {.definition title="Cohomology with support"}
Let \( Z\hookrightarrow X \) be a closed subscheme, then define the **cohomology with support**
\[
H_Z^V(X) \coloneqq { \left[ { { X \over X\setminus Z}, \mathop{\mathrm{Th}}(V) \wedge H} \right] } _{{\mathsf{SH}}(k)}
.\]
:::

::: {.definition title="Euler class"}
For \( H \) a cohomology theory and \( {\mathbb{S}}|to H \) a ring? and a vector bundle \( V\to X \) with a section \( f \) (for example, the zero section), then the **Euler class**
\[
e^H(V, f) \in H_{\left\{{f=0}\right\}}^{V {}^{ \vee }}(X)
\]
is the class of the map
\[
{X\over X\setminus\left\{{f=0}\right\}} \xrightarrow{f} {V\over V\setminus\left\{{0}\right\}} \wedge H
.\]
:::

::: {.definition title="Euler Number"}
For \( f:X\to S \) is a **local closed immersion** (\( \mathrm{lci} \)) if it locally factors as \( U \xrightarrow{i} P \xrightarrow{p} S \) with \( p \) smooth and \( i \) a closed immersion determined by a *Koszul regular sequence* (so modding out doesn't yield a zero divisor, and the higher cohomology of the Koszul complex is zero).
:::

::: {.remark}
Some properties:

-   This has a well-behaved **cotangent complex** \( L_f \).

-   For a regular embedding, \( L_i \simeq N_u {}^{ \vee }P[1] \) is **conormal bundle**.[^4]

-   \( L_p \simeq\Omega_{P/S} \simeq{\mathsf{T}}_p {}^{ \vee } \).

-   \( L_{p_i} \) is determined by \( i^* L_p\to L_{p_i} \to L_i \),

-   There is a coherent Serre duality related to \( L_f \).

There is also a good notion of pushforward: let \( p:X\to S \) be proper [^5] and \( \mathrm{lci} \).

Then there is a **Becker-Gottlieb transfer**
\[
\operatorname{Tr}^{\text{BG}}: {\Sigma}_+^\infty S\to \mathop{\mathrm{Th}}(L_p)
,\]
and the cartoon is the following:

![](figures/2021-07-16_14-06-20.png)

Here we embed \( X\to S \) into the trivial bundle over \( S \) and take a neighborhood. Letting \( B \) be the trivial bundle over \( S \), then \( \mathop{\mathrm{Th}}(B) \cong \Sigma_+^\infty S \) and collapsing fiberwise quotients by the complement of the neighborhood:

![](figures/2021-07-16_14-08-44.png)

This yields \( p_*: H^{L_p}(X) \to H^0(S) \).
:::

## Oriented Cohomology Theories and Euler Numbers

::: {.remark}
```{=tex}
\envlist
```
-   \( H \) is \( \operatorname{GL}{\hbox{-}} \)oriented if \( H_Z^n(X) \xrightarrow{\sim} H_Z^V(X) \) with \( n\coloneqq\operatorname{rank}V \).

    An example is \( H{\mathbb{Z}}, {\mathsf{K}} \), but non examples are \( {H\tilde {\mathbb{Z}}}, {\operatorname{KO}} \).

-   \( H \) is \( {\operatorname{SL}}{\hbox{-}} \)oriented if

    -   \( H_Z^V(X) \xrightarrow{\sim} H_Z^{V'}(X) \),
    -   \( \operatorname{rank}V = \operatorname{rank}V' \) and
    -   \( \operatorname{det}V \xrightarrow{\sim} \operatorname{det}V' \otimes L{ {}^{ \scriptstyle\otimes_{}^{2} }  } \) for \( L\to X \) a line bundle.

    An example is \( H\tilde{{\mathbb{Z}}}, {\operatorname{KO}} \).
:::

::: {.remark}
For \( V\to X \) a relatively oriented vector bundle on \( X \xrightarrow{p} k \) with \( p \) smooth and proper, and \( H \) an \( {\operatorname{SL}}_c{\hbox{-}} \)oriented cohomology theory. Then
\[
H^{V {}^{ \vee }}(X) \xrightarrow{\sim} H^{{\mathsf{T}} {}^{ \vee }X}(X)
.\]
Letting \( f \) be any section of \( V \), e.g. the zero section, then

```{=tex}
\begin{tikzcd}
    {e^H(V, f) \in} & {H_{\left\{{f=0}\right\}}^{V {}^{ \vee }}(X)} &&& {H^{V {}^{ \vee }}(X)} \\
    & {X\to {X\over X\setminus\left\{{f=0}\right\}}} &&& {\mathop{\mathrm{Th}}(V) \wedge H} \\
    & {}
    \arrow["{z: \text{ forget support}}", from=1-2, to=1-5]
    \arrow[maps to, from=2-2, to=2-5]
\end{tikzcd}
```
> [Link to Diagram](https://q.uiver.app/?q=WzAsNixbMSwwLCJIX3tcXHRze2Y9MH19XntWXFxkdWFsfShYKSJdLFs0LDAsIkhee1ZcXGR1YWx9KFgpIl0sWzEsMl0sWzAsMCwiZV5IKFYsIGYpIFxcaW4iXSxbMSwxLCJYXFx0byB7WFxcb3ZlciBYXFxzbXRze2Y9MH19Il0sWzQsMSwiXFxUaChWKSBcXHNtYXNocHJvZCBIIl0sWzAsMSwiejogXFx0ZXh0eyBmb3JnZXQgc3VwcG9ydH0iXSxbNCw1LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn19fV1d)

Letting \( f: X\to \mathop{\mathrm{Th}}(V) \wedge H \), any two sections \( f_1, f_2 \) of \( V \) are connected by copies of \( {\mathbb{A}}^1 \) in \( H^0(V) \), so
\[
e^H(V) \coloneqq z(e^H(V, f_1)) = z(e^H(V, f_2))
.\]
:::

::: {.definition title="Euler number"}
The **Euler number** \( n^H(V) \) of \( V \) in \( H^0(S) \) is
\[
n^H(V) \coloneqq p_* e^H(V)
.\]
:::

::: {.remark}
This agrees with
\[
n(V, f) = \sum_{x\in \left\{{f= 0 }\right\} \subseteq X} \deg_x f, && \deg_x f \in {\operatorname{GW}}(k)
,\]
for \( H = H\tilde{{\mathbb{Z}}}, {\operatorname{KO}} \) over \( S\coloneqq\operatorname{Spec}k \). Moreover, \( n(V, f) \) is independent of the choice of section.

> See [Déglise-Jin-Khan](https://arxiv.org/abs/1805.05920), [Bachmann-Wickelgren](https://arxiv.org/abs/2002.01848).
:::

## Arithmetic count of lines on a smooth cubic surface (joint with Jesse Kass)

::: {.definition title="Cubic surface"}
A **cubic surface** is given by \( X \subseteq {\mathbb{P}}^3 \) where \( X = \left\{{f=0}\right\} \) with \( f\in k[w,x,y,z]_3 \) homogeneous of degree 3.
:::

::: {.theorem title="Salmon-Cayley, 1849"}
Any smooth cubic surface over \( {\mathbb{C}} \) contains exactly 27 lines.
:::

::: {.example title="?"}
Consider the Fermat cubic:
\[
f(x,y,z,w) = x^2 + y^2 + z^2 + w^2
.\]
The lines are given by
\[ 
\left\{{ {\left[ {S, -S, T, -T} \right]}  {~\mathrel{\Big|}~}[S, T] \in {\mathbb{P}}^1({\mathbb{C}}) \subseteq X }\right\}
.\]
For \( \omega^3,\lambda^3 = 1 \), we can take
\[ 
\left\{{{\left[ {S, \lambda S, T, \omega T} \right]} {~\mathrel{\Big|}~}[S, T]\in {\mathbb{P}}^1({\mathbb{C}}) }\right\} 
.\]
Permuting the variables in \( {4\choose 2}/2 =3 \) ways, then there are \( 3\cdot 3 \cdot 3 = 27 \) total lines.
:::

::: {.proof title="?"}
Let \( {\operatorname{Gr}}(1, 3) \) be the Grassmannian parameterizing \( W \subseteq {\mathbb{C}}^4 \) with \( \dim W=2 \), or equivalently copies of \( {\mathbb{P}}^1 \) in \( {\mathbb{P}}^3 \). Take the tautological \( S\to {\operatorname{Gr}}(1, 3) \) whose fiber over \( [{\mathbb{P}}W] \) is \( W \) itself. Then \( \operatorname{Sym}^3 S {}^{ \vee }_{[{\mathbb{P}}W]} = \operatorname{Sym}^3(W {}^{ \vee }) \) are cubic polynomials in \( W \), and \( f \) determines a section \( \sigma_f \) of \( \operatorname{Sym}^3 S {}^{ \vee } \) given by
\[
\sigma_f([{\mathbb{P}}W) = { \left.{{f}} \right|_{{W}} }
,\]
which is zero iff the line \( {\mathbb{P}}W \) is contained in \( X \). So we've reduced to counting zeros of a section:
\[
n(V) = \sum_{\text{lines } L \subseteq X} \deg_L \sigma_f
.\]

::: {.fact}
For a smooth cubic surface, all zeroes of \( \sigma_f \) have multiplicity one.
:::

Over \( {\mathbb{C}} \), the classical differential topological degree is 1, so \( n(V) \) is the number of lines, and \( n(V) = 27 \).

Consider now the situation over \( {\mathbb{R}} \):

-   Schläfli (1861): Over \( {\mathbb{R}} \), there can only be \( 3, 7, 15 \), or \( 27 \) lines.
-   Segre (1942): These lines break into two classes: hyperbolic, or elliptic.

For \( L \subseteq X \) a real line, \( L \) gives an involution \( I:L\to L \) where \( I(p) \) is defined by consider \( T_p X \), which contains a line \( L \) along with a curve \( C \) of degree 2 since the total degree is 3:

![](figures/2021-07-16_14-28-57.png)

In particular, there is another point in the intersection of \( L \cap C \cap X \), so \( I(p) \) is defined as that point where \( T_{I(p)}X = T_pX \). If \( I \) yields a \( {\mathbb{C}}{\hbox{-}} \)conjugate pair, say \( L \) is elliptic, and otherwise if \( I \) yields two \( {\mathbb{R}}{\hbox{-}} \)point say \( L \) is hyperbolic. Taking a path \( p\to I(p) \), if the tangent space undergoes a full twist, this is the elliptic situation.
:::

::: {.theorem title="Segre + many authors in the 2010s"}
The number of hyperbolic lines minus the number of elliptic lines is exactly 3.
:::

::: {.question}
What about other fields, like \( k = {\mathbb{F}}_p, { {\mathbb{Q}}_p }, {\mathbb{Q}} \)?
:::

::: {.answer}
The above proof works in \( {\mathbb{A}}^1{\hbox{-}} \)homotopy theory. Letting \( X \subseteq X \subseteq {\mathbb{P}}^3_{/ {k}}  \) a cubic surface.
:::

::: {.definition title="Type of a line"}
The **type** of a line \( L \) is an element
\[
\left\langle{D}\right\rangle \in {\operatorname{GW}}(k(L)),
&&
D \in k(L)^{\times}/ (k(L)^{\times}){ {}^{ \scriptscriptstyle\times^{2} }  }
\]
such that the fixed points \(  \mathrm{Fix} (I) \) form a conjugate pair of points defined over \( k(L) { \left[ {\sqrt D} \right] }  \).
:::

::: {.theorem title="Kass-Wickelgren"}
let \( k\in \mathsf{Field}^{\operatorname{ch}\neq 2} \) and \( X \subseteq {\mathbb{P}}^3_{/ {k}}  \), then
\[
\sum_{\substack{\text{lines} \\ L \subseteq k(X) }} \operatorname{Tr}_{k(L) / k} {\operatorname{type}}(D) = 15\left\langle{1}\right\rangle + 12\left\langle{-1}\right\rangle \in {\operatorname{GW}}(k)
.\]
:::

[^1]: The dualizing sheaf is locally free

[^2]: Even better, there is a distinguished isomorphism coming from a distinguished socle element (Scheja-Storch).

[^3]: Her \( {\mathcal{O}}_{X, p} \) is the stalk of the structure sheaf at \( p \), which is a local ring with a unique maximal ideal \( {\mathfrak{m}}_p \), and the LHS is completion at that ideal, so
    \[
    \widehat{{\mathcal{O}}_{X, p}} \coloneqq\qty{{\mathcal{O}}_{X, p}}{ {}_{ \widehat{{\mathfrak{m}}_p} } }
    .\]

[^4]: I.e. the dual of the normal bundle.

[^5]: Here **proper** means that the preimage of a compact set is compact.
