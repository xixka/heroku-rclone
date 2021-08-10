# 初始化rclone配置
# mkdir -p /.config/rclone
cat << EOF > /.rclone.conf
$rclone
EOF
str1=""
if [ -n "$rcloneforurl" ]; then
    wget -q $rcloneforurl -O /.config/rclone/rclone.conf
fi
# 设置基本环境变量
export LANG=${LANG:-en_US.UTF-8}
