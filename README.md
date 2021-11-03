# Devops

## Containerizing Flask website with docker compose

### Prerequisites

* Install docker

* Install docker-compose

### Docker compose

Version is defined in docker compose file to use

`Version: '3'`


Services are used to define types of containers to run. Below containers are using in docker compose

* Ngnix
* Flask


### Volumes

*  Mounted custom nginx config (its proxy pass request to flask app) in default nginx config path which resides inside container

### Initialize docker containers

* `docker-compose up -d`

Finally its can be accessible using `localhost`
