#!/bin/bash

path=$1
img_full_name=${path////:}

./build.sh ${path}

docker push zhengcog/${img_full_name}