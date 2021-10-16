#!/usr/bin/env bash


TARGET_PATH=$1

source activate my-third-test-app-em
env_path=$CONDA_PREFIX
env_path=env_path | grep my-third-test-app-em | awk '{print $3}'
echo $env_path

cd $env_path/..
echo $PWD
zip -r $TARGET_PATH/env.zip ./my-third-test-app-em

