# AlpineImageCN

适合国内云环境的Alpine基础镜像

- apk替换成阿里云国内源
- 调整语言成Zh_CN, 调整时区到UTC+8
- 安装busybox, dns, telnet, wget, jq, tar等基础调试工具
- 包含中文字符集（默认alpine镜像不包含中文字符集）

## 镜像列表：

- base: 基于Alpine 10基础镜像容器运行环境
- java: Oracle JDK 8的Alpine 10容器运行环境
- python: Python3.7的Alpine 10容器运行环境，替换pip清华源
- openjdk(TODO): Openjdk最新版本的Alpine 10容器运行环境
- django(TODO): 包含Django和相关数据库依赖的Python3.7的Alpine 10容器运行环境，替换pip中文源


## 自动构建

实现三种构建方式

- 由Github Actions自动构建到[Github Packages](https://github.com/gccpacman/AlpineImageCN/packages)
- 由Gitlab CI自动构建到腾讯云（私有仓库）
- Dockerhub仓库更新自动构建[Docker hub](https://hub.docker.com/u/gccpacman)

## 拉取镜像

替换`<image_name>`为`base`, `python`, `java`等目录名称

- Docker Hub

        docker pull gccpacman/dockerfiles/<image_name>:latest

- Github Packages
        
        docker pull docker.pkg.github.com/gccpacman/dockerfiles/<image_name>:latest
