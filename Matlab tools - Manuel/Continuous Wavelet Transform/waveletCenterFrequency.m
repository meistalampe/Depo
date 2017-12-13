
% Filename : waveletCenterFrequency.m
% Author   : Manuel C. Kohl
% Date     : 24.01.2017

function centerFrequency = waveletCenterFrequency(waveletName)

    persistent lastCallWaveletName; 
    persistent theCenterFrequency;
    
    if ~strcmp(waveletName, lastCallWaveletName)
        lastCallWaveletName = waveletName;
        scale = 1;
        samplingRate = 1e2;
        nSamples = 1e4*scale*samplingRate;
        frequencies = linspace(0, samplingRate, nSamples);
        theWaveletFunction = waveletFunctions(lastCallWaveletName, scale, samplingRate, nSamples);
        waveletEnergySpectrum = abs(fft(real(theWaveletFunction))).^2;
        waveletEnergySpectrum(frequencies >= samplingRate/2) = 0;
        waveletEnergySpectrum = waveletEnergySpectrum / sum(waveletEnergySpectrum);
        if strcmp(lastCallWaveletName, 'shannon') || strcmp(lastCallWaveletName, 'complexShannon')
			theCenterFrequency = sum(waveletEnergySpectrum.*frequencies)*scale;
        else
			maxima = find(waveletEnergySpectrum == max(waveletEnergySpectrum));
			theCenterFrequency = frequencies(maxima(1))*scale;
        end
    end
   
   centerFrequency = theCenterFrequency;    
    
end