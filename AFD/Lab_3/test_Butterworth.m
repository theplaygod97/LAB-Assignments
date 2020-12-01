format shorte
alpha_max = 0.5
alpha_min = 20
omega_s = 2000
omega_p = 1000

[a,b] = satyabutterworth(alpha_max,alpha_min,omega_p,omega_s)

bode(tf(a,b))

format short