function [A] = QRstep(I)

% I is de inputmatrix
% N is het aantal keren qr-step wordt uitgevoerd

[Qi,Ri] = qr(I); 
A = Ri*Qi;
%figure;
%imagesc(A);
%print('-dtiff', '-r600');
%hold on;

end