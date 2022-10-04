function X = GAUSS_SEIDAL_METHOD(A,B)
    [n,n] =  size(A)
    [r,s] =  size(B)
    
    if (n<>r) then
        disp("Error this is not compaitable.")
    end
    // defining solution set first row is defined as 1111 for starting the while loop
    s = [1,1,1; 0,0,0];
    // defining the tolerence value 
    tol = 10^(-4)
    
    // loop when difference of two rows is greater than the tolerance
    while (norm(s(2,:) - s(1,:)) >= tol),
        // changing the first row with second row of solution set
        s(1,:) = s(2,:);
        disp(s(2,:))
        // for loop from 1-n
        for i = 1:n
            // value which has to be reduced from B(i)
            r = 0;
            for j = 1:n
                if i == j then
                    continue;
                end
                r = r + A(i,j)*s(2,j);
            end
            s(2,i) = (B(i) - r)/A(i,i);
        end
    end
    
    X = s(2,:)
endfunction

A = [6,-2,1; -2,7,2; 1,2,-5];
B = [11,5,-1]

X = GAUSS_SEIDAL_METHOD(A,B);
disp(X)
