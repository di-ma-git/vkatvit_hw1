#!/bin/bash


FILE=Main.java
FILESIZE=$(stat -c%s "$FILE")
if [ ! -f "$FILE" ]; then
    echo "$FILE does not exist. Compilation interrapted!"
elif [ "$FILESIZE" -lt "100"  ]; then
    echo "$FILE is too small. Compilation interrapted!"
else
    echo "COMPILING JAVA USUNG JAVAC"
    javac Main.java
    echo "$FILE has been compiled at `date +%F" "%T`"
    echo "$FILE has been compiled at `date +%F" "%T`" > error.log
    echo "$FILE has been logged at `date +%F" "%T`"
    echo "RUNNING COMPILED MAIN WITH ONE PARAM"
    java Main myParam
    echo "$FILE has been run at `date +%F" "%T`"
fi
