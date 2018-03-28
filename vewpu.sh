#!/bin/bash

# make virtualenvwrapper commands available
source `which virtualenvwrapper.sh`

new_python_version="$( ${VIRTUALENVWRAPPER_PYTHON} --version )"

# Iterate through all directories in $PROJECT_HOME
cd "$PROJECT_HOME"
for project in */; do
  current_version="$( "${WORKON_HOME}"/"${project}"/bin/python --version )"
  # recreate virtualenv if versions don't match
  if [[ "$current_version" != "$new_python_version" ]]; then
    echo "changing to ${project} directory"
    workon "$project"
    echo "deactivating virtualenv"
    deactivate
    rmvirtualenv "$project"
    echo "creating new virtualenv"
    mkvirtualenv "$project"
    echo "setting virtualenv to project"
    setvirtualenvproject
  else
    echo "${project} is already at the latest installed python: ${new_python_version}"
  fi
done
