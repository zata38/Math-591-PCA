%This function takes the data matrix and obtains the average for each row
%and returns it as a column vector where each value is the average for the
%coresponding row
function [average]= getAverage(data)

[m,n]=size(data);

average(m,1)=zeros;

for c=1:m
    for b=1:n
        average(c,1)=average(c,1)+data(c,b);
    end
end
average=average/n;
end