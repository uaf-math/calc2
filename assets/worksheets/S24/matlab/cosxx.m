% Use sum to generate values for M4, T4, S4.
% Then compute their absolute errors.

f = @(x) cos(x.^2);

dx = (2 - 0) / 4  
m = dx/2 + dx * [0 1 2 3]  % m_i for midpoint rule
x = dx * [0 1 2 3 4]       % x_i for trapezoid and Simpson's

M4 = sum(dx * f(m))
T4 = sum((dx/2) * [1 2 2 2 1] .* f(x))
S4 = sum((dx/3) * [1 4 2 4 1] .* f(x))

exact = integral(f,0,2)

abserrorM4 = abs(M4 - exact)
abserrorT4 = abs(T4 - exact)
abserrorS4 = abs(S4 - exact)
