function w=pocket(X)
X=[ones(size(X,1),1),X];
 m = size(X,1);%total m
 n = size(X,2)-1;% feature n// all labels at n+1 column
 
 w_1=rands(1,n);
 w=rands(1,n);
 try_number=0;
 total_number=50;
 gamma=1;
 rightnow_mistake=m;
 
 while( try_number~=total_number)
       
     target=randomchoosemistake(w_1,X);
     w_1=w_1+gamma*target(1:n)*target( n+1 );
     if(mistake(w_1,X)<mistake(w,X))
         w=w_1;
     end
     try_number=try_number+1;
 end
     mistake_result_after_iteration=mistake(w,X)
 end