function [HeelStrike,ToeOff] = FindGaitEvents (vgrf,thresh)
% Handwerker_FindGaitEvents.m finds onset and offset of a verticle grounds
% reaction force based on an input threshold.
%
% [HeelStrike,ToeOff] = Handwerker_FindGaitEvents (vgrf)
%
% INPUTS:
%   vgrf: Verticle Ground Reaction Force
%   thresh: threshold for determining gair events (optional)
%           default: thresh=20
%
%
% OUTPUTS:
%       HeelStrike: first index where vgrf > thresholf
%       ToeOff: first index after HeelStrike where vgrf <= thresh
%
% DEPENDENCIES:
%       none
%
% SEE ALSO:
%   find
%
% Created by Kip Handwerker (2018)

% set threshold to default of 20 if the user did not provide value
if nargin==1
    thresh=20;
end

% find the first contact with the force plate for which verticle ground
% reaction force (vgrf) is greater than the threshold.
HeelStrike = find(vgrf>=thresh,1,'first');

% find the last contact with the force plate for which verticle ground
% reaction force is less than threshold.
ToeOff = 1 + find(vgrf>=thresh,1,'last');





















