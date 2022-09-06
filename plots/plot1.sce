// Bajrnag 363
// September 6, 2022

function func = f(x)
    func = x^2+x^3
endfunction

x = [1:0.1:5];

for i = 1:length(x)
    y(i) = f(x(i))
end

plot(x',y)
title('Simple Plot', 'fontsize', 4)
xlabel('x-coordinate', 'fontsize', 2)
ylabel('function - f(x)', 'fontsize', 2)
disp([x',y])
