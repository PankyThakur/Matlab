clear all;
% element numbers
prompt=('Enter the value of N ');
N=input(prompt);
% element spacing
d = 0.3;
% theta zero direction
% 90 degree for braodside, 0 degree for endfire.
theta_zero=90;
An=1;
j=sqrt(-1);
f = zeros(1,360);
for theta = 1:1:360
   
    % change degree to radian
    deg2rad(theta) = (theta*pi)/180;
   
    if theta == 180 || theta == 360
    % g = 0 if theta = 180 or 360    
    g(theta) = 0;
    else
g(theta) = abs((cos(pi*cos(deg2rad(theta))/2))/sin(deg2rad(theta)));
   
    end
   
    %array factor calculation
    for n=0:N-1
        f(theta) = f(theta)+ An*exp(j*n*2*pi*d*(cos(deg2rad(theta))-cos(theta_zero*pi/180))) ;
    end
   
   
    % pattern multiplication
    F(theta) = abs(g(theta)*f(theta));
   
end
figure;
subplot(2,2,1),polar(deg2rad,g)
title('Element Pattern of Dipole');
f(theta) = abs(f(theta));
subplot(2,2,2),polar(deg2rad,f)
title('Array Factor');
subplot(2,2,3),polar(deg2rad,F)
title('Total Pattern of Dipole')

