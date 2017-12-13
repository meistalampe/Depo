
% Filename : rescaleRange.m
% Date     : 03.11.2016
% Author   : Manuel C. Kohl

function [output, inputMin, inputMax] = rescaleRange(input, targetMin, targetMax)

    inputMin = input;
    inputMax = input;
    for k = 1:ndims(input)
        inputMin = min(inputMin);
        inputMax = max(inputMax);
    end
    output = input - inputMin;
    output = output / (inputMax - inputMin);
    output = output * (targetMax - targetMin);
    output = output + targetMin;

end