#!/bin/bash
#"2019-03-01"

DATE="--date $1"

autoship_date(){
autoshipment_order_queue $DATE
autoshipment_order_place
autoshipment_order_init
}

autoship(){
autoshipment_order_queue
autoshipment_order_place
autoshipment_order_init
}

if [ -z "$1" ]
then autoship
else autoship_date "$1"
fi
