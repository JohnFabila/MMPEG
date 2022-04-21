function MatAdj = MatAdj(n1,n2)

if numel(n2)==1
    A2=ones(n2,n2)-diag(ones(1,n2),0);
    I2=diag(ones(1,n2),0);
else    
    A2=n2;
    n3=size(A2,1);
    I2=diag(ones(1,n3),0);
end
    
A1=diag(ones(1,n1-1),1);
I1=diag(ones(1,n1),0);


MatAdj = kron(A1,I2)+kron(I1,A2);

