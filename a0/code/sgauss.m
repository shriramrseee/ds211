A = [1, 2, 0; 2, 0, 6; 3, 3, 4]
b = [1; 2; 3]
m = 3;

U = A + A';
L = eye(m);

for k = 1:m-1
  for j = k+1:m
    L(j, k) = U(j, k) / U(k, k);
    U(j, k:m) = U(j, k:m) - L(j, k) * U(k, k:m);
  endfor
endfor

Y = L\-b

X = U\Y

