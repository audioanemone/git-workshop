#!/bin/bash

echo '
#!/bin/bash

add() {
  echo "$1 + $2 + 1" | bc
}

add $1 $2
' > out
chmod +x out

git add out
git commit -m "initial commit"
git tag "v0.1" HEAD


echo '
#!/bin/bash

add() {
  echo "$1 + $2 + 1" | bc
}

echo "Welcome to my super cool calculator program - call me with 2 numbers to get their sum!"

if [ $# == 2 ]; then
  add $1 $2
fi
' > out
chmod +x out

git add out
git commit -m "work in progress - can't seem to get this to work"
