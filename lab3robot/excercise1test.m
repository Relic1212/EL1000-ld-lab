% Just testing 
% 
clear all;
clc;

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
s=tf('s');
% G1=(Ktau/(s*Lm+Rm));
% G2 =  (Ktau/(J*s+b));
% G3 = (Ktau/s);
% G = ((s*s +746 + 1/s + 12*s)/(s+ 7 + 12/s) );
% % n1=1;
% % d1=s*
% % d1=s*
% % end_factor=n/s;
% end_factor=s/n;
% % end_factor=1;
% % Km = 1;
% G4=(Ktau/((s*Lm+Rm)*(J*s+b)));
% G5=(1/((s*Lm+Rm)*(J*s+b)));
% G6 = (1/s*Lm + Rm )*(Ktau)*(1/J*s+b)/(1+ ( (1/s*Lm + Rm )*(Ktau)*(1/J*s+b) ) * (-Km) )*end_factor;
% G7 = (1/s*Lm + Rm )*(Ktau)*(1/J*s+b)/(1+ ( (1/s*Lm + Rm )*(Ktau)*(1/J*s+b) ) * (Km) )*end_factor;
% G8 = (1/s*Lm + Rm )*(1/J*s+b)/(1+ ( (1/s*Lm + Rm )*(1/J*s+b) ) * (-Km) )*end_factor;
% G9 = (1/s*Lm + Rm )*(1/J*s+b)/(1+ ( (1/s*Lm + Rm )*(1/J*s+b) ) * (Km) )*end_factor;
% 
% G10 = (1/s*Lm + Rm )*(Ktau)*(1/J*s+b)/(1- ( (1/s*Lm + Rm )*(Ktau)*(1/J*s+b) ) * (-Km) )*end_factor;
% G11 = (1/s*Lm + Rm )*(Ktau)*(1/J*s+b)/(1- ( (1/s*Lm + Rm )*(Ktau)*(1/J*s+b) ) * (Km) )*end_factor;
% G12 = (1/s*Lm + Rm )*(1/J*s+b)/(1- ( (1/s*Lm + Rm )*(1/J*s+b) ) * (-Km) )*end_factor;
% G13 = (1/s*Lm + Rm )*(1/J*s+b)/(1- ( (1/s*Lm + Rm )*(1/J*s+b) ) * (Km) )*end_factor;
G14 = ( ( (1/s*Lm + Rm)*Ktau *1/(J*s+b) )/( 1 + (-Km)* ( (1/s*Lm + Rm)*Ktau *1/(J*s+b) )  ) ) %* (1/s) *n;
% numerator = 1;
% denominator =  [2,3,4];
% sys = tf(numerator,denominator);
disp(G14)
% lab3robot(G1,PersonalNumber)
% lab3robot(G2,PersonalNumber)
% lab3robot(G3,PersonalNumber)

% lab3robot(G4,PersonalNumber)
% lab3robot(G5,PersonalNumber)
% lab3robot(G6,PersonalNumber)
% lab3robot(G7,PersonalNumber)
% lab3robot(G8,PersonalNumber)
% lab3robot(G9,PersonalNumber)
% lab3robot(G10,PersonalNumber)
% lab3robot(G11,PersonalNumber)
% lab3robot(G12,PersonalNumber)
% lab3robot(G13,PersonalNumber)
lab3robot(G14,PersonalNumber)

% disp(umax)

% In block diagram
% u (input) - not known 
% 1/(sLm+Rm) 

% Transfer fkn:
% G(s) = 1/(s*Lm+Rm)*Ktau*1/(J*s+b)
