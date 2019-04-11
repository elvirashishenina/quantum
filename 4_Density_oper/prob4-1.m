%-----------------------------------------------------------------------------------------
% E.Shishenina 11/04/2019 (c)
% quantum computing & quantum information
% problem 4.1
%-----------------------------------------------------------------------------------------
 
close all
clear all

%-----------------------------------------------------------------------------------------

function tr = trace(m)
  n = size(m(:,1));
  tr = 0;
  for i = 1:n
      tr = tr + m(i,i);
  end
  trace = tr;
end

%-----------------------------------------------------------------------------------------

prompt = 'What is the angle value (in degrees)?';
x = input(prompt);
pi = 4 * atan(1);
phi = x * pi/180;


% Matrix definition
s1 = [0 1; 1 0];
R = [3/4 sqrt(2)*exp(-i*phi)/4; sqrt(2)*exp(i*phi)/4 1/4];
Rtc = transpose(conj(R));

% Trace of R

trace_R = trace(R);

% Eigen values and eigen vectors of R

[V,E] = eig(R);
eig_val_1 = E(1,1);
eig_val_2 = E(2,2);

eig_vec_1 = V(:,1)';
eig_vec_2 = V(:,2)';

% Check if R is density matrix

if (trace_R == 1) && (R == Rtc) && (eig_val_1>0) && (eig_val_2>0)
   disp('R IS a density matrix')
else
   disp('R IS NOT a density matrix')
end

% Check if it is a pure or a mixed state

if(trace_R == 1) && (R == Rtc) && (R*R == R)
   disp('It is a PURE state')
else
   disp('It is a MIXED state')
end

% Compute trace(s1*R)

trace_s1xR = trace(s1*R);

%-----------------------------------------------------------------------------------------

eig_val_1
eig_val_2

trace_s1xR

