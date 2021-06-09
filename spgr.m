function [S, opt_alpha_1, opt_alpha_2] = spgr(TR, TE, T1, T2s, alpha)

E1 = exp(-TR/T1);
f = 0.65;   % Ideal 0.71. Tuned, 0.65

S = ((1-E1).*sin(alpha))./(1-(E1.*cos(alpha))).*exp(-TE/T2s);

opt_alpha_1 = acos((f^2*E1+((1-(E1^2))*sqrt(1-f^2)))/(1-(E1^2)*(1-f^2)));
opt_alpha_2 = acos((f^2*E1-((1-(E1^2))*sqrt(1-f^2)))/(1-(E1^2)*(1-f^2)));

end