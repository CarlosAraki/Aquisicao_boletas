
clear
close all

%-------------------- Relação tempo/amostragem-----------------
N=256;             %Número de amostras
%-------------------%apresentação do sinal com janelamento-----------------
M=4*N/8 ;        %altera o tamanho da janela
n=0:255;     
x = cos(0.5*pi.*n)+0.5*cos(0.7*pi.*n);
%x=[x,zeros(1,N-M-1)];
figure(1)
subplot(3,1,1)
k=0:1:N-1;
%t=k*1/fs;
plot(n,x)
title('Sinal Senoidalcom janelamento de função retangular')
xlabel('t(s)')
ylabel('Amplitude')
%axis([0,0.2,-1,1])
%---------------- FFT ---------------------------

X =abs(fft(x,N));
F = [0:N-1];

%---------------- FFT Ajustada
%kF=fs/N;                %parametro multiplicativo para ajuste frequencia
F=[(-N+1)/2:(N-1)/2];
%F=F*kF;                 %parametro multiplicativo para ajuste frequencia
A=1/N;                  %parametro multiplicativo para ajuste amplitude
X=A*fftshift(X);
subplot(3,1,2);
plot(F,X),
axis([-5,5,0,0.5])
xlabel('frequencia)')
ylabel('Amplitude linear')
subplot(3,1,3)
semilogy(F,X),
axis([-5,5,0,1])
xlabel('frequencia)')
ylabel('Amplitude log')
% axis([-50 50 0 1])



