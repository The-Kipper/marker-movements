function [p,v] = verlet_integration (a,dt,time)
% Handwerker_verlet_integration is usedto calculate center of mass position
% and velocity using Verlet integration algorithm.
%
%
% x(i)=x(i-1)+(v(i-1)*dt)+((1/2)*a(i-1)*dt^2 )
% v(i)=v(i-1)+((1/2)*(a(i)+a(i-1))*dt)
%
%
%INPUTS:
%   a: Center of Mass Acceleration
%   dt: Change in time / time intervals
%
%
% OUTPUTS:
%       p: Center of Mass Position
%       v: Center of Mass Velocity
%
% DEPENDENCIES:
%       none
%
% SEE ALSO:
%   
%
% Created by Kip Handwerker (2018)


% p = 0
% dt = time interval
% vi = 0

dt = time(2,1) - time(1,1);

for i = 2:length(a);
    v(1,1) = 0;
    v(i,1) = v(i-1,1) + (.5*(a(i) + a(i-1,1))*dt);
    p(1,1) = 0;
    p(i,1) = p(i-1)+(v(i-1)*dt)+((.5)*a(i-1)*dt^2); 
end



    
    
    
    
    
    
    
    
    
    
    
    
    
    
    