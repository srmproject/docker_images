#!/bin/sh

set -e

git clone ${GIT_URL} -b ${GIT_BRANCH} workspace
cd workspace
echo "git clone is done"

# change dir
dir_name=$(dirname "${FILEPATH}")
file_name=$(dirname "${FILEPATH}")

cd ${dir_name}
sh ${file_name}

echo "execute file is done"