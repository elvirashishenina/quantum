%-----------------------------------------------------------------------------------------
% E.Shishenina 18/03/2019 (c)
% quantum computing & quantum information
% problem 1.3
%-----------------------------------------------------------------------------------------
 
close all
clear all

% 2x2 Hamilton operator definition

H = 1/sqrt(2)*[1 1; 1 -1];

 
% eigen values and normalized eigen vectors of H

[V,E] = eig(H);
eig_val1 = E(1,1);
eig_val2 = E(2,2);
eig_vec1 = V(:,1);
eig_vec2 = V(:,2);


%-----------------------------------------------------------------------------------------

eig_val1
eig_val2
eig_vec1
eig_vec2
