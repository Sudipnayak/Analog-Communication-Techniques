% PAM using Natural Sampling
clc;
clear all;
close all;
fc= 100
fm= fc/10
fs= 100*fc
t=0:1/fs:4/fm;
Msg_sgl= cos(2*pi*fm*t);
Carr_sgl= 0.5*square(2*pi*fc*t)+0.5
Mod_sgl= Msg_sgl.*Carr_sgl;
tt= [];
for i=1:length(Mod_sgl);
    if Mod_sgl(i)==0;
        tt=[tt,Mod_sgl(i)];
    else
        tt=[tt,Mod_sgl(i)+2];
    end
end
figure(1)
subplot(4,1,1);
plot(t,Msg_sgl);
title('Message Signal');
xlabel('Time Period');
ylabel('Amplitude');
subplot(4,1,2);
plot(t,Carr_sgl);
title('Carrier Signal')
xlabel('Time Period');
ylabel('Amplitude');
subplot(4,1,3);
plot(t,Mod_sgl);
title('PAM Modulated signal')
xlabel('Time Period');
ylabel('Amplitude');
% subplot(4,1,4);
% plot(t,tt);
% title('PAM')
% xlabel('Time Period');
% ylabel('Amplitude');
% PWM Signal
clc;
close all;
clear all;
t=0:0.0001:1;
s=sawtooth(2*pi*10*t+pi);
m=0.75*sin(2*pi*1*t);
n=length(s);
for i=1:n
 if (m(i)>=s(i))
 pwm(i)=1;
 elseif (m(i)<=s(i))
 pwm(i)=0;
 end
end
plot(t,pwm,'g',t,m,'r');
ylabel('Amplitude');
axis([0  1 -1.5 1.5]);
xlabel('Time index');
title('PWM Wave');
grid on;
