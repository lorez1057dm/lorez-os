#!/bin/sh
# Create basic device nodes - run this if devtmpfs is not available

mknod -m 622 /dev/console c 5 1
mknod -m 666 /dev/null c 1 3
mknod -m 666 /dev/zero c 1 5
mknod -m 666 /dev/random c 1 8
mknod -m 666 /dev/urandom c 1 9
mknod -m 666 /dev/tty c 5 0
mknod -m 666 /dev/full c 1 7
mknod -m 666 /dev/ptmx c 5 2

# Create tty devices
for i in 0 1 2 3 4 5 6 7; do
    mknod -m 620 /dev/tty$i c 4 $i
done

echo "Device nodes created"
