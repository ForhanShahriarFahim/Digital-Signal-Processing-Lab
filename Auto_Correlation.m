clc;clear all; close all;
%Get the inputs
x = input('enter the input sequence of a signal x(n)');
n1 = input('enter the time sample range:');
h = fliplr(x);
%Find the length of a signal
L1 = length(x);
n2 = -fliplr(n1)
%Find the length of y(n)
N = L1+L1-1;
%Zero padding to make the length = N
x = [x, zeros(1,N-L1)];
h = [h, zeros(1, N-L1)];
%Initialize the output with zero
y = zeros(1,N);
%Perform the linear convulation

 for n=1:N
  for k=1:n
    y(n) = y(n) + x(k)*h(n-k+1)
  endfor
 endfor
 disp(y);
 %plot the inputs and outputs
 nL = min(n1)+min(n2);
 nH = max(n1) + max(n2);
 t = nL:1:nH;
 stem(t,y);
 grid on;



