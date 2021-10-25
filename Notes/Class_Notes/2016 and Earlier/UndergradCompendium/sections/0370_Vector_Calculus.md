# Vector Calculus

## Notation

$R$ is a region, $S$ is a surface, $V$ is a solid.

$$	
\oint _ { \partial S } \mathbf { F } \cdot d \mathbf { r } = 	
\oint _ { \partial S } [\mathbf{F}_1, \mathbf{F}_2, \mathbf{F}_3] \cdot [dx, dy, dz] 
= \oint_{\del S} \mathbf{F}_1dx + \mathbf{F}_2dy + \mathbf{F}_3dz
$$

The main vector operators
\[
\nabla: (\RR^n \to \RR) &\to (\RR^n \to \RR^n) \\
\phi &\mapsto \nabla \phi \definedas \sum_{i=1}^n \frac{\partial \phi}{\partial x_i} ~\mathbf{e}_i \\ \\
\text{}
\mathrm{div}(\mathbf{F}): (\RR^n \to \RR^n) &\to (\RR^n \to \RR) \\
\mathbf{F} &\mapsto \nabla \cdot \mathbf{F}
\definedas \sum_{i=1}^n \frac{\partial \mathbf{F}_i}{\partial x_i} \\ \\
\text{}
\mathrm{curl}(\mathbf{F}): (\RR^3 \to \RR^3) &\to (\RR^3 \to \RR^3) \\
\mathbf{F} &\mapsto \nabla \cross \mathbf{F} \\ \\
\text{}
\]
Some terminology:
\[
\text{Scalar Field} && \phi:&~ X \to \RR \\
\text{Vector Field} && \mathbf{F}:&~ X\to \RR^n\\
\text{Gradient Field} && \mathbf{F}:&~ X \to \RR^n \mid \exists \phi: X\to \RR \mid \nabla \phi = F
\]

- The Gradient: lifts scalar fields on $\RR^n$ to vector fields on $\RR^n$
- Divergence: drops vector fields on $\RR^n$ to scalar fields on $\RR^n$
- Curl: takes vector fields on $\RR^3$ to vector fields on $\RR^3$

\[
\mathbf x \cdot \mathbf y
= \inner{\mathbf x}{\mathbf y}
= \sum_{i=1}^n {x_i y_i} = x_1y_1 + x_2y_2 + \cdots
&& \text{inner/dot product}
\\
\norm{\mathbf x} = \sqrt{\inner{\mathbf x}{\mathbf x}}
= \sqrt{\sum_{i=1}^n x_i^2}
= \sqrt{x_1^2 + x_2^2 + \cdots}
&& \text{norm}
\\
\mathbf a \cross \mathbf b
= \mathbf{\hat n} \norm{\mathbf a}\norm{\mathbf b}\sin\theta_{\mathbf a,\mathbf b}
= \left| \begin{array}{ccc}
\mathbf{\hat x} & \mathbf{\hat y} & \mathbf{\hat z} \\
a_1 & a_2 & a_3 \\
b_1 & b_2 & b_3
\end{array}\right|
&& \text{cross product} \\ \\
D_\mathbf{u}(\phi) = \nabla \phi \cdot \mathbf{\hat u}
&& \text{directional derivative} \\ \\
\nabla
\definedas \sum_{i=1}^n \frac{\partial}{\partial x_i} \mathbf{e}_i
= \left[\frac{\partial}{\partial x_1}, \frac{\partial}{\partial x_2}, \cdots, \frac{\partial}{\partial x_n}\right]
&& \text{del operator}
\\ \\
\nabla \phi
\definedas \sum_{i=1}^n \frac{\partial \phi}{\partial x_i} ~\mathbf{e}_i
= \tv{ \frac{\partial \phi}{\partial x_1}, \frac{\partial \phi}{\partial x_2}, \cdots, \frac{\partial \phi}{\partial x_n}}
&& \text{gradient} \\ \\
\Delta \phi \definedas \nabla\cdot\nabla \phi \definedas \sum_{i=1}^n \frac{\partial^2 \phi}{\partial x_i^2}
= \frac{\partial^2 \phi}{\partial x_1^2} + \frac{\partial^2 \phi}{\partial x_2} + \cdots + \frac{\partial^2 \phi}{\partial x_n^2}
&& \text{Laplacian}
\\ \\
\nabla \cdot \mathbf{F}
\definedas \sum_{i=1}^n \frac{\partial \mathbf{F}_i}{\partial x_i} = \frac{\partial \mathbf{F}_1}{\partial x_1} + \frac{\partial \mathbf{F}_2}{\partial x_2} + \cdots + \frac{\partial \mathbf{F}_n}{\partial x_n}
&& \text{divergence} \\ \\
\nabla \times \mathbf { F }
= \left| \begin{array} { c c c } { \mathbf { e }_1 } & { \mathbf { e }_2 } & { \mathbf { e }_3 } \\ { \frac { \partial } { \partial x } } & { \frac { \partial } { \partial y } } & { \frac { \partial } { \partial z } } \\ { \mathbf{F} _ { 1 } } & { \mathbf{F} _ { 2 } } & { \mathbf{F} _ { 3 } } \end{array} \right|  = [\mathbf{F}_{3y} - \mathbf{F}_{2z}, \mathbf{F}_{1z}- \mathbf{F}_{3x}, \mathbf{F}_{2x} -\mathbf{F}_{1y}]
&& \text{curl}
\\
\iint _ { S } ( \nabla \times \mathbf { F } ) \cdot d \mathbf { S } = \iint _ { S } ( \nabla \times \mathbf { F } ) \cdot \mathbf { n } ~dS
&& \text{surface integral}
\]




