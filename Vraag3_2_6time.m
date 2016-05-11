n  = round(logspace(1,3,10));
matrices = cell(7,1);

for l = 1:7
    str = ['Matrix' l];
    disp(str)
    matrices{l} = rand(n(l));
end

tijd_general = zeros(7,1);
for l = 1:7
    str = ['General' l];
    disp(str)
    tic
    GeneralQRstep(matrices{l},100);
    tijd_general(l) = toc;
end

tijd_qr = zeros(7,1);
for l = 1:7
    str = ['Qr' l];
    disp(str)
    tic
    for k = 1:100
        matrices{l} = QRstep(matrices{l});
    end
    tijd_qr(l) = toc;
end
