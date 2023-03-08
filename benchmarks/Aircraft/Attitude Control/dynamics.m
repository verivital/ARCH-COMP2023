function dx = dynamics(x,u)
% Attitude Control, rigid body with 6 states (x) and 3 inputs (u).
dx(1,1) = 0.25*(u(1)+x(2)*x(3));
dx(2,1) = 0.5*(u(2)-3*x(1)*x(3));
dx(3,1) = u(3) + 2*x(1)*x(2);
dx(4,1) = 0.5*(x(2)*(x(4)^2 + x(5)^2 + x(6)^2 - x(6)) + x(3)*(x(4)^2 + x(5)^2 + x(5) + x(6)^2) + x(1)*(x(4)^2 + x(5)^2 + x(6)^2 + 1));
dx(5,1) = 0.5*(x(1)*(x(4)^2 + x(5)^2 + x(6)^2 + x(6)) + x(3)*(x(4)^2 - x(4) + x(5)^2 + x(6)^2) + x(2)*(x(4)^2 + x(5)^2 + x(6)^2 + 1));
dx(6,1) = 0.5*(x(1)*(x(4)^2 + x(5)^2 - x(5) + x(6)^2) + x(2)*(x(4)^2 + x(4) + x(5)^2 + x(6)^2) + x(3)*(x(4)^2 + x(5)^2 + x(6)^2 + 1));
end
