%Code by Yash Sonkar B220066 
%FDM Frequency Division Multiplexing in MATLAB 
clc;  
clear; 
close all ; 
Am1 = 2; fm1 = 4; fs = 2000; t = 0:1/fs:1;  
mt1 = Am1*sin(2*pi*fm1*t); %Message Signal 1 
Ac1 = 2; fc1 = 50;          
ct1 = Ac1*cos(2*pi*fc1*t); %Carrier Signal 1  
Am2 = 2; fm2 = 5; 
mt2 = Am2*sin(2*pi*fm2*t); %Message Signal 2 
Ac2 = 2; fc2 = 150; 
ct2 = Ac2*cos(2*pi*fc2*t); %Carrier Signal 2 
Am3 = 2; fm3 = 4; 
mt3 = Am3*sin(2*pi*fm3*t); %Message Signal 3 
Ac3 = 2; fc3 = 250; 
ct3 = Ac3*cos(2*pi*fc3*t); %Carrier Signal 3 
X1 = mt1.*ct1;  
X2 = mt2.*ct2; 
X3 = mt3.*ct3;  
FDM_Signal = X1 + X2 + X3 ; 
figure('Name','Message Signals'); 
subplot(321); plot(mt1); title('Message Signal 1') ; xlim([0 1000]); 
subplot(322); plot(abs(fft(mt1))); title('Spectrum') ; 
subplot(323); plot(mt2); title('Message Signal 2') ; xlim([0 1000]); 
subplot(324); plot(abs(fft(mt2))); title('Spectrum') ; 
subplot(325); plot(mt3); title('Message Signal 3') ; xlim([0 1000]); 
subplot(326); plot(abs(fft(mt3))); title('Spectrum') ;  
figure('Name','DSB-SC Signals'); 
subplot(321); plot(X1); title('DSB-SC Signal 1') ; xlim([0 1000]); 
subplot(322); plot(abs(fft(X1))); title('Spectrum') ; 
subplot(323); plot(X2); title('DSB-SC Signal 2') ; xlim([0 1000]); 
subplot(324); plot(abs(fft(X2))); title('Spectrum') ; 
subplot(325); plot(X3); title('DSB-SC Signal 3') ; xlim([0 1000]); 
subplot(326); plot(abs(fft(X3))); title('Spectrum') ; 
figure('Name','Multiplexed Signal'); 
subplot(211);  
plot(X1,Color='r') ; hold on ; 
plot(X2,Color='green') ; hold on ; 
plot(X3,Color='b') ; legend ; 
title('Multiplexed Signal'); xlim([0 1000]); 
subplot(212); plot(abs(fft(FDM_Signal))) ; title('Spectrum') ; 
figure('Name','Recovered SIgnals'); 
recov1 = bandpass(FDM_Signal,[fc1-fm1 fc1+fm1],fs); message1 = demod(recov1,fc1,fs,'am') ;  
subplot(321); plot(message1); title('Recovered Signal 1') ; xlim([0 1000]); 
subplot(322); plot(abs(fft(message1))); title('Spectrum'); 
recov2 = bandpass(FDM_Signal,[fc2-fm2 fc2+fm2],fs); message2 = demod(recov2,fc2,fs,'am') ; 
subplot(323); plot(message2); title('Recovered Signal 2') ; xlim([0 1000]); 
subplot(324); plot(abs(fft(message2))); title('Spectrum'); 
recov3 = bandpass(FDM_Signal,[fc3-fm3 fc3+fm3],fs); message3 = demod(recov3,fc3,fs,'am') ; 
subplot(325); plot(message3); title('Recovered Signal 3') ; xlim([0 1000]); 
subplot(326); plot(abs(fft(message3))); title('Spectrum');