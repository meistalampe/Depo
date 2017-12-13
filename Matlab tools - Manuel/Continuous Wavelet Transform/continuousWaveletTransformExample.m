
% Filename : continuousWaveletTransformExample.m
% Author   : Manuel C. Kohl
% Date     : 24.01.2017

clc;
clear;
close all;
addpath(genpath('../'));

samplingRate = 10000;
tMax = 1;
nSamples = round(samplingRate*tMax);
time = linspace(0, tMax, nSamples);
%signal = sin(2*pi*10*time) + sin(2*pi*100*time) + sin(2*pi*1000*time);
signal = exp(-((time-0.5)/(tMax/100)).^2);
%signal = signal + 0.1*pinkNoise(nSamples);
signal = signal .* tukeywin(nSamples, 0.2)';

waveletName = 'complexMorlet';
frequencyWindow = [1 500];
nScales = 100;
% scaleWindow = fliplr(pseudoFrequencyToScale(frequencyWindow, waveletName));
% scales = linspace(scaleWindow(1), scaleWindow(end), nScales);
% pseudoFrequencies = scaleToPseudoFrequency(scales, waveletName);
pseudoFrequencies = logspace(log10(frequencyWindow(1)), log10(frequencyWindow(end)), nScales);
scales = pseudoFrequencyToScale(pseudoFrequencies, waveletName);

signalCWT = continuousWaveletTransform(signal, samplingRate, scales, waveletName);
signalCWTmagnitude = real(signalCWT);

% Plots

figure;
plot(time, signal);
grid on;
xlim([min(time), max(time)]);
xlabel('Time t [s]');
ylabel('Amplitude s(t) [1]');
title('Time-domain signal');

figure;
imagescnan(time, pseudoFrequencies, signalCWTmagnitude);
colormap(bipolarCoolwarmDark());
% colormap(linearInferno());
grid on;
set(gca, 'YScale', 'log');
xlim([min(time), max(time)]);
ylim(frequencyWindow);
clim = max(max(abs(signalCWTmagnitude)));
caxis([-1 1]*clim);
% caxis([min(min(signalCWTmagnitude)) max(max(signalCWTmagnitude))]);
xlabel('Translation \tau [s]');
ylabel('Scales s [s]');
title('Continuous wavelet transform (magnitude)');
colorBar = colorbar('vert');
zLabel = get(colorBar, 'xlabel');
set(zLabel, 'String', 'Magnitude |W_\psi\{s(t)\}(f_p, \tau)| [1]');
