
m=[5,10,50,100,150,200,250,500,750,1000];

for i = 1:columns(m)
  v = matgen(m(i));
  qcgs = scgs(v);
  qmgs = smgs(v);
  ident = eye(m(i));
  ecgs = norm(ident - qcgs*qcgs');
  emgs = norm(ident - qmgs*qmgs');
  disp(m(i))
  disp(ecgs)
  disp(emgs)
endfor
