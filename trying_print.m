clc,clear
fid = fopen('T2.txt','wt+'); % 'wt' means "write text"
if (fid < 0)
 error('could not open file "T.txt"');
end
for i=1:100
fprintf(fid,'%d\n',i);
end

fclose(fid);
%%%now read from file%%%%

fid2 = fopen('T2.txt','r');
if(fid<0)
  error('could not open the file');
end

  A = fscanf(fid2,'%d')


fclose(fid2);

