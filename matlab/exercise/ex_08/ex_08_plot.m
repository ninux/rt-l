run('ex_08_init.m')             % init the system
clf                             % clear previous plot

G = 0;                          % set torque = 0

hold on;
Kp = -(y/x);
sim('ex_08_model');
plot(Revolutions.time, Revolutions.signals.values, 'b');

Kp = 2*(-(y/x));
sim('ex_08_model');
plot(Revolutions.time, Revolutions.signals.values, 'r');

Kp = 0.5*(-(y/x));
sim('ex_08_model');
plot(Revolutions.time, Revolutions.signals.values, 'g');

hold off

legend('Kp ideal', 'Kp > ideal', 'Kp < ideal');

print -dpdf ex_08_plot_01.pdf

clf                             % clear previous plot

G = 0.01;

hold on;
Kp = -(y/x);
sim('ex_08_model');
plot(Revolutions.time, Revolutions.signals.values, 'b');

Kp = 2*(-(y/x));
sim('ex_08_model');
plot(Revolutions.time, Revolutions.signals.values, 'r');

Kp = 0.5*(-(y/x));
sim('ex_08_model');
plot(Revolutions.time, Revolutions.signals.values, 'g');

hold off

legend('Kp ideal', 'Kp > ideal', 'Kp < ideal');

print -dpdf ex_08_plot_02.pdf