#!/bin/bash

FILEPATH=/var/www/html/backup/frontdoor.txt

date +%Y%m%d_%H%M%S > $FILEPATH
last | head -1 | awk -F' ' '{print $3}' >> $FILEPATH


