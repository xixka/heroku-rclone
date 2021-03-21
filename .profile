mkdir -p /.config/rclone
cat << EOF > /.config/rclone/rclone.conf
$config
EOF
