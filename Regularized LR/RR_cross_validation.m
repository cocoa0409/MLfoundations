function [best_lambda_cv5]=RR_cross_validation(X_train)
m=size(X_train,1);
n=size(X_train,2);
y_train=X_train(:,n);
X_train=[ones( m  ,1),X_train(: ,1:n-1)];


lambda=-10:2;
lambda=10.^lambda;
for j=1:size(lambda,2),
    for i=1:5,
        X_cval=X_train( (i-1)*m/5+1:(i)*m/5 , :);
        y_cval=y_train( (i-1)*m/5+1:(i)*m/5 );
        X_cvtrain=X_train;
        X_cvtrain((i-1)*m/5+1:(i)*m/5 , :)=[];
        y_cvtrain=y_train;
        y_cvtrain((i-1)*m/5+1:(i)*m/5)=[];
    
        w=(X_cvtrain'*X_cvtrain+eye(n)*lambda(j))\X_cvtrain'*y_cvtrain;
        error(i)=Error(X_cval,y_cval,w);
    end
    error_in_lambda(j)=mean(error);
end
    
best_lambda_cv5=find(error_in_lambda==min(error_in_lambda))-11;
    
    