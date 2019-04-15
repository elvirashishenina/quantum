%-----------------------------------------------------------------------------------------
% E.Shishenina 15/04/2019 (c)
% quantum computing & quantum information
% problem 5.2
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

function tr = trace(m)
  n = size(m(:,1));
  tr = 0;
  for i = 1:n
      tr = tr + m(i,i);
  end
  trace = tr;
end

function P = part_trace(u,v,I,R)
  j = size(u'(:,1)); 

  ir = size(R(:,1));
  ii = size(I(:,1));
  jr = size(R'(:,1));
  ji = size(I'(:,1)); 


  left1 = mat_Kronecker(u, I);
  left2 = mat_Kronecker(v, I);
  right1 = mat_Kronecker(u', I);
  right2 = mat_Kronecker(v', I);

  P = left1*R*right1 + left2*R*right2;

  part_trace = P;
end



%-----------------------------------------------------------------------------------------

% Matrix definition

A = [1 1 0 0 0 1; 0 1 0 0 0 0; 1 1 1 0 0 1; 1 1 0 2 1 1; -1 -1 0 0 2 0; 0 0 0 0 0 1];
I3 = [1 0 0; 0 1 0; 0 0 1];
v0 = [1 0];
v1 = [0 1];

% Compute partial trace of A

partial_trace = part_trace(v0, v1, I3, A);

% Exact answer

check_answer = [A(4,4)+A(1,1) A(4,5)+A(1,2) A(4,6)+A(1,3); A(5,4)+A(2,1) A(5,5)+A(2,2) A(5,6)+A(2,3); A(6,4)+A(3,1) A(6,5)+A(3,2) A(6,6)+A(3,3)];

if (partial_trace == check_answer) 
   disp('Partial trace is CORRECT')
else
   disp('Partial trace is NOT CORRECT')
end


%-----------------------------------------------------------------------------------------
A
partial_trace





