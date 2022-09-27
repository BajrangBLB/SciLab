// Gauss Elimination Method (Forward Substitution)
// For solving System of Linear Equations AX=B
clear

function [X]=GAUSS_ELIMINATION_METHOD(A,B)
	// Retrieve the size of matrix A and vector B
	[n,n]=size(A)
	[r,s]=size(B)
	
	// Check whether the size of A and size of B are compatible
	if (n<>r) then
    	disp("Error: Matrix A and Vector B are of incompatible sizes")
    end
    
    // Create the Augmented Matrix C
    C = [A B]
    
    // Elementary Elimination Method to reduce the Augmented matrix C..
    // to upper triangular matrix
    
    for i = 1:n-1
    	for j = i+1:n
        	m(j,i) = -C(j,i)/C(i,i);
            C(j,:) = C(j,:) + m(j,i) * C(i,:);
        end
		
	end
    disp(C, "C=")
    X(n,1) = C(n,n+1)/C(n,n)
    //disp(X, "X=")
    for i = n-1:-1:1
    X(i) = (C(i,n+1)-C(i,i+1:n)*X(i+1:n))/C(i,i)
	end
    
    
    
    //disp(X)
    
endfunction

A = [-44,10,16,0;10,-43,6,12;16,6,-30,8;0,12,8,-34];
disp(A,"A=")
B = [-20;0;12;-40];
disp(B, "B=")
X = GAUSS_ELIMINATION_METHOD(A,B);
disp(X, "X=")

v = ["x1=";"x2=";"x3=";"x4="];
mprintf('%s%.2f\n',v,X)
