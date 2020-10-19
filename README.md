# Salut à Toi for YunoHost

[![Integration level](https://dash.yunohost.org/integration/sat.svg)](https://dash.yunohost.org/appci/app/sat) ![](https://ci-apps.yunohost.org/ci/badges/sat.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/sat.maintain.svg)  
[![Install Salut à Toi with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=sat)

> *This package allows you to install Salut à Toi quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
Salut à toi est un outil tout-en-un pour gérer tous vos besoins en communication: messagerie instantanée, (micro)blogage, partage de fichiers, événements, forums, gestion de tâches, etc.

# State of this package

* works fine:
  * [x] nothing, you're welcome to help 

* to be added:
  * [ ] systemd, Libervia
  * [ ] x86_64: install/remove/backup/remove/upgrade
  * [ ] ARM: install/remove/backup/remove/upgrade
  * [ ] import file with web interface, imports from youtube, interraction with MusicBrainz 

## Overview
Quick description of this app.

**Shipped version:** 1.0

## Screenshots

![](https://salut-a-toi.org/cagou_chat_desktop.jpg)

## Demo

* [Official demo](Link to a demo site for this app.)

## Configuration

How to configure this app: From an admin panel, a plain file with SSH, or any other way.

## Documentation

 * Official documentation: Link to the official documentation of this app
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-user support

 * Are LDAP and HTTP auth supported?
 * Can the app be used by multiple users?

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/sat%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/sat/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/sat%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/sat/)

## Limitations

* Any known limitations.

## Additional information

* Other info you would like to add about this app.

## Links

 * Report a bug about this package: https://github.com/YunoHost-Apps/sat_ynh
 * Report a bug about SàT or Libervia: https://bugs.goffi.org/bugs
 * Salut à toi website: https://salut-a-toi.org
 * YunoHost website: https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/sat_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/sat_ynh/tree/testing --debug
or
sudo yunohost app upgrade sat -u https://github.com/YunoHost-Apps/sat_ynh/tree/testing --debug
```
