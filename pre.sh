#!/bin/bash

wget https://pages.stat.wisc.edu/~jgillett/DSCP/CHTC/wordCounting/shakespeare.tar

tar -xf shakespeare.tar

ls shakespeare/*/* > play_list.txt

mkdir -p logs
