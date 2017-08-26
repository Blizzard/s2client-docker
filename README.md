# s2client-docker

A docker image for building and running the StarCraft II API on Linux

This is a work in progress. Contributions welcome!

TODO:
  * [ ] Get unit tests working on s2client-game container
  * [ ] Automate the replay & Battle.net Cache population
  * [ ] Create a combined container for developers (with git, API and game)
  * [ ] Get some compose / swarm examples for doing larger training exercises

# Summary

By downloading and running this you are agreeing to:

[StarCraft II AI and Machine Learning License](https://github.com/Blizzard/s2client-proto/blob/dca8b6831a84747c2cd6e0c33d6416e14838d886/DATA_LICENSE)


# Building Containers

1. Building the game container

~~~
    cd game && ./all.sh
~~~

This creates a new container named s2client-api.

The entrypoint will be the StarCraft II executable listening for API calls on port 12000.

You can run the game now as a container:

~~~
    docker run -P -d s2client-game
~~~

TODO: There appears to be an issue connecting on the exposed port

3. Building the API build container

~~~
    cd build && ./all.sh
~~~

This builds the API and puts binary artifacts into the build-mount volume.

4. Test the containers

~~~
    cd game && ./run-tests.sh
~~~

TODO: This currently crashes


2. Installing replay packs and the Battle.net cache to run hem

~~~
~~~

TODO: Consider using volumes for this case as well, lots of data to move around.

### Running the API build


You can run the build yourself inside the s2client-api container:

~~~
docker run -it s2client-api
./api-build.sh
~~~


### Running the Game

~~~
docker run -d s2client-game
~~~

If you want to use the replay container automation you should export 
the container ID in an environment variable.

~~~
export GAME_CONTAINER=`docker run -P -d s2client-game`
~~~

### Developing using the API 

~~~
    cd dev && ./all.sh
    docker run -it s2client-dev
~~~

The developer image s2client-dev is derived from s2client-game. You will need
to first build the s2client-game image. Running the developer image you can
clone the git repo, update your git config and test against the packaged client.
