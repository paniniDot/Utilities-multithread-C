#! /bin/bash


for (( i=0; $i<2; i=$i+1 )); do
	sed -i "s/sorgente/$1/" Makefile
done
