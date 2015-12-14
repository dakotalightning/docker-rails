## README - Docker version

run
> you only need to run this once

    $ ./setup.sh

after any changes use

    docker-compose build
    docker-compose up

usage

    docker build
    docker up

    docker build -t dakotalightning/koda-rails -f Dockerfile.production .
    docker push dakotalightning/koda-rails

or

    docker build
    docker up

    git push

> docker hub will build production image automatically
