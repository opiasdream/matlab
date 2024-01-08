% structs
TeamA = struct('Rakip', '', 'EvSahibi', false, 'TeamSkor', 0.0, 'RakipSkor', 0.0);
TeamA(1) = struct('Rakip', 'Fenerbahce', 'EvSahibi', true, 'TeamSkor', 4, 'RakipSkor', 3);
TeamA(2) = struct('Rakip', 'Galatasaray', 'EvSahibi', false, 'TeamSkor', 2, 'RakipSkor', 2);
TeamA(3) = struct('Rakip', 'Besiktas', 'EvSahibi', true, 'TeamSkor', 2, 'RakipSkor', 1);
TeamA(4) = struct('Rakip', 'Trabzonspor', 'EvSahibi', true, 'TeamSkor', 0, 'RakipSkor', 3);

TS = [TeamA.TeamSkor]
RS = [TeamA.RakipSkor]

sum(TS > RS)

% 2D Line Plot
% y=9x^4-6x^3+3x^2-4x+2 and 0 <= x <= 2
x = 0:0.01:2;
y = 9*x.^4 - 6*x.^3 + 3*x.^2 - 4*x + 2;
plot(x,y, 'r--') % r: red, --: dashed line
xlabel('time')
ylabel('cost')


% Numeric Computation with Absolute Fault Tolerance
% fun is [\int_{0}^{4}13x(1-x)e^{-1.5x}dx] 
function y = myFunction(x)
    y = 13 * x .* (1 - x) .* exp(-1.5 * x);
end

result = integral(@myFunction, 0, 4, 'AbsTol', 1e-4);

% Symbolic Computation
% 1
syms x y z
eq1 = 2*x - 3*y + 4*z == 5;
eq2 = y + 4*z + x == 10;
eq3 = -2*z + 3*x + 4*y == 0;
[x,y,z] = solve(eq1, eq2, eq3, x, y, z);
x_d = double(x), y_d = double(y), z_d = double(z)

% 2
syms x
y = (x * sin(x))/(1 + x ^ 2);
dy = diff(y);
% values of dy expression for values from 1 to 10
x = 1:10
dyp = subs(dy, x)
% line plot
plot(x,dyp)


