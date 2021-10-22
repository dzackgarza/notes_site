# Lecture 7: Riemann-Roch

## Divisors

:::{.definition title="Divisor group"}
The **divisor group** $\Div K$ is the free $\ZZ\dash$module with basis $\Sigma(K/k)$, so
\[  
\Div K \da \bigoplus_{p\in \Sigma(K/k)} \ZZ
.\]
Thus every $D\in \Div K$ is of the form $D = \sum_{p\in \Sigma(K/k)} n_p p$ where $n_p\in \ZZ$ and are almost all zero, recalling that a point $p\in \Sigma(K/k)$ is an equivalence class of valuations.
:::

:::{.definition title="Effective Divisor"}
A divisor $D = \sum n_p p$ is **effective** iff $n_p \geq 0$ for all $p$ and write $D\geq 0$.
:::

:::{.definition title="Support of a divisor"}
The **support** of a divisor $D$ is the set of places $p\in \Sigma(K/k)$ such that $n_p(D) \neq 0$.
Note that this is always a finite set, and the zero divisor is the unique divisor supported on $\emptyset$.
:::

:::{.definition title="Partial order on divisor"}
We write $D_1 \leq D_2$ iff $D_2 - D_1 \geq 0$ is effective.
Note that this holds iff for all places $p\in \Sigma(K/k)$, if $D_1 = \sum_p m_p p$ and $D_2 = \sum_p n_p p$, then $m_p\leq n_p$ for all $p$.
:::

This is a partially ordered commutative group, which came up when we were talking about groups of divisibility.
It's a reasonable group when studying domains with nice factorization properties: if $R$ is a UFD with a set of principal prime ideals[^primes_ufd]
denoted $\Sigma(R)$, then the group of divisibility $G(R)$ is isomorphic to $\bigoplus_{(p) \in \Sigma(R)} \ZZ$ as a partially ordered commutative group.

[^primes_ufd]: Note that primes in a UFD are principal.

There is an analogy: comparing UFDs to Dedekind domains, we trade unique factorization of elements for factorization of ideals, and the group of all fractional ideals in a Dedekind domain is a free commutative group on its set of prime ideals.
So $\Div K$ is analogous to the group of divisibility of a UFD and to the group of fractional ideals of a Dedekind domain, the latter of which is the closer analogy.
So $\Div K$ is a geometric or projective analog of the group of fractional ideals, and is more than an analogy as we'll see later.

:::{.definition title="Degree of a Divisor"}
There is a group morphism
\[  
\deg: \Div K &\to \ZZ \\
D = \sum_p n_p p &\mapsto \sum_p n_p \deg p
.\]
Its kernel is denoted $\Div^0 K$, the **degree zero divisors**.
Note that if $k = \bar k$, then $\deg p = 1$ for all $p$.
:::

:::{.remark}
Note that this is similar to the augmentation in a group ring.
This construction can be done with any free $\ZZ\dash$module, and makes sense because only finitely many terms are nonzero.
Recall that to define the degree of a place $v\in \Sigma(K/k)$, we consider $R_v \da \ts{x\in K \st v(x) \geq 0}$ and $\mathfrak{m}_v \da \ts{x\in K \st v(x) >0}$, and $k(v) \da R_v / \mathfrak{m}_v$ is the residue field.
Note that $k(v)$ is a field extension of $k$ by composing $k\injects R_v \surjects k(v)$, and we proved used affine grounding and Zariski's lemma that this was a finite degree extension.
We can then define $\deg v \da [k(v) : k]$.
Note that it's more natural to think of valuations $v$ as points $p$.
:::

:::{.definition title="Index of a divisor"}
The **index** of $K$ is defined as
\[  
I(K) \da \abs{\coker \deg}
.\]
[^ec_appearance]

[^ec_appearance]: This quantity made an appearance near the end of Pete's advanced course on elliptic curves.

:::

:::{.remark}
Note that $I(K)$ is nonzero, since we can think of $p\in \Div K$ as the divisor with $n_q = \indic{q=p}$, so the image contains a subset consisting of all degrees of all places, so the image is of the form $d\ZZ$ for some $d$.
Some other characterizations:

- $\deg\qty{\Div K} = I(K)\ZZ$, so $I(K)$ is the generator of the degree ideal.
- $I(K)$ is the least positive degree of a divisor on $K$.
- $I(K) = \gcd\qty{\ts{\deg p \st p\in \Sigma(K/k)}}$, i.e. the $\gcd$ of the closed points.


