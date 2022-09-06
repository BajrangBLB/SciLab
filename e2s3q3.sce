// Bajrang 363
// September 6, 2022
// Vandermonde Matrix

function vand = vandermonde_my(x)
    v = ones(length(x),1)
    for i = 1:length(x)-1
        for j = 1:length(x)
            r(j) = x(j)^i
        end
        c = [v, r]
        v = c
    end
    vand = c
endfunction

x = [2,-3, 5, -2]

vand = vandermonde_my(x)
disp(vand)
