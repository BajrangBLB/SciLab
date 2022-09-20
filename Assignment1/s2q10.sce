// Bajrang 363
// Section 2 Question 10

for i=1:6
    for j = 1:6
        U(i,j) = 0;
        if (i==3|i==4|j==3|j==4)
            U(i,j) = 1; 
        end
    end
end

disp("U = ", U)
