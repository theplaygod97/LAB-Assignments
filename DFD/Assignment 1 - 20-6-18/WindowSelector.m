function [w]= WindowSelector(A,M)
if A>=0 && A<=21
    [w]=myWindows('Rectangular',M)
elseif A>=21 && A<=26
    [w]=myWindows('Bartlett',M)
elseif A>=26 && A<=44
    [w]=myWindows('Hann',M)
elseif A>=44 && A<=53
    [w]=myWindows('Hamming',M)
else  
    [w]=myWindows('Blackman',M)
end
end
