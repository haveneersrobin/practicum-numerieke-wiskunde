function [A] = qrstep(I)

[Qi,Ri] = qr(I);
A = Ri*Qi; 

end