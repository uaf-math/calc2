% PLOTLNSERIES  Plot some partial sums of the power series
%    -ln(1-x) = sum_{n=1}^infty  x^n / n

x = -2:.01:2;                    % plot many points on interval [-2,2]
S5 = x + x.^2/2 + x.^3/3 + x.^4/4 + x.^5/5;
S6 = S5 + x.^6/6;
S7 = S6 + x.^7/7;
S8 = S7 + x.^8/8;
plot(x,S5,x,S6,x,S7,x,S8)
hold on
plot(x(1-x>0),-log(1-x(1-x>0)))  % throw out x values where log is not defined
hold off
axis([-2 2 -4 4])
grid on
legend('S_5','S_6','S_7','S_8','f(x)=-ln(1-x)',...
       'location','southeast')
