function [best_lambda_Ein,best_lambda_Eout]= lambda_test(X_train,X_test)

lambda=-10:2;
lambda=10.^lambda;
for i=1:size(lambda,2)
    [w,error_in(i),error_out(i)]=ridge_regression(X_train,X_test, lambda(i));
end
best_lambda_Ein=find(error_in==min(error_in))-11;
best_lambda_Eout=find(error_out==min(error_out))-11;