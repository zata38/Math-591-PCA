function [omega] = weighImg(eigVecMat,mean,img)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
omega = eigVecMat'*(img-mean);
end

