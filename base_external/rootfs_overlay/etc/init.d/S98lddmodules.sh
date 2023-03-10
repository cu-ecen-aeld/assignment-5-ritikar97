#!/bin/sh

case "$1" in
    start)
        echo "Starting scull and faulty drivers"
        /usr/bin/scull_load
        /usr/bin/module_load faulty
        modprobe hello  
        ;;
    stop)
        echo "Stopping aesdsocket server"
        /usr/bin/scull_unload
        /usr/bin/module_unload faulty
        rmmod hello
        ;;
    *)
        echo "Usage: $0 {start|stop}"
    exit 1
esac

exit 0