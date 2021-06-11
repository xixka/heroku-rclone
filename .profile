# 初始化rclone配置
mkdir -p /.config/rclone
cat << EOF > /.config/rclone/rclone.conf
$rclone
EOF
str1=""
if [ $rcloneforurl = $str1 ]
then wget $rcloneforurl -O /.config/rclone/rclone.conf
else echo "rcloneforurl is space"
fi
# 设置基本环境变量
export LANG=${LANG:-en_US.UTF-8}
