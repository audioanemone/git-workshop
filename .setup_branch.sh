#!/bin/bash

echo '
favourite drink: water
' > out

git add out
git commit -m "added my favourite drink"

git switch -c "secret"
echo '
favourite band: sum 41
' >> out
git add out
git commit -m "added my favourite band"
git switch master
