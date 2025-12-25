function calculator_app
    fig = uifigure('Name','Simple Calculator','Position',[500 300 300 400]);

    txt = uitextarea(fig,'Position',[25 330 250 50],'Value',"0");

    numbers = {'7','8','9','4','5','6','1','2','3','0'};
    positions = [25 250; 115 250; 205 250;
                 25 190; 115 190; 205 190;
                 25 130; 115 130; 205 130;
                 115 70];

    currentInput = "";
    storedValue = 0;
    currentOp = "";

    function updateDisplay(val)
        txt.Value = string(val);
    end

    function numberPressed(num)
        currentInput = currentInput + num;
        updateDisplay(currentInput);
    end

    function opPressed(op)
        if currentInput ~= ""
            storedValue = str2double(currentInput);
        end
        currentInput = "";
        currentOp = op;
    end

    function equalPressed()
        if currentInput == ""
            return;
        end
        second = str2double(currentInput);
        switch currentOp
            case '+'
                result = storedValue + second;
            case '-'
                result = storedValue - second;
            case '*'
                result = storedValue * second;
            case '/'
                result = storedValue / second;
            otherwise
                result = "Err";
        end
        updateDisplay(result);
        currentInput = string(result);
    end

    function clearPressed()
        currentInput = "";
        storedValue = 0;
        currentOp = "";
        updateDisplay("0");
    end

    for i = 1:length(numbers)
        uibutton(fig,'Text',numbers{i},'Position',[positions(i,:) 60 40], ...
            'ButtonPushedFcn',@(btn,event) numberPressed(numbers{i}));
    end

    ops = {'+','-','*','/'};
    for j = 1:4
        uibutton(fig,'Text',ops{j},'Position',[205 70+(j-1)*60 60 40], ...
            'ButtonPushedFcn',@(btn,event) opPressed(ops{j}));
    end

    uibutton(fig,'Text','=', 'Position',[25 70 80 40], ...
        'ButtonPushedFcn',@(btn,event) equalPressed());

    uibutton(fig,'Text','C','Position',[205 330 60 40], ...
        'ButtonPushedFcn',@(btn,event) clearPressed());
end