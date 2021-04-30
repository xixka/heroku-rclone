FROM debian:10

ADD .profile /.profile

RUN apt update && apt install -y wget ca-certificates curl p7zip*  unzip vim htop nano nload bash-completion \
&&  apt install -y tcptraceroute net-tools iputils-ping  dnsutils tmux \
&&  curl https://rclone.org/install.sh | bash \
&&  mkdir /tmp/x && cd /tmp/x \
&&  wget -c "https://github.com/mawaya/rclone/releases/download/fclone-v0.4.1/fclone-v0.4.1-linux-amd64.zip" -O fclone.zip \
&&  unzip fclone.zip \
&&  mv  fclone-v0.4.1-linux-amd64/fclone /usr/local/bin/fclone  \
&&  chmod +x /usr/local/bin/fclone \
&&  rm /tmp/x -rf
