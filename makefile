#!/bin/bash
MAKEFLAGS += --silent

.PHONY:	blame clean bisect

clean: 
	rm -rf .git && git init > /dev/null
	rm out || true 2>/dev/null
	chmod +x .run.sh

blame: clean
	./.run.sh "$@"
bisect: clean
	./.run.sh "$@"
checkout: clean
	./.run.sh "$@"
log: clean
	./.run.sh "$@"
branch: clean
	./.run.sh "$@"
status: clean
	./.run.sh "$@"
	tldr git diff
merge: clean
	./.run.sh "$@"
	tldr git switch
	tldr git add
	tldr git commit
reset: clean
	./.run.sh "$@"
