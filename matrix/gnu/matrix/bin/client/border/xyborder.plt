#!/usr/bin/gnuplot -persist
set border linewidth 2
set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 5
set style line 2 linecolor rgb '#dd181f' linetype 1 linewidth 5
set tics scale 1.25
# let go match
set terminal wxt size 350,262 enhanced font 'Verdana,10' persist
set key;
# Line width of the axes
set border linewidth 1.5
# Line styles
set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2
set style line 2 linecolor rgb '#dd181f' linetype 1 linewidth 2
# dialog elly ell
a = 0.9
f(x) = a * sin(x)
g(x) = a * cos(x)
# Plot
plot f(x) title 'sin(x)' with lines linestyle 1, \
     g(x) notitle with lines linestyle 2

