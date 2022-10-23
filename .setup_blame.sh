#!/bin/bash 

commit() {
  git add out
  git commit -m "$1"
}

spam_commits() {
  for _ in {1..100}
  do
    echo "a" >> out
    commit "fine commit"
  done
}

spam_commits

sed -i '0,/a/s//bug/' out
commit "not too sure about this"

spam_commits
