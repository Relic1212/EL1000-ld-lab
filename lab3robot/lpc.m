% Definera variabeln s och det slutna systemet sys
  s = tf('s');
  sys = 1/((s^2+s+1)*(s+1));
  % Stegsvar, 10 sekunder
  step(sys, 10);
  % Hitta systemets nollställen och poler
  sys_poles = pole(sys);
  sys_zeros = zero(sys);
  % Plotta poler och nollställen
  pzplot(sys);