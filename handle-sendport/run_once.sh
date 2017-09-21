
echo "tf run_once.res in background"
echo "usage:  while true; do sh run_once.sh ; done"
echo 'assuming port 1235'
echo 'bypass content, telemetrie ' 
date >> run_once.res
echo 'timeout: 10'
nc localhost 1235 -w 10 >> run_once.res # & # NOT backgrounding
