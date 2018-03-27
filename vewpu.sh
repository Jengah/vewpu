#!/bin/bash

set -eou pipefail

new_python_version="$( ${VIRTUALENVWRAPPER_PYTHON} --version )"

# Iterate through all directories in $PROJECT_HOME
cd "$PROJECT_HOME"
for project in */; do
  current_version="$( "${WORKON_HOME}"/"${project}"/bin/python --version )"
  if [[ "$current_version" != "$new_python_version" ]]; then
    virtualenv --python="$VIRTUALENVWRAPPER_PYTHON" "${WORKON_HOME}/${project}"
  else
    echo "${project} is already at the latest installed python: ${new_python_version}"
  fi
done
