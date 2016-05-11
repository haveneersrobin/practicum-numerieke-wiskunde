function [Hk] = QRstepHessenberg(H)
% QR decompositie voor Hessenberg matrices
[m,n] = size(H);

Qstar = H;
Q=eye(m,n);

for l = 1:n-1
    Gr = planerot([Qstar(l,l), Qstar(l+1,l)]');
    G = eye(m,n);
    G(l:l+1,l:l+1) = Gr(1:2,1:2); 
    Qstar =  G * Qstar;
    Q = Q * G';
end
Hk = Qstar*Q;
end

