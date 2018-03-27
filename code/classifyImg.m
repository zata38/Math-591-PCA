function [dist,class] = classifyImg(omegaClasses,nClasses,omegaImg)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
eucl_dist = 1:nClasses;
for i = 1:nClasses
	eucl_dist(i) = norm(omegaClasses(:,i) - omegaImg);
end
[dist,class] = min(eucl_dist);
end

