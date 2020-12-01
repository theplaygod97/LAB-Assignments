function[b,a]=imp_invr(cs,ds,t)         %impulse invariance
[z,p,k]=residue(cs,ds);
p=exp(p*t);                             %expression to convert from s->z
[b,a]=residuez(z,p,k);
b=real(b');
a=real(a');
end
