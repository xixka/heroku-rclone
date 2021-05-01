FROM debian:10

ADD .profile /.profile

RUN apt update && apt install -y wget ca-certificates curl p7zip*  unzip vim htop nano bash-completion tmux \
&&  curl https://rclone.org/install.sh | bash \
# 创建临时目录
&&  mkdir /tmp/x && cd /tmp/x \
# 安装fclone
&&  wget -c "https://github.com/mawaya/rclone/releases/download/fclone-v0.4.1/fclone-v0.4.1-linux-amd64.zip" -O fclone.zip \
&&  unzip fclone.zip \
&&  mv  fclone-v0.4.1-linux-amd64/fclone /usr/local/bin/fclone  \
&&  chmod +x /usr/local/bin/fclone \
#安装 cloudpan189-go
&&  wget -c "https://github.com/tickstep/cloudpan189-go/releases/download/v0.0.9/cloudpan189-go-v0.0.9-linux-amd64.zip" -O ty.zip \
&&  unzip ty.zip \
&&  mv  cloudpan189-go-v0.0.9-linux-amd64/cloudpan189-go /usr/local/bin/ty \
&&  chmod +x /usr/local/bin/ty \
# 删除临时文件
&&  rm /tmp/x -rf
