```
% LLVM_DIR=/opt/nec/nosupport/llvm-ve make -j8
% ./test.ve 2>&1 | tee result
% ./check-tests.sh result
```

```
% LLVM_DIR=/opt/nec/nosupport/llvm-ve make -j8 gen-asm
% ./diff-all.sh
```

