%-----------------------------------------------------------------------------------------
% E.Shishenina 27/03/2019 (c)
% quantum computing & quantum information
% problem 2.3
%-----------------------------------------------------------------------------------------
 
close all
clear all

%-----------------------------------------------------------------------------------------

function v = vec_Kronecker(vn, vm)
  for i=1:size(vn)
  v((i-1)*size(vm)+1:i*size(vm))=vm(1:size(vm))*vn(i);
  end
  vec_Kronecker = v;
end

function m = mat_Kronecker(mn, mm)
  in = size(mn(:,1));
  im = size(mm(:,1));
  jn = size(mn'(:,1));
  jm = size(mm'(:,1));

  for i = 1:in
      for j = jn
          m((i-1)*im+1:i*im, (j-1)*jm+1:j*jm) = mm(1:im, 1:jm) * mn(i,j);
      end
  end
  mat_Kronecker = m;
end

function v = Psi(theta)
  v1 = cos(theta);
  v2 = sin(theta);
  v = [v1; v2];
  Psi = v';
end

function v = Phi(theta)
  v1 = sin(theta);
  v2 = -cos(theta);
  v = [v1; v2];
  Phi = v';
end

function V = Left(M, I, e0, e1)
  l1 = mat_Kronecker(M, I);
  l2 = vec_Kronecker(e0, e0);
  l3 = vec_Kronecker(e1, e1);
  V = l1*(l2+l3)';
  Left = V;
end


function V = Right(M, I, e0, e1)
  l1 = mat_Kronecker(I, M');
  l2 = vec_Kronecker(e0, e0);
  l3 = vec_Kronecker(e1, e1);
  V = l1*(l2+l3)';
  Right = V;
end



%-----------------------------------------------------------------------------------------
prompt = 'Enter the matrix M component m11= ';
m11 = input(prompt);

prompt = 'Enter the matrix M component m12= ';
m12 = input(prompt);
 
prompt = 'Enter the matrix M component m21= ';
m21 = input(prompt);

prompt = 'Enter the matrix M component m21= ';
m22 = input(prompt);
%-----------------------------------------------------------------------------------------

% Matrix M and I definition
I = [1 0; 0 1];
M = [m11 m12; m21 m22];
M

%-----------------------------------------------------------------------------------------
prompt = 'Enter the angle theta= ';
x = input(prompt);
pi = 4 * atan(1);
theta = x * pi/180;

%-----------------------------------------------------------------------------------------

% Basis vectors e0 and e1

e0 = Psi(theta);
e1 = Phi(theta);
e0
e1

% Left-hand and right-hand sides L and R, and their difference O=L-R

L = (Left(M, I, e0, e1))';
R = (Right(M, I, e0, e1))';
O = L-R;

%-----------------------------------------------------------------------------------------
L
R
O

