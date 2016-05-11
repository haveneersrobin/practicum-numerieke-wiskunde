Hermitisch = cell(6,1);

for l=4:10
    A = complex(randn(4,4));
    Hermitisch{l-3} = (A + A')/2;
end

for l=1:6
    test = Hermitisch{l}
    Householder(Hermitisch{l})
end
