# Pat Docker
Pat WinLink Client in a Docker container

To build the Docker image

`docker build -t pat:1.0 .`

To run the Docker container. This will give you a command prompt within the container.

`docker run -v $PWD/config:/root/.wl2k:rw -p 8080:8080 --rm -it pat:1.0 /bin/bash`

To configure Pat

`pat configure`

You will need to first create a WinLink account that uses your callsign; then, at least, change
these two entries in the pat configuration

`"mycall": "your_callsign",`

`"secure_login_password": "your_winlink_password",`

You may also wish to change the port that pat runs on and can do that here. Make sure to change
the `docker run` line above accordingly if you change the port here! I reccomend changing the
default address of `localhost` to `0.0.0.0` to allow the pat http server to be reached by other
devices on your network.

`"http_addr": "0.0.0.0:8080",`

Your pat configuration should be saved to the config folder of your host machine. This
folder is created for you by 'docker run' due to the '-v $PWD/config:/root/.wl2k:rw'
flag. The config folder will contain your user settings as well as mailboxes and will
be reused as long as you launch the container from the same place.

To run Pat HTTP server

`pat http`
