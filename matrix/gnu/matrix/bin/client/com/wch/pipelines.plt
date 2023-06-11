#!/usr/bin/gnuplot -persist
set terminal svg font "Ubuntu,13"
set output "/home/denis/Workspace/gnupl-go/gnu/matrix/bin/client/svg/deco_svg.svg"
set yrange [0:120]
plot '/home/denis/Workspace/gnupl-go/gnu/matrix/bin/data/database/pipelines.dat' using 1:($2*1000):($4*1000) with yerrorbars linestyle 1