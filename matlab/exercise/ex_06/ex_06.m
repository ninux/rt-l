run('ex_06_init.m');    % define constants and inputs
s = tf('s');            % define the complex variable s
P1 = (y/(-x)) / (1 + (1/(-x))*s);   % define the system
asymp(P1);              % run the HSLU function
print -dpdf asymp_p1.pdf