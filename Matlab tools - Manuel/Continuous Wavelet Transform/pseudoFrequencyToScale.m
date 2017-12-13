
% Filename : pseudoFrequencyToScale.m
% Author   : Manuel C. Kohl
% Date     : 03.06.2016

function scale = pseudoFrequencyToScale(pseudoFrequency, wavelet)

    scale = waveletCenterFrequency(wavelet) ./ pseudoFrequency;
    
end