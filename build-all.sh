#!/bin/bash
for tag in `find * -type d`
 do 
  docker build ./$tag --tag starkmapper/compiler-explorer:$tag
done