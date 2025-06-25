function message=decoderSoft(receivedOutput,lenOfOutput,noOfState,Diagram,Band,Method)

%modifying format of received output for further process
[~,Outsize]=size(receivedOutput);
n=Outsize/lenOfOutput;
receivedOutput=reshape(receivedOutput,lenOfOutput,n);
receivedOutput=transpose(receivedOutput);
%now creating a array implementation of trellis tree
weight=zeros(noOfState,n+1,2);
weight(:,:,:)=Inf;
for time=1:n+1
    if(time~=1)
        for state=1:noOfState
            [PrevState,output]=PreviousState(state-1,Diagram);%state-1 is actual state
            [~,Size]=size(PrevState);
            wmin=Inf;
            prev=Inf;
            for counter=1:Size
                if(Method)
                    BM=euclidDistance(receivedOutput(time-1,:),output(counter),lenOfOutput,Band);
                else
                    BM=manhattanDistance(receivedOutput(time-1,:),output(counter),lenOfOutput,Band);
                end
                w=weight(PrevState(counter)+1,time-1,1)+BM;
                if(w<wmin)
                    wmin=w;
                    prev=PrevState(counter)+1;
                end
            end
            weight(state,time,1)=wmin;
            weight(state,time,2)=prev;%This previous state is actualState+1
        end
    else
        weight(1,time,1)=0;
    end
end
% We have now created Trellis tree
pos=n;
message=[];
% [~,indx]=min(weight(:,n+1,1));
indx=1;
while pos>0
    from1=weight(indx,pos+1,2)-1;
    if(from1==Inf)
        from=0;
    else 
        from=from1;
    end
    to=indx-1;
    msg=InputForThistransition(from,to,Diagram);
    message=[msg,message];
    indx=from1+1;
    pos=pos-1;
end 
end