function [Hk] = QRstepHessenberg(H)
% QR decompositie voor Hessenberg matrices
[M,N] = size(H);

Qstar = H;
Q=eye(M,N);

for l = 1:N-1
    subMatrix = [H(l,l), H(l+1,l)]';
    [Gr,~] = planerot(subMatrix);
    G = eye(M,N);
    G(l:l+1,l:l+1) = Gr(1:2,1:2); 
    Qstar =  G * Qstar;
    Q = Q * G^-1;
end
Hk = Qstar*Q;
end

