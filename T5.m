% T0 = perioada
% f0 = frecventa
% rez 1,2,3 = rezolutii

T=10;
T0=4;
f0=1/T0;
rez1=0.2;
rez2=0.02;
rez3=0.002;
t1=0:0.2:10;
t2=0:0.02:10;
t3=0:0.002:10;

Sgn1=1.5*sin(2*pi*f0*t1);
for (i=1:length(Sgn1))
if (Sgn1(i)<0)
Sgn1(i)=-Sgn1(i);
end
end

Sgn2=1.5*sin(2*pi*f0*t2);
for (i=1:length(Sgn2))
if (Sgn2(i)<0)
Sgn2(i)=-Sgn2(i);
end
end

Sgn3=1.5*sin(2*pi*f0*t3);
for (i=1:length(Sgn3))
if (Sgn3(i)<0)
Sgn3(i)=-Sgn3(i);
end
end

% Valorile negative se transforma in valori pozitive astfel incat se va
% obtine semnalul redresat dublu-alternanta

subplot(3,1,1)
plot(t1,Sgn1)
subplot(3,1,2)
plot(t2,Sgn2)
subplot(3,1,3)
plot(t3,Sgn3)
