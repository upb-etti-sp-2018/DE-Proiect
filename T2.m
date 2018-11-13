T = 5;%perioada 
F = 1/T;%frecventa
% 2ms
x = 0:0.002:10; 
a = -0.5 + 1.5*sawtooth(2*pi*F*x,3/5);subplot(3,1,1),plot(x,a),grid,title('2ms');
% 20ms
x = 0:0.02:10; 
a = -0.5 + 1.5*sawtooth(2*pi*F*x,3/5);subplot(3,1,2),plot(x,a),grid,title('20ms');
% 200ms
x = 0:0.2:10; 
a = -0.5 + 1.5*sawtooth(2*pi*F*x,3/5);subplot(3,1,3),plot(x,a),grid,title('200ms');