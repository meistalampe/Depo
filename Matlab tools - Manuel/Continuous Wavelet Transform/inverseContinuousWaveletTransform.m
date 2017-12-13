
% Filename : inverseContinuousWaveletTransform.m
% Author   : Manuel C. Kohl
% Date     : 23.01.2017

function signal = inverseContinuousWaveletTransform(coefficients, samplingRate, scales, waveletName)
    
    if isrow(scales)
        scales = scales';
    end
    [nScales, nSamples] = size(coefficients);
    nPadding = round(nSamples/2);
    % coefficients = [fliplr(coefficients(:, 1:nPadding)), coefficients, fliplr(coefficients(:, end-nPadding+1:end))]; % Mirror padding
    coefficients = [zeros(nScales, nPadding), coefficients, zeros(nScales, nPadding)]; % Zero Padding
    theWaveletFunctions = waveletFunctions(waveletName, scales, samplingRate, nSamples+2*nPadding);
    coefficients = repmat(1./sqrt(scales*samplingRate), [1 nSamples+2*nPadding]) .* ... 
    	ifftshift(ifft(fft(coefficients, [], 2) .* fft(theWaveletFunctions, [], 2), [], 2), 2);
    signal = real(sum(coefficients(:, nPadding+1:nSamples+nPadding)));
    
end
