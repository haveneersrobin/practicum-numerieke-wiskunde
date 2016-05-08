function [Hk] = GeneralQRstep(H,k)
% Combinatie van fase 1 en fase 2

House = Householder(H);

for l = 1:k
    Hk = QRstepHessenberg(House);
end

