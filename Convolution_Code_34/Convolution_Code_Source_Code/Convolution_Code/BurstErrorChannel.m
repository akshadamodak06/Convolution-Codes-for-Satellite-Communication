function e=BurstErrorChannel(seq,stDev)
%Burst Error
[~,szOfInput]=size(seq);
PBurstOccurance=0.2;
ValBurst=3*stDev;
lenOfBurst=5;
noOfSector=szOfInput/lenOfBurst;
noOfBurst=uint8(PBurstOccurance*noOfSector);
pos=randi([1,noOfSector],[1,noOfBurst]);
for i=1:noOfBurst
    for j=1:lenOfBurst
        seq(pos(i)+j)=seq(pos(i)+j)+ValBurst;
    end
end
e=seq;
end