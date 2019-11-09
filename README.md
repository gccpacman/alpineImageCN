# dockerfiles

Base OS: Alpine 10
CI: Gitlab Action
Package Registry: Github Package Registry

- How to pull images?

docker pull docker.pkg.github.com/gccpacman/dockerfiles/<image_name>:latest

- How to build based on this image?

FROM docker.pkg.github.com/gccpacman/dockerfiles/<image_name>:latest

Github Publish Docker:
https://github.com/marketplace/actions/publish-docker
