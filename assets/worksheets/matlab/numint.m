% NUMINT  Generate a graph comparing performance for midpoint,
% trapezoid, and Simpson's rules on the integral
%    / pi
%    |    e^(-x) sin(x) dx
%    / 0
% the exact value of which is (1+e^(-pi) / 2

f = @(x) exp(-x) .* sin(x);
a = 0;
b = pi;
exact = (1 + exp(-pi)) / 2;

nlist = [2 4 8 16 32 64 128 256 512 1024];  % 10 values of n
Mn = zeros(1,10);
Tn = zeros(1,10);
Sn = zeros(1,10);
for k = 1:10
    n = nlist(k);
    dx = (b - a) / n;
    x = a:dx:b;                  % points used for trap.,simp.
    m = a+dx/2:dx:b-dx/2;        % points used for midpoint
    Mn(k) = dx * sum(f(m));
    Tn(k) = (dx/2) * sum([1 2*ones(1,n-1) 1] .* f(x));
    Sn(k) = (dx/3) * sum([1 repmat([4 2], 1, (n-2)/2) 4 1] .* f(x));
end

loglog(nlist,abs(Mn - exact),'ro-',...
       nlist,abs(Tn - exact),'bo-',...
       nlist,abs(Sn - exact),'ko-')
xlabel n
ylabel('absolute error')
title('accuracy of numerical integration')
legend('midpoint','trapezoid','simpsons')
