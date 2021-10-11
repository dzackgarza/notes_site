[ultrametric%20triangle%20inequality](ultrametric%20triangle%20inequality)

- Integral subring: $\ts{x\in X \st |x|  \leq 1}$ where $\abs{\wait}$ is the valuation.

![](_attachments/Pasted%20image%2020210511104656.png)

![](_attachments/Pasted%20image%2020210511102723.png)

![](_attachments/Pasted%20image%2020210511104707.png)

Definition of a valuation: a group morphism $\FF\units\to \RR$ such that 
$$v(x+y) \geq \min (v(x), v(y))$$
Extend to $\FF\to \RR\union\ts{\infty}$ by defining $\abs{x}_v := e^{v(x)}$ yields an nonarchimedean [absolute%20value.md](absolute%20value.md)
- The **value group** is $v(\FF)$, and $v$ is a **discrete valuation** if $v(\FF) \cong \ZZ \leq \RR$.
- The **valuation ring** is $A := \ts{x\in \FF \st v(x) \geq 0}\in \CRing$, and its **unit group** is $A\units := \ts{x\in \FF \st v(x) = 0}$.
	- Note that $x\in A$ is invertible in $A$ iff $v(x) = 0$.
- Any element $\pi$ for which $v(\pi) = 1$ is a **uniformizer**.