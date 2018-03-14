function w=PLA(X)
X=[ones(size(X,1),1),X];
 m = size(X,1);%total m
 n = size(X,2)-1;% feature n-1// all labels at n+1 column
 
 w=zeros(1,n);
 
 index=m;
 i=0;
 
 while(index~=0)
     i=rem(i,m)+1;
     if(sign(X(i , 1:n)*w')==0)
         if(X( i , n+1)~= -1)
             w=w+X(i , 1:n )*X( i , n+1 );
             index=m-1;
         end
     elseif(sign(X(i , 1:n)*w')~=X( i , n+1 ))
         w=w+X(i , 1:n )*X( i , n+1 );
         index=m-1;
     else
         index=index-1;
     end
     
 end
 
 
 
 
 