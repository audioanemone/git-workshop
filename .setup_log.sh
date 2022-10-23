#!/bin/bash

string=$()
for s in `echo "never gonna give you up, never gonna let you down, never gonna run around and, desert you!" | awk '{ for (i=NF; i>1; i--) printf("%s ",$i); print $1; }'`;
do
  echo $s >> out
  git add out
  git commit -m "$s"
done

echo "" > out
git add out
git commit -m "..."

