function E_out=test_of_multi_dimensional_ds( X_test, theta )
%receive same form from "function theta=
%multi_dimension_discision_stump(X)"
error = compute_error_of_each_decisionstump(X_test, theta(1) ,theta(2), theta(3));
E_out=error/size(X_test,1);
