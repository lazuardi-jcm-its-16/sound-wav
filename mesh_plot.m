[y, fs, nbits] = wavread ('sarontok.wav');

awal = 1;
panjang = 8000;
hsl = [];

for i=1:floor(L/panjang)
  awal = i*panjang - panjang + 1;
  akhir = awal + panjang - 1;
  
  b = y(awal:akhir);
  f = fft(b);
  
  hsl = [hsl abs(f(1:500))];
  
  %mean_value = mean(abs(f));
  %threshold  = 1.1*mean_value;
  %idx_treshold = abs(f) < threshold;
  %f(idx_treshold) = 0;
  
end

%mesh(hsl);
