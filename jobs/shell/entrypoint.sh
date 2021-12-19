#!/bin/sh

set -e

git_workspace="workspace"
git clone ${GIT_URL} -b ${GIT_BRANCH} ${git_workspace}
echo "git clone is done"

# change dir
dir_name=$(dirname "${FILEPATH}")
file_name=$(dirname "${FILEPATH}")

cd $(${git_workspace} "$0")
echo "current: location"
pwd

echo "ls"
ls -l

echo "dirname: ${dir_name}"
echo "file_name: ${file_name}"

cd ${dir_name}
sh ${file_name}

echo "execute file is done"