# docker-cmake-ninja
docker image for building using cmake, ninja, gcc arm embedded compiler


To build docker image:
```docker build -t docker-cmake-ninja .```

To start container and keep running: (normally not needed because container only needs to be alive while working)
```docker run -dit docker-cmake-ninja```