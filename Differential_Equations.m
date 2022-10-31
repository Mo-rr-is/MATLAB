% This Matlab File solves a Differential Equation given certain initial
% conditions.

% Assuming the Differential Equation to be M1z(double_dots)+B1z(dot)+K1z=F1
% Where M1 = 550, B1 = 7000, K1 = 90000, F1 = 21610, z(0) = 0.3 and
% z(dot)(0) = -4

M1 = 550;
B1 = 7000;
K1 = 90000;
F1 = 21610;

% Particular solution zp is equal to
zp = F1/K1;

lambda = roots([M1 B1 K1]);

A = [1 1; lambda(1) lambda(2)];
B = [(.3-zp);-4];
C = inv(A)*B;

t = 0:.02:2;
z = zp + C(1)*exp(lambda(1)*t)+C(2)*exp(lambda(2)*t);

% Plotting the solution
plot(t,z)
grid on

title('Solution of given Differential Equation')
xlabel('t')
ylabel('z')