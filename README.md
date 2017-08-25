# s2client-docker

A docker image for building and running the StarCraft II API on Linux

This is a work in progress. Contributions welcome!

TODO:
    * Get unit tests working on s2client-game container
    * Automate the replay & Battle.net Cache population
    * Create a combined container for developers (with git, API and game)
    * Get some compose / swarm examples for doing larger training exercises

# Summary

By downloading and running this you are agreeing to the [StarCraft II AI and Machine Learning License](https://github.com/Blizzard/s2client-proto/blob/dca8b6831a84747c2cd6e0c33d6416e14838d886/DATA_LICENSE)

There are three main components to getting docker image of StarCraft II running

1. Downloading the Linux build and base maps

~~~
    ./download.sh && ./clone.sh && ./unpack.sh
~~~

2. Installing replay packs and the Battle.net cache to run hem

~~~
TODO
~~~

3. Building the containers

~~~
./build-containers.sh
~~~


4. Test the containers

### Build

~~~
docker run -it s2client-api
./api-build.sh
~~~

### Game

~~~
docker run -d s2client-game
~~~

