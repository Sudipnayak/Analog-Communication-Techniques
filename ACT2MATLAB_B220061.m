Am = 1; %Modulating signal amplitude
fm = 2; %Modulating signal frequency
t = 0 : 0.001 : 1 ;
mt = Am * sin (2*pi*fm*t);
Ac = 2;
fc = 50 ;
ct = Ac * sin (2*pi*fc*t);
subplot(3,2,1);
plot(t,mt);
xlabel('Time');
ylabel('Amplitude');
title('Message signal');
subplot(322);
plot(t,ct);
xlabel('Time');
ylabel('Amplitude');
title('Carrier signal');
subplot(323);
st = (1 + (0.5).*mt).*ct;
plot(t,st);
xlabel('Time');
ylabel('Amplitude');
title('50% under modulated signal');
subplot(324);
st = (1 + (0.9).*mt).*ct;
plot(t,st);
xlabel('Time');
ylabel('Amplitude');
title('90% under modulated signal');
subplot(325);
st = (1 + (1).*mt).*ct;
plot(t,st);
xlabel('Time');
ylabel('Amplitude');
title('100% modulated signal');
subplot(326);
st = (1 + (1.5).*mt).*ct;
plot(t,st);
xlabel('Time');
ylabel('Amplitude');
title('150% over modulated signal');





