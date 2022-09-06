// function [output1, output2, ...., n] = function_name (input1, input2, ...., n)
//    output1 = input1 + input2
//    output2 = input2 + input2
// endfunction

// *** Calling function 
// [o1, o2, .... ] = function_name (in1, in2, ....)

function [x,y] = f1(a, b)
    x = a+b
    y = a*b
endfunction

[a,b] = f1(4,8)
disp(a, "4 + 8 = ")
disp(b, "4 * 8 = ")
