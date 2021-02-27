# Pat Docker
Pat WinLink Client in a Docker container

To build the Docker image
docker build -t pat:1.0 .

To run the Docker container. This will give you a command prompt within the container.
docker run -v $PWD/config:/root/.wl2k:rw -p 8080:8080 --rm -it pat:1.0 /bin/bash

To configure Pat
pat configure

To run Pat HTTP server
pat http

Your pat configuration should be saved to the config folder of your host machine. This
folder is created for you by 'docker run' due to the '-v $PWD/config:/root/.wl2k:rw'
flag. The config folder will contain your user settings as well as mailboxes and will
be reused as long as you launch the container from the same place.
