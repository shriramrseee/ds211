A = [1, 2, 0; 2, 0, 6; 3, 3, 4]
b = [1; 2; 3]
m = 3;

U = A + A';
L = eye(m);
P = eye(m);

for k = 1:m-1
  [max_value i] = max(U(k:m, k));
  i = i + k - 1;
  U([k i], k:m) = U([i k], k:m);
  L([k i], 1:k-1) = L([i k], 1:k-1);
  P([k i], :) = P([i k], :);
  for j = k+1:m
    L(j, k) = U(j, k) / U(k, k);
    U(j, k:m) = U(j, k:m) - L(j, k) * U(k, k:m);
  endfor
endfor

Y = L\(-P*b)

X = U\Y