#!/bin/sh
# download rclone config
mkdir -p /.config/rclone
cat << EOF > /.config/rclone/rclone.conf
$rclone
EOF
cat << EOF > /config.json
$6pan
EOF