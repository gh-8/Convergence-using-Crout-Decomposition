Crout Factorization Algorithm 
===============

Objective
----------
Using the Crout factorization algorithm for n =10, 20, 50, 100 to solve the equation Ax= B
where: 
A is an n x n tridiagonal matrix 
a{i,i} = -2(n+1)^2 
a{i,i+1} = a{i,i-1} = (n+1)^2
a{1,1} = a{n,n} = -2(n+1)^2
a{1,2} = (n+1)^2

b is an n dimensional column vector 
b{i} = sin(pi(i/n+1)) 


Algorithm
-----
The algorithm to form an n x n tridiagonal matrice A consists of creating a zero matrice of size n x n, then replacing the main diagonal with -2*(n+1) , then the rest of the diagonals with (n+1) .

The algorithm to form an n x 1 column vector B consists of creating a zero matrice of size n x 1, then going through a loop of i elements with the value of i replaced in the formula sin(pi(i/(n+1)) for each element i. Finally, back substitution was used to solve for the solution vector x.

The Crout factorization algorithm implementation is available on WIKIPEDIA. 

Results & Observations
-----
After running the MATLAB code, the resulting two plots indicate that for all four graphs, as the size n of the solution vector goes to infinity, the bottom of the hyperbolas seem to get close to the same number. Which means that the solution vector x converges as n goes to infinity.

The first plot shows all four graphs of all four values of size n of the solution vector x. From comparing the graphs in the first plot, it is evident that as the size n of the solution vector increases, the solution vector graphs become more smooth and less sharp. Another observation is that it seems that the values on the graph seem to get a more linearly fit function with less random values.

The second plot is simply a more in depth zoom version of the first plot especially the bottom of the hyperbolas to show the convergence of all plots to an approximately close number.
