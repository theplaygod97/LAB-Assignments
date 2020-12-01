function [w] = myWindows(windowName, M)
switch windowName
    case 'Rectangular'
        for n=0:(M)
            if (n>=0) && (n<= M)
                w(n+1)=1;
            else
                w(n+1)=0;
            end
        end
    case 'Hann'
        for n=0:(M)
            if (n>=0) && (n<=M)
                w(n+1)= 0.5-0.5*cos(2*pi*n/M);
            else
                w(n+1)=0;
            end
        end
    case 'Hamming'
        for n=0:(M)
            if (n>=0) && (n<=M)
                w(n+1)= 0.54-0.46*cos(2*pi*n/M);
            else
                w(n+1) = 0;
            end
        end
        
    case'Bartlett'
        if mod(M,2)==0
        for n=0:(M)
            if (n>=0) && (n<=M/2)
                w(n+1)= 2*n/M;
            elseif (n>=M/2) && (n<=M)
                w(n+1)=2 -(2*n/M);
            else
                w(n+1) = 0;
            end
        end
        else
            disp('Error!!! Enter Even Order')
        end
    case'Blackman'
        for n=0:M
            if (n>=0) && (n<=M)
                w(n+1)= 0.42-0.5*cos(2*pi*n/M)+0.08*cos(4*pi*n/M);
            else
                w(n+1) = 0;
            end
        end
        
end
end