The last characterization follows because we have generators of $\Div K$ given by "skyscraper" divisors $p$ where $n_q = 1 \iff p=q$, so the image is the subgroup of $\ZZ$ generated by the degrees of the points, i.e. the $\gcd$ of the degrees.

:::

:::{.exercise title="?"}
Let $K/k$ be a one variable function field.

a. Show that if $\Sigma_1(K/k) \neq \emptyset$ then $I(K) = 1$.

b. Later we will show that if $\abs{k} < \infty$ then $I(K) = 1$ but $\Sigma_1(K/k)$ may be empty. 
  Try to show this.

c. Show that if $k=\bar k$ then $I(K) = 1$.

:::

:::{.remark}
(a) follows from the Riemann hypothesis for curves over a finite field, although this is not how you should prove it.
It was proved by F.K. Schmidt much earlier in the 20th century, and this is the basic way of understanding the zeta function of a curve.
(b) says that over a finite ground field, you may not have any degree 1 places.
You can try constructing a hyperelliptic curve over a finite field $\fq$ with no rational points, which is always possible if the genus is large compared to the size of $\fq$.
:::

:::{.lemma title="?"}
For a nonzero rational function $f\in K\units$ we have $v_p(f) = 0$ for almost every place $p\in \Sigma(K/k)$.
:::

:::{.proof title="?"}
See previous lecture, in particular 
\cref{lem:poles_and_zeros}.
:::

This says that the set of places for which the valuation is nonzero is finite, so except for finitely many places the valuation is zero.
This allows us to define the divisor of a rational function:
\[  
(\wait): K\units &\to \Div K \\
f &\mapsto (f) \da \sum_p v_p(f) p
,\]
which is a group morphism.

:::{.exercise title="?"}
Show that $(f) = 0 \iff f \in \kappa(K)$, which we're assuming is equal to $k$.
This happens when it has neither zeros nor poles, so it's an intersection of all of the $R_v$, which is the integral closure of $k$ in $K$.
In general, this would mean that $f$ is algebraic over $k$.
So $\ker (\wait) = k\units$.
:::

:::{.definition title="Poles and Zeros of Elements of $K$"}
For any $D\in \Div K$ one may uniquely write it as $D = D_+ - D_-$, which are both effective divisors and so $D_+, D_- \geq 0$, and the uniqueness follows from requiring $\supp(D_+) \intersect \supp(D_-) = \emptyset$.
Note that this is just collecting positive and negative $n_p$ into each term, and leaving out all divisors for which $n_p = 0$.


For $f\in K\units$, we define
\[  
(f)_+ &\da \text{the divisor of zeros of } f \\
(f)_- &\da \text{the divisor of poles of } f 
,\]
where we can note that $(f) = (f)_+ - (f)-$.
:::

The next proposition shows that these geometric divisors can be interpreted in terms of $\fq$ points.

:::{.proposition title="?"}
Let $f\in K\sm k$ be transcendental.

a. Let $B_0$ be the integral closure of $k[f]$ in $K$, which is an affine Dedekind domain of $K$, i.e. its fraction field is $K$.[^as_usual_dd]

  Then
  \[  
  fB_0 = \prod_{j=1}^r p_j^{a_j} \implies (f)_+ = \sum_{j=1}^r a_j p_j
  .\]

b. Let $B_ \infty$ be the integral closure of $k[1/f]$ in $K$, which is an affine Dedekind domain of $K$.
  Then
  \[  
  \qty{1\over f} B_ \infty = \prod_{j=1}^s q_j^{b_j} \implies (f)_+ = \sum_{j=1}^s b_j q_j
  .\]


[^as_usual_dd]: As usual for an extension of Dedekind domains, we push forward an ideal (maybe principal) into its integral closure and see how it factors.

:::

:::{.exercise title="?"}
Prove this proposition.
:::

:::{.remark}
This says that pushing forward an ideal and looking at the factorization is precisely what's needed to determine the divisor of zeros.
There aren't many new ideas for this proof, the point is that the set of places upstairs is being controlled by $\mspec$ of Dedekind domains.
:::

:::{.slogan}
In any affine coordinate chart, the divisor of a function is a principal fractional ideal.
:::

## The Degree of the Divisor of a Rational Function is Zero

:::{.corollary title="Excruciatingly Important: the degree of the divisor of any rational function is zero."}
Let $f\in K\sm k$ be transcendental, then

