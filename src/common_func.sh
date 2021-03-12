#!/bin/bash

#######################################
# Convert utc to jst
# Globals:
#   None
# Arguments:
#   utc time
# Returns:
#   jst time
#######################################
function convert_utc_to_jst() {

  local utc=$1
  local jst

  local result=0
  jst="$(TZ=UTC-9 date '+%Y/%m/%d %H:%M:%S' --date "${utc}")" ||
    result=$?

  if [ ! "$result" = "0" ]; then
    exit 1
  fi

  echo "${jst}"

}
