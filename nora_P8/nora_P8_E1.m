function [x, t, C] = GRAnaBarato_P8_E1(L, T, N, M, Dm, cond_inicial, cc_izda, cc_dcha)
%GRANABARATO_P8_E1 Summary of this function goes here
%   Detailed explanation goes here
h = L/N;
k = T/M;
x = 0:h:L;
t = 0:k:T;
C = zeros(length(x),length(t));
r = (Dm*k)/(h^2)
C(:,1) = cc_izda;
C(:,N+1) = cc_dcha;
C(1,:) = cond_inicial;
for j=2:M+1
    for i=2:N
        C(j,i)=r*C(j-1,i-1) + (1-2*r)*C(j-1,i) + r*C(j-1,i+1);
    end
end

s=5;
new_C(1,:) = C(1,:)/cc_izda;
cuenta = fix((length(t)-1)/s);
for p=1:s
    new_C(p+1,:) = C(1+p*cuenta,:)/cc_izda;
end
    clf; figure(1); plot(x,new_C);
   %axis([0 0.05 0 1])
    xlabel('espacio'),ylabel('concentración')
    title('Difusión simple de moléculas a través de una membrana plana')
end

