#!/bin/sh
# this script check if a D-Bus session exists or create one if it doesn't
# and fill /tmp/.dbus.[USERNAME] with a an export of DBUS_SESSION_BUS_ADDRESS

DBUS_PATH="/tmp/.dbus.$(whoami)"

if [ ! -s "$DBUS_PATH" ]; then
        if [ -e "$DBUS_PATH" ]; then
                # file exists but is null
                rm -f "$DBUS_PATH"
        fi
        if [ -n "$DBUS_SESSION_BUS_ADDRESS" ] ; then
                echo "export DBUS_SESSION_BUS_ADDRESS='$DBUS_SESSION_BUS_ADDRESS'" > "$DBUS_PATH"
        else
                DEFAULT_BUS="/var/run/user/$(id -u)/bus"
                if [ -S "$DEFAULT_BUS" ]; then
                        echo "export DBUS_SESSION_BUS_ADDRESS='$DEFAULT_BUS'" > "$DBUS_PATH"
                else
                        dbus-launch --sh-syntax > "$DBUS_PATH"
                fi
        fi
        chmod 400 "$DBUS_PATH"
fi

cat "$DBUS_PATH"