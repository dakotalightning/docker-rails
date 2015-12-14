## README - Docker version

example is at [rails.koda.io](http://rails.koda.io/) using [digitalocean.com](http://digitalocean.com) and repo [docker.io/dakotalightning/koda-rails](https://hub.docker.com/r/dakotalightning/koda-rails/)

run **you only need to run this once**

    $ ./setup.sh

After any changes to the `Dockerfile`

    docker-compose build
    docker-compose up

Workflow

    docker-compose build
    docker-compose up

when ready to push to production, create the production image

    $ docker build -t dakotalightning/koda-rails -f Dockerfile.production .

push the image to a repo, im using [docker.io](https://hub.docker.com/r/dakotalightning/koda-rails/) since its free for public repositories

    docker push dakotalightning/koda-rails

## server flow
this is what i did for [digitalocean.com](http://digitalocean.com) im not sure if it is the right way, it works, im looking into it.

1. ssh into the server droplet
2. install [docker-compose](https://docs.docker.com/compose/install/)

	pull the `docker-production.yml` on the server

		wget https://raw.githubusercontent.com/dakotalightning/koda.rails/docker/docker-production.yml -O docker-compose.yml

3. start up docker-compose

		docker-compose up

	it will pull in the images automatically

4. in another window run this to get the database, this will run `rake` and `--rm` remove the container once its done.

		docker-compose run --name rake --rm web rake db:setup

5. cntrl+c to stop the containers
6. run `docker-compose start` to start the containers
7. run `docker-compose ps` to see them running

		   Name                 Command               State            Ports          
		-----------------------------------------------------------------------------
		root_db_1    /entrypoint.sh mysqld            Up      0.0.0.0:13306->3306/tcp
		root_web_1   bash -c rm -f tmp/pids/ser ...   Up      0.0.0.0:80->3000/tcp  
8. go to the url of the droplet provided on digitalocean



	
