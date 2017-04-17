[y, fs, nbits] = wavread ('sarontok.wav');

awal = 1;
seconds = fs*10;
hsl = [];

for j=1:round(L/seconds)
  awal = j*seconds - seconds + 1;
  akhir = awal + seconds -1;
  temp = y(awal:akhir);
  
  figure(j);
  plot(temp);
end

