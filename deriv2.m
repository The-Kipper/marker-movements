function a = deriv2(p,dt)
% Handwerker_deriv1.m finds the acceleration of the respective marker
% coordinates by using 3 different methods of derivatives.
%
% 1- The second order forward difference approx for sample 1
%           a_i=(2p(i)-5p(i+1)+4p(i+2)-p(i+3))/(dt)^2 
%
% 2- The first order central difference approx for samples >1 and <n
%           a_i=(p(i-1)-2p(i)+p(i+1))/(dt)^2 
%
% 3- The second order backwards difference approximation for samples n
%           a_i=(-p(i-3)+4p(i-2)-5p(i-1)+2p(i)/(dt)^2 
%
% [a] = Handwerker_deriv2 (p,dt)
%
% INPUTS:
%   p: Position of the marker coordinates
%   dt: Change in time / time intervals
%
%
% OUTPUTS:
%       a: second derivative of the position/time coordinates(acceleration)
%
% DEPENDENCIES:
%       none
%
% SEE ALSO:
%   
%
% Created by Kip Handwerker (2018)

% p = marker positition from the coordinate table
% dt = time interval

dt3 = dt^2;             % denominator variable
[r,c] = size(p);        % r = length of p, c = columns

for j = 1:c;
    
    % FIRST SAMPLE
    % second order forward difference approximation
    a(1,j) = (2*p(1,j) - 5*p(2,j) + 4*p(3,j) - p(4,j)) / dt3;
    
    % SAMPLES >1 AND <N
    % first order central difference approximation for all the samples in
    % the middle
    for i = 2:r-1;
        a(i,j) = (p(i-1,j) - 2*p(i,j) + p(i+1,j)) / dt3;
    end
    
    % FINAL SAMPLE
    % second order backwards difference approximation
     a(r,j) = (-p(r-3,j) - 4*p(r-2,j) - 5*p(r-1) + 2*p(1,j)) / dt3;
end