a. $\deg(f)_+ = [K : k(f) ] = \deg (f)_-$

b. $\deg (f) = 0$.

:::

:::{.remark}
Here think of $f$ as a holomorphic map from a curve to $\PP^1_{/\CC}$, and the degree of this extension is the degree of the corresponding branched cover.
For $\CC$, this is literally the cardinality of any finite fibers.
Note that (a) follows by symmetry sense $k(f) \cong k(1/f)$.
:::

:::{.proof title="?"}
This comes down to NTI.
We know $\deg(f)_+ = \sum{j=1}^r a_j \deg p_j$.
In $K/k(f)$, the places $p_1, \cdots, p_r$ all lie over the degree 1 place $v_f$ of $k(f)$.
The places where upstairs you have a zero are the places where to coordinate downstairs is equal to zero, which corresponds to the irreducible polynomial in $f$ given by $f$ itself.
Since the residue field at $v_f$ downstairs is $k$ itself, since it is $k[f]/\gens{f}$.
So the downstairs places has degree 1, and so the degree of the upstairs places, whatever the residue field is, its degree over $k$ is equal to its degree over the downstairs residue field.
Thus the geometric $\deg p_j$ coincides with the residual degree $f_i$, and $a_i$ is the ramification index in the extension of Dedekind domains $B_0 / k[f]$.
\

So we have a degree equality,
\[  
\sum_{j=1}^r a_j \deg p_j = \sum e_j f_j = [K: k(f)]
,\]
where the second equality follows from having an extension of Dedekind domains with this nice finite generation hypothesis.
We similarly get $[k: k(f)] = \deg(f)_-$.
\

Note that part (b) follows immediately, since $(f) = (f)_+ - (f)_-$ implies that \
\[
\deg(f) = \deg(f)_+ - \deg(f)_- = [k: k(f)] - [k: k(f)] = 0
.\]

:::

:::{.remark}
We have two different things that sound like the degree of a rational function.
We define the degree of a rational function $f\in K\sm k$ as $[K: k(f)]$, otherwise it is the degree (number of sheets) of the corresponding branched covering of $\PP^1$.
But note that we also attached a divisor to $f$, which may be confusing, be hard to confuse in practice because we found that $\deg(f) = 0$ always.
:::

:::{.definition title="Principal Divisors"}
The divisor of a rational function is called **principal**, we define $\Prin K$ to be the group of principal divisors.
:::

:::{.exercise title="$\Prin K$ is a group"}
For $f, g\in K\units$, show that

a. $(1/f) = -(f)$,

b. $(fg) = (f) + (g)$,

