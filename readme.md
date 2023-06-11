# welcome gnupl-go
guides gnuplot very staps to times let go match logic series laps 10 to for methods of mechanism create to very staps much times to level go in ambient of situation in movement's about construction of applicative about gates way projects in series to match the laps 10:1, 10:2, 10:3 make with its attributes make one base solid of construction arithmetic utilized break points formed usage of
its utils to the mechanism very staps.
```gnuplot
#!/usr/bin/gnuplot
#
# Draw equipotential lines of two sources with different charge
#
# AUTHOR: Hagen Wierstorf

reset

# wxt
set terminal wxt size 350,262 enhanced font 'Verdana,10' persist
# png
#set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
#set output 'electric_field2.png'

# color definitions
set border linewidth 1.5
set style line 1 lc rgb '#0060ad' lt 1 lw 2 # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 # --- red

unset key; unset border; unset tics
set size ratio -1

r(x,y) = sqrt(x*x+y*y)
v1(x,y)=  q1/r(x-x1,y-y1)
v2(x,y)=  q2/r(x-x2,y-y2)
v(x,y) = v1(x,y)+v2(x,y)

# position of positive charge
x1 = 2
y1 = 1
q1 = 1
# position of negative charge
x2 = 1
y2 = 1
q2 = -2

set xrange [-1:3]
set yrange [-0.5:2.5]

set view map
unset surface
set contour base
set cntrparam order 4
set cntrparam points 5
set cntrparam linear

set isosam 61,61
# negative source
set cntrparam levels discrete \
    -5,-2.5,-1.67,-1.25,-1,-0.83,-0.71,-0.63,-0.55,-0.5,-0.45,-0.42,-0.38,-0.36
set table '/home/denis/Workspace/gnupl-go/gnu/matrix/bin/data/verystap/electron.txt'
splot v(x,y) w l ls 1
# positive source
unset table
set cntrparam levels discrete \
    0.36,0.38,0.42,0.45,0.5,0.55,0.63,0.71,0.83,1,1.25,1.67,2.5,5
set table '/home/denis/Workspace/gnupl-go/gnu/matrix/bin/data/verystap/positron.txt'
splot v(x,y) w l ls 1
unset table

# Draw sources
call '/home/denis/Workspace/gnupl-go/gnu/matrix/bin/client/gnu/position.gnu' x1 y1 '0.1'
call '/home/denis/Workspace/gnupl-go/gnu/matrix/bin/client/gnu/position.gnu' x2 y2 '0.2'
plot '/home/denis/Workspace/gnupl-go/gnu/matrix/bin/data/verystap/electron.txt' u 1:2 w l ls 1, \
     '/home/denis/Workspace/gnupl-go/gnu/matrix/bin/data/verystap/positron.txt' u 1:2 w l ls 2
```
