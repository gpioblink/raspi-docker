# raspi-docker

## build

```
./docker-build.sh Dockerfile
./docker-run.sh
$ cd nano-5.11
$ . ./buildroot-setup.sh
```

## clone layers (tmp)

```
git clone git://git.yoctoproject.org/poky -b scarthgap-5.0.1
git clone git://git.yoctoproject.org/meta-raspberrypi -b scarthgap
git clone git://git.openembedded.org/meta-openembedded -b scarthgap
