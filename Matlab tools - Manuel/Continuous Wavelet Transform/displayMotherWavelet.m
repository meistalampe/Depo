
% Filename : displayMotherWavelet.m
% Author   : Manuel C. Kohl
% Date     : 24.01.2017

function [] = displayMotherWavelet(waveletName)

    scale = 1;
    supportEnergyFraction = 0.99;
    theWaveletCenterFrequency = waveletCenterFrequency(waveletName);
    samplingRate = 1e2*theWaveletCenterFrequency;
    tSupport = 4*waveletEffectiveSupport(scale, waveletName, supportEnergyFraction);
    nSamples = 1e2*round(tSupport*samplingRate);
    time = linspace(-nSamples/(2*samplingRate), nSamples/(2*samplingRate), nSamples);
    frequencies = linspace(-samplingRate/2, samplingRate/2, nSamples);
    theMotherWavelet = waveletFunctions(waveletName, scale, samplingRate, nSamples);
    theMotherWavelet = theMotherWavelet / max(abs(theMotherWavelet));
    theMotherWaveletPSD = abs(fftshift(fft(theMotherWavelet)));
    theMotherWaveletPSD = theMotherWaveletPSD / sum(abs(theMotherWavelet));
%     pseudoFrequencies = logspace(log10(0.1*theWaveletCenterFrequency), ...
%         log10(10*theWaveletCenterFrequency), 100);
%     scales = pseudoFrequencyToScale(pseudoFrequencies, 'complexMorlet');
%     theMotherWaveletCWTmagnitude = abs(continuousWaveletTransform(...
%         theMotherWavelet, samplingRate, scales, 'complexMorlet'));

    figure;
    plot(time, real(theMotherWavelet));
    if ~isreal(theMotherWavelet)
        hold on;
        plot(time, imag(theMotherWavelet));
        plot(time, abs(theMotherWavelet));
        hold off;
        legend({'Real part' 'Imaginary Part' 'Magnitude'});
    end
    grid on;
    xlim([-1 1]*tSupport);
    ylim([-1.1 1.1]);
    xlabel('Time t [s]');
    ylabel('Amplitude \Psi(t) [1]');
    title(sprintf('%s mother wavelet', waveletName));
    
    figure;
    plot(frequencies, theMotherWaveletPSD);
    grid on;
    xlim([-10 10]*theWaveletCenterFrequency);
    ylim([0 1.1*max(theMotherWaveletPSD)]);
    xlabel('Frequency f [Hz]');
    ylabel('PSD(\Psi(f)) [1]');
    title(sprintf('%s mother wavelet (PSD)', waveletName));
    
%     figure;
%     imagescnan(time, pseudoFrequencies, theMotherWaveletCWTmagnitude);
%     set(gca, 'yscale', 'log');
%     grid on;
%     xlim([-1 1]*tSupport);
%     ylim([0.1*theWaveletCenterFrequency 10*theWaveletCenterFrequency]);
%     xlabel('Translation \tau [s]');
%     ylabel('Pseudofrequency f_p [Hz]');
%     title(sprintf('%s mother wavelet\n(time-frequency covering)', waveletName));
%     colorBar = colorbar('vert');
%     zLabel = get(colorBar, 'xlabel');
%     set(zLabel, 'String', 'Magnitude |W\{\Psi(t)\}(f_p, \tau)| [1]');
    
end
