function [average_Error_in,average_Error_in_T]=LR_average( size, times )
for i=1:times
    [X]=generate_data_with_10percent_error( size );
    [w_t,Error_in(i)]=Linear_regression(X); 
    [w_t1,Error_in_T(i)]=Linear_regression_plusTransformation(X); 
end
average_Error_in=mean(Error_in);
average_Error_in_T=mean(Error_in_T);