## Big Theorems

### Stokes' and Consequences


:::{.theorem title="Stokes' Theorem"}
\[  
\oint _ { \partial S } \mathbf { F } \cdot d \mathbf { r } = \iint _ { S } ( \nabla \times \mathbf { F } ) \cdot d \mathbf { S }
.\]

:::

:::{.remark}

Note that if $S$ is a closed surface, so $\del S = \emptyset$, this integral vanishes.
:::

:::{.corollary title="Green's Theorem"}
\[  
\oint _ { \del R } ( L ~d x + M ~d y ) = \iint _ { R } \left( \frac { \partial M } { \partial x } - \frac { \partial L } { \partial y } \right) d x d y
.\]
:::

:::{.proof title="?"}
Recovering Green's Theorem from Stokes' Theorem:

Let $\mathbf{F} = [L, M, 0]$, then $\nabla\cross \mathbf{F} = [0, 0, \frac{\partial M}{\partial x} - \frac{\partial L}{\partial y}]$
:::

:::{.corollary title="Divergence Theorem"}
\[  
\iint_ { \partial V } \mathbf { F } \cdot d \mathbf { S } = \iiint _ { V } ( \nabla \cdot \mathbf { F } ) ~d V
.\]
:::


:::{.remark}
\envlist
- $\nabla\cross(\nabla\phi) = 0$
- $\nabla\cdot(\nabla\cross \mathbf{F}) = 0$
:::

### Directional Derivatives

:::{.definition title="Directional Derivative"}
\[  
D_{\vector v} f(\vector p) \da \dd{f}{t}(\vector p + t\vector v) \evalfrom_{t=0}
.\]
:::

:::{.remark}
Note that the directional derivative uses a normalized direction vector!
:::

:::{.theorem title="Dot product expression of directional derivative"}
Suppose $f:\RR^n\to \RR$ and $\vector v\in \RR^n$. Then
\[  
D_{\vector v}f(\vector p) = \inner{\nabla f(\vector p)}{\vector v}
.\]
:::

:::{.proof title="?"}
We first use the fact that we can find $L$, the best linear approximation to $f$:
\[  
L(\vector x) &\da f(\vector p) + D_f(\vector p)(\vector x - \vector p) \\ \\ 
D_{\vector v}f(\vector p)
&= D_{\vector v} L(\vector p) \\
&= \lim_{t\to 0} {L(\vector p + t\vector v) - L(\vector p) \over t}\\
&= \lim_{t\to 0} {
f(\vector p) + D_f(\vector p)(\vector p + t\vector v - \vector p)
-\qty{f(\vector p) + D_f(\vector p)(\vector p - \vector p)}
\over t
}\\
&= \lim_{t\to 0} { D_f(\vector p)(t\vector v) \over t} \\
&= D_f(\vector p)\vector v \\
&\da \nabla f(\vector p) \cdot \vector v
.\]

\todo[inline]{Need a better proof, not clear that this works.}
:::


## Computing Integrals

### Changing Coordinates

#### Multivariable Chain Rule

\todo[inline]{todo}


#### Polar and Cylindrical Coordinates
\[
x = r\cos\theta \\
y = r\sin\theta \\
dV \mapsto r \quad dr~d\theta
\]

#### Spherical Coordinates

\[
x = r\cos\theta = \rho\sin\phi\cos\theta \\
y = r\sin\theta = \rho\sin\phi\sin\theta \\
dV \mapsto r^2 \sin\phi \quad dr~d\phi~d\theta
\]

