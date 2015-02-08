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

% define control system
s = tf('s');    % define comples variable s
Kp = -1/(y/x);  % define the P-Factor
P1 = (y/(s-x)); % define the process
P2 = (z/(s-x)); % define the disturbance
C = (Kp + ( (Kp*(K^2+a*R))/(J*R) ) * (1/s));        % define the control for T_i = \tau
L = C*P1;       % define the direct path
ki = ((Kp*(K^2+a*R)) / (J*R));  % define integrator constant

Kp0 = Kp;
% define anti-windup factor
Kaw = 1;