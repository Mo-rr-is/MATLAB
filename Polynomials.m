% A polynomial can be represented in two ways:

% 1st Method
% If the polynomial is y = s^4 + 1, then
y = [1 0 0 0 1];

% 2nd Method
% For the same polynomial
y1 = inline('s^4 + 1');

%Finding the value of the polynomial at s = 2
ans = polyval(y,2);

%To plot the polynomial s^4 + 3s^3 - 15s^2 -2s + 9 ranging from -6 to 4
t = -6:4;
x = [1 3 -15 -2 9];
plot(t, polyval(x,t))
title('A plot of a polynomial function')
xlabel('Time t')
ylabel('Function values.')
grid on

% To find the roots of the function
ruts = roots(x);