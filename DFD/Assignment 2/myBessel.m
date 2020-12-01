function [ IO ] = myBessel( x )
 IO=1;
    for m=1:20
    y=((x/2)^m)/factorial(m);
    y=y^2;
    IO=IO+y;
    end
    disp(IO)
end