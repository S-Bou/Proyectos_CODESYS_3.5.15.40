function [Kc,Ti,Td]=pid2isa(g)

[n,d]=tfdata(g,'v');

if length(n)==1
    Kc=n/d;
    Ti=0;
    Td=0;
end
if length(n)==2
    if (d(1)==1) && (d(2)==0)
    % PI
    Kc=n(1)/d(1);
    Ti=n(1)/n(2);
    Td=0;
    elseif (d(1)==0) && (d(2)==1)
    % PD
    Kc=n(2)/d(2);
    Ti=0;
    Td=n(1)/n(2);
    else
    % NO es pid
        error('No es tipo PID')
    end
end

if length(n)==3
    if (d(1)||d(3))~=0
        % No es pid
        error('No es tipo PID')
    else
        %PID
        Kc=n(2)/d(2);
        Ti=n(2)/n(3);
        Td=n(1)/n(2);
    end
end