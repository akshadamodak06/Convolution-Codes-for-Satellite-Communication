function Diagram=stateDiagram(noOfState,lenOfInput)
Diagram=zeros(2^lenOfInput,noOfState,2);
lenOfState=log2(noOfState);
s1=(2^(lenOfState-1))*(1/2).^(0:lenOfState-1);
s1=transpose(s1);
for input=1:2^lenOfInput
    for state=1:noOfState
        [output,nxtState]=Encoder(flip(bitget(input-1,1:lenOfInput)),flip(bitget(state-1,1:lenOfState)));%de2bi(input-1,lenOfInput,"left-msb"),de2bi(state-1,lenOfState,"left-msb")
        lenOfOutput=length(output);
        s2=(2^(lenOfOutput-1))*(1/2).^(0:lenOfOutput-1);
        s2=transpose(s2);
        % nxtState=bi2de(nxtState,"left-msb");
        nxtState=nxtState*s1;
        % output=bi2de(output,"left-msb");
        output=output*s2;
        Diagram(input,state,1)=output;
        Diagram(input,state,2)=nxtState;
    end
end
end