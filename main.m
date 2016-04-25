disp('Gramschmidt 1 op A')
gramschmidt1(A)
disp('Gramschmidt 2 op A')
gramschmidt2(A)
disp('QR Step op A')
qrstep(A)

[Q,~]=qr(rand(8)); 

A=Q*diag([1 2 4 8 16 256 512 2048])*Q'

for i=1:10
    disp(i)
    B = qrstep(A);
    imagesc(B)
    A = B
end

    
