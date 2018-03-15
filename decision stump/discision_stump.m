function theta= discision_stump(X)
m=size(X,1);
 Y = sortrows(X);
 theta_candidate=zeros(m+1);
 %theta_candidate contains value of stumps and their corresponding error
 theta_candidate(1)=min(Y(:,1))-1;
 for i=2:m,
     theta_candidate(i)=mean(Y(i-1:i,1));
 end
 theta_candidate(m+1)=max(Y(:,1))+1;
 %now we have find out all candidated value of stumps
 
 % fill in the error computation of each stump.
 %  value  +1direction -1direction
 for i=1:m+1,
     theta_error(i,1)=compute_error_of_each_decisionstump(X,theta_candidate(i), 1);
     theta_error(i,2)=compute_error_of_each_decisionstump(X,theta_candidate(i), -1);
 end

 [row,column]=find(theta_error==min(min(theta_error)) );
 
 for i=1:size(row,1),
     theta(i,1)=theta_candidate( row(i) );
     theta(i,2)= 3-2*column(i);
 end
 
 % theta(:,1) save value of optimized stumps
 % theta(:,2) save corresponding directions
 
 
 
     
 

 