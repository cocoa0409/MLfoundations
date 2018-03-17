function [X]=generate_data_with_10percent_error(size )
%X =[x1,x2,label]
%1000 items

X=[rands(size,1),rands(size,1)];
X=[X, sign( X(:,1).^2+X(:,2).^2 -0.6 )];
Y=randperm(size, ceil(size/10));
X(Y,3)=X(Y,3)*(-1);

