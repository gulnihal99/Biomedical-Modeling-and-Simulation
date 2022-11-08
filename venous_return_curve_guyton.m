clc
clear
P_ra= 0:50; % Right Atrial Pressure
P_ms= 7;    % Mean systemic Pressure
P_A= 100;   % Atrial Pressure
P_pl= -4;   % Plumonary Pressure
R_v= 0.4;   % Ventricular Resistance
R_A= 19.2;  % Atrial Resistance
C_A= 0.028;  % Atrial capacitance
C_D= 0.035;  % Diastolic Capacitance
C_S= 0.0007; % Systolic Capacitance
C_V=0.5;    % Ventricular Capacitance
f= 72;      % Heart Rate
Q_R=(P_ms-P_ra)/(R_v+(R_A.*C_A+(C_A+C_V))); %venous return
Q_C= f.*C_D.*(P_ra-(C_S.*P_A./C_D)-P_pl);   %cardiac output
subplot(3,1,1);
plot(P_ra,Q_R);
xlabel('Right Atrial Pressure');
ylabel('Venous Return');
subplot(3,1,2);
plot(P_ra,Q_C);
xlabel('Right Atrial Pressure');
ylabel('Cardiac Output');
subplot(3,1,3);
plot(P_ra,Q_R+30);
hold on
plot(P_ra,Q_C);
xlabel('Right Atrial Pressure');
ylabel('Cardiac Output or Venous Return');