#!/bin/sh

if [ $# -lt 1 ]; then
        (>&2 echo "This script launch a command with dbus service activated")
        (>&2 echo "'Syntax: \$0 [command] [args]")
        exit 2
fi

DBUS_PATH="/tmp/.dbus.$(whoami)"

if [ -e "$DBUS_PATH" ]; then
	rm -f "$DBUS_PATH"
fi

dbus-launch.sh

eval "$(cat "$DBUS_PATH")"
exec "$@"