%-----------------------------------------------------------------------------------------
% E.Shishenina 18/03/2019 (c)
% quantum computing & quantum information
% problem 1.1
%-----------------------------------------------------------------------------------------
 
close all
clear all

pi = 4 * atan(1);

% 2x2 matrices (unary gates) definition

N = [0 1; 1 0];
H = 1/sqrt(2) * [1 1; 1 -1];
V = [1 0; 0 exp(i*pi/2)];
W = [1 0; 0 exp(i*pi/4)];

M = N * H * V * W;

% normalized state definition

Psi = 1/sqrt(2) * [1 1];

 
% state M/Psi> and expectation value <Psi/M/Psi>

State = M * Psi';
Expect_Value = Psi * State;

%-----------------------------------------------------------------------------------------
State
Expect_Value
