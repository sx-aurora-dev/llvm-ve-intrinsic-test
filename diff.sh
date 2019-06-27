#! /bin/sh

tmp0=`mktemp`
tmp1=`mktemp`

grep -v .ident $1 > ${tmp0}
grep -v .ident $2 > ${tmp1}
#echo ${tmp0} ${tmp1}

#diff -uN $1 $2
diff -uN ${tmp0} ${tmp1}
ret=$?

rm -f ${tmp0} ${tmp1}

exit ${ret}
