//Defining the function 
function [x,y] = f1(a, b)
    x = a+b
    y = a*b
endfunction

[a,b] = f1(4,8)
disp(a, "4 + 8 = ")
disp(b, "4 * 8 = ")
