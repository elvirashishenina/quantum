%-----------------------------------------------------------------------------------------
% E.Shishenina 25/03/2019 (c)
% quantum computing & quantum information
% problem 2.2
%-----------------------------------------------------------------------------------------
 
close all
clear all

%-----------------------------------------------------------------------------------------

function m = mat_Kronecker(mn, mm)
  in = size(mn(:,1))
  im = size(mm(:,1))
  jn = size(mn'(:,1))
  jm = size(mm'(:,1))

  for i = 1:in
      for j = jn
          m((i-1)*im+1:i*im, (j-1)*jm+1:j*jm) = mm(1:im, 1:jm) * mn(i,j);
      end
  end
  mat_Kronecker = m;
end

function m = Ham1(m1, m2, m3)
  m = mat_Kronecker(m1, m1) + mat_Kronecker(m2, m2) + mat_Kronecker(m3, m3); 
  Ham1 = m;
end

function m = Ham2(m1, m2, m3)
  m = mat_Kronecker(m1, m2) + mat_Kronecker(m2, m3) + mat_Kronecker(m3, m1); 
  Ham2 = m;
end

%-----------------------------------------------------------------------------------------

% 1/2 spin Matrices

S1 = [0 1/2; 1/2 0];
S2 = [0 -i/2; i/2 0];
S3 = [1/2 0; 0 -1/2];

% Hamilton operators

H = Ham1(S1, S2, S3);
K = Ham2(S1, S2, S3);


% eigen values and normalized eigen vectors of H

[Vh,Eh] = eig(H);
eig_val_H1 = Eh(1,1);
eig_val_H2 = Eh(2,2);
eig_val_H3 = Eh(3,3);
eig_val_H4 = Eh(4,4);

eig_vec_H1 = Vh(:,1);
eig_vec_H2 = Vh(:,2);
eig_vec_H3 = Vh(:,3);
eig_vec_H4 = Vh(:,4);

% eigen values and normalized eigen vectors of K

[Vk,Ek] = eig(K);
eig_val_K1 = Ek(1,1);
eig_val_K2 = Ek(2,2);
eig_val_K3 = Ek(3,3);
eig_val_K4 = Ek(4,4);

eig_vec_K1 = Vk(:,1);
eig_vec_K2 = Vk(:,2);
eig_vec_K3 = Vk(:,3);
eig_vec_K4 = Vk(:,4);

%-----------------------------------------------------------------------------------------

H

eig_val_H1
eig_val_H2
eig_val_H3
eig_val_H4

eig_vec_H1 
eig_vec_H2 
eig_vec_H3 
eig_vec_H4 

K

eig_val_K1 
eig_val_K2
eig_val_K3
eig_val_K4

eig_vec_K1 
eig_vec_K2 
eig_vec_K3 
eig_vec_K4 
