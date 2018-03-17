function  Error_test=LogisticR_test(X, w)
X=[ones(size(X,1),1),X];
 m = size(X,1);%total m
 n = size(X,2)-1;% feature n// all labels at n+1 column
 
 X=[X, 1 ./ (   1+exp( -X(: ,1:n)*w)  ) ];
 
 for i=1:m,
     if ( X(i,n+2)<=0.5)
         X(i,n+3)=-1;
     else
         X(i,n+3)=1;
     end
 end
 
 Error_test=sum(abs(X(:,n+1)-X(:,n+3)))/2;
 Error_test=Error_test/m;
end
