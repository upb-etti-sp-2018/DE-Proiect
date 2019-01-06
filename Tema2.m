%Semnal dreptunghiular cu perioada P=40s, numar de coeficienti N=50 si
%durata semnalelor D=5
P = 40; 
D = 5; 
N = 50;
w0 = 2*pi/P;
t_dr = 0:0.001:D; %esantionarea semnalului original
x_dr = square((2*pi/5)*t_dr,1)/5+2; %semnalul dreptunghiular original
t = 0:0.001:P; %esantionarea semnalului modificat
x = zeros(1,length(t)); %initializarea semnalului modificat cu valori nule
x(t<=D) = x_dr; %valorile nule sunt inlocuite cu valori din semnalul original

figure(1);
plot(t,x),title('x(t)(linie solida) si reconstructia folosind N coeficienti (linie punctata)');
hold on;
for k = -N:N % suma dupa k
    x_2 = x_dr; %x_t e semnalul realizat dupa formula SF data
    x_2 = x_2 .* exp(-1i*k*w0*t_dr); %inmultire intre doua matrice element cu element
    X(k+N+1) = 0; %initializare cu valoare nula
    for i = 1:length(t_dr)-1
        X(k+N+1) = X(k+N+1) + (t_dr(i+1)-t_dr(i)) * (x_2(i)+x_2(i+1))/2; %reconstructia realizata cu ajutorul coeficientilor
    end
end

for i = 1:length(t) % suma dupa i
    x_finit(i) = 0; %initializare cu valoare nula
    for k=-N:N
        x_finit(i) = x_finit(i) + (1/P) * X(k+51) * exp(1i*k*w0*t(i));  %reconstructia realizata cu ajutorul coeficientilor
    end
    
end
plot(t,real(x_finit),'--'); %afisarea semnalului reconstruit cu ajotrul celor N coeficienti

figure(2);
v1=-50*w0:w0:50*w0; %vector necesar afisarii spectrului
v2=linspace(min(v1/2*pi),max(v1/2*pi),2500); %afisarea curbelor netede
yy=spline(v1/2*pi,abs(X),v2);
stem(v1/2*pi,abs(X)),title('Spectrul lui x(t)');
hold on
plot(v1/2*pi,abs(X),'o',v2,yy,':');

%   Din teoria seriilor Fourier am invatat ca un semnal periodic se
%aproximeaza printr-o suma infinita de functii sin si cos cu diferiti
%coeficienti. Coeficientii stau la baza spectrului de amplitudini.
%In cazul acestei reprezentari se folosesc N=50 de termeni, insa 
%semnalul nu poate fi identic cu cel original, existand o abatere care 
%poate fi micsorata prin marirea numarului de coeficienti ai seriei Fourier.
