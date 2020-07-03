% Crout Decomposition

a=[10,20,50,100];
hold on;
for yup=1:1:4
n=a(yup);
%Matrix A
A=zeros(n,n);
diagonal=-2*(n+1)^2;
other_diag=(n+1)^2;
for i=2:n-1
A(i,i)=diagonal;
A(i,i-1)=other_diag;
A(i,i+1)=other_diag;
end
A(1,2)=other_diag;
A(n,n-1)=other_diag;
A(1,1)=diagonal;
A(n,n)=diagonal;
% Create row vector b
b=zeros(n,1);
for i=1:n
b(i)=sin(pi*(i/(n+1)));
end
[n,m]=size(A);
% crout factorization Algorithm see wikipedia 4 defition
L=zeros(n);
U=zeros(n);
for i=1:n
L(i,1)=A(i,1);
U(i,i)=1;
end
for j=2:n
U(1,j)=A(1,j)/L(1,1);
end
for i=2:n
    for j=2:i
    L(i,j)=A(i,j)-L(i,1:j-1)*U(1:j-1,j);
    end
    for j=i+1:n
    U(i,j)=(A(i,j)-L(i,1:i-1)*U(1:i-1,j))/L(i,i);
    end
end
% Back Substitution, Ly = b
y=zeros(n,1);
y(1)=b(1)/L(1,1);
for i=2:n
y(i)=(b(i)-L(i,i-1)*y(i-1))/L(i,i);
end
% back substitution, Ux = y
x=zeros(n,1);
x(n)=y(n)/U(n,n);
for i=n-1:-1:1
x(i)=(y(i)-U(i,i+1)*x(i+1));
end
plot((1:n)/(n+1),x)
title('Solution matrix plot using increasing sizes')
xlabel('Indices')
ylabel('Solution matrix')
legend('n=10','n=20','n=50','n=100')
end
hold off;
