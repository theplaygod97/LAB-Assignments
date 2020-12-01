function[B A]=mybutterworth(Wp, Ws, Rp, Rs,ind)
if ind==1
    [N, Wn] = buttord(Wp, Ws, Rp, Rs,'low')
    [B,A] = butter(N,Wn,'low')
elseif ind==2
    [N, Wn] = buttord(Wp, Ws, Rp, Rs,'high')
    [B,A] = butter(N,Wn,'high')
    elseif ind==3
    [N, Wn] = buttord(Wp, Ws, Rp, Rs,'pass')
    [B,A] = butter(N,Wn,'pass')
elseif ind==4
    [N, Wn] = buttord(Wp, Ws, Rp, Rs,'stop')
    [B,A] = butter(N,Wn,'stop')
else
    disp('Invalid input')
end