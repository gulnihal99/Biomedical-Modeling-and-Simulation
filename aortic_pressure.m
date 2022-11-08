% Aortic Pressure During Cardic Diasole
clc
clear
t=0:100;    % Time
p_ao_0=110; % Aortic Pressure when Mitral valve opens
c_ao=65;    % Aortic Capacitance
r_av=5;     % Aortic Valve Resistance
p_ao= p_ao_0 * exp(-t./ (r_av .* c_ao)); % Aortic Pressure During Diastole
plot(t,p_ao);   
xlabel('Cardiac Diastole');
ylabel('Aortic Pressure');
xlim([0 100]);
ylim([0 120]);