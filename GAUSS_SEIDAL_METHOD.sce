function X = GAUSS_SEIDAL_METHOD(A,B)
    [n,n] =  size(A)
    s = [1,1,1; 0,0,0];
    
    tol = 10^(-4)
    
    while (norm(s(2,:) - s(1,:)) >= tol),
        s(1,:) = s(2,:);
        disp(s(2,:))
        for i = 1:n
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
