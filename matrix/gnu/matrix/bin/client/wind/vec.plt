#!/usr/bin/gnuplot -persist
# Legend
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
