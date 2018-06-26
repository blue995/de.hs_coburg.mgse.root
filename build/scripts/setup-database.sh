#!/bin/sh

SCRIPT="$1"

echo "Using script $SCRIPT"
echo "Recreating database and user..."
mysql -uroot -proot < $SCRIPT
echo "...done."
