function S = irspgr(TI,Tr,T1,k,a)
    
    S = (1-(1-cos(k*pi).*exp(-TI/T1)) + exp(-Tr/T1) ) * sin(k*a);

end