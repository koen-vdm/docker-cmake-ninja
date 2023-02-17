# sdk6buildtools
docker image for building sdk6 using cmake, ninja, gcc arm embedded compiler


To build docker image:
```docker build -t sdk6buildtools .```

To start container and keep running: (normally not needed because container only needs to be alive while working)
```docker run -dit sdk6buildtools```