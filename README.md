![build](https://github.com/girodav/docker-unifi-raspi/actions/workflows/ci.yml/badge.svg)

# Unifi Network Application for Raspberry Pi 4 on Docker

Run the latest version of Unifi Network Application (also called "Unifi Network Server" on [ui.com](https://ui.com/download)). 

[![unifi-network-application](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/unifi-banner.png)](https://ui.com/) 


## How to install

Modify `.env` file with your preferred values, then run

```
docker compose up -d
```

## How to uninstall

```
docker compose down
```

## Application Setup

After setup, the web UI is available at https://ip:8443. The application can be configured, or a backup restored, using the first run wizard.

