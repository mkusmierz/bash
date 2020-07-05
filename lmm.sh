#!/bin/bash

BRANCH="$1"

lmm(){
lmm status
lmm checkout master
lmm delete $BRANCH
lmm branch $BRANCH
lmm checkout $BRANCH
lmm status
}

lmm "$1"
