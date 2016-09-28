# !/bin/bash

docker run -it \
  --name atlassian-plugin-sdk \
  --cpuset-cpus 0 \
  --memory 1gb \
  -v /mnt/github/repos:/root/workdir \
  -p 2990:2990 \
  --entrypoint /bin/bash \
  rkostrzewski/atlassian-plugin-sdk
