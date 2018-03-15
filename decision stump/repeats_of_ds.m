function repeats_of_ds()
for i=1:2000,
    X=generate_data();
    theta = discision_stump(X);
    error_in(i)=compute_error_of_each_decisionstump(X,theta(1,1), theta(1,2));
    error_out(i)=0.5+0.3*theta(1,2)*(abs(theta(1,1))-1);
end
avarage_error_in= mean(error_in)
avarage_error_out_by_equation= mean(error_out)
end

    
