#!/bin/bash
[[ ${DEBUG:-true} == true ]] && set -x

#vars
CONFIG_FILE="/supervisord/supervisord.conf"
LOG_LEVEL=${LOG_LEVEL:-info}

printf "\n Starting supervisord.. \n"
supervisord -c $CONFIG_FILE -e $LOG_LEVEL
supervisorctl -c $CONFIG_FILE