### Line Integrals

#### Curves

- Parametrize the path $C$ as $\theset{\mathbf{r}(t): t\in[a,b]}$, then

\[
\int_C f ~ds
&\definedas \int_a^b (f\circ \mathbf{r})(t) ~\norm{\mathbf{r}'(t)}~dt \\
&= \int_a^b f(x(t), y(t), z(t)) \sqrt{x_t^2 + y_t^2 + z_t^2} ~dt
\]

#### Vector Fields

- If exact:
\[
\dd{}{y} \mathbf{F_1} = \dd{}{x} \mathbf{F_2} \implies
\int \mathbf{F_1} ~dx + \mathbf{F_2} ~dy = \phi(\mathbf{p_1}) - \phi(\mathbf{p_0})
\]

The function $\phi$ can be found using the same method from ODEs.

- Parametrize the path $C$ as $\theset{\mathbf{r}(t): t\in[a,b]}$, then
\[
\int_C \mathbf F \cdot d\mathbf r
& \definedas \int_a^b (\mathbf F \circ \mathbf r)(t) \cdot \mathbf r'(t) ~dt \\
&= \int_a^b [\mathbf F_1(x(t), y(t), \cdots), \mathbf F_2(x(t), y(t), \cdots)]\cdot[x_t, y_t, \cdots] ~dt \\
&= \int_a^b \mathbf F_1(x(t), y(t) \cdots)x_t + \mathbf F_2(x(t), y(t), \cdots)y_t + \cdots ~dt
\]

- Equivalently written:

\[
\int_a^b \mathbf F_1 ~dx + \mathbf F_2 ~dy + \cdots
\definedas \int_C \mathbf F \cdot d\mathbf r
\]
  in which case $[dx, dy, \cdots] \definedas [x_t, y_t, \cdots] = \mathbf r'(t)$.

- _Remember to substitute dx back into the integrand!!_

### Flux
\[  
\iint_S \mathbf{F}\cdot d\mathbf{S} = \iint_S \mathbf{F}\cdot \mathbf{\hat n} ~dS
.\]

### Area

:::{.proposition title="Areas can be computed with Green's Theorem"}
Given $R$ and $f(x,y) = 0$,
\[  
A(R) = \oint _ { \del R } x ~d y = - \oint _ { \del R } y ~d x = \frac { 1 } { 2 } \oint _ { \del R } - y ~d x + x ~d y
.
\]
:::

:::{.proof title="?"}
Compute
\[
\oint_{\del R} x ~dy = - \oint_{\del R} y ~dx \\
= \frac{1}{2} \oint_{\del R} -y~dx + x~dy
= \frac{1}{2} \iint_R 1 - (-1) ~dA   
=\iint_R 1 ~dA 
\]
:::


### Surface Integrals

- For a paramterization $\mathbf r(s,t): U \to S$ of a surface $S$ and any function $f: \RR^n \to \RR$,
\[
\iint _ { S } f ~dA = \iint _ { U } ( f \circ \mathbf r) ( s , t )~\norm{\mathbf n}  ~dA
\]
- Can obtain a normal vector $\mathbf n = T _ { u } \times T _ { v }$

## Other Results

:::{.example title="?"}
$\nabla \cdot \mathbf{F} = 0 \not \implies \exists G:~ \mathbf{F} = \nabla\cross G$. A counterexample 

$$
\mathbf{F}(x,y,z) =\frac{1}{\sqrt{x^2+y^2+z^2}}[x, y, z]~,\quad S = S^2 \subset \RR^3 \\ 
\implies \nabla \mathbf{F} = 0 \text{ but } \iint_{S^2}\mathbf{F}\cdot d\mathbf{S} = 4\pi \neq 0
$$
Where by Stokes' theorem, 
\[
\mathbf{F} 
= \nabla\cross\mathbf{G}\implies
\iint_{S^2} \mathbf{F} 
&= \iint_{S^2} \nabla\cross\mathbf{G}  \\ \\
&= \oint_{\del S^2}\mathbf{G}~d\mathbf{r}  && \text{by Stokes}\\
&= 0
\]
  since $\del S^2 = \emptyset$.  

:::

:::{.proposition title="Sufficient Conditions"}
Sufficient condition: if $\mathbf{F}$ is everywhere $C^1$,
\[
\exists \mathbf{G}:~ \mathbf{F} 
= \nabla \cross \mathbf{G} 
\iff \iint_S \mathbf{F}\cdot d\mathbf{S} = 0 \text{ for all closed surfaces }S
.\]
:::


