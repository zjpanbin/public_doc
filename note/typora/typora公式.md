# Typora Latex

## 一、让 Typora 支持 bm加粗

方法是增加bm的macro

1. 编辑/usr/share/typora/resources/window.html文件

2. 搜索window.MathJax，找到其下面的Tex项

3. 在Tex项目下面的Macros项目下面增加`bm: ["\\boldsymbol{#1}",1],`这个macro，重启typora即可

   ```html
   Tex:{
       Macros: {
           ...
           bm: ["\\boldsymbol{#1}",1],
           ...
       }
   }
   ```

   

## 二、typora公式demo

1、行内公式demo：$\sigma*\pi*\theta*x^2$



2、行间公式demo：
$$
p(x_t|u_t,x_{t-1}) = det(2\pi R_t)^{-\frac{1}{2}}exp\{-\frac{1}{2}(x_t-A_tx_{t-1}-B_tu_t)^TR_t^{-1}(x_t-A_tx_{t-1}-B_tu_t)\}     \ \ \ \ \ \ \ \ \ (1)  \\

\def\EXP{
e^x = 1 + x + \frac{1}{2!}x^2 + \frac{1}{3!}x^3  + \cdots
}
\EXP
$$




$$
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
$$




$$
\frac{\partial F} {\partial x}   

\frac{d\bold F} {d\bold x}
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
\begin{align} \bm{r}_{\Delta \bm{R}_{ij}} &= \mathrm{Log} \left(\Delta \tilde{\bm{R}}_{ij}^\mathrm{T} \left(\bm{R}_i^\mathrm{T} \bm{R}_j \right)\right) \\ \bm{r}_{\Delta \bm{v}_{ij}} &= \bm{R}_i^T \left(\bm{v}_j - \bm{v}_i - \bm{g} \Delta t_{ij} \right) - \Delta \tilde{\bm{v}}_{ij} \\ \bm{r}_{\Delta \bm{p}_{ij}} &= \bm{R}_i^\mathrm{T} \left(\bm{p}_j - \bm{p}_i - \bm{v}_i \Delta t_{ij} - \frac{1}{2}\bm{g} \Delta t_{ij}^2 \right) - \Delta \tilde{\bm{p}}_{ij} \end{align}
$$

$$
a \boxminus b \\
c \boxplus d
$$
