// Bajrang 363
// S1Q1 Define the variables a = 15.62, b = -7.08, c = 62.5 and d = 0.5(ab-c)
// Evalute the following
// (a) a+ (a*b(a+d)^2)/ c*sqrt(abs(a*b))
// (b) d*exp(d/2) + ((a*d+c*d)/(20/a+30/b))/a+b+c+d

a = 15.62;
b = -7.08;
c = 62.5;
d = 0.5*(a*b-c)


sol1 = a + (a*b*((a+d)^2))/(c*sqrt(abs(a*b)));

disp("a+ (a*b*(a+d)^2)/ c*sqrt(abs(a*b)) = ", sol1)

sol2 = d * exp(d/2) + ((a*d + c*d)/(20/a+20/b))/(a+b+c+d);

disp("d*exp(d/2) + ((a*d+c*d)/(20/a+30/b))/a+b+c+d = ", sol2)
