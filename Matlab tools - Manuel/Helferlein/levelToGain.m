
% Filename : levelToGain.m
% Date     : 06.03.2017
% Author   : Manuel C. Kohl

function gain = levelToGain(level)

    gain = 10.^(level/20);
    
end
