function receive=BPSKHardReceiver(input)
[~,noOfSym]=size(input);
receive=[];
for i=1:noOfSym
    if(input(i)>0)
        receive=[receive , 1];
    else
        receive=[receive , 0];
    end
end
end