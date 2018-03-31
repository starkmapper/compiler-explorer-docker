#!/bin/bash
for tag in `find * -type d`
 do 
  docker build ./$tag --tag stark/compiler-explorer:$tag
done