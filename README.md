# AlpineImageCN

各种语言和框架运行仓库的Alpine基础镜像（CN源） 

## 镜像列表：

- alpineCN: Alpine基础镜像，基于Alpine 10, 替换中文源
- java-alpineCN: Openjdk最新版本的AlpineCN容器运行环境
- oraclejava-alpineCN: Oracle JDK 8的AlpineCN容器运行环境
- python-alpineCN: Python3.7的AlpineCN容器运行环境，替换pip中文源
- django-alpineCN: 包含Django和相关数据库依赖的Python3.7的AlpineCN容器运行环境，替换pip中文源


## 自动构建

- 该仓库由Gitlab Actions自动构建

## 使用

- 如何拉取镜像（替换image_name成README上面的镜像名称）：

        docker pull docker.pkg.github.com/gccpacman/dockerfiles/<image_name>:latest

