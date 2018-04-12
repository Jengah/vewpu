# vewpu
**V**irtual**E**nv**W**rapper **P**ython **U**pdater

A little bash script that updates the python version across all virtualenvwrapper projects

When you upgrade python3 via `brew upgrade python3`, the path to the virtualenvwrapper python binary doesn't change, but that doesn't update the virtualenv. It is a pain to manually change the python version if you want to upgrade all of your virtualenvs to the latest, so use this instead.


## Assumptions
* You have virtualenvwrapper installed
* You use the `mkproject` command to create your virtualenvs and set `$PROJECT_HOME`

## Supported functionality
* update ALL virtualenvwrapper projects (will update to individual projects if enough interest / it becomes useful in my workflow)
* re-install packages as they were (this is by default, again, can modify if interest / useful to me )


## Usage
Run
`./path/to/vewpu.sh`

## Development / Bugs
If you use this and want more supported functionality or find a bug, either:
  * Open a PR with proposed changes
  * Log an Issue with a detailed description of the functionality you desire
    * Examples of intended behavior (output / code samples) appreciated
