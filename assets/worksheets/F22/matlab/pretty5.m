% PRETTY5  Use parametric equations from textbook pages 616-617
% to draw a pretty picture with 5-fold symmetry.

t = linspace(0,2*pi,401);
plot(4*cos(t)+cos(4*t),4*sin(t)-sin(4*t))  % 5 point star
hold on
plot(cos(t),sin(t))                        % r=1 circle
plot(5*cos(t),5*sin(t))                    % r=5 circle
hold off
axis equal,  axis off
