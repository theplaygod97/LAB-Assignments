function [B,A]=satyabutter(alpha_max,alpha_min,wp,ws)
[N, Wn] = buttord(wp, ws, alpha_max, alpha_min,'s');
[B,A]=butter(N,Wn,'s')
end