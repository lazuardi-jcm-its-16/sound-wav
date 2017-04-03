[y, fs, nbits] = wavread ('sarontok.wav');

awal = 1;
panjang = 8000;
L = length(y);
hsl = [];

for i=1:floor(L/panjang)
  awal = i*panjang - panjang + 1;
  akhir = awal + panjang - 1;
  
  b = y(awal:akhir);
  f = fft(b);
  hsl = [hsl abs(f(1:500))];
endfor

mesh(hsl);
