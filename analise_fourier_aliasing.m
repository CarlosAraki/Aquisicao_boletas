
%-------------------- Relação tempo/amostragem-----------------
fs=32;        %frequencia de amostragem em amostras por segundo
f=4            %frequencia do seno
w=f/fs          %frequencia discreta
To=8;          %Período de amostragem
N=fs*To         %Número de amostras
%-------------------%apresentação do sinal---------------------
n=0:1:N-1;     
x=cos(2*pi*w*n);
figure(1)
subplot(3,1,1)
t=n*1/fs;
stem(t,x)
title('Sinal Senoidal')
xlabel('t(s)')
ylabel('Amplitude')
axis([0,2,-1,1])
%---------------- FFT ---------------------------

X =abs(fft(x,N));
F = [0:N-1];
subplot(3,1,2);
plot(F,X,'-x'),
xlabel('N')
ylabel('Amplitude')
%---------------- FFT Ajustada
kF=fs/N;                %parametro multiplicativo para ajuste frequencia
F=[(-N+1)/2:(N-1)/2];
F=F*kF;                 %parametro multiplicativo para ajuste frequencia
A=1/N;                  %parametro multiplicativo para ajuste amplitude
X=A*fftshift(X);
subplot(3,1,3)
plot(F,X,'-x'),
%axis([-50,50,0,1])
xlabel('frequencia')
ylabel('Amplitude')





% axis([-50 50 0 1])



