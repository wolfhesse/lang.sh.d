

# stream sample.res T building block / segment
echo 1 | $(tee sample.t0.res &) | cat | cat > sample.res
