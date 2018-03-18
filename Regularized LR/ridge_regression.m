function [w,error_in,error_out]=ridge_regression(X_train,X_test, lambda)
y=X_train(:,size(X_train,2));
X_train=[ones(size(X_train,1),1),X_train(:,1:size(X_train,2)-1)];
m=size(X_train,1);
n=size(X_train,2);
w=(X_train'*X_train+eye(n)*lambda)\X_train'*y;
error_in=Error(X_train,y,w);
error_out=Error_test(X_test,w);


