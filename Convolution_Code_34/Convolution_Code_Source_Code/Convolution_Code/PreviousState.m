function [prevState,output]=PreviousState(state,Diagram)
[noOfInpCombn,u,~]=size(Diagram);
prevState=[];
output=[];
for s=1:u
    for in=1:noOfInpCombn
        if(Diagram(in,s,2)==state)
            prevState=[prevState,s-1];
            output=[output,Diagram(in,s,1)];
        end
    end
end
end