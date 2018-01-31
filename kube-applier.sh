#!/bin/bash
echo "Start watching infrastructure repository"
git checkout master
while true
do
  git pull origin master
  kubectl apply --recursive -f ./prod
  sleep 5
done
