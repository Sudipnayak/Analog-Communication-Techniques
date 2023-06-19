a=input ('enter amplitude =');
f=input('input frequency = ');
FS=500000;
t=0:.001:10;
subplot(2,2,1)
x=a*sin(2*pi*f/FS*t);
plot(t,x);
xlabel("time");
ylabel ('amplitude');
title ('sine');
subplot(2,2,2)
x=a*square(2*pi*f/FS*t,50);
plot(t,x);
xlabel("time");
ylabel ('amplitude');
title ('square');
subplot(2,2,3)
x=a*sawtooth(2*pi*f/FS*t,0.5);
plot(t,x);
xlabel("time");
ylabel ('amplitude');
title ('triangle');
u=abs(fft(x));
subplot(2,2,4);
plot(u);
title ('Frequency spectrum');

