alphamax=0.25;
alphamin=18;
Wp=1400;
Ws=1000;
[N,Wn]=ellipord(Wp,Ws,alphamax,alphamin,'s')
[b,a]=ellip(N,alphamax,alphamin,Wn,'s')
T=tf(b,a)
figure
bode(T)
figure
pzmap(T)