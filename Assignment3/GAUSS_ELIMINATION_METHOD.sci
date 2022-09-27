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
    disp(C)
    X(n,1) = C(n,n+1)/C(n,n)
    disp(X)
    for i = n-1:-1:1
    	
        for j = i+1:n
        
            X(i) = (C(i,n+1)-C(j,j+1:n)*X(j+1:n,1))/C(i,i)
		end
	end
    
    
    
    //disp(X)
    
endfunction

A = [6,1,-6,-5; 2, 2, 3, 2; 4,-3, 0, 1; 0, 2, 0, 1];
disp(A,"A=")
B = [6; -2; -7; 0];
disp(B, "B=")
X = GAUSS_ELIMINATION_METHOD(A,B);
disp(X)
