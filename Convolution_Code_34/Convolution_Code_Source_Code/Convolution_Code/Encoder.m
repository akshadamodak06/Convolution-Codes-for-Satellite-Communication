function [output,newState]=Encoder(input,prevState)
[~,lenOfInput]=size(input);
newState=[input,prevState];
newState(end-lenOfInput+1:end)=[];
% Output Algorithm
% % for rate 1/2 kc=3 output:
G=[1,0;
   1,1;
   1,1];
% For kc=4 rate 1/3 code:
% G=[1,1,1;
%    1,1,0;
%    1,0,1;
%    1,1,0];
% For kc=6 r=1/3 code:
% G=[1,0,1;
%    1,1,0;
%    1,1,1;
%    1,0,1;
%    1,1,1;
%    1,1,0];
output=newState*G;
output=mod(output,2);
end