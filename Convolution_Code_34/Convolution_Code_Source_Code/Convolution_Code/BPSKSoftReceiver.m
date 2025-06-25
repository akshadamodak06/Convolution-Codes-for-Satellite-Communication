function receive=BPSKSoftReceiver(input,NoOfBand,A,s)
[~,noOfSym]=size(input);
receive=[];
basket=linspace(-A,A,NoOfBand-1);
for i=1:noOfSym
    if(input(i)<=-A)
        receive=[receive,0];
    elseif(input(i)>=A)
        receive=[receive,NoOfBand-1];
    else
        for j=2:NoOfBand-1
            if(input(i)>basket(j-1)&&input(i)<=basket(j))
                receive=[receive,j-1];
                break;
            end
        end
    end
end
end
% LR=exp(input(:).*(2*A/s^2));
% maxL=A;
% basket=linspace(exp(-2*maxL*A/s^2),exp(2*maxL*A/s^2),NoOfBand-1);
% receive=[];
% for i=1:noOfSym
%    if(LR(i)<=basket(1))
%        receive=[receive,0];
%    elseif(LR(i)>=basket(NoOfBand-1))
%        receive=[receive,NoOfBand-1];
%    else
%        for j=2:NoOfBand-1
%            if(LR(i)>basket(j-1)&&LR(i)<=basket(j))
%                receive=[receive,j-1];
%            end
%        end
%    end
% end
% end