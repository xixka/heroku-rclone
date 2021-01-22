FROM debian:10

ADD configure.sh /configure.sh

RUN apt update && apt install -y wget ca-certificates curl p7zip* htop unzip vim nload \
&&  apt install -y tcptraceroute net-tools iputils-ping  dnsutils screen \
&&  chmod -R 777 /run/screen  \
&&  chmod +x /configure.sh \
&&  curl https://rclone.org/install.sh | bash \
&&  mkdir /tmp/x && cd /tmp/x \
&&  wget -c "https://github.com/Mrs4s/six-cli/releases/download/v0.0.7-alpha/six-cli_v0.0.7-alpha_linux_amd64.tar.gz" -O six-cli.tar.gz \
&&  tar -zvxf six-cli.tar.gz \
&&  mv six-cli /usr/local/bin/six \
&&  wget -c "https://github.com/mawaya/rclone/releases/download/fclone-v0.4.1/fclone-v0.4.1-linux-amd64.zip" -O fclone.zip \
&&  unzip fclone.zip \
&&  mv  fclone-v0.4.1-linux-amd64/fclone /usr/local/bin/fclone  \
&&  chmod +x /usr/local/bin/fclone \
&&  rm /tmp/x -rf
