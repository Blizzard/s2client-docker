# Setting up your development environment

The developer container is a combination of s2client-game and s2client-api. 

The API code has been omitted because it's assumed you will be cloning the repo
and working with GIT to manipuate the API code.

This container will copy your git configuration and system username to the 
development container. If you want to override this process see below.

To get setup for developing API code on linux:

~~~
    ./all.sh
~~~

You will see your github.com public key as the last step of the build process:

~~~
...
Successfully built 11c71c8b3a9b
==== Your github.com SSH public key for the container is:
ssh-rsa XXXXXXXXXXXX2EAAAADAQABAAABAQDf1N64V0NHQEcat3oiE+gTU/q7VPpXvJztRtaQ0X0/rHqGohFI+RVTCAGTsUyzNeVxJDuiPMhV/j9X1rqVV73pcLyM7flgYnriroo19Y3S9np4dPgyR+IeSztBhfCaLSmrVhvscIUlFCcXM8o1mgy8/mUSn5UJJxBdGdRfRt8TrWT7WVnbkLKNv6xUoBWssSNJds6itD/qBjEkZfD4BCP3dXEJL6U6y+HYnIGqv3lByxHhLK+dJ5pU2lGtyypj1/0IsWQVW4F6EaEBtyEy8cOmh17j9FusfhJkply2Xf2q81jm6nHRNsfd1thOAFe2quc0cTfZzX4ZqC9RE9gxwXI/ jrepp@8089fe031125
~~~

You should copy the ssh-rsa .. user@container_id into your github.com settings under the section for SSH keys.


To run the developer container:
~~~
    ./run.sh
~~~

If you want to configure the container by hand see the docker commands in **./make-container.sh** for the --build-arg overrides needed to setup your git account without a working shell.


# Using the development environment

Once your ssh key is imported to github.com you're ready to start working with the API:

Clone the repository:
~~~
    git clone git@github.com:Blizzard/s2client-api.git
~~~

Generate the project build files:
~~~
    cd ~/s2client-api
    mkdir -p build
    cd build && cmake -G "Unix Makefiles" ..
~~~

# To save your work between sessions

Now that you've gotten your container up and running you will want to snapshot your changes:
~~~
    ./commit-container.sh
~~~

If you want to move files out of your container consider cloning into a volume mount (e.g.: /code):
~~~
    docker run -v code:/code -it s2client-username
~~~

Alternative you can copy the files out using 'docker cp':
~~~
    .. run your container
    export DEV_CONTAINER=`docker ps -l -q`
    docker cp $DEV_CONTAINER:/home/username/myfile.txt .
~~~

# Resuming or attaching

To resume your work after **./commit-container.sh**:

~~~
./run-user.sh
~~~


To attach an additional TTY to a running container:
~~~
./attach-user.sh
~~~

# Additional Notes

The game executable will be located in:

    **/SC2/${GAME_VERSION}/StarCraftII/Versions/Base${BUILD_VERSION}/SC2_x64
