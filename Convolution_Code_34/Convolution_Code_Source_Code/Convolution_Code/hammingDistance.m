function z=hammingDistance(rcvdOutput,output,OutLen)
% rcvdOutput=de2bi(rcvdOutput,OutLen,"left-msb");
rcvdOutput=flip(bitget(rcvdOutput,1:OutLen));
% output=de2bi(output,OutLen,"left-msb");
output=flip(bitget(output,1:OutLen));
e=xor(rcvdOutput,output);
z=0;
for i=1:OutLen
    if(e(i)==1)
        z=z+1;
    end
end
end