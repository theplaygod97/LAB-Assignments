function [h,MSE] = LSQFilt(f,d,M) 
%LSQFilt -Demonstration routine for Least-Squares FIR filter design %[B,MSE] = LSQFilt(f,d,M) 
% f -rowvector of data samples -length N 
% d -row vector of desired values -length N 
% M -filter order % Returns: 
% h -vector of optimal filter coefficients 
% MSE -minimized value of the mean-square-error 
N = length(f); 
xcrf=xcorr(f);
xcrd=xcorr(d,f); 
rff=xcrf(N:N+M-1);
R = toeplitz(rff);
P=xcrd(N:N+M-1);
h=inv(R)*P'; 
phidd=xcorr(d);
MSE=phidd(N)-P*h;