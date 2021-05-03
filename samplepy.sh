#!/bin/bash

cd $1/project_aa1/
source python/bin/activate
which python
subsample -n $2 $1/database_aa1/train.csv > $1/database_aa1/sample/train_sample.csv
awk -F, '$5 == 1' $1/database_aa1/train.csv > $1/database_aa1/sample/lecture_total.csv

