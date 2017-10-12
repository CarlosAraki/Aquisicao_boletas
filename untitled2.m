close all 
clear
N = 256;

n = 0:N;

T = 2*pi./n;

sinal = cos(0.5*pi.*n)+0.5*cos(0.7*pi.*n);
%plot(n,sinal);

subplot(4,1,1);
stem(n,sinal);


%fft di sinal normal
ffty1 = abs(fft(sinal));

subplot(4,1,2)
plot(T,ffty1)

subplot(4,1,3)
%comeco janelamento
L = 128;

filtrohanning = hanning(n,L);

janela = sinal.*filtrohanning;
stem(n,janela)
%fft com janelamento 

subplot(4,1,4)
ffty2 = abs(fft(janela));
plot(T,ffty2);