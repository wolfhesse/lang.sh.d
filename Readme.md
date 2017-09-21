pipe to netcat | listen | pipe - segments



## pipe-set

RQ: PRODUCER env var als streamer


## pipe-consumer

run_once holt ein readme von nc-server-1 und piped es durch pythnon markdown (filter)

## nc-server-1

while true cat readme | nc

## dd-integration

### CURRENT: WIP SCHLAGWERK

scenario: 

- in /code/lang.sh.d/pipe-seg/nc-server-1
``` sh
	sh run_once.sh | nc -l -p 1235 -k
``` 

- in /opt/data.d/lang.sh.d/handle-sendport
``` sh
	while true; do sh run_once.sh ; done
```

- in /opt/data.d/langs.sh.d/pipe-consumer
``` sh
	# ergebnis msc:s sollte ueber crontab 'erzeugt' werden
	# ergebnis msc:c koennte weitergestreamt werden mit netcat, oder curl.webhook (im cronjob)
	sh run_once.sh && cat run_once.res > run_once.html
```

RQ: Dockerfile mit forever auf den server.sh

	-p outer:inner gateway / line

##
