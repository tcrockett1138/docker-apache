#!/bin/bash

service apache2 start

while ps -e | grep apache2
do
    sleep 5
done

