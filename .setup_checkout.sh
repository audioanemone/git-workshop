#!/bin/bash

echo "My favourite food is kurumuru" > out
git add out
git commit -m "nothing to see here"
git tag "secret" HEAD

echo "nothing to see here" > out
git add out
git commit -m "nothing to see here"
