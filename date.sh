#!/bin/bash
#"2018-10-30 10:25:00"

DATE="$1"

date_change(){
sudo service vboxadd-service start
sudo service vboxadd-service stop
sudo date -s $DATE
}

date_change "$1"
