function w=PLA_versus_pocket(X)
X=[ones(size(X,1),1),X];
 m = size(X,1);%total m
 n = size(X,2)-1;% feature n-1// all labels at n+1 column
 
 w=rands(1,n);
 
 try_number=0;
 total_number=50;
 i=0;
 update_iteration=0;
 while( try_number~=total_number)
     i=rem(i,m)+1;
     if(sign(X(i , 1:n)*w')==0)
         if(X( i , n+1)~= -1)
             w=w+X(i , 1:n )*X( i , n+1 );
             try_number=try_number+1;
         end
     elseif(sign(X(i , 1:n)*w')~=X( i , n+1 ))
         w=w+X(i , 1:n )*X( i , n+1 );
         try_number=try_number+1;
     end
     
 end
 mistake_result_after_iteration=mistake(w,X);
end