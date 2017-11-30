#!/bin/bash

set -e

cd /home/niklas/templog

/home/niklas/Dev/core-process/lonometer-dump/lonometer-dump.pl -b 84:DD:20:EF:09:97 -r /home/niklas/templog/
/bin/bash /home/niklas/templog/update.sh
