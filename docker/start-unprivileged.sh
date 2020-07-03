#!/bin/bash
set -x

EXECUTABLE=/opt/ucacoin/ucacoind
DIR=$HOME/.ucacoin
FILENAME=ucacoin.conf
FILE=$DIR/$FILENAME

# create directory and config file if it does not exist yet
if [ ! -e "$FILE" ]; then
    mkdir -p $DIR

    echo "Creating $FILENAME"

    cat <<EOF > $FILE
printtoconsole=${PRINTTOCONSOLE:-1}
server=1
staking=1
maxconnections=125
EOF

fi

cat $FILE
ls -lah $DIR/

echo "Initialization completed successfully"

exec $EXECUTABLE