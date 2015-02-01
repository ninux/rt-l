% init
run('ex_19_init.m');

% create the open-loop plots for T_i = \tau and T_i != \tau
hold on
bode(C*P1);    % create the bode-plot for the control
bode(Ca*P1);   % create the bode-plot fot the process
bode(Caa*P1);  % create the bode-plot fot the process
bode(Cb*P1);   % create the bode-plot for the direct-path
bode(Cbb*P1);  % create the bode-plot for the direct-path
legend('Ti = tg', 'Ti > tg', 'Ti >> tg', 'Ti < tg', 'Ti << tg');
hold off

% save the plot
print -dpdf ex_19_bode_02.pdf