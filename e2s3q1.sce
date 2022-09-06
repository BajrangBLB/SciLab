// Bajrang 363
// September 6, 2022
// Assignment 2 Question 3
function d = depth(t)
    d = 0.5 * 9.81 * t^2
endfunction

clf()
t = [1:0.25:10];
for i = 1:length(t)
    d(i) = depth(t(i))
end

disp([d, t'])
plot(t', d)
title("Depth of well with respect to time taken by a stone dropped into the well.")
xlabel('time t (seconds) ->', 'fontsize', 2)
ylabel('depth d (meters) ->', 'fontsize', 2)

xs2png(0, 'e2q3.png')
