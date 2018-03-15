function theta= multi_dimension_discision_stump(X)
m=size(X,1);
n=size(X,2)-1;
theta_candidate=zeros(m+1,n);
theta_error=zeros(m+1,2*n);

for j=1:n
    theta_candidate(1,j )=min( X(:,j) )-1;
    theta_candidate(m+1,j)=max(X(:,j))+1;
end

for j=1:n,
    X=sortrows(X,j);
    for i=2:m,
        theta_candidate(i,j)=mean( X(i-1:i,j) );
    end
end
%now we found all stump values in different dimensions

 % fill in the error computation of each stump.
 %   +1direction first -1direction second
 for j=1:n,
     for i=1:m+1,
         theta_error( i ,2*j-1)=compute_error_of_each_decisionstump(X,j, theta_candidate(i,j),1 );
         theta_error( i ,2*j)=compute_error_of_each_decisionstump(X,j, theta_candidate(i,j),-1 );
     end
 end

 [row,column]=find(theta_error==min(min(theta_error)) );
 
 for i=1:size(row,1),
     theta(i,1)=ceil(column(i)/2);
     theta(i,2)=theta_candidate( row(i),theta(i,1) );
     theta(i,3)= -1*(-1)^column(i);
     
     error=compute_error_of_each_decisionstump(X,theta(i,1), theta(i,2),theta(i,3) );
     theta(i,4)= error/m;
 end
 
 %theta(:,1) save corresponding dimension
 % theta(:,2) save value of optimized stumps
 % theta(:,3) save corresponding directions
 %theta (:,4) save E_in
    % odd column -> +1 direction
    % even column -> -1 direction 
 