%This function gets the eigenvectors from the covariance matrix, which is
%in this case necessarily symmetric. Since the input matrix is symmetric, 
%matlab should output orthonormal eigenvectors. 
function [Eigenvectors]=getEigenvectors(covariance)

%[n,m] = size(covariance);
%This is the eigenvector matrix which will hold those values.
%Eigenvectors=zeros(n,m);

[V,~]=eig(covariance);
%This piece puts the eigenvectors in decreasing order with respect to the
%eigenvalues, since matlab outputs them increasing order with respect to
%the eigenvalues; reading right to left of course.

Eigenvectors=fliplr(V);


end

