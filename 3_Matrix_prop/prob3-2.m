%-----------------------------------------------------------------------------------------
% E.Shishenina 08/04/2019 (c)
% quantum computing & quantum information
% problem 3.2
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

%-----------------------------------------------------------------------------------------

% Matrix definition

I2 = [1 0; 0 1];
X = (1/2+i/2)*[1 0 0 1; 0 1 1 0; 0 -1 1 0; -1 0 0 1];

% Yang-Baxter equation
YB_left =  mat_Kronecker(X, I2) * mat_Kronecker(I2, X) * mat_Kronecker(X, I2);
YB_right =  mat_Kronecker(I2, X) * mat_Kronecker(X, I2) * mat_Kronecker(I2, X);

Diff = 0;
for i=1:size(YB_left(:,1))
    for j=1:size(YB_left(:,1))
        Diff=Diff+(YB_left(i,j)-YB_right(i,j));
    end
end

%-----------------------------------------------------------------------------------------

Diff
 
