% T0 = perioada;
% f0 = frecventa;
% rez 1,2,3 = rezolutii;
T=10;
T0=2;
f0=1/T0;
rez1=0.2;
rez2=0.02;
rez3=0.002;
t1=0:0.2:T;
t2=0:0.02:T;
t3=0:0.002:T;

Sgn1=0.8*sin(2*pi*f0*t1); % Amplitudinea = 0.8
Sgn2=0.8*sin(2*pi*f0*t2);
Sgn3=0.8*sin(2*pi*f0*t3);

for i=1:length(Sgn1)
if (Sgn1(i)<0)
Sgn1(i)=0;
end;
end;

for i=1:length(Sgn2)
if (Sgn2(i)<0)
Sgn2(i)=0;
end;
end;

for i=1:length(Sgn3)
if (Sgn3(i)<0)
Sgn3(i)=0;
end;
end;

% Valorile negative se egaleaza cu 0 astfel incat nu va exista semnal sub
% axa Ox
subplot(3,1,1)
plot(t1,Sgn1)
subplot(3,1,2)
plot(t2,Sgn2)
subplot(3,1,3)
plot(t3,Sgn3)