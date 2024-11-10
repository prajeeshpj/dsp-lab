
%convolution property

x1 = [1 2 3];
x2 = [1 2 1 2];
L = max(length(x1),length(x2));
x1 = [x1, zeros(1,L-length(x1))];
x2 = [x2, zeros(1,L-length(x2))];

lhs = cconv(x1,x2,L);
lhs = fft(lhs);

X1=fft(x1);
X2=fft(x2);
rhs = X1.*X2;
disp("convolution property")
lhs
rhs



%linearty property

x3 = [1 2 3];
x4 = [1 2 1 2];
L = max(length(x1),length(x2));
x3 = [x3, zeros(1,L-length(x1))];
x4 = [x4, zeros(1,L-length(x2))];
a=2;
b=3;
x5=(a).*x3 + (b).*x4;
lhs=fft(x5);
X3= fft(x3);
X4 = fft(x4);
rhs = a.*X3 + b.*X4;
disp("linearty property")
lhs
rhs



%multiplication property

x6 = [1 2 3];
x7 = [1 2 1 2];
L = max(length(x6),length(x7));
x1 = [x6, zeros(1,L-length(x1))];
x2 = [x7, zeros(1,L-length(x2))];

lhs=fft(x6.*x7);

X5=fft(x6);
X6=fft(x7);
rhs=cconv(X5,X6,L);
rhs=(1/L)*rhs;
disp("multiplication property")
lhs
rhs




%parseval property

x = [-1 2 -3];
X = fft(x);
lhs = sum(abs(x.*x));
N=length(x);
rhs = sum(abs(X.*X));
rhs = (1/N)*rhs;
disp("parseval property")
lhs
rhs
