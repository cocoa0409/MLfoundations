function X=generate_data()
X=rands(20,1);
X=[X,sign(X+rands(20,1))];
