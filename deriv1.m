function v = deriv1(p,dt)
% Handwerker_deriv1.m finds the velocity of the respective marker
% coordinates by using 3 different methods of derivatives.
%
% 1- The second order forward difference approx for sample 1
%           v_i=((-3p(i)+(4p(i+1)-p(i+2))/2dt
%
% 2- The first order central difference approx for samples >1 and <n
%           v_i=(p(i+1)-p(i-1))/2dt
%
% 3- The second order backwards difference approximation for samples n
%           v_i=(p(i-2)-4p(i-1)+3p(i)/2dt
%
% [v] = Handwerker_deriv1 (p,dt)
%
% INPUTS:
%   p: Position of the marker coordinates
%   dt: Change in time / time intervals
%
%
% OUTPUTS:
%       v: first derivative of the position/time coordinates(velocity)
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

dt2 = dt*2;         % denominator variable
[r,c] = size(p);    % r = length of p, c = columns

for j = 1:c         %loop from column 1 to last column
    
    % FIRST SAMPLE
    % second order forward difference approximation
    v(1,j) = (-3*p(1,j)+ 4*p(2,j) - p(3,j)) / dt2;
    
    % SAMPLES >1 AND <N
    % first order central difference approximation for all the samples in
    % the middle
    for i = 2:r-1
        v(i,j) = (p(i+1,j) - p(i-1,j)) / dt2;
    end
    
    % FINAL SAMPLE
    % second order backwards difference approximation
    v(r,j) = (p(r-2,j) - 4*p(r-j) + 3*p(r,j))/dt2;
    
end
