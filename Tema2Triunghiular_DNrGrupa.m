%Semnal triunghiular cu perioada P=40s, numar de coeficienti N=50 si
%durata semnalelor D=10
P = 40; 
D = 10; 
N = 50;
w0 = 2*pi/P;
t_tr = 0:0.001:D; %esantionarea semnalului original
x_tr = sawtooth((pi/5)*t_tr,0.5)/2+0.5; %semnalul triunghiular original
t = 0:0.001:P; %esantionarea semnalului modificat
x = zeros(1,length(t)); %initializarea semnalului modificat cu valori nule
x(t<=D) = x_tr;  %valorile nule sunt inlocuite cu valori din semnalul original
figure(1);
c=0:0.003:3*P;
plot(c,x,'green'),title('x(t)(linie solida) si reconstructia folosind N coeficienti (linie punctata)'); %afisare x(t)
hold on;

for k = -N:N 
    x_t = x_tr;
    x_t = x_t .* exp(-1i*k*w0*t_tr); 
    X(k+N+1) = 0; %initializare cu valoare nula
    for i = 1:length(t_tr)-1
        X(k+N+1) = X(k+N+1) + (t_tr(i+1)-t_tr(i)) * (x_t(i)+x_t(i+1))/2; %reconstructia realizata cu ajutorul coeficientilor
    end
end

for i = 1:length(c) 
    x_finit(i) = 0; %initializare cu valoare nula
    for k=-N:N
        x_finit(i) = x_finit(i) + (1/P) * X(k+51) * exp(1i*k*w0*t(i));  %reconstructia realizata cu ajutorul coeficientilor
    end
end
plot(c,real(x_finit),'--'); %afisarea semnalului reconstruit cu ajotrul celor N coeficienti

figure(2);
w=-50*w0:w0:50*w0; %vector necesar afisarii spectrului
ww=linspace(min(w/2*pi),max(w/2*pi),2500); %afisarea curbelor netede
yy=spline(w/2*pi,abs(X),ww);
stem(w/2*pi,abs(X)),title('Spectrul lui x(t)');
hold on
plot(w/2*pi,abs(X),'o',ww,yy,':');

%   Din teoria seriilor Fourier am invatat ca un semnal periodic se
%aproximeaza printr-o suma infinita de functii sin si cos cu diferiti
%coeficienti. Coeficientii stau la baza spectrului de amplitudini.
%In cazul acestei reprezentari se folosesc N=50 de termeni, insa 
%semnalul nu poate fi identic cu cel original, existand o abatere care 
%poate fi micsorata prin marirea numarului de coeficienti ai seriei Fourier