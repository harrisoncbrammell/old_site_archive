% ELEC 2120 - Lab 3: Charles Brammell

%% 4.1: Solutions of second order equation

syms x;
eqn = x^2 - 7*x + 6 == 0;
S = solve(eqn);

disp(S(1));
disp(S(2));

%% 4.2: Solving a system of equations

syms x y z;
eqns = [2*x + y - 2*z == 3, 2*x - y - 2*z == 0, x + y + 3*z == 12];
A = solve(eqns, [x y z]);

disp(A);

%% 4.3: Finding the center of circles
r = 6;
syms h k
eq1 = (4-h)^2 + (1-k)^2 == r^2;
eq2 = (6-h)^2 + (1-k)^2 == r^2;
solution = solve([eq1, eq2], [h, k]);

x1 = double(solution.h(1));
y1 = double(solution.k(1));
x2 = double(solution.h(2));
y2 = double(solution.k(2));

fprintf('The center of the first circle is: (%.2f, %.2f)\n', x1, y1);
fprintf('The center of the second circle is: (%.2f, %.2f)\n', x2, y2);

%% 4.4: Multiple methods of solving an equation

syms x
eqn = cos(x) == x^2 - 6;
solved = vpasolve(eqn,x);

fprintf("vpasolve: "+double(solved)+'\n');

ezplot('cos(x)', [-4,4]);
hold on
ezplot('x^2 -6');

%% 4.5: Many solutions to one equation
syms x

eqn = cos(x) == sin(x);

sol1 = vpasolve(eqn, x, [0, pi]);      % First solution in the range [0, pi]
sol2 = vpasolve(eqn, x, [pi, 2*pi]);   % Second solution in the range [pi, 2*pi]
sol3 = vpasolve(eqn, x, [2*pi, 3*pi]); % Third solution in the range [2*pi, 3*pi]

solutions = [sol1, sol2, sol3];
disp(solutions);

%% 4.6: Design Problem
syms x
f = x^2 - 1; 
g = 2 - x; 
sol = vpasolve(f == g, x);

fplot(f, [-3, 3]); 
hold on
fplot(g, [-3, 3]);
plot(double(sol), double(subs(f, sol)), 'ro')
legend('f(x)', 'g(x)', 'Solutions'); 
grid on


