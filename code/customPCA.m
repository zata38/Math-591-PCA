function [p_comp,proj_data,p_vals,mu] = customPCA(data,rDim)
%CUSTOMPCA Summary of this function goes here
%   data : d x p matrix of p samples with dimension d, 
%   rDim : dimension of feature space (0 => max dimension)
[m,n] = size(data);

if rDim == 0, rDim = m; end

mu = getAverage(data);
mean = repmat(mu, 1, n);
covData = 1/(n-1)*((data-mean)*(data-mean)');

[p_comp,p_vals]=eig(covData);
p_vals = diag(p_vals);

[~,indices] = sort(p_vals); 
indices = flipud(indices);

p_vals = p_vals(indices(1:rDim)); 
p_comp = p_comp(:,indices(1:rDim));

proj_data = zeros(rDim, n);
for i=1:n
    proj_data(:,i) = p_comp' * (data(:,i)-mu);
end

end

