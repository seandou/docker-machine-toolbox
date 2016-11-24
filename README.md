# docker-machine-toolbox

Toolbox for docker machines


## Installation

Step 1. Login to a docker machine and switch to root user.

```
docker-machine ssh default
sudo su -
```

Step 2. Clone this project to `/var/lib/boot2docker/docker-machine-toolbox` path

```
git clone -q https://github.com/seandou/docker-machine-toolbox.git /var/lib/boot2docker/docker-machine-toolbox
```

Step 3. Run boot script

```
cd /var/lib/boot2docker/docker-machine-toolbox
./boot
```

Step 4. Customize with docker-machine-postboot

```
cp /var/lib/boot2docker/docker-machine-toolbox/postboot /var/lib/boot2docker/docker-machine-postboot
```

Modify the files

```
vi /var/lib/boot2docker/docker-machine-postboot/postboot
vi /var/lib/boot2docker/docker-machine-postboot/profile
```