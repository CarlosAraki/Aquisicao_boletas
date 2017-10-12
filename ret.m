function [vetor] = ret(x,N)

a = length(x);


for i = 1:length(x)
    if(x(i) < 0)
        vetor(i) = 0;
    else
        if(x(i) < N)
            vetor(i) = 1;
        else
            vetor(i) = 0;
        end
    end
    
    
end