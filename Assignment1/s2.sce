// Bajrang 363
// Section 2
// Creating and Handling Arrays

// Creating row vector A
A = [32, 4, 81, exp(2.5), 63, cos(%pi/3), 14.12];
disp("Row vector A is ", A)

// Sum of all elements in A
S = sum(A)
disp("Sum of all elements of A is ", S)

// Row vector with the first element is 1 and last element is 33 with increment of 2
r = [1:2:33]
disp("Row vector with the first element is 1 and last element is 33 with increment of 2 ", r)


// Row vector with 15 equally spaced elements b/w 7 and 40
er = [linspace(7,40,15)]
disp("Row vector with 15 equally spaced elements b/w 7 and 40", er)

// Row vector with 12 equally spaced elements b/w -1 and -15
p = [linspace(-1,-15,12)]
disp("Row vector with 12 equally spaced elements b/w -1 and -15 ", p)
