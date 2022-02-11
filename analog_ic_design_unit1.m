% Analog IC Design - Transconductance graph plot
syms x
syms x positive
a = solve(2.3 - x -0.45*(sqrt(0.9+x) - sqrt(0.9)) == 0,x);
double(a)
% (Un)(Cox)(W/L) = 1 here
% x(t) = Ix , t = Vx
syms x(t)
x(t)= 0.5* ((2.3 - t -0.45*(sqrt(0.9+t)-sqrt(0.9)))^2)*(1.3-0.1*t);
fplot(x(t),[0 1.97]) 
hold on
% y(t) = gm, t = Vx
syms y(t)
y(t) = sqrt(2*x(t));
fplot(y(t),[0 1.97]);
