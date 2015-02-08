run('ex_26_init.m') % init the system parameters

sim('ex_26_model_f1')  % run the model for step answer

% clear previous plots
clf

% create the plots
hold on
plot(Motorvoltage.time, Motorvoltage.signals.values, 'b');
plot(Revolutions.time, 0.1.*Revolutions.signals.values, 'r');
plot(Integrator.time, Integrator.signals.values, 'g');
hold off
legend('Motorvoltage', 'Revolutions (10:1)', 'Integrator');
print -dpdf ex_26_01.pdf

% clear the plot
clf

% increate the Kp value
Kp = Kp*10;

sim('ex_26_model_f1')  % run the model for step answer

% create the plots
hold on
plot(Motorvoltage.time, Motorvoltage.signals.values, 'b');
plot(Revolutions.time, 0.1.*Revolutions.signals.values, 'r');
plot(Integrator.time, Integrator.signals.values, 'g');
legend('Motorvoltage', 'Revolutions (10:1)', 'Integrator');
hold off
print -dpdf ex_26_02.pdf

% clear previous plots
clf
Kp = Kp/10;
sim('ex_26_model_f2')  % run the model for impulse answer

% create the plots
hold on
plot(Motorvoltage.time, Motorvoltage.signals.values, 'b');
plot(Revolutions.time, 0.1.*Revolutions.signals.values, 'r');
plot(Integrator.time, Integrator.signals.values, 'g');
hold off
legend('Motorvoltage', 'Revolutions (10:1)', 'Integrator');
print -dpdf ex_26_11.pdf

% clear the plot
clf

% increate the Kp value
Kp = Kp*10;

sim('ex_26_model_f2')  % run the model for impulse answer

% create the plots
hold on
plot(Motorvoltage.time, Motorvoltage.signals.values, 'b');
plot(Revolutions.time, 0.1.*Revolutions.signals.values, 'r');
plot(Integrator.time, Integrator.signals.values, 'g');
legend('Motorvoltage', 'Revolutions (10:1)', 'Integrator');
hold off
print -dpdf ex_26_12.pdf