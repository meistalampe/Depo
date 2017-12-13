
% Filename : mantissaAndExponent.m
% Date     : 16.12.2016
% Author   : Manuel C. Kohl

function [mantissa, exponent] = mantissaAndExponent(input)
    
	exponent = fix(log10(abs(input)));
    mantissa = sign(input) .* 10.^(log10(abs(input)) - exponent);
    correctionIndices = abs(mantissa) < 1;
    mantissa(correctionIndices) = mantissa(correctionIndices) * 10;
    exponent(correctionIndices) = exponent(correctionIndices) - 1;

end