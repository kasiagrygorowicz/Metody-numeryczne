clc;
clear;
close all;

lref = @(a, b) (- a^7/7 - a^5/5 - a^3/3 - a^2/2 - 10 * a + b^7/7 + b^5/5 + b^3/3 + b^2/2 + 10 * b);
f= @(x) x.^6 + x.^4 + x.^2 + x + 10;
E =zeros(4,50);
H =zeros(4,50);
for m =1:4    
    for n=1:50
        h = 10^(-n/10);
        x = 0 : h : m*h;
        fx = f(x);
        l=simple_Newton_Cotes(fx,x);
        E(m,n) = abs(l-lref(0,m*h));
        H(m,n) =h;
        
    end
end

for m =1:4
    loglog(H(m,:),E(m,:),'o')
    hold on;
end
legend('1 rzędu', '2 rzędu','3 rzędu','4 rzędu');
title('Wykres błędu bezwzględnego od długości kroku');
xlabel('krok');
ylabel('błąd bezwzględny');



        
        
    
    