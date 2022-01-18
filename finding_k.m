%%%%%%%question4

syms v(t) k


eqns = diff(v,t)==-k*v;
tnai = v(0)==50;
klali = dsolve(eqns)
%%%finding c
prati = dsolve(eqns,tnai)
%%%finding k 
tnai2 = 50*exp(-k*10)==10
kk = solve(tnai2)


