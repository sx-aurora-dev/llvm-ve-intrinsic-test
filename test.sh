#! /bin/sh

set -o pipefail

(./test.ve 2>&1 | tee test.result) || exit

err=0
for f in gen/tests/*.c
do
        b=`basename $f .c`
        grep $b test.result >/dev/null
        if test $? -ne 0; then
                echo "No test result found for $b"
                err=1
        fi
done

exit $err
