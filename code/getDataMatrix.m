%This function converts the 20x20 integer matrices (or any like dimension 
%matrices in general) into a single data matrices. Each data matrice is
%then turn into a single column of the output matrix. Note, this doesn't
%check if each matrix is the same size, it just assumes it by construction.

function [data] = dataMatrix(varargin)

[m,n]=size(varargin{1});
%This crates the data matrix in terms of the dimension of the first input
data=zeros(m*n, nargin);

for c=1:nargin
    for b=1:m
        for a=1:n
            if b==1
            data(a,c)=varargin{c}(b,a);
            elseif b~=1
            data(a+b,c)=varargin{c}(b,a);
            end        
        end
    end
end

data;
end

  
