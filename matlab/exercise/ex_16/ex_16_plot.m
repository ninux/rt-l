run('ex_16_init.m');            % init the system
clf                             % clear previous plot

Kp0 = -1/(y/x);                 % define ideal Kp

hold on
Kp = Kp0;
sim('ex_16_model');
plot(Revolutions.time, Revolutions.signals.values, 'b');

Kp = 2*Kp0;
sim('ex_16_model');
plot(Revolutions.time, Revolutions.signals.values, 'r');

Kp = 0.5*Kp0;
sim('ex_16_model');
plot(Revolutions.time, Revolutions.signals.values, 'g');

hold off
legend('Kp = ideal', 'Kp > ideal', 'Kp < ideal');

print -dpdf ex_16_plot.pdf