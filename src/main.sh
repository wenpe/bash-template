#!/bin/bash

# shellcheck disable=SC2164
# shellcheck disable=SC1090

# Absolute path of script
readonly SCRIPT_DIR="$(
  cd "$(dirname "${BASH_SOURCE:-$0}")"
  pwd
)"

function setup() {

  # load common function
  # shellcheck disable=SC1090
  source "${SCRIPT_DIR}"/common_function.sh

  return 0

}
