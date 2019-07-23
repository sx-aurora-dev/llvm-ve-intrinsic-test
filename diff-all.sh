#! /bin/sh

error=

for f in gen/tests/*.s tests/*.s
do
        printf "%-30s\r" $f
        #echo $f
        if test -f asm/$f; then
                #./diff.sh asm/$f $f || exit
                ./diff.sh asm/$f $f || error="$error $f"
        else
                new="$new $f"
                #echo "new test $f"
        fi
done

case x$new in
x);;
*) echo "== new test cases (not found in asm/gen/tests)"
        echo $new | sed 's/ /\n/g'
        ;;
esac

case x$error in
x) ;;
*) echo "Test failed on$error"
   exit 1;;
esac
