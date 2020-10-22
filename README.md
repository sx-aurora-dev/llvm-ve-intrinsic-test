# VE Intrinsics Test

This test include two types of test cases.

1. Automatically generated test cases in `gen` directory. This tests are
   generated by `veintrin.py` in llvm source tree. Do not edit this test cases.
2. Manually created test cases in `tests` directory.

All test cases are executed in `test.ve` executable.

Run as below with setting your llvm to LLVM_DIR.

```
% LLVM_DIR=/opt/nec/nosupport/llvm-ve make -j8
% ./test.ve 2>&1 | tee result
% ./check-tests.sh result
```

Last line in the `result` file shows the test result as

```
854 OK, 0 NG -> OK
```

Last command `check-test.sh` checks if all test cases in `gen` are executed.


## Assembly test

If you are inrerested in assembly level difference, run as below.

```
% LLVM_DIR=/opt/nec/nosupport/llvm-ve make -j8 gen-asm
% ./diff-all.sh
```

This tests check the generated assmembly code against expected ones in `asm`
direcotry.

Because this test is used in our internal CI, please update the expected
results if you think your difference is reasonable.

```
% make update-asm
```

## Generationg test cases for llvm

Test cases for llvm's check-llvm are generated from the test cases in `gen`
directory.

Run the command shown below and copy the genereted files in `llvm-test`
directory into `llvm-project/llvm/test/CodeGen/VE`.

```
% LLVM_DIR=/opt/nec/nosupport/llvm-ve make llvm-test
```
