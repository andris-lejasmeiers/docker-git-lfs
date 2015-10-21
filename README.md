Docker image with git lfs installed.

https://github.com/github/git-lfs

# Usage

Run entering the container:

´´´
docker run -ti -v $(pwd):/src jgpelaez/git-lfs /bin/bash
´´´

And inside the container

´´´
root@b3cec4e0e668:/src# git lfs
´´´

The current folder (pwd) will be mapped to the src in the container.

For delete stopped containers you can do:

´´´
sudo docker rm -f $(sudo docker ps -a -q)
´´´