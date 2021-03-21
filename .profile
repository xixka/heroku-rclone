# 初始化rclone配置
mkdir -p /.config/rclone
cat << EOF > /.config/rclone/rclone.conf
$rclone
EOF
# 设置基本环境变量
export LANG=${LANG:-en_US.UTF-8}
