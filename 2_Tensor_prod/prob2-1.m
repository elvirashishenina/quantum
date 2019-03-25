%-----------------------------------------------------------------------------------------
% E.Shishenina 25/03/2019 (c)
% quantum computing & quantum information
% problem 2.1
%-----------------------------------------------------------------------------------------
 
close all
clear all

%-----------------------------------------------------------------------------------------

function v = vec_Kronecker(vn, vm)
  for i=1:size(vn)
  v((i-1)*size(vm)+1:i*size(vm))=vm(1:size(vm))*vn(i);
  end
  vec_Kronecker = v';
end

%-----------------------------------------------------------------------------------------

% Hadamard basis in C2

v1 = [1/sqrt(2); 1/sqrt(2)];
v2 = [1/sqrt(2); -1/sqrt(2)];

% New basis in C4

v11 = vec_Kronecker(v1, v1);
v12 = vec_Kronecker(v1, v2);
v21 = vec_Kronecker(v2, v1);
v22 = vec_Kronecker(v2, v2);

%-----------------------------------------------------------------------------------------
v11
v12
v21
v22



