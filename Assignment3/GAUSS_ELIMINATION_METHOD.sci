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
    C = [B A]
    
    // Elementary Elimination Method to reduce the Augmented matrix C..
    // to upper triangular matrix
    
    for i = 1:n-1
    	for j = i+1:n
        	C(j,:) = C(j,:) - C(i,:)*(C(j,i)/C(i,i))
      end
		  disp(C)
	  end
    
    X(n) = C(n,n+1)/C(n,n)
    
    for i = n-1:-1:1
    	S = 0
        for j = i+1:n
        	S = X(j)*C(i,j+1)
          X(i) = (C(i,n+1)-S)/C(i,i)
		  end
	  end
    
    disp(X)
    
endfunction
