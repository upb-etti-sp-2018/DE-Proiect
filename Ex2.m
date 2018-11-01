randn(3);%generare matrice cu elemente aleatoare
M=ans;
M(1:9);%transformare matrice in vector tip linie
x=[];
j=1;
for i=1:1:9 %parcurgere vector
    if M(i)<0
        x(j)=M(i);  %adaugare elemente negative intr-un nou vector
        j=j+1;
    end
end
x