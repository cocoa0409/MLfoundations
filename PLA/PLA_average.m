function [w, avarage_iteration]=PLA_average(X)
 m = size(X,1);%total m
 update_iteration=zeros(1,2000);
 for i=1:2000,
     shuffle= randperm(m); 
     X=X(shuffle,:);
     [w, update_iteration(i)]=PLA(X);
     w
 end
 
 avarage_iteration= mean(update_iteration);
end
     
     