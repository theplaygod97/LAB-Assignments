clc;
clear all;
close all;
syms p(n) z
assume(n>=0 & in(n,'integer'))
syms n
f=(0.5)^(n)*heaviside(n)
f =  p(n)-((1.5)*p(n-1)) - ((0.5)*p(n-2))
fZT = ztrans(f,n,z)
syms pZT
fZT = subs(fZT,ztrans(p(n),n,z),pZT)
pZT = solve(fZT,pZT)
pSol = iztrans(pZT,z,n);
pSol = simplify(pSol)
pSol = subs(pSol,[p(-1) p(-2)],[4 10])