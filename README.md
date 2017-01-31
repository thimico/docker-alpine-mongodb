# MongoDB in a box

(!!! mongodb@testing over thimico/alpine !!!) AlpineLinux-base Docker image with MongoDB

## Usage

as Server:

    docker run -d --name mongodb -p 27017:27017 -v /data/mongodb:/var/lib/mongodb thimico/alpine-mongodb

as Client:

    docker run -it --rm thimico/alpine-mongodb mongo --help

## Configuration

You may pass config options via command line, as you normally would:

    docker run -d -p 27017:27017 \
      -v /data/mongodb:/var/lib/mongodb \
      thimico/alpine-mongodb --storageEngine wiredTiger

