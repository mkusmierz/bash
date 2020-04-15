#!/bin/bash
#2020-01-17 2020-01-23

DATESTART="$1"
DATEEND="$2"

period_compartment(){
in=$DATESTART
while [ "$in" != $DATEEND ]; do
  in=$(date -I -d "$in + 1 day")
  x=$(date -d "$in" +%Y-%m-%d )
  sudo date -s $x
  financd_mark
  finance_calculate
done
}

period_date(){
  sudo date -s $1
  financd_mark
  finance_calculate
}

period(){
  financd_mark
  finance_calculate
}


if [ -z "$1" ] && [ -z "$2" ]
then period

else
if [ -z "$2" ]
then period "$1"

else period_compartment "$1" "$2"
fi
fi
