
This function calculates multiscale multivariate permutation entropy usign a  a Cartesian graph product approach (MMPEG).

Inputs:

x: signal - p x N (channels x the number of vertices)
m: embedding dimension
L: time delay
sc: maximum number of scale factors
I: Interaction graph

Output:
Val: a vector of size 1*sc 

Ref: 
[1] J.S. Fabila-Carrasco, C. Tan, and J. Escudero, “Permutation Entropy for Graph Signals”, IEEE Transactions on 
    Signal and Information Processing over Networks, 2022.
[2] J.S. Fabila-Carrasco, C. Tan, and J. Escudero, "Multivariate permutation entropy, a Cartesian graph product 
    approach." arXiv preprint arXiv:2203.00550, 2022. 

Emails: john.fabila@ed.ac.uk / javier.escudero@ed.ac.uk
 20-April-2022

Example 
X=rand(3,100)
MMPEG(X,4,1,10,zeros(3,3))   matrix zeros implies no relationship between
channels
