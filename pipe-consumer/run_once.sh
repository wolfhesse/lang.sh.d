echo "tf run_once.res"
echo 'usage: sh run_once.sh && cat run_once.res > run_once.html'
nc localhost 1234 -w 3 | gzip -d | python -m markdown > run_once.res
