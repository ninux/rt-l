run('ex_03_init.m');            % init the system
clf                             % clear previous plot

sim('ex_03_model');             % run the model
hold on;
plot(Rev1.time, Rev1.signals.values, 'b');
plot(Rev2.time, Rev2.signals.values, 'r');
hold off;

legend('W-plan', 'Function');

print -dpdf ex_03_plot.pdf