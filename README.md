# Heroku rclone
## 概述
用于在 Heroku 上部署 rclone屏，自动从环境变量中加载rclone配置。
## 部署rclone
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https://github.com/xixka/heroku-rclone.git)
## 运行 
`以下所有操作需要安装heroku-cli`
### 连接heroku容器

```
heroku run bash -a myapp
```
### 运行rclone
`以下所有操作需要使用heroku-cli连接heroku容器`
#### 编辑rclone配置
```
rclone config
```
### 运行fclone
```
fclone
```
### fclone自动复制
```shell
heroku run "fclone -P --transfers=5 copy 6:1 ftp:2"  -a myapp
```
### 天翼云盘命令行客户端
```
heroku run "ty"  -a myapp
```
[使用说明](https://github.com/tickstep/cloudpan189-go)
