// Bajrang 363
// Section 2 Question 8

A = [1,2,3,4,5,6,7; 2,4,6,8,10,12,14; 21,18,15,12,9,6,3; 5,10,15,20,25,30,35];
disp("A = ", A)

// Part A
B = [A(1,1), A(1,3), A(1,5), A(1,7); A(3,1), A(3,3), A(3,5), A(3,7); A(4,1), A(4,3), A(4,5), A(4,7)]
disp("B = ", B)

// part B
u = [A(3,:), A(:,5)', A(:,7)']
disp("u = ", u)


// part C
D = diag(A)
disp("D = " , D)

disp("Sum of diagonal elements = ", sum(D))

// Part D
S = size(A)
disp("S = ", S)

// Part E
A1 = matrix(A, [2,14])
disp("A1 = ", A1)

A2 = matrix(A, [14,2])
disp("A2 = ", A2)

P = A1*A2;
disp("A1*A2 = P = ", P)
