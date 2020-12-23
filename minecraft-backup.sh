#!/usr/bin/env bash

# fail in a sane manner
set -eo pipefail

# store date
DATE="$(date +%Y-%m-%d)"
DPATH="$(date +%Y/%m)"

# create temporary backup directory
LOCALDIR="$(mktemp -d)"

# remove the backup directory on exit
function cleanup {
  rm -rf "$LOCALDIR"
}
trap cleanup EXIT

# set remote backup directory
REMOTEDIR="Backups:minecraft/$DPATH"

# create backup directory on dropbox
rclone mkdir "$REMOTEDIR"

# iterate through docker-compose volumes, compressing them into tarballs in $LOCALDIR
for VOLUME in $(ls /root/minecraft/); do
  docker run --rm -v "/root/minecraft/$VOLUME":/"$VOLUME":ro -v "$LOCALDIR":/target busybox tar czvf /target/"$DATE"_"$VOLUME".tgz /"$VOLUME"
  rclone copy --verbose "$LOCALDIR"/"$DATE"_"$VOLUME".tgz "$REMOTEDIR"
done
