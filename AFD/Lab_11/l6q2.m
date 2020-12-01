alphamax=0.05;
alphamin=35;
Wp=2500;
Ws=1000;
[N,Wn]=ellipord(Wp,Ws,alphamax,alphamin,'s')
[b,a]=ellip(N,alphamax,alphamin,Wn,'s')
K=a(end)/b(end)
T=tf(K*b,a)
figure
bode(T)
figure
pzmap(T)