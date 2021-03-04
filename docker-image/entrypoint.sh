#!/usr/bin/env sh

# Init the container
if [[ -z $(getent passwd $PUID) ]]; then
  groupadd -g $PGID $PGID
  useradd -u $PUID -g $PGID -s /bin/bash -m $PUID

  USER_PASSWORD=$(date +%s | sha256sum | base64 | head -c 32)
  echo $PUID:$USER_PASSWORD | chpasswd

  chown $PUID:$PGID /opt
fi

# Run bash to keep container alive
tail -f /dev/null