// Bajrang 363
// September 6, 2022
// Horizontal Range of projectile with respect to theta

function R = horizontal_range(theta)
    u = 750;
    R = (u^2*(sind(2*theta))/9.81)
endfunction

theta = [5:5:85]

for i = 1:length(theta)
    r(i) = horizontal_range(theta(i))
end
clf()
disp('Theta and R')
A = [theta',r];
disp(A)

plot(theta', r)
title("Range of projectile with angle theta")
xlabel("Angle theta (degrees) -> ", 'fontsize', 2)
ylabel("Range of projectile (meters) -> ", 'fontsize', 2)

xs2png(0, 'e2q4.png')
