% PLOTE3XSERIES  Plot f(x)=e^3x and some of its low-order Taylor polynomials.

x = -5:.01:5;
p2 = 1 + 3*x + 3^2*x.^2/2;
p3 = p2 + 3^3*x.^3/factorial(3);
p4 = p3 + 3^4*x.^4/factorial(4);
plot(x,exp(3*x),x,p2,x,p3,x,p4)
axis([-5 5 -5 15])
grid on
legend('f(x)','p_2(x)','p_3(x)','p_4(x)')
