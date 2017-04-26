#!/bin/sh
set -e


XVFB_RUN_TMPDIR="$(mktemp -d -t $PROGNAME.XXXXXX)"
AUTHFILE=$(mktemp  "$XVFB_RUN_TMPDIR/Xauthority")

# Start Xvfb.
MCOOKIE=$(dd if=/dev/random count=1 2>/dev/null | sha256 )


for n in `seq 20 30`; do
    if [ ! -e /tmm/.X${n}-lock ]; then
        SERVERNUM=$n
        break
    fi
done

env XAUTHORITY=$AUTHFILE xauth source - << EOF 
add :$SERVERNUM MIT-MAGIC-COOKIE-1 $MCOOKIE
EOF

env XAUTHORITY=$AUTHFILE Xvfb ":$SERVERNUM" $XVFBARGS $LISTENTCP  &
XVFBPID=$!

sleep 3
if ! kill -0 $XVFBPID 2>/dev/null; then
echo  "Xvfb failed to start" >&2
exit 1
fi

cleanup() {
    kill $XVFBPID
}

trap cleanup EXIT

# Start the command and save its exit status.
set +e
env DISPLAY=:$SERVERNUM XAUTHORITY=$AUTHFILE "$@" 2>&1
RETVAL=$?
set -e

exit $RETVAL

