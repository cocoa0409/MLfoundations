function w=Logistic_regression_SGD(X,times, yeta)
X=[ones(size(X,1),1),X];
 m = size(X,1);%total m
 n = size(X,2)-1;% feature n// all labels at n+1 column
 w=zeros(n,1);
 for i=1:times,
     Y=X(rem(i,m)+1,:);
     w=w- yeta* Gradient(Y,w);
 end
         
end