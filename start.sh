#!/bin/bash
/opt/acestream/acestreamengine --client-console --login root --password root --live-cache-type memory --vod-cache-type memory --stats-report-interval 1 --stats-report-peers --slots-manager-use-cpu-limit 1 --allow-user-config --debug-client-transporter --debug-profile --log-file acestream.log --log-debug 355 --log-max-size 20000000 --debug-filter-aircas
