

# stream sample.res T building block / segment
date >> sample.res
ls -al ./ | tee sample.t0.res | cat | cat >> sample.res
