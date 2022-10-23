#!/bin/bash
chmod +x .setup_"$1.sh"
./".setup_$1.sh" > /dev/null
tldr git "$1"
