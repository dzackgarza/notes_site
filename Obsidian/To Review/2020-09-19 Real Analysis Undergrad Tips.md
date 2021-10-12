-   [Homework 3](#homework-3)
    -   [Notes](#notes)














Tags: \#advice \#undergraduate

Homework 3
==========

Notes
-----

-   Syntax: make sure you're doing well-defined things with mathematical objects. E.g. it doesn't *a priori* make sense to add a set and a number, or a set and a polynomial, or take the union of a polynomial and a set.

-   To show a set $X$ is countable, you need a countable set $S$ (e.g. $S = {\mathbb{N}}$) an either an injection $X\hookrightarrow S$ or a surjection $S \twoheadrightarrow X$.

    -   Note that any old map won't suffice: the existence of the inclusion map ${\mathbb{Q}}\hookrightarrow{\mathbb{R}}$ doesn't show that ${\mathbb{R}}$ is countable.
    -   To avoid mistakes, it's good to try to explicitly write out the sets and say what the map does to elements.

-   If you say something is an injection/surjection/bijection, it usually warrants a proof (sometimes short). Common mistake: describing a map and saying it's a one-to-one correspondence without much or any justification.

-   Note that a *countable* union of countable sets is again countable, but not an *arbitrary* union. Counterexample: For each $\alpha\in {\mathbb{R}}$ define $B_5(\alpha) = \left\{{x\in {\mathbb{R}}{~\mathrel{\Big|}~}{\left\lvert {x-\alpha} \right\rvert} < 5}\right\} \cap{\mathbb{Z}}$. Then ${\left\lvert {B_5(\alpha)} \right\rvert} \leq 11$ for any $\alpha$, so it's in fact *finite*, but $\cup_{\alpha\in {\mathbb{R}}} B_5(\alpha) = {\mathbb{R}}$ is uncountable.

-   If saying something is e.g. a countable union of countable sets, try to write out the union, e.g. $A = \bigcup_{n\in {\mathbb{N}}} A_n$.
