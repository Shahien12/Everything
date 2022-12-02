%Geometric Variables
clear all; close all; clc;
LN = 4.56+2.84+9.15;
d = 0.66;
dF = 3.91;
dR = 10.06;
LT = 5.79;
Xp = 13.01+8.76+4.56+2.84+9.15;
CR = 8.04;
CT = 1.40;
S = 4.6;
LF = 8.5;
R = dR/2;
XR = CR-CT;
XB = 110.98-8.04;
N = 4;
XN = 0.666*LN;
% Calculations
CN_T = 2*[(dR/d)^2-(dF/d)^2];
X_T = Xp+LT/3*[1+(1-dF/dR)/(1-(dF/dR)^2)];
CN_F = [1+R/(S+R)]*[(4*N*(S/d)^2)/(1+sqrt(1+((2*LF)/(CR+CT)))^2)];
X_F = XB+(XR/3)*((CR+2*CT)/(CR+CT))+(1/6)*[(CR+CT)-((CR*CT)/(CR+CT))];
CN_R = 2+CN_T+CN_F;
X = [(2*XN)+(CN_T*X_T)+(CN_F*X_F)]/(CN_R);
fprintf('The Center of pressure lies at a distance of %0.2f meters.\n',X);
