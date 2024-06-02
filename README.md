# raspi-docker

## installation

```
git clone --recursive git@github.com:gpioblink/raspi-docker.git
```

or

```
git clone git@github.com:gpioblink/raspi-docker.git
git submodule update --init --recursive
```

## build

```
./docker-build.sh Dockerfile
./docker-run.sh
$ cd my-raspberrypi0-wifi-6.6
$ . ./yocto-setup.sh
```

