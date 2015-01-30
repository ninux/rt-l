% define constants
a = 1;      % coefficient of friction
J = 1;      % moment of intertia
K = 1;      % motor constant
R = 1;      % motor winding resistance

% define substitutions
x = -(1/J) * (a + (K^2/R));
y = (K/(J*R));
z = -(1/J);

% define inputs
G = 0;      % torque