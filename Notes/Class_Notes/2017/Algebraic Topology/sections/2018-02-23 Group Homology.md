# Group Homology 

Let $G$ be a discrete group and $A=\ZZ[G]$ a group ring, and consider the category of $A\dash$modules.

We can define the trivial module ${}_{\ZZ[G]}\ZZ$ where $g$ acts by 1 for all $g\in G$. This has to come equipped with a homomorphism 
\[
\ZZ[G] &\mapsvia{\varepsilon} \ZZ \\
g &\mapsto 1
\]

:::{.example}
Take $G=\ZZ_2$ and $A = \ZZ[\ZZ_2]$ which is equal to 
\[
\ZZ[x] / (x^2-1) = \theset{a + bx\mid a,b\in \ZZ, x^2=1}
.\]
Construct by hand a resolution of ${}_{A}\ZZ$ -- this will require some choices, but this will be alright as long as they are reasonably constrained and uniform, i.e. there isn't some infinite process of choices.

Given an algebra, we can think of it as a bimodule over itself (not free), so we can always use the bar resolution. But in this case, that may be too big!

So look at 
\[
\ZZ/(x^2-1).e_2 \mapsvia{e_2 \mapsto (x+1).e_1} \ZZ/(x^2-1) \mapsvia{e_1 \mapsto (x-1)e_0} \ZZ \to 0
.\]
Note that the polynomials just act by evaluation at 1, so there are several different ways of looking at the indicated map - one of which is just to send the generator to 1.

So the kernel if this map actually is the ideal $(x-1)$. Think of elements 
\[ 
(a+bx).e_0 = (a+bx)(1) = a+b
,\]
so the kernel is generated by elements $a=b$, or equivalently the ideal $(x-1)$. 
A similar pattern continues as you resolve, which is periodic -- note that $e_3 \mapsto (x-1).e_2$. 
So picking the minimal thing worked, which ended up having a 2-periodic pattern -- so relatively simple to work with.

So this 2-periodic free resolution can be used
$$
\bar A = \qty{ \cdots A \mapsvia{x(x-1)} A \mapsvia{x(x+1)} A \mapsvia{x(x-1)} \cdots}
$$

From this we can compute $\tor_*^{\ZZ[G]} (\ZZ, \ZZ)$, which is by definition $H_*(G;\ZZ)$. But working this out, we find it is equal to $h(\bar A \tensor \ZZ)$. Use the isomorphism 

\[
A\tensor_A \ZZ \mapsvia{a\tensor 1 \mapsto \varepsilon(a)1} \ZZ
.\] 
Note that $\varepsilon(x-1) =0$ and $\varepsilon(x+1) = 2$, so we have 

\[
h(\cdots \mapsvia{\times 2} \ZZ \mapsvia{\times 0} \ZZ \mapsvia{\times 2} \ZZ \cdots)
.\] 
Thus we have $H_*(\ZZ_2, \ZZ) = \ZZ \delta_0 + \ZZ_2 \delta_{\text{odd}}$.

> Note that this is equal to $H_*(\RP^\infty; \ZZ)$!

:::

:::{.example}
Similarly, we can do this for $\ZZ_n$, looking at $A = \ZZ[x] / (x^n - 1)$, yielding a similar resolution:
\[
\cdots A \mapsvia{\times(x-1)} A \mapsvia{\times(1+x+\cdots x^{n-1})} A \mapsvia{\times (x-1)}A \to \ZZ \to 0
\]
Delete the right hand side, tensor this over $\ZZ$ to yield
\[
\cdots A \mapsvia{\times n} A \mapsvia{\times 0} A \mapsvia{\times n} A \cdots
\]
This is equal to $H_*(L^\infty_n; \ZZ)$, which is equal to $S^{2n-1} / \ZZ_n$ which can be constructed in a CW fashion. 
This is an interesting space which is contractible, but not a point -- note that there is a free action on it via $\ZZ_n$ which has no fixed points, so it's "big".
:::

So this allows us to look at groups as spaces of some sort.

It turns out that there is a universal way to resolve any $\ZZ[G]\dash$module. Look at

$$
\bigoplus_{h\in G} \ZZ[G].e_h \mapsvia{} \ZZ[G] \mapsvia{g\mapsto 1} \ZZ \to 0
$$

What is the kernel of the first map? It is $\ZZ\theset{g-1\mid g\in G}$

Switch up the notation, and write it like a free resolution of abelian groups
$$
\ZZ[G^3] \mapsvia{(g,h,k) \mapsto (g-h) + (h-k) + (k-g)} \ZZ[G^2] \mapsvia{(g,h) \mapsto g-h} \ZZ[G] \mapsvia{g\mapsto 1} \ZZ \to 0
$$

We can then define a complex $C_n = \ZZ[G^n]$ of free abelian groups that is acyclic, using 
\[
\del((g_0, g_1, \cdots g_n)) = \sum (-1)^i (g_0, \cdots \bar g_i, \cdots g_n)
\]

You can write down a contracting homotopy, as in the case of the bar complex, as
  \[
h(g_0 \cdots g_n) \mapsto (1, g_0, \cdots g_n)
  \]

This is a chain homotopy between the identity map and the zero map, i.e. $\del h + h\del = \id - 0$, so the induced map on homology by the identity is equal to the induced map on homology by the zero map - thus zero homology.

In the bar complex, we only acted on the boundary terms and the middle didn't play much of an algebraic role. This is a complex of left $G\dash$modules if we use the diagonal action of $G$, where $g.(g_0, \cdots g_n) = (gg_0, \cdots , gg_n)$.


So to compute $H_*(G; \ZZ)$, we want to tensor with a right module so we take $\tor_*^{\ZZ[G]}(\ZZ_n, {}_n \ZZ)$, where the right slot has already been resolved. 

We identify, although this isomorphism must be handled carefully - we don't want to make $g_0$ a privileged choice in a map like 
\[
\ZZ \tensor_{\ZZ[G]} \ZZ[G^{n+1}] \cong \ZZ[G^n]
\]

\[
(g_0, g_1, \cdots g_n) \mapsto (1, g_1g_0^{-1}, \cdots g_ng_0^{-1}).\]

It's better to label by the differences, i.e. 
\[
(g_0, g_1, g_2, \cdots) = (g_0, g_0^{-1}g_1, g_1^{-1}g_2, \cdots)
,\] 
which is a $g_0$ invariant sort of notation. 

This is the resolution usually seen in books, i.e. you might see
\[
\del(g_1, g_2, \cdots g_n) = (g_2, \cdots g_n) + \sum (-1)^i (\cdots ,g_i g_{i+1}, \cdots) + \cdots
\]