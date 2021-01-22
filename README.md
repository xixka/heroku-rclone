# Heroku rclone
## 概述
用于在 Heroku 上部署 rclone。
## 部署
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https://github.com/xixka/heroku-6pan.git)
## ENV 设定
### config
rclone config文件内容
## 运行
### 连接终端
```
heroku run bash -a myapp
```
### 运行rclone
#### 加载rclone配置
```
bash configure.sh
```
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
### fclone自动化复制
```shell
heroku run "bash configure.sh && fclone -P --transfers=5 copy 6:1 ftp:2"  -a myapp
```