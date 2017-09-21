

# stream sample.res T building block / segment

# netcat-anf
# tee 'through netcat?'

# need listener: 
# netcat 0.0.0.0 1234 > sample.rcv &

# netcat-body

date >> sample.res
ls -al ./ | nc -l -p 1234 | tee sample.t0.res | cat | cat >> sample.res

# netcat-end
