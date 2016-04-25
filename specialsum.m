function a = specialsum(Q,R,m)
a = 0;
for p = 1:m
    a = a + R(p,m+1)*Q(:,p);
end
end
