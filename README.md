# NumpyDocker
A minimal docker(&lt;250 mb) based on Alpine for Numpy

#### Prerequisites:

The alpine image is named as "gliderlabs/alpine" and is being used as the base of the minidocker dockerfile created.
1. We need to build the base image of [alpine](https://github.com/gliderlabs/docker-alpine) under the name "gliderlabs/alpine".
    - Clone [alpine](https://github.com/gliderlabs/docker-alpine)
    - Change directory to builder
    - Build the dockerfile: "docker build -t gliderlabs/alpine ."

#### Steps to Test minidocker: 
1. Building the dockerfile:
        "docker build -t minidocker ."
2. Running the image:
        "docker run minidocker"

The output should display something like this:

[[ 0.03573961  0.45351115]

 [ 0.28302967  0.62914049]]

## Minidocker(247 MB) package details: 

As we want to use Numpy on python3 here, we head over to the [official documentation](https://docs.scipy.org/doc/numpy/user/building.html)
to find the prerequisites of running numpy on alpine.
#### Simple list of packages installed

The base image 'gliderlabs/alpine' - 5 mb

Mainly these 5 packages + their dependencies are installed:

1. Python3 - 70 mb
2. Python3-dev - 25 mb
3. gfortran - 20 mb
4. gcc - 70 mb
5. musl-dev -10 mb (used for tracking unexpected behaviour/debugging)

Total size of the packages ~ 200 mb

#### Comprehensive list of packages installed

The base image 'gliderlabs/alpine'

The following is a full list of main packages installed:
1. musl (1.1.14-r15)
2. ncurses-terminfo-base (6.0-r8)
3. ncurses5-libs (5.9-r1)
4. binutils-libs (2.26-r1)
5. binutils (2.26-r1)
6. gmp (6.1.0-r0)
7. isl (0.14.1-r0)
8. libgomp (5.3.0-r0)
9. libatomic (5.3.0-r0)
10. libgcc (5.3.0-r0)
11. pkgconf (0.9.12-r0)
12. pkgconfig (0.25-r1)
13. mpfr3 (3.1.2-r0)
14. mpc1 (1.0.3-r0)
15. libstdc++ (5.3.0-r0)
16. gcc (5.3.0-r0)
17. libquadmath (5.3.0-r0)
18. libgfortran (5.3.0-r0)
19. gfortran (5.3.0-r0)
20. musl-dev (1.1.14-r15)
21. libbz2 (1.0.6-r5)
22. expat (2.2.0-r1)
23. libffi (3.2.1-r2)
24. gdbm (1.11-r1)
25. ncurses-terminfo (6.0-r8)
26. ncurses-libs (5.9-r3 -> 6.0-r8)
27. sqlite-libs (3.13.0-r0)
28. python3 (3.5.2-r2)
29. python3-dev (3.5.2-r2)
