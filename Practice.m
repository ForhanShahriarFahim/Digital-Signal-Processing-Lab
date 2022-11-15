n = 0:1/80:1;
h = 5*sin(2*pi*4*n);
x = 7*sin(2*pi*3*n);

#h = [1 2 1 -1]; % h(0) = 2

#x = [1 2 3 1]; % x(0) = 1;

X = [x, zeros(1, length(h))];
H = [h, zeros(1, length(x))];
N = length(x)+length(h)-1;
y = zeros(1, N);

for i=1:N
    for j=1:length(x)
        if(i-j+1>0)
            y(i) = y(i)+X(j)*H(i-j+1);
        end
    end
end

nx = -1:5; % output range -1, 0, 1, 2, 3, 4, 5
z1 = 2; #... 0th index of x
z2 = 3; #... 0th index of h
index = (z1+z2-1); #... 0th index of ans
n = -(index-1):length(y)-index; #... time(n)
plot(n, y);
%xlim([-1, 7]);


