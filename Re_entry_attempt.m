%Non-Thrusting Ballistic Entry with time
dv_dt = -(D/m)-g*sind(gamma);
vdy_dt = (1/m)-(g-(v^2/r))cosd(gamma);
ds_dt = (R/r)*v*cosd(gamma);
dr_dt = v*sind(gamma);
L = 0.5*rho*v^2*S*Cl;
D = 0.5*rho*v^2*S*CD;
g = gs*[R/(R+g)]^2;

%Skip Entry
