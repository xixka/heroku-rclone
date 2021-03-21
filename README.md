# Heroku rclone
## 概述
用于在 Heroku 上部署 rclone，可以使用tmux分屏，自动从环境变量中加载rclone配置。
## 部署rclone
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https://github.com/xixka/heroku-rclone.git)
## 部署rclone+6pan+fclone+tmux
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https://github.com/xixka/heroku-rclone.git/tree/6pan)

## 运行 
<font color="#dd0000">以下所有操作需要安装heroku-cli</font>
### 连接终端

```
heroku run bash -a myapp
```
### 运行rclone
#### 编辑rclone配置
```
rclone config
```
### 运行fclone
```
fclone
```
### 运行six-cli
```
six login
```
### fclone自动复制
```shell
heroku run "fclone -P --transfers=5 copy 6:1 ftp:2"  -a myapp
```
