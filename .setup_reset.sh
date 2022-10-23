#!/bin/bash

echo "Password: cute_dogs" > out
git add out
git commit -m "my password"

sed -i "s/cute_dogs//" out
