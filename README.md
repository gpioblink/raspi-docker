# raspi-docker

## installation

```
git clone --recursive git@github.com:gpioblink/raspi-docker.git
```

or

```
git clone git@github.com:gpioblink/raspi-docker.git
cd raspi-docker
git submodule update --init --recursive
```

GitHubにログインしない場合は、以下の方法をお試しください

```
git clone https://github.com/gpioblink/raspi-docker.git
cd raspi-docker
git config --add submodule.out/poky.url https://github.com/gpioblink/poky.git
git config --add submodule.out/meta-openembedded.url https://github.com/gpioblink/meta-openembedded.git
git config --add submodule.out/meta-raspberrypi.url https://github.com/gpioblink/meta-raspberrypi.git
git config --add submodule.out/meta-gpioblink.url https://github.com/gpioblink/meta-gpioblink.git
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

