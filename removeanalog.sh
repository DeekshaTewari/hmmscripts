#!/bin/bash

cwd=$PWD

find . -name 'channel*' | while IFS= read i; do 

#echo $i
cd $i

find . ! -name 'rplraw.mat' | while IFS= read file; do 
rm -rv $file
done

cd $cwd
done

