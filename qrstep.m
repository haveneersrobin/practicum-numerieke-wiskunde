function [A] = QRstep(I)

% I is de inputmatrix
% N is het aantal keren qr-step wordt uitgevoerd

[Qi,Ri] = qr(I); 
A = Ri*Qi;
A(A==0) = eps;
figure;
imagesc(A);
hold on;

end