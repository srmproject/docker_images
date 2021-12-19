#!/bin/sh

set -e

git_workspace="workspace"
git clone ${GIT_URL} -b ${GIT_BRANCH} ${git_workspace}
echo "git clone is done"

dir_name=$(dirname "${FILEPATH}")
file_name=$(dirname "${FILEPATH}")

cd ${git_workspace}/${dirname} && sh ${file_name}

echo "execute file is done"