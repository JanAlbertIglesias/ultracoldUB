v = 5.0
gn = -0.4
h = 1.2
w = 0.5 

set xrange[-64:64]
set yrange[-0:0.3]
set xlabel "x"
set ylabel "|psi|^2"
set title sprintf("Bright soliton (v=%.1f, gn=%.1f, h/E=%.1f, w/xi=%.1f)", v, gn, h, w)

plot "evolution_real.dat" u 1:2 index i with lines title "|psi(x)|^2",\
     "initial2.dat" using 1:2 with line title "potential",\
     "initial2.dat" using 1:3 with line title "initial state"

i=1+i
pause 0.005
if (i<500) reread