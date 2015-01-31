% init
run('ex_17_init.m');

% create the open-loop plots for the distubance
bode(P2);

% save the plot
print -dpdf ex_17_bode_p2.pdf

% get the system-parameters
