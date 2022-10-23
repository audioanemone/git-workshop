#!/bin/bash

commit () {
  git add out
  git commit -m "$1"
}

shuffle () {
  shuf out > tmp
  mv tmp out
}

for _ in {1..99}
do
  echo $RANDOM >> out
done

echo "lol" >> out
commit "init"

for _ in {1..13}
do
  shuffle
  commit -m "do the shuffle"
done

sed -i "0,/\d*/s//lol\n/" out

for _ in {1..128}
do
  shuffle "do the shuffle"
  commit -m "do the shuffle"
done

