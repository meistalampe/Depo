
% Filename : decadesToOctaves.m
% Date     : 07.03.2017
% Author   : Manuel C. Kohl

function octaves = decadesToOctaves(decades)

    octaves = factorToOctaves(decadesToFactor(decades));
    
end
