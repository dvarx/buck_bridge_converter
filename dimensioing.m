%% dimensioning buck stage
ibuck_max=8;
fsw_buck=60e3;
t_on_off=200e-9;        %turn on /off time of MOSFET
dt_buck=1/fsw_buck;
dQ=ibuck_max*t_on_off;
C_buck_in=10e-6;  
dV_buck_in=dQ/C_buck_in;    %keep the voltage drop on the bypass cap of the buck input below 1V

loss_tan=15*1e-4;
Xc=1/(C_buck_in*2*pi*fsw_buck);
esr=loss_tan*Xc;

