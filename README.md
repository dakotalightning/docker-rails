## README - Docker version
![circleci](https://circleci.com/gh/dakotalightning/docker-rails.svg?style=shield&circle-token=:circle-token)

example is at [rails.koda.io](http://rails.koda.io/) using [digitalocean.com](http://digitalocean.com) and repo [docker.io/dakotalightning/docker-rails](https://hub.docker.com/r/dakotalightning/docker-rails/)

### Docker requirement
*If you don't have docker on your local machine [get started](https://docs.docker.com/mac/started/) is a good place to start.
It has gotten allot easier to get start, docker has managed to get everything you need in the [Docker toolbox](https://www.docker.com/toolbox).
Once you have docker all installed.*

After clone run setup **(you only need to run this once)**

    $ ./setup.sh

After any changes to the `Dockerfile`

    docker-compose build
    docker-compose up

*check your docker-machine ip `docker-machine env default` used to access the container locally*

when ready to push to production, create the production image

    $ docker build -t dakotalightning/koda-rails -f Dockerfile.production .

push the image to a repo, I'm using [docker.io](https://hub.docker.com/r/dakotalightning/docker-rails/) since its free for public repositories

    docker push dakotalightning/koda-rails

## server flow
this is what i did for [digitalocean.com](http://digitalocean.com) im not sure if it is the right way, it works
*I'm looking into it this ...*

1. ssh into the server droplet
2. install [docker-compose](https://docs.docker.com/compose/install/)

	pull the `docker-production.yml` on the server

		wget https://raw.githubusercontent.com/dakotalightning/koda.rails/docker/docker-production.yml -O docker-compose.yml

3. start up docker-compose

		docker-compose up

	docker-compose will pull in the images automatically from the `docker-compose.yml` file

4. in another window run this to get the database, this will run `rake` and `--rm` remove the container once its done.

		docker-compose run --name rake --rm web rake db:setup

    *from my understanding you want to use `--rm` flag when running `docker-compose run`. Evey `run` will start up a new container ex: `web_run_1` `web_run_2` `web_run_3` etc.*

5. `ctrl+c` to stop the containers
6. run `docker-compose start` to start the containers in the background
7. run `docker-compose ps` to see them running

		   Name                 Command               State            Ports          
		-----------------------------------------------------------------------------
		root_db_1    /entrypoint.sh mysqld            Up      0.0.0.0:13306->3306/tcp
		root_web_1   bash -c rm -f tmp/pids/ser ...   Up      0.0.0.0:80->3000/tcp  
8. go to the url of the droplet provided on digitalocean

##

    deploy-images | bash -s

    curl -sSL https://raw.githubusercontent.com/dakotalightning/docker-rails/master/deploy-server | bash -s
