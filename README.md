# これはpi4ビルド用の一時ブランチです

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

## setup

```
./docker-build.sh Dockerfile
./docker-run.sh
$ cd my-raspberrypi0-wifi-6.6
$ . ./yocto-setup.sh
<レイヤー追加等の作業>
$ bitbake core-image-mininal
```

