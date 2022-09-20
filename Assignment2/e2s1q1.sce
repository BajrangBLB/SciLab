// Bajrang 363
// Section 1 Question 1

A = [5,2,4; 1,7,-3; 6,-10,0];
disp(A, "A = ")
B = [11,5,-3; 0,-12,4; 2,6,1];
disp(B, "B = ")
C = [7,14,1; 10,3,-2; 8,-5,9];
disp(C, "C = ")

// Part A

dA = det(A)
dB = det(B)
dC = det(C)

disp(dA,"Determinant of A = ")
disp(dB, "Determinant of B = ")
disp(dC, "Determinant of C = ")

// Part B
solb1 = (A+B)*C;
solb2 = 5*A+B*C;

disp(solb1, "(A+B)C = ")
disp(solb2, "5A+BC = ")

// Part C
ab = A*B;
ba = B*A;

disp(ab, "A*B = ")
disp(ba, "B*A = ")

if ab==ba then
    disp("A*B and B*A are equal.");
else
    disp("A*B and B*A are not equal.");
end

// Part D
adc = A/C;
cda = A\C;

disp(adc, "A/C = ")
disp(cda, "A\C = ")


// Part E
abt = (A*B)'
atbt = (A')*(B')
bat = (B*A)'

disp(abt,"(AB)t = ")
disp(atbt, "AtBt = ")
disp(bat, "(BA)t = ")

if abt == atbt & abt ~=  bat then
    disp("(AB)t = (A)t(B)t != (BA)t");
elseif abt == atbt & abt == bat then
    disp("(AB)t = (A)t(B)t = (BA)t");
else
    disp("(AB)t != (A)t(B)t = (BA)t");
end

// Part F
At = A';
Bt = B';

atpbt = At + Bt;
apbt = (A + B)';

if atpbt == apbt then
    disp("(A)t + (B)t = (A+B)t")
    disp(At,"(A)t = ")
    disp(Bt, "(B)t = ")
end


// Part G
if dA ~= 0 then 
    disp("A is invertible")
    disp(inv(A), "A inverse is ")
else
    disp("A is not invertible.")
end

if dB ~= 0 then 
    disp("B is invertible")
    disp(inv(B), "B inverse is ")
else
    disp("B is not invertible.")
end

if dC ~= 0 then 
    disp("C is invertible")
    disp(inv(C), "C inverse is ")
else
    disp("A is not invertible.")
end

// Part H
P = A*C
Q = A.*C

disp(P, "P = A*C = ")
disp(Q, "Q = A.*C = ")
if P == Q then
    disp("A*C  = A.*C", "P and Q are equal.")
else
    disp("P and Q are not equal.")
end
