format long
Tijden = zeros(10,1);
dim = [1,20,4,80,16,32,64,128,256,512]
for l = 1:10
    Tijden(l) = QRstepHessenbergTime(dim(l));
end

Ratios = zeros(10,1);

for k = 2:10
    Ratios(k-1) = Tijden(k)/Tijden(k-1);
end
    

    
    