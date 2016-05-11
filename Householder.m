function [R] = Householder(A)

[M,N] = size(A);
R=A;

% We willen nullen krijgen in alle rijen behalve de laatste 2:
% deze bevinden zich namelijk niet meer onder de twee diagonaal
for K = 1:M-2
    % We werken iteratief alle rijen af
    X = R(K+1:M,K);
    
    % We maken de standaardbasisvector
    E = zeros(length(X),1);
    E(1) = 1;
    
    % Teken berekenen met sign functie
    U = sign(X(1)) * norm(X)*E + X;
    
    % We normaliseren de vector
    U = U ./ norm(U);
    
    %We vullen de matrix
    R(K+1:M, K:M) = R(K+1:M,K:M) - 2*U*(U'*R(K+1:M,K:M));
    R(1:M, K+1:M) = R(1:M,K+1:M) - 2*(R(1:M,K+1:M)*U)*U';
end

end

