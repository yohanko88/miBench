#!/bin/bash

compiler=arm-linux-gnueabi-gcc

case $1 in

	"download")
	for file in automotive consumer network office security telecomm
	do
		wget www.eecs.umich.edu/mibench/$file.tar.gz
	done
	;;

  "make")
  find . -name "Makefile" -exec perl -pi -e 's/(\s)gcc/$1arm-linux-gnueabi-gcc/g' {} \;
  
  for dir in automotive consumer network office security telecomm
  do
    cd $dir
    d=$(pwd)
    for bench in $(ls)
    do
      echo "compiling $bench"
      cd $bench
      make
      make all
      cd $d
    done
    cd ..
  done
  ;;

esac
