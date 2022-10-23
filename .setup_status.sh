for _ in {1..100}
do
  echo $RANDOM >> out
done

git add out
git commit -m "random numbers"
