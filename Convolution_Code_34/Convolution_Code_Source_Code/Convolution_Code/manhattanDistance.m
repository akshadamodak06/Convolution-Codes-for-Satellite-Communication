function z=manhattanDistance(rcvdOutput,output,OutLen,Band)
output=flip(bitget(output,1:OutLen));
output=(Band-1)*output;
dist=rcvdOutput-output;
z=sum(abs(dist)); % Manhattan Distance
end