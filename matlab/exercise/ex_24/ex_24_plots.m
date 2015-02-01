run('ex_24_init.m') % init the system parameters

sim('ex_24_model')  % run the model

% clear previous plots
clf

% create the plots
hold on
plot(Motorvoltage.time, Motorvoltage.signals.values, 'b');
plot(Revolutions.time, 0.1.*Revolutions.signals.values, 'r');
hold off
legend('Motorvoltage', 'Revolutions (10:1)');
print -dpdf ex_24_01.pdf

% clear the plot
clf

% increate the Kp value
Kp = Kp*10;

sim('ex_24_model')  % run the model

% create the plots
hold on
plot(Motorvoltage.time, Motorvoltage.signals.values, 'b');
plot(Revolutions.time, 0.1.*Revolutions.signals.values, 'r');
legend('Motorvoltage', 'Revolutions (10:1)');
hold off
print -dpdf ex_24_02.pdf