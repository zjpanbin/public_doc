# Latex公式

## 一、一些latex公式的demo：

$$
\begin{aligned}
p(x_t|u_t,x_{t-1}) = det(2\pi R_t)^{-\frac{1}{2}}exp\{-\frac{1}{2}(x_t-A_tx_{t-1}-B_tu_t)^TR_t^{-1}(x_t-A_tx_{t-1}-B_tu_t)\}     \ \ \ \ \ \ \ \ \ (1)  \\


\end{aligned}
$$


$$\def\EXP{
e^x = 1 + x + \frac{1}{2!}x^2 + \frac{1}{3!}x^3  + \cdots
}
\EXP$$

$$
\begin{aligned}
A_1^2
\\
B_{12}
\\
2^{x^2+y}
\\
a'
a''
a^{\prime}
\\
\int_{1}^{2}
\intop_{2}^{1}
\oint
\smallint
\\
\iint
\oiint
\iiint
\oiiint
\\
\varSigma^{-1}
\end{aligned}
$$




$$
\frac{\partial \bm{F}} {\partial \bm{x}}   

\frac{d\bm F} {d\bm x}
$$

$$
\frac {dF(X)}{dX^T} = 
\left[ 
\frac{\partial F} {\partial x_1}  \frac{\partial F} {\partial x_2}  ... \frac{\partial F} {\partial x_n}  
\right] = 
\left[ 
\frac {dF(X)}{dX}
\right]^T
\tag {1.2}
$$




$$
F=\{F_1(x),F_2(x),...,F_n(x)\}^T
\tag 1
$$




$$
F(X) = 
\left [ 
    \begin{matrix}   
        x_{11} & x_{12} & \cdots & x_{1d}\\      
        x_{21} & x_{22} & \cdots & x_{2d}\\     
        \vdots & \vdots & \ddots & \vdots \\     
        x_{11} & x_{12} & \cdots & x_{1d}\\
    \end{matrix}
\right]
$$



$$
\begin{align} 
\bm{r}_{\Delta \bm{R}_{ij}} &= \mathrm{Log} \left(\Delta \tilde{\bm{R}}_{ij}^\mathrm{T} \left(\bm{R}_i^\mathrm{T} \bm{R}_j \right)\right) \\ 
\bm{r}_{\Delta \bm{v}_{ij}} &= \bm{R}_i^T \left(\bm{v}_j - \bm{v}_i - \bm{g} \Delta t_{ij} \right) - \Delta \tilde{\bm{v}}_{ij} \\
\bm{r}_{\Delta \bm{p}_{ij}} &= \bm{R}_i^\mathrm{T} \left(\bm{p}_j - \bm{p}_i - \bm{v}_i \Delta t_{ij} - \frac{1}{2}\bm{g} \Delta t_{ij}^2 \right) - \Delta \tilde{\bm{p}}_{ij} 
\end{align}
$$


$$
\begin{aligned}
a \boxminus b \\
c \boxplus d \\
\end{aligned}
$$


$$
\begin{aligned}
\sum    \prod \\
\bigoplus
\oplus\\
\bigotimes
\otimes\\
\end{aligned}
$$


$$
\begin{aligned}
\left( \bm{p} \otimes \bm{q} \right)^* = \bm{q}^* \otimes \bm{p}^*

\\

\mathbf{q} \otimes \mathbf{q}^* = \mathbf{q}^* \otimes \mathbf{q} = q_w^2 + q_x^2 + q_y^2 + q_z^2 = 
\begin{bmatrix} 
  q_w^2 + q_x^2 + q_y^2 + q_z^2 \\ 
  \mathbf{0}_v 
\end{bmatrix}


\end{aligned}
$$


$$
\begin{equation}
Q = a + b\mathbf{i} + c\mathbf{j} + d\mathbf{k} \in \mathbb{H}
\end{equation}
$$

$$
\begin{align}
\mathbf{i}^2 &= \mathbf{j}^2 = \mathbf{k}^2 = \mathbf{i}\mathbf{j}\mathbf{k} = -1 \\
\mathbf{i}\mathbf{j} &= -\mathbf{j}\mathbf{i} = \mathbf{k}, \quad 
\mathbf{j}\mathbf{k} = -\mathbf{k}\mathbf{j} = \mathbf{i}, \quad 
\mathbf{k}\mathbf{i} = -\mathbf{i}\mathbf{k} = \mathbf{j}
\end{align}


$$
$$
\begin{equation}
Q = q_w + \mathbf{q}_v = \langle q_w, \mathbf{q}_v \rangle
\end{equation}
$$

$$
\begin{equation}
\mathbf{q} \triangleq \begin{bmatrix} q_w \\ q_x \\ q_y \\ q_z \end{bmatrix}
\end{equation}

$$




$$
\begin{align}
\dot{\delta\mathbf{p}} &= \delta\mathbf{v} \\
\dot{\delta\mathbf{v}} &= -\mathbf{R}[\mathbf{a}_m - \mathbf{a}_b]_\times \delta\boldsymbol{\theta} - \mathbf{R}\delta\mathbf{a}_b + \delta\mathbf{g} - \mathbf{R}\mathbf{a}_n \\
\dot{\delta\boldsymbol{\theta}} &= -[\boldsymbol{\omega}_m - \boldsymbol{\omega}_b]_\times \delta\boldsymbol{\theta} - \delta\boldsymbol{\omega}_b - \boldsymbol{\omega}_n
\end{align}

$$

$$
\begin{equation}
\mathbf{F_x} = \begin{bmatrix}
\mathbf{I} & \mathbf{I}\Delta t & 0 & 0 & 0 & 0 \\
0 & \mathbf{I} & -\mathbf{R}[\mathbf{a}_m - \mathbf{a}_b]_\times\Delta t & -\mathbf{R}\Delta t & 0 & \mathbf{I}\Delta t \\
0 & 0 & \mathbf{R}^\top\{(\boldsymbol{\omega}_m - \boldsymbol{\omega}_b)\Delta t\} & 0 & -\mathbf{I}\Delta t & 0 \\
0 & 0 & 0 & \mathbf{I} & 0 & 0 \\
0 & 0 & 0 & 0 & \mathbf{I} & 0 \\
0 & 0 & 0 & 0 & 0 & \mathbf{I}
\end{bmatrix}
\end{equation}
$$













## 二、论文算法demo



```pseudo
    \begin{algorithm}
    \caption{Quicksort}
    \begin{algorithmic}
      \PROCEDURE{Quicksort}{$A, p, r$}
        \IF{$p < r$}
          \STATE $q = $ \CALL{Partition}{$A, p, r$}
          \STATE \CALL{Quicksort}{$A, p, q - 1$}
          \STATE \CALL{Quicksort}{$A, q + 1, r$}
        \ENDIF
      \ENDPROCEDURE
      \PROCEDURE{Partition}{$A, p, r$}
        \STATE $x = A[r]$
        \STATE $i = p - 1$
        \FOR{$j = p$ \TO $r - 1$}
          \IF{$A[j] < x$}
            \STATE $i = i + 1$
            \STATE exchange
            $A[i]$ with $A[j]$
          \ENDIF
        \STATE exchange $A[i]$ with $A[r]$
        \ENDFOR
      \ENDPROCEDURE
      \end{algorithmic}
    \end{algorithm}
```


