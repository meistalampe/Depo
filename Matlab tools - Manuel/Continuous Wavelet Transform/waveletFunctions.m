
% Filename : waveletFunctions.m
% Author   : Manuel C. Kohl
% Date     : 24.01.2017

function theWaveletFunctions = waveletFunctions(waveletName, scales, samplingRate, nSamples)

    time = linspace(-nSamples/(2*samplingRate), nSamples/(2*samplingRate), nSamples);   
    [Time, Scales] = meshgrid(time, scales);
    theMotherWavelet = motherWavelet(waveletName);
    theWaveletFunctions = theMotherWavelet(Time./Scales);
    theWaveletFunctions = theWaveletFunctions - repmat(mean( ...
        theWaveletFunctions, 2), [1, nSamples]);
    theWaveletFunctions = theWaveletFunctions ./ repmat(sqrt(sum(abs( ...
        theWaveletFunctions).^2, 2)), [1, nSamples]);

end
