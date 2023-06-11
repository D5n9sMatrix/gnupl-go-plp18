#!/usr/bin/gnuplot -persist
# limit of form gracy
set format '$%g$'
set terminal wxt size 350,262 enhanced font 'Verdana,10' persist
# latter
set logscale y
x = 1.99
y = 1.99
latter(x,y) = x*sin(y)
set terminal postscript eps enhanced color font 'Helvetica,10'
set output '/home/denis/Workspace/gnupl-go/gnu/matrix/bin/client/latex/intro.eps'
set terminal postscript eps size 3.5,2.62 enhanced color \
    font 'Helvetica,20' linewidth 2
set xlabel '{/Helvetica-Oblique x}'
set ylabel '{/Helvetica-Oblique y}'
set xtics ('-2{/Symbol p}' -2*pi,'-{/Symbol p}' -pi,0, \
    '{/Symbol p}' pi,'2{/Symbol p}' 2*pi)
f(x) = x*sin(x)     
plot f(x) title 'sin({/Helvetica-Oblique x})' with lines linestyle 1
