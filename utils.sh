#!/bin/sh
#
# Author: Vaidik Kapoor
#
# utils.sh
# Utility functions for other Git commands in this project.

# Get Git repo's top level directory's path
function get_repo_path {
    # Top level directory in the repo
    TOP_LEVEL_DIR=`git rev-parse --show-toplevel 2> /dev/null`

    if [ $? -ne 0 ];
    then
        echo "fatal: Not a git repository (or any of the parent directories): .git"
        exit 1
    fi

    echo $TOP_LEVEL_DIR
}

# Get git-commands project directory's path
function get_commands_dir {
    SOURCE="${BASH_SOURCE[0]}"

    # resolve $SOURCE until the file is no longer a symlink
    while [ -h "$SOURCE" ];
    do
      DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
      SOURCE="$(readlink "$SOURCE")"
      [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
    done

    echo $( cd -P "$( dirname "$SOURCE" )" && pwd )
}
