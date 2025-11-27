% RC Circut Application
% Define some constants
RC = 0.2;
vi = 2;
va = 10;
% Use ode 45 to solve the differential equasion
% Solve for voltage after 0.25
[t,V] = ode45(@(t,V) (va-V)/RC, [0 0.25],vi);
n = length(V);
fprintf("The voltage after 0.25s is %.2f V\n.",V(n))
% Solve for the votage after 0.5s
[t,V] = ode45(@(t,V) (va-V)/RC, [0 0.5],vi);
n = length(V);
fprintf("The voltage after 0.5s is %.2f V\n.",V(n))
% Solve the voltage after 0.1s
% Solve for the votage after 0.5s
[t,V] = ode45(@(t,V) (va-V)/RC, [0 1],vi);
n = length(V);
fprintf("The voltage after 1s is %.2f V\n.",V(n))
% Logical comparison
near8v = V>7.9 & V<8.1;
time8v = t(near8v);
fprintf("It will take %f seconds for the voltage to reach 8v.\n",time8v)
plot(t,V)
ylim([0 10])
grid on
title("The capacitor voltage in an RC circut")
xlabel("time(s)")
ylabel("The voltage(v)")