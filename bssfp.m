function [S] = bssfp(TR, TE, T1, T2, alpha)
    
    E1 = exp(-TR/T1);
    E2 = exp(-TR/T2);
    f = 0.65;   % Ideal 0.71. Tuned, 0.65

    S = ((1-E1).*sin(alpha))./(1-(E1*E2)-(E1-E2).*cos(alpha)).*exp(-TE/T2);

end