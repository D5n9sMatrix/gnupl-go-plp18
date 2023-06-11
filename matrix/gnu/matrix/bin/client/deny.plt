#!/usr/bin/gnuplot -persist
set table "/home/denis/Workspace/gnupl-go/gnu/matrix/bin/data/galilleos.txt"
set terminal epslatex size 3.5,2.62 color colortext
set output '/home/denis/Workspace/gnupl-go/gnu/matrix/bin/client/latex/gnuplot4.5.tex'
set terminal epslatex size 8.89cm,6.65cm color colortext
set xlabel '$x$'
set ylabel '$y$'
set format '$%g$'
set xtics ('$-2\pi$' -2*pi,'$-\pi$' -pi,0,'$\pi$' pi,'$2\pi$' 2*pi)
x = 1600
f(x) = x*sin(x)
plot f(x) title '$\sin(x)$' with lines linestyle 1
