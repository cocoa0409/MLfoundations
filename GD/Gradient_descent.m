function Error_value_after_GD=Gradient_descent(u,v,yeta,number_of_iteration)
if(number_of_iteration ~= 0),
    for i=1:number_of_iteration,
        u_new=u-yeta*(exp(u)+v*exp(u*v)+2*u-2*v-3);
        v_new=v-yeta*(2*exp(2*v)+u*exp(u*v)-2*u+4*v-2);
        u=u_new;
        v=v_new;
    end
%    u_result=u;
%    v_result=v;
    Error_value_after_GD=exp(u)+exp(2*v)+exp(u*v)+u^2-2*u*v+2*v^2-3*u-2*v;
else
    u_old=u-1;
    v_old=v-1;
    while((u-u_old)^2+(v-v_old)^2 >= 1e-5)
        u_old=u;
        v_old=v;
        u_new=u-yeta*(exp(u)+v*exp(u*v)+2*u-2*v-3);  
        v_new=v-yeta*(2*exp(2*v)+u*exp(u*v)-2*u+4*v-2);
        u=u_new;
        v=v_new;
    end
    Error_value_after_GD=exp(u)+exp(2*v)+exp(u*v)+u^2-2*u*v+2*v^2-3*u-2*v;
%    u_result=u;
%    v_result=v;
end
        