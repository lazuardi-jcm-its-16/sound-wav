[y, fs, nbits] = wavread ('anyar1.wav');

L = length(y);
awal = 1;
panjang = 8000;
hsl = [];

for i=1:floor(L/panjang)
  awal = i*panjang - panjang + 1;
  akhir = awal + panjang - 1;
  
  b = y(awal:akhir);
  f = fft(b);
  
  hsl = [hsl abs(f(1:500))];
end

saron_1 = max(hsl(90:100,:));
saron_3 = max(hsl(101:110,:));
saron_4 = max(hsl(111:125,:));
saron_5 = max(hsl(126:160,:));

saron = [saron_1];
saron = [saron_1 saron_3];
saron = [saron_1 saron_3 saron_4];
saron = [saron_1 saron_3 saron_4 saron_5];
plot(saron);