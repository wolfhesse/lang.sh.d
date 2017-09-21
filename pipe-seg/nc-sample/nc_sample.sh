

# stream sample.res T building block / segment

# netcat-anf
# tee 'through netcat?'


# netcat-body

date >> sample.res

## product stream producer: ls
ls -al ./ | tee sample.t1.res | nc -l -p 1234 >> sample.res & # backgrounding server

## start listener
date >> nc_sample.ts.rcv
nc localhost 1234 -w 3 >> nc_sample.rcv # timeout .. eof

## consumer: tf nc.rcv

# netcat-end