c. $\Prin K \leq \Div^0 K$ is a subgroup (since we know they're degree zero).

:::


:::{.definition title="Linear Equivalence"}
For $D_i \in \Div K$, we set $D_1 \sim D_2 \iff D_1 - D_2 \in \Prin K$, in which case we say these divisors are **linearly equivalent**.
:::

:::{.remark}
Near the end of the course we'll see why this is good terminology: it's related to morphisms of projective space attached to linear systems.
:::

:::{.definition title="Divisor Class Group"}
We define the **divisor class group** as 
\[  
\cl K \da \Div K/\sim = \Div K / \Prin K
.\]
:::

But note that there's something between $\Prin K$ and $\Div K$, namely $\Div^0 K$:

:::{.definition title="Degree 0 Divisor Class Group (Important! Fundamental!)"}
We define the **degree 0 divisor class group** as 
\[  
\Cl^0 K  \da \Div^0 K / \sim = \Div^0 K / \Prin K
.\]
:::

:::{.remark}
This is extremely important!
Attached to a curve is a Jacobian abelian variety, a nice group variety whose dimension is equal to the genus of the curve, and the $k\dash$rational point of the Jacobian will become a commutative group that is isomorphic to $\Div^0 K$.
:::


:::{.exercise title="?"}
Show that we have the following exact sequences:

a. 
\[  
1 \to k\units \to K\units \mapsvia{(\wait)} \Prin K \to 0
.\]


b.
\[  
0 \to \Cl^0 K \to \Cl K \mapsvia{\deg} I(K) \ZZ \to 0
.\]

Deduce that $\Cl K \cong \Cl^0 K \oplus \ZZ$.

:::

:::{.remark}
For (a), we saw that rational functions that have zero divisors are constants, assuming that $\kappa(K) = k$.
For (b), because principal divisors have degree zero, the degree map factors through the quotient.
The deduction comes from that fact that we have a free and hence project $\ZZ\dash$module, yielding a splitting.
:::

:::{.exercise title="Very important, Pete insists that someone solves it!"}
\envlist
a. Show that $\Div ^0 k(t) = \Prin k(t)$.

b. Deduce that $\deg: \Cl k(t) \mapsvia{\sim} \ZZ$ and $\cl^0 k(t) = 0$.

:::

:::{.remark}
Note that $I(K) = 1$ in this case since both the $t\dash$adic or $\infty\dash$adic valuation have degree one.
Moral: the class groups are not interesting on rational function fields.
You have to take a degree zero divisor on a rational function field and build a rational function whose divisor is any given degree.
This is extremely useful!
:::

:::{.remark}
More general if $K/k$ has genus zero (e.g. a rational function field), then working over $\CC$ we would have $\Cl^0 K$ equal to the points of some compact complex Lie group of $\CC\dash$dimension $g$, so a large complex torus, unless $g=0$.
So if $k= \bar k$, $\Cl^0 K$ will be uncountably infinite when $g>0$.
If not, it might trivial, or it might be anything in between.
:::

The following result appears in a 1973 paper of Rosen, where he attributes it to F. K. Schmidt.
It gives a close relationship between $\Cl^0 K$ and the class groups $\Cl R^S$ of the affine Dedekind domains of $K$.
This shows that instead of $\Cl^0 K$ just being an analogue of the class group of a Dedekind domain, there's almost the same.
If you fix $K$, $\Cl^0 K$ is just one group attached to it, but there are infinitely many $R^S$ since there are infinitely many places.
So these groups can not be equal, since we could change the size of $S$ to obtain overrings of Dedekind domains, where the resulting class groups are quotients.
So you could kill finitely many elements in the class group of the Dedekind domain by just passing to an overring by adding finitely more places.

:::{.theorem title="Rosen"}
Let $S \subset \Sigma(K/k)$ be nonempty and finite, and recall that the holomorphy ring was defined as
\[  
R^S = \intersect_{v\in \Sigma(K/k)} R_v
.\]

Define the following:

- $D^0(S)$: the degree 0 divisors with support in $S$.
- $P(S) \da \Prin K \intersect D^0(S)$, the principal divisors supported in $S$.
  - Divisors of rational functions all of whose zeros and poles lie in $S$.
- $d_S$: The least positive degree of a divisor supported on $S$.
  - Note that this is different to the index in that we restrict to $S$, and is thus a multiple of $I(K)$.

Then there is an exact sequence
\[  
0 \to D^0(S) / P(S) \mapsvia{\iota} \Cl^0 K \mapsvia{\alpha} \Cl R^S \mapsvia{\beta} C(d/ I(K)) \to 0
.\]

:::

:::{.proof title="?"}
See NTII, Theorem 3.27.
:::

:::{.remark}
Note that the kernel $D(S)/P(S)$ could be infinite but is always finitely generated.
The map $\alpha$ is induced by
\[  
\alpha': \Div K &\to \Frac R^S \\
\sum n_p p  &\mapsto \prod_{p\in \mspec R^S} p^{n_p}
,\]
where we note that $\mspec R^S \subset \Sigma(K/k)$, and in fact $\Sigma(K/k) = \mspec R^S \disjoint S$.
We can do this because if $p$ is already in $\maxspec R^S$, we raise it to an appropriate power, and otherwise, for the finitely many $p\in S$ we just get rid of them.
But this kills of some elements, namely those things supported in $S$, hence the kernel in the exact sequence.
\

Note that the last group appearing is finite cyclic of order $d/I(K)$.
If you just looked at $D^0(S)$ before modding out by principal divisors, if you didn't impose degree zero, the subgroup would be isomorphic to $\ZZ^{\abs{S}}$.
But there's a linear condition that the degree is equal to zero, which cuts down the dimension by 1, yielding $\ZZ^{\abs S - 1}$.
It's hard to say how much $P(S)$ is cutting down the size.
:::

:::{.remark}
The moral is that there is a map, but the kernel and cokernel both depend on $S$.
If you understand $\Cl^0 K$, however, you have a good handle on all $\Cl R^S$.
:::

:::{.exercise title="?"}
\envlist

a. Show that $D^0(S) \cong \ZZ^{\abs S - 1}$.

b. Suppose $S$ consists of a single place whose degree is the quantity $d_S$ appearing in the previous theorem, the least positive degree of a divisor supported on $S$.
  Show that there is an exact sequence
  \[  
  0 \to \Cl^0 K \mapsvia{\alpha} \Cl R^S \mapsvia{\beta} C(d_S/I(K)) \to 0
  .\]

c. Deduce that $\alpha$ is an isomorphism iff $I(K) = d$.

d. Deduce that if $p\in \Sigma(k(t)/k)$ has degree $d$, then $\Cl R^{\ts p} \cong \ZZ/d\ZZ$.

e. Deduce that if $S = \ts p$ and $\deg p = 1$, then $\alpha: \Cl^0 K \to \Cl R^S$ is an isomorphism.
:::

:::{.remark}
Note that if you're given a finite set of places and ask for all of the rational functions that have zeros and poles only at those places, it is difficult to determine how close that is to filling out the entire degree zero divisor class group?
If you have two degree 1 points $p_i$, so $\abs S = 2$, do you have a rational function whose divisor is $p_1 - p_2$?
Probably not, because then the divisor of such a function would have degree 1.
You can continue this line of thought, but already using elliptic function fields you can see that all of these algebraic possibilities can occur.
:::

:::{.remark}
Note that in the case where $S$ is a single point of degree $d$, then $d_S$ is equal to the degree of the point $d$.
On the other extreme, consider what happens when $I(K) = 1$.
Then $C(d_S)$ is cyclic of order $d$, so in (c) if we have a rational function field, we know it has degree 1 places (like $0, \infty$), and the class group is zero.
So if you take one place on $\PP^1$ of degree $d$ and look at the correspond affine Dedekind domain of functions that are regular away from that one place 
$R^{\ts p}$, then the class group is nontrivial and it's thus not a PID.
Note that $\Cl^0 \PP^1$ is trivial, and puncturing it has an effect on the divisor class.
:::

:::{.exercise title="?"}
\envlist

a. Suppose $\Cl^0 K$ is finite, and show that every $\Cl R^S$ is finite.
[^later_we_will_show_finite]

b. Suppose $\Cl^0 K$ is finitely generated, and show that for all finite nonempty $S \subset \Sigma(K/k)$, there exists a finite $S' \supset S$ such that $\Cl R^{S'}$ is trivial.

