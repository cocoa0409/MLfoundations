function error_out=Error_test(X_test,w)
error_out=Error([ones(size(X_test,1),1),X_test(:,1:size(X_test,2)-1)],X_test(:,size(X_test,2)),w);
end