#!/bin/bash

export JOB_NAME1=Monthly
export JOB_COMMAND1="/usr/bin/rsnapshot -c /backup/rsnapshot.conf monthly"
export JOB_TIME1="${MONTHLY:-1 0 0 1 * *}"
export JOB_NAME2=Weekly
export JOB_COMMAND2="/usr/bin/rsnapshot -c /backup/rsnapshot.conf weekly"
export JOB_TIME2="${WEEKLY:-1 30 0 * * 1}"
export JOB_NAME3=Daily
export JOB_COMMAND3="/usr/bin/rsnapshot -c /backup/rsnapshot.conf daily"
export JOB_TIME3="${DAILY:-1 1 1 * * *}"
export JOB_NAME4=${HOURLY:+Hourly}
export JOB_COMMAND4="/usr/bin/rsnapshot -c /backup/rsnapshot.conf hourly"
export JOB_TIME4="${HOURLY}"

/opt/jobber/docker-entrypoint.sh "$@"
