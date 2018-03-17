function G=Gradient(X,w_t)
m = size(X,1);%total m
 n = size(X,2)-1;% feature n// all labels at n+1 column
 G=zeros(n,1);
for i=1:m,
    G=G+ sigmonid(-X(i,n+1)*X(i,1:n)*w_t)*(-X(i,n+1)*X(i,1:n)');
end
G=G/m;
    