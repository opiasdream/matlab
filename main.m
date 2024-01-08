% structs
footballTeam = {
'Fenerbahce'  true  4 3;
'Galatasaray' false 2 2;
'Besiktas'    true  2 1;
'Trabzonspor' true  0 3;
}

DS = footballTeam(9:12)
RS = footballTeam(13:16)

sum(cell2mat(DS) > cell2mat(RS))

% Plotting a Function
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





