#! /bin/sh

for f in gen/tests/*.c; do b=`basename $f .c`; grep $b $1 >/dev/null || echo $b; done
