j=0;
for i = 1:6
  if i==4
    continue;
  else
    j++;
  endif
  [y, fs, nbits] = wavread (['SARON',num2str(i),'SL.WAV']);
   
  subplot (5, 1, j);
  plot(y);
  if i==1
    title('Plot Sound Wav Format (R. Arif F L - 2216205203)');
  endif
  legend(['SARON',num2str(i),'SL.WAV']);
endfor
 

%sound(y,fs,nbits);