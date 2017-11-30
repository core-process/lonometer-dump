#!/bin/bash

set -e
cd /home/niklas/templog

### fetch and update data
/home/niklas/Dev/core-process/lonometer-dump/lonometer-dump.pl -b 84:DD:20:EF:09:97 -r /home/niklas/templog/
/bin/bash /home/niklas/templog/update.sh

### generate graphs

# humidity

rrdtool graph 84DD20EF0997_rh_day.png \
    -w 800 -h 450 -a PNG \
    --slope-mode \
    --start -86400 --end now \
    --vertical-label "%rH" \
    DEF:humidity=84DD20EF0997_rh.rrd:value:AVERAGE \
    LINE1:humidity#ff0000:"humidity"

rrdtool graph 84DD20EF0997_rh_week.png \
    -w 800 -h 450 -a PNG \
    --slope-mode \
    --start -604800 --end now \
    --vertical-label "%rH" \
    DEF:humidity=84DD20EF0997_rh.rrd:value:AVERAGE \
    LINE1:humidity#ff0000:"humidity"

rrdtool graph 84DD20EF0997_rh_month.png \
    -w 800 -h 450 -a PNG \
    --slope-mode \
    --start -2592000 --end now \
    --vertical-label "%rH" \
    DEF:humidity=84DD20EF0997_rh.rrd:value:AVERAGE \
    LINE1:humidity#ff0000:"humidity"

rrdtool graph 84DD20EF0997_rh_year.png \
    -w 800 -h 450 -a PNG \
    --slope-mode \
    --start -31104000 --end now \
    --vertical-label "%rH" \
    DEF:humidity=84DD20EF0997_rh.rrd:value:AVERAGE \
    LINE1:humidity#ff0000:"humidity"

# temperature

rrdtool graph 84DD20EF0997_temp_day.png \
    -w 800 -h 450 -a PNG \
    --slope-mode \
    --start -86400 --end now \
    --vertical-label "°C" \
    DEF:temperature=84DD20EF0997_temp.rrd:value:AVERAGE \
    LINE1:temperature#ff0000:"temperature"

rrdtool graph 84DD20EF0997_temp_week.png \
    -w 800 -h 450 -a PNG \
    --slope-mode \
    --start -604800 --end now \
    --vertical-label "°C" \
    DEF:temperature=84DD20EF0997_temp.rrd:value:AVERAGE \
    LINE1:temperature#ff0000:"temperature"

rrdtool graph 84DD20EF0997_temp_month.png \
    -w 800 -h 450 -a PNG \
    --slope-mode \
    --start -2592000 --end now \
    --vertical-label "°C" \
    DEF:temperature=84DD20EF0997_temp.rrd:value:AVERAGE \
    LINE1:temperature#ff0000:"temperature"

rrdtool graph 84DD20EF0997_temp_year.png \
    -w 800 -h 450 -a PNG \
    --slope-mode \
    --start -31104000 --end now \
    --vertical-label "°C" \
    DEF:temperature=84DD20EF0997_temp.rrd:value:AVERAGE \
    LINE1:temperature#ff0000:"temperature"

# battery

rrdtool graph 84DD20EF0997_bat_day.png \
    -w 800 -h 450 -a PNG \
    --slope-mode \
    --start -86400 --end now \
    --vertical-label "%" \
    DEF:battery=84DD20EF0997_bat.rrd:value:AVERAGE \
    LINE1:battery#ff0000:"battery"

rrdtool graph 84DD20EF0997_bat_week.png \
    -w 800 -h 450 -a PNG \
    --slope-mode \
    --start -604800 --end now \
    --vertical-label "%" \
    DEF:battery=84DD20EF0997_bat.rrd:value:AVERAGE \
    LINE1:battery#ff0000:"battery"

rrdtool graph 84DD20EF0997_bat_month.png \
    -w 800 -h 450 -a PNG \
    --slope-mode \
    --start -2592000 --end now \
    --vertical-label "%" \
    DEF:battery=84DD20EF0997_bat.rrd:value:AVERAGE \
    LINE1:battery#ff0000:"battery"

rrdtool graph 84DD20EF0997_bat_year.png \
    -w 800 -h 450 -a PNG \
    --slope-mode \
    --start -31104000 --end now \
    --vertical-label "%" \
    DEF:battery=84DD20EF0997_bat.rrd:value:AVERAGE \
    LINE1:battery#ff0000:"battery"
