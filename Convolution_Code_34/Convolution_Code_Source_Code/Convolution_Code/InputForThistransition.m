function inp=InputForThistransition(initialState,finalState,Diagram)
[noOfInpCombn,~,~]=size(Diagram);
lenOfInput=log2(noOfInpCombn);
for inpVal=1:noOfInpCombn
    if(Diagram(inpVal,initialState+1,2)==finalState)
        % inp=de2bi(inpVal-1,lenOfInput,"left-msb");
        inp=flip(bitget(inpVal-1,1:lenOfInput));
    end
end
end