function [Q,R] = gramschmidt2(A)
R(1,1) = norm(A(:,1));
Q(:,1) = A(:,1)/(R(1,1));
[~,n] = size(A);
for k = 1:(n-1)
    z=A(:,k+1);
    for l = 1:k
        R(l,k+1) = transpose(Q(:,l))*z;
        z = z - R(l,k+1)*Q(:,l);
    end
    R(k+1, k+1) = norm(z);
    Q(:,k+1) = z./(R(k+1,k+1));
end
Q
R
end

