
% Filename : waveletEffectiveSupport.m
% Author   : Manuel C. Kohl
% Date     : 24.01.2017

function support = waveletEffectiveSupport(scales, waveletName, supportEnergyFraction)

    persistent lastCallWaveletName;
    persistent lastCallSupportEnergyFraction;  
    persistent theEffectiveSupport;
    
    if ~strcmp(waveletName, lastCallWaveletName) || ...
        ~strcmp(supportEnergyFraction, lastCallSupportEnergyFraction)
        lastCallWaveletName = waveletName;
        lastCallSupportEnergyFraction = supportEnergyFraction;
        scale = 1;
        samplingRate = 1e2;
        nSamples = 1e4*scale*samplingRate;
        theWaveletFunction = waveletFunctions(lastCallWaveletName, scale, samplingRate, nSamples);
        theWaveletFunction = circshift(theWaveletFunction, [0, -round(nSamples/2)]);
        theWaveletFunction = theWaveletFunction(1:round(nSamples/2));
        normalizedWavelet = theWaveletFunction / norm(theWaveletFunction);
        cumulatedEnergy = cumsum(abs(normalizedWavelet).^2);
        kernel = find(cumulatedEnergy >= supportEnergyFraction);
        theEffectiveSupport = kernel(1)/(scale*samplingRate);
    end
    
    support = theEffectiveSupport * scales;

end