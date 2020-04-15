#!/bin/bash

BRANCH="$1"

lmm(){
sudo lmm status
sudo lmm checkout master
sudo lmm delete $BRANCH
sudo lmm branch $BRANCH
sudo lmm checkout $BRANCH
sudo lmm status
}

lmm "$1"
