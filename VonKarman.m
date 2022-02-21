%Haack Series/Von Karman Axisymmetric Body Curve Generator
clear all %Refreshing variables by clearing values used in any previous calculations
format long

L = input('Please enter the Length of the body: ');
R = input('Please enter the Maximum Radius of the body: ');
tp = input('Body Type is Simple Sears-Haack or Advanced Haack Series? [S/A]: ','s');

if tp=='s' | tp=='S'
    n = input('Please input the desired number of plot points: ');
    xt = linspace(0,L,n);
    yt = R * (4*(xt/L).*(1-(xt/L))).^(3/4);
    
elseif tp=='a' | tp=='A'
    c = input('Please input the value of C (C=0 for Von Karman, 1/3 for LV-Haack, 2/3 for Tangent series): ');
    an = input('Replicate around y-axis? (y/n): ','s');
    if an=='y' | an=='Y'
        n = input('Please input the desired number of plot points: ');
        x1 = linspace(0,L/2,n/2);
        x2 = flip(L - x1);
        t = acos(1 - (2*x1/L));
        y1 = (R/sqrt(pi))*sqrt(t - sin(2*t)/2 + c*(sin(t)).^3);
        y2 = flip(y1);
        xt = [x1 x2(2:end)];
        yt = [y1 y2(2:end)];
    elseif an=='n' | an=='N'
        n = input('Please input the desired number of plot points: ');
        xt = linspace(0,L,n);
        t = acos(1 - (2*xt/L));
        yt = (R/sqrt(pi))*sqrt(t - sin(2*t)/2 + c*(sin(t)).^3);
    else
        fprintf('Invalid Input. Please try again.')
    end
else
    fprintf('Invalid Input. Please try again.')
end
plot(xt,yt,'-o')
axis equal
xyz = [xt.',yt.',zeros(length(xt),1)];
dlmwrite('lowDBpoints.txt', xyz, 'delimiter', ',');