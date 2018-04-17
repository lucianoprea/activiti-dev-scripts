#!/bin/bash
HEAD_COLOR="\x1B[0;34m"
NO_COLOR='\033[0m'
WORKING_DIR="${ACTIVITI_CLOUD_WORKSPACE_DIR:-$PWD}"

for dir in $(find "${WORKING_DIR}" -maxdepth 1 -type d); do
  if [ $dir = "${WORKING_DIR}" ] || [ $dir = "${WORKING_DIR}/.idea" ]; then
    continue;
  elif [ $1 = "git" ]; then
    test -d "$dir/.git" || continue
  elif [ $1 = "mvn" ]; then
    test -f "$dir/pom.xml" || continue
  fi

  cd "$dir"
  echo -e "${HEAD_COLOR}${PWD}${NO_COLOR}" && "$@"
done
