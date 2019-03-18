%-----------------------------------------------------------------------------------------
% E.Shishenina 18/03/2019 (c)
% quantum computing & quantum information
% problem 1.2
%-----------------------------------------------------------------------------------------
 
close all
clear all

%-----------------------------------------------------------------------------------------

function v = Psi(theta)
  v1 = cos(theta);
  v2 = sin(theta);
  v = [v1; v2];
  Psi = v';
end

function V = Var(State, Sigma1)
  sigma1_sqr = Sigma1 * Sigma1;
  V = State' * sigma1_sqr * State - (State' * Sigma1 * State) * (State' * Sigma1 * State);
  Var = V;
end

%-----------------------------------------------------------------------------------------

prompt = 'What is the angle value (in degrees)?';

x = input(prompt);
pi = 4 * atan(1);
theta = x * pi/180;

% 2x2 Pauli spin matrices definition

Sigma1 = [0 1; 1 0];
Sigma2 = [0 -i; i 0];
Sigma3 = [1 0; 0 -1];

Sigma1_sqr = Sigma1 * Sigma1;

% normalized state definition

State = Psi(theta);

 
% variation value <Psi/Sigma1_sqr/Psi> - sqr{<Psi/Sigma1/Psi>}

Var_Value = Var(State, Sigma1);


%-----------------------------------------------------------------------------------------
State
Var_Value
