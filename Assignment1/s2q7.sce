// Bajrang 363
// Section 2 Question 7

A = [6, 43, 2, 11, 87; 12, 6, 34, 0, 5; 34, 18, 7, 41, 9];
disp("A = ", A)

// part A
va = A(2,:)
disp("va = ", va)

// part B
vb = A(:,4)
disp("vb = ", vb)

// part C
vc = [A(1,:),A(2,:)]
disp("vc = ", vc)

// part D
vd = [A(:,2)',A(:,5)']
disp("vd = ", vd)
