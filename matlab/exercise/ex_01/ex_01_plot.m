run('ex_01_init.m');        % init the system parameters
clf;                        % clear previous plots

% create the plots
G = 0;                      % set torque = 0
hold on;
G = 0.01;                   % set positive torque
sim('ex_01_model_step');    % run the model
plot(Revolutions.time, Revolutions.signals.values, 'b');

G = 0;                      % set torque > 0
G = 0.1;                    % set positive torque
sim('ex_01_model_step');    % run the model
plot(Revolutions.time, Revolutions.signals.values, 'r');

G = 0;                      % set torque < 0
G = -0.1;                   % set positive torque
sim('ex_01_model_step');    % run the model
plot(Revolutions.time, Revolutions.signals.values, 'g');
hold off;

legend('torque = 0', 'torque > 0', 'torque < 0');
print -dpdf ex_01_plot_01.pdf
clf;                        % clear previous plots

% create the plots
G = 0;                      % set torque = 0
hold on;
G = 0.01;                   % set positive torque
sim('ex_01_model_sinus');   % run the model
plot(Revolutions.time, Revolutions.signals.values, 'b');

G = 0;                      % set torque > 0
G = 0.1;                    % set positive torque
sim('ex_01_model_sinus');   % run the model
plot(Revolutions.time, Revolutions.signals.values, 'r');

G = 0;                      % set torque < 0
G = -0.1;                   % set positive torque
sim('ex_01_model_sinus');   % run the model
plot(Revolutions.time, Revolutions.signals.values, 'g');
hold off;

legend('torque = 0', 'torque > 0', 'torque < 0');
print -dpdf ex_01_plot_02.pdf