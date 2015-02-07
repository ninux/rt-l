run('ex_25_init.m') % init the system parameters

sim('ex_25_model')  % run the model

% clear previous plots
clf

% create the plots
hold on
plot(Motorvoltage.time, Motorvoltage.signals.values, 'b');
plot(Revolutions.time, 0.1.*Revolutions.signals.values, 'r');
plot(Integrator.time, Integrator.signals.values, 'g');
hold off
legend('Motorvoltage', 'Revolutions (10:1)', 'Integrator');
print -dpdf ex_25_01.pdf

% clear the plot
clf

% increate the Kp value
Kp = Kp*10;

sim('ex_25_model')  % run the model

% create the plots
hold on
plot(Motorvoltage.time, Motorvoltage.signals.values, 'b');
plot(Revolutions.time, 0.1.*Revolutions.signals.values, 'r');
plot(Integrator.time, Integrator.signals.values, 'g');
legend('Motorvoltage', 'Revolutions (10:1)', 'Integrator');
hold off
print -dpdf ex_25_02.pdf