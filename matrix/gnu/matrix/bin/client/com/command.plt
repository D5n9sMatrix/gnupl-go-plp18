#!/usr/bin/gnuplot -persist
# Legend
set terminal png font "Ubuntu,12"
set output '/home/denis/Workspace/gnupl-go/gnu/matrix/bin/img/gnuplot4.5_FAQ.png'

set key at 6.1,1.3
# Axes label
set xlabel 'x'
set ylabel 'y'
# Axes ranges
set xrange [-2*pi:2*pi]
set yrange [-1.5:1.5]
# Axes tics
set xtics ('-2π' -2*pi, '-π' -pi, 0, 'π' pi, '2π' 2*pi)
set ytics 1
set tics scale 0.75
# Set linestyle 1 to blue (#0060ad)
set style line 1 \
    linecolor rgb '#0060ad' \
    linetype 1 linewidth 2 \
    pointtype 7 pointsize 1.5
x = 1600    
f(x) = x*sin(x)
plot f(x)  with linespoints linestyle 1