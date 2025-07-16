#!/usr/bin/env bash

# one-liner to download latest docker release from archivesspace github
# https://github.com/archivesspace/archivesspace/releases
curl -s https://api.github.com/repos/archivesspace/archivesspace/releases/latest |
  sed -n 's/"browser_download_url": "\([^"]*docker[^"]*\)"/\1/p' |
  wget -i- -O archivesspace.zip

# unzip and overwrite current files
unzip -o archivesspace.zip

# remove zip file
rm archivesspace.zip