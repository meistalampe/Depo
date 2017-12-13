
% Filename : scaleToPseudoFrequency.m
% Author   : Manuel C. Kohl
% Date     : 24.01.2017

function frequency = scaleToPseudoFrequency(scale, wavelet)
    
    frequency = waveletCenterFrequency(wavelet) ./ scale;
    
end
    