
% Filename : continuousWaveletTransform.m
% Author   : Manuel C. Kohl
% Date     : 24.01.2017

function coefficients = continuousWaveletTransform(signal, samplingRate, scales, waveletName)

    if iscolumn(signal)
        signal = signal';
    end
    if isrow(scales)
        scales = scales';
    end
    nSamples = length(signal);
    nPadding = round(nSamples/2);
    nScales = length(scales);
    % signal = [fliplr(signal(1:nPadding)), signal, fliplr(signal(end-nPadding+1:end))]; % Mirror padding
	signal = [zeros(1, nPadding), signal, zeros(1, nPadding)]; % Zero padding
    signal = repmat(signal, [nScales, 1]);
    theWaveletFunctions = waveletFunctions(waveletName, scales, samplingRate, nSamples+2*nPadding);
    coefficients = repmat(1./sqrt(scales*samplingRate), [1 nSamples+2*nPadding]) .* ... 
            ifftshift(ifft(fft(signal, [], 2) .* conj(fft(theWaveletFunctions, [], 2)), [], 2), 2);
    coefficients = coefficients(:, nPadding+1:nSamples+nPadding);
    
end
