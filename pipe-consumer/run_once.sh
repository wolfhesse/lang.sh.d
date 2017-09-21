echo "tf run_once.res"
nc localhost 1234 -w 3 | python -m markdown > run_once.res
