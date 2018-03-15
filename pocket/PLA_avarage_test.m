function mistake_result_of_average=PLA_avarage_test(X_train,X_test)
for i=1:2000
    w=PLA_versus_pocket(X_train);
    mistake_result_of_test(i)=mistake_test(w,X_test);
end
mistake_result_of_average=mean(mistake_result_of_test);