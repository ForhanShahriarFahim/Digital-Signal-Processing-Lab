clc;clear all; close all;
%Get the inputs
#x = input('enter the input sequence of a signal x(n)');
#h = input('enter the input sequence of a signal h(n)');
 x = [1,2,3,1];
 h = [1,2,1,-1];

%Find the length of a signal
n1 = length(x);
n2 = length(h);
%Find the length of y(n)
N = n1+n2-1;
%Zero padding to make the length = N
x = [x, zeros(1,N-n1)];
h = [h, zeros(1, N-n2)];
%Initialize the output with zero
y = zeros(1,N);
%Perform the linear convulation

 for n=1:N
  for k=1:n
    y(n) = y(n) + x(k)*h(n-k+1)
  endfor
 endfor

 %plot the inputs and outputs

 z1 = 2; #... 0th index of x
 z2 = 3; #... 0th index of h
 index = (z1+z2-1); #... 0th index of ans
 t = -(index-1):length(y)-index; #... time(n)
  disp(y);
#stem(n, y, ".");
 %From Lowest Point of h(n) or x(n) to LowestPoint+ConvolutionSize
 % -1,0,1,2,3,4,5 (Total Point = ConvSize = 7)
 stem(t,y,'.','LineWidth',2);
#axis([0,size+5,min(output)-5,max(output)+5])
