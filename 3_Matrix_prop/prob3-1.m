%-----------------------------------------------------------------------------------------
% E.Shishenina 08/04/2019 (c)
% quantum computing & quantum information
% problem 3.1
%-----------------------------------------------------------------------------------------
 
close all
clear all

%-----------------------------------------------------------------------------------------

function m = mat_Kronecker(mn, mm)
  in = size(mn(:,1));
  im = size(mm(:,1));
  jn = size(mn'(:,1));
  jm = size(mm'(:,1));

  for i = 1:in
      for j = 1:jn
          m((i-1)*im+1:i*im, (j-1)*jm+1:j*jm) = mm(1:im, 1:jm) * mn(i,j);
      end
  end
  mat_Kronecker = m;
end

function m = Ham1(m1, m2, m3)
  m = mat_Kronecker(m1, m1) + mat_Kronecker(m2, m2) + mat_Kronecker(m3, m3); 
  Ham1 = m;
end


%-----------------------------------------------------------------------------------------

% 1/2 spin Matrices

s1 = [0 1; 1 0];
s2 = [0 -i; i 0];
s3 = [1 0; 0 -1];

% Hamilton operators

H1 = Ham1(s1, s2, s3);
H = mat_Kronecker(H1, s1);


% eigen values and normalized eigen vectors of H

[Vh,Eh] = eig(H);
eig_val_H1 = Eh(1,1);
eig_val_H2 = Eh(2,2);
eig_val_H3 = Eh(3,3);
eig_val_H4 = Eh(4,4);
eig_val_H5 = Eh(5,5);
eig_val_H6 = Eh(6,6);
eig_val_H7 = Eh(7,7);
eig_val_H8 = Eh(8,8);

eig_vec_H1 = Vh(:,1)';
eig_vec_H2 = Vh(:,2)';
eig_vec_H3 = Vh(:,3)';
eig_vec_H4 = Vh(:,4)';
eig_vec_H5 = Vh(:,5)';
eig_vec_H6 = Vh(:,6)';
eig_vec_H7 = Vh(:,7)';
eig_vec_H8 = Vh(:,8)';

%-----------------------------------------------------------------------------------------

eig_val_H1
eig_val_H2
eig_val_H3
eig_val_H4
eig_val_H5
eig_val_H6
eig_val_H7
eig_val_H8

eig_vec_H1 
eig_vec_H2 
eig_vec_H3 
eig_vec_H4 
eig_vec_H5 
eig_vec_H6 
eig_vec_H7 
eig_vec_H8 
