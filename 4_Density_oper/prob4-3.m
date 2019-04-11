%-----------------------------------------------------------------------------------------
% E.Shishenina 11/04/2019 (c)
% quantum computing & quantum information
% problem 4.3
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

function P = outer_prod(x, y)
  nx = size(x'(:,1));
  ny = size(y'(:,1));

  for i = 1:nx
      for j = 1:ny
          P(i,j) = x(i)*y(j);
      end
  end
  outer_prod = P;
end



%-----------------------------------------------------------------------------------------

disp('Task 1')

u1 = 1/sqrt(2)*[1 0 1];
u2 = [0 1 0];
u3 = 1/sqrt(2)*[1 0 -1];

R = 1/3*[1 1 1; 1 1 1; 1 1 1];

U11 = outer_prod(u1,u1);
U22 = outer_prod(u2,u2);
U33 = outer_prod(u3,u3);

mesure1 = trace(R*U11);
mesure2 = trace(R*U22);
mesure3 = trace(R*U33);

%-----------------------------------------------------------------------------------------

mesure1 
mesure2 
mesure3 



%-----------------------------------------------------------------------------------------

disp('Task 2')

prompt = 'What is the angle value (in degrees)? ';
x = input(prompt);
pi = 4 * atan(1);
phi = x * pi/180;

u1 = 1/sqrt(2)*[exp(i*phi) 0 0 exp(i*phi)];
u2 = 1/sqrt(2)*[exp(i*phi) 0 0 -exp(i*phi)];
u3 = 1/sqrt(2)*[0 exp(i*phi) exp(i*phi) 0];
u4 = 1/sqrt(2)*[0 exp(i*phi) -exp(i*phi) 0];

R = 1/4*[1 1 1 1; 1 1 1 1; 1 1 1 1; 1 1 1 1];

U11 = outer_prod(u1,conj(u1));
U22 = outer_prod(u2,conj(u2));
U33 = outer_prod(u3,conj(u3));
U44 = outer_prod(u4,conj(u4));

mesure1 = trace(R*U11);
mesure2 = trace(R*U22);
mesure3 = trace(R*U33);
mesure4 = trace(R*U44);


%-----------------------------------------------------------------------------------------

mesure1 
mesure2 
mesure3 
mesure4


