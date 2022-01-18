clc
V=[pi 3*pi -0.3 5.08] ;
% open file
fid = fopen('T.txt','w+'); % 'wt' means "write text"
if (fid < 0)
 error('could not open file "T.txt"');
end;
fprintf(fid,'%4.2f ',V);
fclose(fid)