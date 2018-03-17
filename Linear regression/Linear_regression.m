function [w,Error_in]=Linear_regression(X)
X=[ones(size(X,1),1),X];
 m = size(X,1);%total m
 n = size(X,2)-1;% feature n// all labels at n+1 column
 
 w=pinv(X(:,1:n))*X(:,n+1);
 
  X=[X, sign(X(:,1:n)* w )];
 
 for i=1:m,
     if ( X(i,n+2)==0)
         X(i,n+2)=-1;
     end
 end
 
 Error_in=sum(abs(X(:,n+1)-X(:,n+2)))/2;
end
 