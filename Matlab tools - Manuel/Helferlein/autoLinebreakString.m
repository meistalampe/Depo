
% Filename : autoLinebreakString.m
% Date     : 23.08.2017
% Author   : Manuel C. Kohl

function textOutput = autoLinebreakString(textInput, lineWidth)

	newlineChar = sprintf('\n');
	nCharacters = length(textInput);
	textOutput = textInput;	
	n = 1;
	for k = 1:nCharacters
        if textInput(k) == newlineChar
			n = 1;
        end
        if (n > lineWidth) && (textInput(k) == ' ')
			textOutput(k) = newlineChar;
            n = 1;
        end
        n = n + 1;
	end

end
