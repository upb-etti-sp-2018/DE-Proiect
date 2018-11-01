z = zeros(1,21); %generare vector de zerouri
z(6)=1; %al 6-lea element devine 1

figure (1); % a) Reprezentarea vectorului z in functie de n = 0:20
subplot(2,1,1)
stem(z);
axis([0 20 0 1]);

 subplot(2,1,2)
stem(z);
axis([-5 15 0 1]); % a) Reprezentarea vectorului z in functie de m = -5:15

n=0:20;
t=abs(10-n); 

figure(2); % b) t = |10 ? n|, reprezentat grafic în func?ie de n = 0:20
stem(n, t);

n=0:50;
x1=sin(pi*n/17);
x2=cos(pi*n/sqrt(23));

figure(3); % c) Reprzentare grafica x1=sin(pi*n/17), -15<=n<=25
subplot(2,1,1);
plot(n, x1);
subplot(2,1,2);
plot(n, x2);

figure(4)
hold on;
plot(n, x2);
hold off;