[^later_we_will_show_finite]: Later we will show that $\Cl^0 K$ is finite when $k$ is finite.

:::

:::{.remark}
This is the positive characteristic version of one of the basic finiteness theorems from NTI: the ring of integers of any number field has finite class group.
But the $S\dash$class group is always finite, since it's a quotient of the class group, and that's what's happening here.
It's enough to show that the $\Cl^0 K$ and $C(d_S/ I(K))$ appearing in the SES in the previous theorem are finite, since the first term can only cut down the size.
The groups $\Cl R^S$ when $k$ is finite are analogues of the $S\dash$class groups of number fields.
In the function field case, you can't get away from the $S\dash$class group, since if $S= \emptyset$ then $R^S$ is not an interesting Dedekind domain: it's just $\kappa(K)$.
So you have to put something at $\infty$ to even get a 1-dimensional domain, whereas in the number field case, you always have a finite nonempty set of nonarchimedean places.

This allows us to deduce from the finiteness of this one geometric group the finiteness of $S\dash$class groups in the characteristic $p$ case.
If done correctly, this can be used to prove the finiteness of class groups of all number fields, e.g. if you do things in an adelic way in NTII.
:::

:::{.theorem title="Trotter, 1988"}
The ring $R[\cos \theta, \sin \theta]$ of real trigonometric polynomials is not a UFD, while $\CC[\cos \theta, \sin \theta]$ is a PID.
:::

:::{.remark}
Trotter shows that using $\sin(\theta)\sin(\theta) = (1+\cos(\theta))(1-\cos(\theta))$ exhibits non-unique factorization, since the terms appearing are non-associate irreducible elements in an integral domain.
See Pete's list of exercises.
Note that given an affine Dedekind domain how one figures out what the infinite places are concretely, but this will come up when discussing hyperelliptic curves.
:::

:::{.remark}
One exercise applies Rosen's theorem to show that $\Cl \RR [\cos(\theta), \sin(\theta)] = \ZZ/2\ZZ$ while $\Cl \CC[\cos(\theta), \sin(\theta)] = 1$.
What's happening is that over $\RR$, there is perhaps one degree 2 place at $\infty$, but after extending scalars to $\CC$ it breaks up into two degree 1 places.
:::
