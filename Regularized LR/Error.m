function error=Error(X,y,w)
% well-cut
m=size(X,1);
n=size(X,2);
y(:,2)=sign(X*w);
y(:,3)=abs(y(:,1)-y(:,2))/2;
error=sum(y(:,3))/m;