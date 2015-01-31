% define constants
a = 0.0001;     % coefficient of friction
J = 0.00025;    % moment of intertia
K = 0.05;       % motor constant
R = 0.5;        % motor winding resistance

% define substitutions
x = -(1/J) * (a + (K^2/R));
y = (K/(J*R));
z = -(1/J);

% define inputs
G = 0;      % torque

% define control function
Kp = y;