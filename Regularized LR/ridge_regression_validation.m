function [best_lambda_Ein,best_lambda_Eval,best_lambda_Eout]=ridge_regression_validation(X_train,X_test)
m=size(X_train,1);
n=size(X_train,2);
y_val=X_train((m*0.6+1):m,size(X_train,2));
X_val=[ones(m*0.4  ,1) , X_train((m*0.6)+1:m,1:size(X_train,2)-1)];
y_train=X_train(1:m*0.6,size(X_train,2));
X_train=[ones(m*0.6  ,1),X_train(1:m*0.6,1:size(X_train,2)-1)];
m=size(X_train,1);
n=size(X_train,2);

lambda=-10:2;
lambda=10.^lambda;
for i=1:size(lambda,2),
    w=(X_train'*X_train+eye(n)*lambda(i))\X_train'*y_train;
    error_in(i)=Error(X_train,y_train,w);
    error_val(i)=Error(X_val,y_val,w);
    error_out(i)=Error_test(X_test,w);
end

best_lambda_Ein=find(error_in==min(error_in))-11;
best_lambda_Eval=find(error_val==min(error_val))-11;
best_lambda_Eout=find(error_out==min(error_out))-11;
