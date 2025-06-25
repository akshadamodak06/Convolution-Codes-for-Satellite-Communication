function e=AWGNChannel(seq,stDev)
[~,sSeq]=size(seq);
e=stDev*randn(1,sSeq);
e=seq(:)+e(:);
e=transpose(e);
end