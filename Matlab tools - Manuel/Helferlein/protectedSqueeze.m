
% Filename : protectedSqueeze.m
% Author   : Manuel C. Kohl
% Date     : 21.06.2016

function output = protectedSqueeze(input, protectedDimensions)

    inputDimensions = size(input);
    nonsingletonDimensions = inputDimensions ~= 1;
    nonsingletonDimensions(protectedDimensions) = 1;
    output = reshape(input, inputDimensions(nonsingletonDimensions));
    
end