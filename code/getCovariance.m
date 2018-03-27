%This function takes a the average values of each row, written as a column
%vector, and a data matrix and obtains the covariance matrix. 
function [covariance] = getCovariance(average, data)
[m,n]=size(data);
%[d,f]=size(average);
%covariance(d,d)=vpa(zeros);

%This matrix stores the deviation values, which is then multiplied by its
%own transpose divided by (n-1) to obtain the final covariance matrix
deviation=zeros(m,n);

for a=1:m
    for b=1:n
        deviation(a,b)=data(a,b)-average(a,1);
    end
end
covariance=(deviation)*transpose(deviation)/(n-1);
end
