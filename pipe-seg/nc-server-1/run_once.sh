

# stream sample.res T building block / segment

# netcat-body

SCRIPT=${0%%.sh}

date >> $SCRIPT.res

## product stream producer: Readme file

while true
	do
		echo send-port-1234 $(date)
		cat ../../Readme.md | tee $SCRIPT.t1.res | nc -l -p 1234  >> $SCRIPT.res # & # NOT backgrounding server
	done # anstatt nc -k  fuer pipe-seg:in

### ## start listener
### date >> nc_$SCRIPT.ts.rcv
### nc localhost 1234 -w 3 >> nc_$SAMPLE.rcv # timeout .. eof

## consumer: tf nc.rcv

# netcat-end
