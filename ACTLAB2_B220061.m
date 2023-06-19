%when mi=0.5(modulation index) 
mi_1 =0.5;        % Modulation index = mi
Am = 1;
fm =2;
t = 0:0.001:1;
mt = Am* sin(2*pi*fm*t);   % Modulating Signal
Ac =2;
fc = 50;
ct = Ac * sin(2*pi*fc*t);   % Carrier Signal
st = (1+mi_1.*mt).*ct;          % Modulated Signal
subplot(3,2,1);	
plot(t,mt);
title('message signal');
xlabel('time');
ylabel('amplitude');
subplot(3,2,2);
plot(t,ct);
title('carrier signal');
xlabel('time');
ylabel('amplitude');
subplot(3,2,3);
plot(t,st);
title('50 % Under modulated signal');
xlabel('time');
ylabel('amp');
subplot(3,2,4);
mi_2= 0.9;
st_2 = (1+mi_2.*mt).*ct; 
plot(t,st_2);
title('90 % Under modulated signal');
xlabel('time');
ylabel('amp');
mi_3= 1.0;
st_3= (1+mi_3.*mt).*ct;
subplot(3,2,5);
plot(t,st_3);
title('100 % Under modulated signal');
xlabel('time');
ylabel('amp');
subplot(3,2,6);
mi_3= 1.5;
st_4 = (1+mi_3.*mt).*ct;
plot(t,st_4);
title('150 % Over modulated signal');
xlabel('time');
ylabel('amp');