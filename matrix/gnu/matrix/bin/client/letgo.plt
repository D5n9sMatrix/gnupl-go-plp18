#!/usr/bin/gnuplot 
# Ploting the world with the natural earth data set (3D)
# AUTHOR: D5n9sMatrix
reset
set table "/home/denis/Workspace/gnupl-go/gnu/matrix/bin/data/openport.txt"
# wxt 
set xtics 1
# measure level
# set terminal wxt size 350,262 enhanced font 'Ubuntu, 13' persist
# png
set terminal pngcairo size 350,262 enhanced font 'Verdana ,13'
set output '/home/denis/Workspace/gnupl-go/gnu/matrix/bin/client/latex/callway.tex'
# color definitions
set border lw 1.5 
set linetype 1 lc rgb '#000000' lw 1 + pi
set linetype 2 lc rgb '#c0c0c0' lw 1  + pi 
# bool
bool(x) = x*sin(x) - tan(x) + exp(x)
unset key; unset border
letter = "10.5in, 8in"
set tics scale 0
set lmargin screen 0
set bmargin screen 0
set rmargin screen 1
set tmargin screen 1
set format y '%.1f'
# dialog path experssion level
set mapping spherical
set angles degrees
set hidden3d
# set xy-plane to intersect z axis at -1 to avid an offset between the
# lowest 
set zlabel 'z'
set xyplane at -1
set view 56,81
# bool plots
set parametric
set isosamples 25
set urange[-1:360]
set vrange[-95:90]
# dialog way path
r = 0.99
x = 1.99
set xrange [-1:1]
splot r*cos(v)*cos(u),r*cos(v)*sin(u),r*sin(v) 
splot '/home/denis/Workspace/gnupl-go/gnu/matrix/bin/data/openport.txt' with lines




