%FM signal and frequency spectrum of the FM signal
kf = 15 ; %Frequency sensitivity factor
Am = 1 ; %Amplitude of modulating signal
fm = 2 ; %Frquency of modulating signal
f = 400 ; 
b = (kf*Am)/fm ; %beta
t = linspace(0,1,500); %Time axis
Ac = 1 ; %Amplitude of carrier signal
fc = 20 ; %Frequency of carrier signal
mt = Am * cos(2*pi*fm.*t); %Modulating signal
ct = Ac * cos(2*pi*fc.*t); %Carrier signal
sfm = Ac * cos(2*pi*fc.*t + b*sin(2*pi*fm.*t));  %FM signal
spectrumsfm = abs(fft(sfm)); %Spectrum of FM signal
subplot(411);
plot(mt);
title("Baseband Signal");
xlabel("Time");
ylabel("Amplitude");
subplot(412);
plot(ct);
title("Carrier Signal");
xlabel("Time");
ylabel("Amplitude");
subplot(425);
plot(sfm);
title("Frequency Modulated Signal");
xlabel("Time");
ylabel("Amplitude");
subplot(426);
plot(fmdemod(sfm,fc,f,50)); %Generating the De-modulated signal
title("De-Modulated Signal");
xlabel("Time");
ylabel("Amplitude");
subplot(414);
plot(spectrumsfm);
title("Frequency Spectrum of modulated Signal");
xlabel("Time");
ylabel("Amplitude");