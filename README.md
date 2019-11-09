# Dockerfiles

This dockerfiles is autobuild by Github Actions and pushed to Github Package registry. 

- Based on Alpine Linux Destribute version 10
- Automaticly build by Gitlab Actions and pushed into Github Package Registry

# How to use

- How to pull images?

    docker pull docker.pkg.github.com/gccpacman/dockerfiles/<image_name>:latest

- How to build based on this image?

    FROM docker.pkg.github.com/gccpacman/dockerfiles/<image_name>:latest

Github Publish Docker:
https://github.com/marketplace/actions/publish-docker
