function [me,stdev] = statex(x)
%STATEX Summary of this function goes here
%   Detailed explanation goes here
    [m,n] = size(x); 
    if m == 1 
        m = n; 
    end 
    me = sum(x)/m; 
    temp = x - me; 
    stdev = sqrt((1/(m-1))*sum(temp.^2)); 
end

