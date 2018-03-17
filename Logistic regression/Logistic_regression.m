function w=Logistic_regression(X,times, yeta)
X=[ones(size(X,1),1),X];
 m = size(X,1);%total m
 n = size(X,2)-1;% feature n// all labels at n+1 column
 w=zeros(n,1);
 for i=1:times,
     w=w- yeta* Gradient(X,w);
 end
         
end
     