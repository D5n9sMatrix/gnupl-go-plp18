#!/usr/bin/gnuplot -persist
set terminal png font 'Ubuntu,13'
set output '/home/denis/Workspace/gnupl-go/gnu/matrix/bin/img/house/tiefit.png'
# better blaster hall paster house
set xrange [-2:52]
set yrange [0:0.12]
set format y '%.0s'
plot '/home/denis/Workspace/gnupl-go/gnu/matrix/bin/data/database/wikibetter.dat' using 1:2:4 with yerrorbars linestyle 1, \
     ''                        with lines linestyle 1