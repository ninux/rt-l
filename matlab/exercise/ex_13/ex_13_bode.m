% init
run('ex_13_init.m');

% define control system
s = tf('s');    % define comples variable s
C = -1/(y/x);   % define the control function C = 1/Kg
Ca = C*(2);   % define an alternative controller > C
Cb = C*(0.5);   % define an alternative controller < C
P1 = (y/(s-x)); % define the process

% create the open-loop plots for all controllers
hold on
bode(C*P1);
bode(Ca*P1);
bode(Cb*P1);
hold off

% save the plot
print -dpdf ex_13_bode.pdf

% get the open-loop parameter
[C_ar, C_pr, C_wcg, C_wcp] = margin(C*P1);
[Ca_ar, Ca_pr, Ca_wcg, Ca_wcp] = margin(Ca*P1);
[Cb_ar, Cb_pr, Cb_wcg, Cb_wcp] = margin(Cb*P1);

% print the parameters
file = fopen('results.txt', 'w');
fprintf(file, 'Parameter:\tC=%1.2i, C=%1.2i, C=%1.2i\n', C, Ca, Cb);
fprintf(file, 'A.-Reserve:\t%1.2i, %1.2i, %1.2i\n', C_ar, Ca_ar, Cb_ar);
fprintf(file, 'P.-Reserve:\t%1.2i, %1.2i, %1.2i\n', C_pr, Ca_pr, Cb_pr);
fprintf(file, 'Grenzfreq.:\t%1.2i, %1.2i, %1.2i\n', C_wcg, Ca_wcg, Cb_wcg);
fprintf(file, 'G0-Freq.:\t%1.2i, %1.2i, %1.2i\n', C_wcp, Ca_wcp, Cb_wcp);
fclose(file);

% get the system-parameters
