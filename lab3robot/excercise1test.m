% Just testing 
% 


% 
% he variables are defined as
% u - voltage
% θL - robot arm angle
% θm - motor axle angle
% Ia - motor current
% T - torqueθL
% Table 1: Desciptions and definitions of constants in Figure 2
% Constant Description Value
% Lm Induction 2
% Rm Resistance 21
% b Friction coefficient 1
% J Moment of inertia see below
% Kτ Material constant 38
% Km Material constant 0.5
% n Gearing factor 1/20
% 4
Lm = 2; % Induction
Rm = 21; % Resistance 
b = 1; % Friction koeff
% J = 0; % ??? Moment of inertia 
Ktau = 38; % Material constant 
Km = 0.5; % material constant 
n = 1/20; % Gearing factor 

PersonalNumber = 010205; % YYMMDD 
[J,umax] = lab3robot(PersonalNumber);
% G1 = @(s) s*s;
G1=tf(Ktau,s*Lm+Rm);
G2 = tf (Ktau,J*s+b);
G3 = tf(Ktau,s);
G = tf(s*s +746 + 1/s + 12*s,s+ 7 + 12/s );

% numerator = 1;
% denominator =  [2,3,4];
% sys = tf(numerator,denominator);
disp(G)
lab3robot(G1,PersonalNumber)
lab3robot(G2,PersonalNumber)
lab3robot(G3,PersonalNumber)

% disp(umax)

% In block diagram
% u (input) - not known 
% 1/(sLm+Rm) 

% Transfer fkn:
% G(s) = 1/(s*Lm+Rm)*Ktau*1/(J*s+b)
