
% Filename : motherWavelet.m
% Author   : Manuel C. Kohl
% Date     : 24.01.2017

function theMotherWavelet = motherWavelet(waveletName)

    bandWidth = 1;

    switch waveletName
        
        case 'haar'
            theMotherWavelet = @(timeScales) sign(timeScales).*(abs(timeScales)<1);
            
        case 'shannon'
            theMotherWavelet = @(timeScales) cos(3*pi*timeScales).*sinc(timeScales*bandWidth);
            
        case 'complexShannon'
            theMotherWavelet = @(timeScales) exp(3i*pi*timeScales).*sinc(timeScales*bandWidth);
            
        case 'mexicanHat'
            theMotherWavelet = @(timeScales) (2-4*timeScales.^2).*exp(-timeScales.^2);
            
        case '4thDerivativeGaussian'
            theMotherWavelet = @(timeScales) (3-12*timeScales.^2+4*timeScales.^4).*exp(-timeScales.^2);
            
        case '6thDerivativeGaussian'
            theMotherWavelet = @(timeScales) (15-90*timeScales.^2+60*timeScales.^4-8*timeScales.^6).*exp(-timeScales.^2);
            
        case 'hermitianHat'
            theMotherWavelet = @(timeScales) (3-4i*timeScales-4*timeScales.^2).*exp(-1i*timeScales-timeScales.^2);
            
        case '4thDerivativeComplexGaussian'
            theMotherWavelet = @(timeScales) (25-56i*timeScales-72*timeScales.^2+32i*timeScales.^3+16*timeScales.^4).*exp(-1i*timeScales-timeScales.^2);
            
        case '6thDerivativeComplexGaussian'
            theMotherWavelet = @(timeScales) (331-972i*timeScales-1500*timeScales.^2+1120i*timeScales.^3+720*timeScales.^4-192i*timeScales.^5-64*timeScales.^6).*exp(-1i*timeScales-timeScales.^2);
            
        case 'morlet'
            theMotherWavelet = @(timeScales) cos(2*pi*timeScales).*exp(-timeScales.^2*bandWidth);

        case 'modifiedMorlet'
            theMotherWavelet = @(timeScales) cos(2*pi*timeScales).*sech(timeScales*bandWidth);
            
        case 'complexMorlet'
            theMotherWavelet = @(timeScales) exp(2i*pi*timeScales-timeScales.^2*bandWidth);
            
        case 'modifiedComplexMorlet'
            theMotherWavelet = @(timeScales) exp(2i*pi*timeScales).*sech(timeScales*bandWidth);
            
    end
    
end
