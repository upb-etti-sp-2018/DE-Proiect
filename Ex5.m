F = 50;
t = 0:0.001:0.2;
s = 2*sin(2*pi*F*t);
plot(t,s,'.-'),xlabel('Timp [s]'),grid

hold on

% b) pas 0.001 => 0.02s
%    pas 0.01  => semnal neperiodic
%    pas 0.0002 => 0.02s
f = 20; % c)Generare semnal cosinusoidal de culoare rosie suprapus peste semnalul sinusoidal
T = 0:0.001:0.2;
S = 2*cos(2*pi*F*t);
plot(T,S,'.-'),xlabel('Timp [s]'),grid

hold off