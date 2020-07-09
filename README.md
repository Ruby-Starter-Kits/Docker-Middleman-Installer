# Docker Middleman Installer

A quick start for running [Middleman](https://middlemanapp.com/) with Docker. You can see the files it'll generate in [Ruby-Starter-Kits/Docker-Middleman-Template](https://github.com/Ruby-Starter-Kits/Docker-Middleman-Template).

## Usage

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Ruby-Starter-Kits/Docker-Middleman-Installer/master/installer.sh)"
```

Install [Docker](https://hub.docker.com/editions/community/docker-ce-desktop-mac/) and paste the above snippet into a macOS Terminal or Linux shell prompt.

This will create a Docker ready version of Middleman in the `App` folder.

## How this works

This will pull down [rubystarterkits/middleman-installer](https://hub.docker.com/repository/docker/rubystarterkits/middleman-installer/general) from docker, which contains everything required to create a middleman app locally. Then it'll do `middleman init App` & copy all the files required to run under docker into that directory.

The aim is to avoid requiring developers to setup ruby & any other dependencies to get started.

## TODO

* Setup Webpack in sample app
