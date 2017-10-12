function [vetor] = hamming(x,N)

a = length(x);


for i = 1:length(x)
    if(x(i) < 0)
        vetor(i) = 0;
    else
        if(x(i) < N)
            vetor(i) = (0.54 - 0.46*cos(2*pi*x(i)/(N-1)));
        else
            vetor(i) = 0;
        end
    end
    
    
end