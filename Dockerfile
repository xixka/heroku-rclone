FROM debian:10

ADD .profile /.profile

RUN apt update && apt install -y wget ca-certificates curl p7zip* unzip vim \
&&  curl https://rclone.org/install.sh | bash
