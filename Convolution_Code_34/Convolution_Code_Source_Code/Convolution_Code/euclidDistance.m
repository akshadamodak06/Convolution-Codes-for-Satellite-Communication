function z=euclidDistance(rcvdOutput,output,OutLen,Band)
% output=de2bi(output,OutLen,"left-msb");
output=flip(bitget(output,1:OutLen));
output=(Band-1)*output;
dist=rcvdOutput-output;
% z1=abs(dist);
% z1=z1.^3;
% z=sum(z1);
% z=z^(1/3);
% z=sum(abs(dist)); % Manhattan Distance
distT=transpose(dist);
z=dist*distT; % This is used for euclidean distance
z=sqrt(z); % sqrt is a good measure
% Above is a good measure of distance
% Below are other measures of distance
% z=exp(z); % This is also a good measure
% e=exp(1);
% c=log10(e);
% z=log10(z)/c; % This is not a good metric as it numbs down the difference
end