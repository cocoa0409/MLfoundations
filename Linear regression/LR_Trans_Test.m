function average_Error_in= LR_Trans_Test(w, sizes, times)
m=sizes;
n=6;
for i=1:times,
    X=generate_data_with_10percent_error( sizes );
    X=[ones(m,1),X(:,1),X(:,2),X(:,1).*X(:,2),X(:,1).^2,X(:,2).^2,X(:,3)];
    X=[X, sign(X(:,1:n)* w )];
    for i=1:m,
        if ( X(i,n+2)==0)
            X(i,n+2)=-1;
        end
     end
 
     Error_in(i)=sum(abs(X(:,n+1)-X(:,n+2)))/2;
    
end

average_Error_in=mean(Error_in);
