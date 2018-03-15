function error = compute_error_of_each_decisionstump(X, which_dimension ,theta, direction)
% if direction is 1, it suggestes that all value of x larger than  or equal to theta
% is +1. if direction is -1, it suggestes that all value of x larger than or equal to 
% theta is -1.


  %     <- (-1)     (1)->

m=size(X,1);
n=size(X,2);
error=0;
for i=1:m,
    if( ( X(i,which_dimension)>=theta && X(i,n)==-1*direction) || ( X(i,which_dimension )<theta && X(i,n)==1*direction ))
        error=error+1;
    end
end
end