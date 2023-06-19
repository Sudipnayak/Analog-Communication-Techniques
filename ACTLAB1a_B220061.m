a=4;
f=1000000;
FS=500000;
t=0:0.001:10;


subplot(221)
x=a*sin(2*pi*f/FS*t);
plot(t,x);
xlabel("Time");
ylabel("Amplitude");
title("Sine Wave");

subplot(222)
x=a*square(2*pi*f/FS*t,25);
plot(t,x);
xlabel("Time");
ylabel("Amplitude");
title("Square Wave");

subplot(223)
x=a*sawtooth(2*pi*f/FS*t,0.5);
plot(t,x);
xlabel("Time");
ylabel("Amplitude");
title("Triangular Wave");


