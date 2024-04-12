% PLOTTAYLORS  plot some partial sums of the Taylor series:
%   e^x based at a=0
%   ln(x) based at a=1
%   sin(x) based at a=0

figure(1)
x = -8:.1:6;
n2 = (0:2)';
n3 = (0:3)';
n4 = (0:4)';
n5 = (0:5)';
n10 = (0:10)';
n15 = (0:15)';
plot(x,exp(x),...
    x,sum(x.^n2./factorial(n2)),...
    x,sum(x.^n3./factorial(n3)),...
    x,sum(x.^n4./factorial(n4)),...
    x,sum(x.^n5./factorial(n5)),...
    x,sum(x.^n10./factorial(n10)),...
    x,sum(x.^n15./factorial(n15)))
axis([-8 6 -3 15]),  xlabel x,  grid on
legend('e^x','p_2(x)','p_3(x)','p_4(x)','p_5(x)','p_{10}(x)','p_{15}(x)',...
       'location','northwest')
title('Taylor polynomials approximate e^x')
print -dpdf extaylor.pdf

figure(2)
xpos = 0.001:.01:2.5;
x = -0.5:.01:2.5;
n2 = (1:2)';
n3 = (1:3)';
n4 = (1:4)';
n5 = (1:5)';
n10 = (1:10)';
plot(xpos,log(xpos),...
    x,sum((-1).^(n2-1).*(x-1).^n2./n2),...
    x,sum((-1).^(n3-1).*(x-1).^n3./n3),...
    x,sum((-1).^(n4-1).*(x-1).^n4./n4),...
    x,sum((-1).^(n5-1).*(x-1).^n5./n5),...
    x,sum((-1).^(n10-1).*(x-1).^n10./n10))
axis([-0.5 2.5 -5 2]),  xlabel x,  grid on
legend('ln(x)','p_2(x)','p_3(x)','p_4(x)','p_5(x)','p_{10}(x)',...
       'location','northwest')
title('Taylor polynomials approximate ln(x)')
print -dpdf lntaylor.pdf

figure(3)
x = -8:.1:8;
n3 = (0:1)';
n5 = (0:2)';
n7 = (0:3)';
n11 = (0:5)';
n15 = (0:7)';
plot(x,sin(x),...
x,sum((-1).^n3.*x.^(2*n3+1)./factorial(2*n3+1)),...
x,sum((-1).^n5.*x.^(2*n5+1)./factorial(2*n5+1)),...
x,sum((-1).^n7.*x.^(2*n7+1)./factorial(2*n7+1)),...
x,sum((-1).^n11.*x.^(2*n11+1)./factorial(2*n11+1)),...
x,sum((-1).^n15.*x.^(2*n15+1)./factorial(2*n15+1)))
axis([-8 8 -3 3]),  xlabel x,  grid on
legend('e^x','p_3(x)','p_5(x)','p_7(x)','p_{11}(x)','p_{15}(x)',...
       'location','northwest')
title('Taylor polynomials approximate sin(x)')
print -dpdf sintaylor.pdf
