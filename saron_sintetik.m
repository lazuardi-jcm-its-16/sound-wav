a = sin(2*pi*500/48000*(1:500000));
model_saron = 0.789*exp(-1.03*(10^-5)*(1:500000));
saron = model_saron .* a;

plot(saron);
%sound(saron,48000);