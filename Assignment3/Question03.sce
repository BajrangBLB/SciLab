A = [10,2,-1; -3,-6,2; 1,1,5];
B = [27; -61.5; -21.5]

X = GAUSS_SEIDAL_METHOD(A,B);
disp(X, "X = ")

v = ["x1 = "; "x2 = "; "x3 = "]
mprintf("%s%.2f\n",v,X')

Y = GAUSS_ELIMINATION_METHOD(A,B);
disp(Y, "Y = ")

mprintf("%s%.2f\n",v,Y)
