#/bin/bash

# echo "\$0: $0"
# echo "\$1: $1"
# echo "\$#: $#"
# echo "\$@: $@"
# echo "\$?: $?"

RSA="$HOME/.ssh/id_rsa.pub"
SCRIPTS="$PWD/scripts"

if [  ! -f "$RSA" ]; then
  echo "file '$RSA' was not found."
  exit 1
fi

if [  ! -d "$SCRIPTS" ]; then
  echo "directory '$SCRIPTS' was not found."
  exit 1
fi

if [ "$1" == "" ]; then
  echo "usage: \`$0 \$MANAGER_IP\`"
  exit 1
fi

docker run --rm -it --net b9c3 --ip $1 \
-v ~/.ssh/id_rsa.pub:/root/.ssh/authorized_keys:ro \
-v $PWD/scripts:/opt \
ubuntu:16.04 sh -c "/bin/bash /opt/install-node.bash"
