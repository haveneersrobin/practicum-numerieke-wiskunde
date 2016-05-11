function [resultaat] = Vraag3_2_3QRstepHessenbergTime(n)

% Timen van 10 Hessenberg matrices met QRstepHessenberg

Hessenbergs = cell(1,1);
for l = 1 : 1
    Hessenbergs{l} = triu(rand(n),-1);
end

Tijd = zeros(1,1);

for l = 1 : 1
    tic;
    QRstepHessenberg(Hessenbergs{l});
    Tijd(l) =  toc;
    
end
resultaat = mean(Tijd)
end

    
